defmodule Tools do
  @moduledoc """
  Documentation for Tools.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Tools.hello()
      :hello_world

  """
  def hello do
    :hello_world
  end

end


defmodule Person do
  @moduledoc """
  Example: %Person{first_name: "John", last_name: "Smith"}
  """
  defstruct first_name: "", last_name: ""
end

defimpl Inspect, for: Person do
  def inspect(person, _opts) do
    person.first_name <> " " <> person.last_name
  end
end


defmodule Proc do
  def report(count) do
    new_count = receive do
      msg -> IO.puts("Recieved #{count}: #{msg}")
      count + 1
    end
    report(new_count)
  end
end

# pid = spawn(Proc, :report, [1])
# Process.register(pid, :proc_report)
# send(:proc_report, :hello)


###############################

# C:\Windows\system32>iex --sname foo
# Interactive Elixir (1.8.0) - press Ctrl+C to exit (type h() ENTER for help)
# iex(foo@L-PWI)1> defmodule Hello do
# ...(foo@L-PWI)1> def hi, do: IO.puts "hello world"
# ...(foo@L-PWI)1> end

# C:\Windows\system32>iex --sname bar
# Interactive Elixir (1.8.0) - press Ctrl+C to exit (type h() ENTER for help)
# iex(bar@L-PWI)1> Node.spawn_link :"foo@L-PWI", fn -> Hello.hi end