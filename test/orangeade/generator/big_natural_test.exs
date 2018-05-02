defmodule Orangeade.Generator.BigNaturalTest do
  use ExUnit.Case
  alias Orangeade.Generator.BigNatural

  test "generated elements are always natural" do
    list_of_elements =
      BigNatural.stream()
      |> Caffeine.Stream.take(10)

    assert Enum.all?(list_of_elements, &is_natural/1)
  end

  defp is_natural(n) when n >= 0 do
    true
  end

  defp is_natural(_n) do
    false
  end
end
