defmodule PncCodingExercise.RateLimiterTest do
  use ExUnit.Case, async: true

  describe "start_link/1" do
    test "starts the gen server" do
    end

    test "it limits the requests to 5 per second" do
    end
  end

  describe "request/0" do
    test "it makes the request to ExternalService when limit available" do
    end

    test "it drops the request and does not call ExternalService when limit not available" do
    end
  end
end
