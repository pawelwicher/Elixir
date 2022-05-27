defmodule Bob do
  def hey(text) do
    asks = String.ends_with?(text, "?")
    yells = String.upcase(text) == text and String.downcase(text) != text
    silence = text == "" or String.match?(text, ~r/^\s+$/)
    cond do
      yells and asks -> "Calm down, I know what I'm doing!"
      asks           -> "Sure."
      yells          -> "Whoa, chill out!"
      silence        -> "Fine. Be that way!"
      true           -> "Whatever."
    end
  end
end

