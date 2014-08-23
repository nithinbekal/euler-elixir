defmodule Euler.Problem_003 do
  def solve(x) do
    largest_prime_factor(x, 2)
  end

  defp largest_prime_factor(x, i) when x == i, do: x

  defp largest_prime_factor(x, i) do
    if rem(x, i) == 0 do
      largest_prime_factor(div(x, i), i)
    else
      largest_prime_factor(x, i+1)
    end
  end
end

IO.puts Euler.Problem_003.solve(600851475143)
