defmodule ElixirLearn.CLI do
  def main(args) do
    args |> parse_args |> do_stuff
  end

  defp parse_args(args) do
    options = OptionParser.parse(args)

    case options do
      {[name: name], _, _} -> name
      {[help: true], _, _} -> :help
      _ -> :help
    end
  end

  defp do_stuff(:help) do
    IO.puts """
      Usage:
      ./elixir_learn --name [your name]

      Options:
      --help  Show this help message.

      Description:
      Prints out a sweet message.
    """

    System.halt(0)
  end
  defp do_stuff(name) do
    if is_boolean(name) do
      IO.puts "Usage: --name [name]"
    else
      IO.puts "Hello, #{name}! You're awesome!!"
    end
  end
end
