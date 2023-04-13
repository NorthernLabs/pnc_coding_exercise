# PncCodingExercise

This projects contains two existing modules that you will be asked to modify 
in order to satisfy a few requirements. You will also need to implement a few 
test cases.

`RateLimiter` is a GenServer that implements a Token Bucket rate limiter. It 
is a naive implementation and only works to rate limit requests at 5 per second.

`ExternalService` is a simple module that mimics an external network call with
a response delay of 1s. 

## Requirements 

* Write a test to make sure that our RateLimiter does in fact work as expected.
(you can find the spec in `test/rate_limiter_test.exs` with some empty test
cases ready)

* Update RateLimiter to call the ExternalService whenever RateLimiter.request/0
is called.

* Write a `RateLimiter` test that checks weather or not ExternalService receives 
the call. Note that we want to keep the 1s delay in ExternalService but also 
don't want to have our tests to hang (ie. if testing 5 requests, it's not 
acceptable that tests take 5s+ to run).

### Stretch exercise 

* Update `RateLimiter` and make it work with a configurable rate limiting. What
are the settings we need to implement for that ? 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pnc_coding_exercise` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pnc_coding_exercise, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/pnc_coding_exercise>.

