defmodule Euler.Problem_002 do
  def solve(n) do
    fib(n)
    |> Enum.filter( fn(x) -> rem(x, 2) == 0 end )
    |> Enum.sum
  end

  defp fib(limit), do: fib(limit, [1, 1])

  defp fib(limit, [ h | t ]) when h >= limit, do: t

  defp fib(limit, [ h | t ]) when h < limit do
    next = h + hd(t)
    fib(limit, [next, h] ++ t)
  end
end

IO.puts Euler.Problem_002.solve(4_000_000)
