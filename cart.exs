defmodule Cart do
  def start(items \\ []) do
    receive do
      {:add, item} ->
        IO.puts(:ok)
        start([item | items])

      :status ->
        IO.puts("Cart: #{inspect(items)}")
        start(items)

      :delete ->
        IO.puts("Item Deleted: #{inspect(hd(items))}")
        start(tl(items))

      :exit ->
        IO.puts("good bye")
    end
  end
end
