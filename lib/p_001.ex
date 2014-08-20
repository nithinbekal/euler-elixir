defmodule Euler.Problem_001 do
  def solve(n) do
    1..n
    |> Enum.filter( fn(x) -> rem(x, 3) == 0 or rem(x, 5) == 0 end )
    |> Enum.sum
  end
end

IO.puts Euler.Problem_001.solve(1000)
