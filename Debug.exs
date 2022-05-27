IO.puts(1+1)
IO.puts(0xFF+1)

a = :"my first atom"
IO.puts(a)
IO.puts(nil || false || a)

IO.puts("byte_size of a is #{byte_size("a")}")
IO.puts("byte_size of ą is #{byte_size("ą")}")
IO.puts("length of ą is #{String.length("ą")}")
IO.puts("Hello" <> " " <> "world")
IO.puts(String.duplicate("abc", 5))
IO.puts(String.upcase("abcd"))
IO.puts(String.first("abcd"))

t = {"hello", 1, 2}
IO.puts(elem(t, 0))
{text, _, _} = t
IO.puts(text)

xs = [1,2,3]
IO.puts("#{inspect(xs)}")
xs = [0 | xs]
IO.puts("#{inspect(xs)}")
xs = [10 |[1 |[]]]
IO.puts("#{inspect(xs)}")
xs = [1,2,3,4,5]
head = hd(xs)
tail = tl(xs)
IO.puts("#{inspect(head)}")
IO.puts("#{inspect(tail)}")
xs = [{:foo, true}, {:bar, false}]
IO.puts(xs[:foo])

m = %{"foo" => 1, "bar" => 2}
IO.puts m["foo"]

defmodule Hello do
	import IO, only: [puts: 1]
	def say_hello do
		puts String.capitalize "hello"
	end
end

Hello.say_hello

defmodule Sample.Enum do
	def first([]), do: nil
	def first([head | _]), do: head
end

IO.puts Sample.Enum.first []
IO.puts Sample.Enum.first [33,44,55]

defmodule MyMath do
	def add(x) do
		x + 1
	end

	def add(x,y), do: x + y

	def square(x), do: x * x
end
IO.puts MyMath.add 55

defmodule Foo do
	def f(1), do: 2
	def f(x) when x == 2, do: 3
	def f(x), do: x

	def add(list, val \\ 0) do
		[val | list]
	end
end
IO.puts Foo.f(1)
IO.puts Foo.f(2)
IO.puts Foo.f(0)

IO.puts inspect(Foo.add([1,2,3]))
IO.puts inspect(Foo.add([1,2,3], 42))

xs = Enum.map([1,2,3,4], &MyMath.square/1)
IO.puts inspect(xs)

v = Enum.reduce(xs, 0, &MyMath.add/2)
IO.puts v

Enum.map([1,2,3], fn(x) -> x*x end)
IO.puts inspect(xs)

if length([1]) == 0 do
	IO.puts "empty"
else
	IO.puts "not empty"
end

day = 3
cond do
	day == 1 -> IO.puts "one"
	day == 2 -> IO.puts "two"
	true -> IO.puts "???"
end

date = {1,1,2019}
case date do
	{1,_,year} when year == 2019 -> IO.puts "Happy new year 2019"
	{1,_,_} -> IO.puts "New year"
	_ -> IO.puts "???"
end

(if true, do: IO.puts "hello")

x = (if true, [{:do, "hello"}, {:else, "goodbye"}])
IO.puts x

x = (if false, [do: "hello", else: "goodbye"])
IO.puts x

IO.puts inspect((1 .. 10))

defmodule Foo.Utils do
	def map([], _), do: []
	def map([head | tail], f), do: [f.(head) | map(tail, f)]

	def my_length([_ | tail]), do: my_length(tail, 1)
	def my_length([], len), do: len
	def my_length([_ | tail], len), do: my_length(tail, len + 1)
end

IO.puts inspect(Foo.Utils.map([1,2,3,4,5], &MyMath.add/1))

IO.puts inspect(Foo.Utils.map([1,2,3,4,5], &(&1-&1)))

IO.puts Foo.Utils.my_length [1,2,3]

IO.puts String.upcase("hello")
