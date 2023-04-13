defmodule PncCodingExercise.ExternalService do
  def fetch_data do
    # wait for a second and send response 
    :timer.sleep(1000)

    {:ok, %{"result" => "some data back"}}
  end
end
