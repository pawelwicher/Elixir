defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "greets the world" do
    assert HelloWorld.hello() == {:ok, :hello_world}
  end
end
