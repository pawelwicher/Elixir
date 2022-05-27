defmodule Fact do
  def factorial(n) do
    factorial(1, n, 1)
  end

  defp factorial(current, n , result) when current <= n do
    factorial(current + 1, n, result * current)
  end

  defp factorial(_current, _n, result) do
    result
  end
end