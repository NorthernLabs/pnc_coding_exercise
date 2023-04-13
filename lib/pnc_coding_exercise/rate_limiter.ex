defmodule PncCodingExercise.RateLimiter do
  use GenServer

  @one_second 1000

  def start_link(_opts \\ []) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  @impl true
  def init(_init_args) do
    schedule_work(@one_second)

    {:ok, %{refill_rate: 5, bucket: 5}}
  end

  @impl true
  def handle_call(:request, _from, %{bucket: bucket} = state)
      when bucket > 0 do
    {:reply, %{"result" => "accepted"}, %{state | bucket: bucket - 1}}
  end

  @impl true
  def handle_call(:request, _from, state) do
    {:reply, %{"result" => "dropped"}, state}
  end

  @impl true
  def handle_info(:refill, %{refill_rate: refill_rate} = state) do
    schedule_work(@one_second)
    {:noreply, %{state | bucket: refill_rate}}
  end

  def schedule_work(timeout) do
    Process.send_after(self(), :refill, timeout)
  end
end
