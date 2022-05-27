defmodule Words do

  def count(sentence) do
    sentence |>
    String.downcase |>
    String.split(~r/[^[:alnum:]-]/u, trim: true) |>
    Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end

end
