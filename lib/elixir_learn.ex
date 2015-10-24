defmodule ElixirLearn do
  use Application

  def start(_type, _args) do
    ElixirLearn.Supervisor.start_link
  end
end
