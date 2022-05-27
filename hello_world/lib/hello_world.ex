defmodule HelloWorld do
  @moduledoc """
  Documentation for HelloWorld.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello()
      {:ok, :hello_world}

  """
  def hello do
    {:ok, :hello_world}
  end

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello_world()
      "Hello world"

  """
  def hello_world do
    String.capitalize "hello world"
  end
end
