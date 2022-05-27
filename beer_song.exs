defmodule BeerSong do

  def verse(0), do: 
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """

  def verse(1), do: 
    """
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """

  def verse(2), do: 
    """
    2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottle of beer on the wall.
    """

  def verse(n), do: 
    """
    #{n} bottles of beer on the wall, #{n} bottles of beer.
    Take one down and pass it around, #{n - 1} bottles of beer on the wall.
    """

  def lyrics(range \\ 99..0) do
    Enum.map_join(range, "\n", fn x -> verse x end)
  end

end