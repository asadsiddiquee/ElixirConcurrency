defmodule Hello do
  def name do
    receive do
      {:name, name} ->
        IO.puts(name)
        name()

      :exit ->
        "sorry to see you go"

      :kaboom ->
        raise "BOOOOM!!!!"
    end
  end
end
