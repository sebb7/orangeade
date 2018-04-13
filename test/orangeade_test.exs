defmodule OrangeadeTest do
  use ExUnit.Case

  test "API" do
    assert Orangeade.__info__(:functions) == [
    ]
    assert Orangeade.Generator.BigNatural.__info__(:functions) == [
      instance: 0
    ]
    assert Orangeade.Generator.BoundNatural.__info__(:functions) == [
      stream: 1
    ]
    assert Orangeade.Generator.Integer.__info__(:functions) == [
      stream: 1
    ]
    assert Orangeade.Generator.Float.__info__(:functions) == [
      stream: 1
    ]
  end
end
