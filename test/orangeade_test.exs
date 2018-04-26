defmodule OrangeadeTest do
  use ExUnit.Case

  test "API" do
    assert Orangeade.__info__(:functions) == [
             ascii_atom: 0,
             ascii_string: 0,
             big_natural: 0,
             binary: 0,
             boolean_and_nil: 0,
             bound_natural: 1,
             float: 0,
             integer: 0,
             printable_ascii_character: 0,
             printable_ascii_charlist: 0,
             term: 0
           ]

    assert Orangeade.Generator.BigNatural.__info__(:functions) == [
             instance: 0,
             stream: 0
           ]

    assert Orangeade.Generator.BoundNatural.__info__(:functions) == [
             stream: 1
           ]

    assert Orangeade.Generator.PrintableASCIICharacter.__info__(:functions) == [
             stream: 0
           ]

    assert Orangeade.Generator.PrintableASCIICharlist.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.ASCIIString.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.ASCIIAtom.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.Binary.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.Integer.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.Float.__info__(:functions) == [
             stream: 0,
             stream: 1
           ]

    assert Orangeade.Generator.BooleanAndNil.__info__(:functions) == [
             stream: 0
           ]

    assert Orangeade.Generator.Term.__info__(:functions) == [
             stream: 0
           ]

    assert Orangeade.Generator.List.__info__(:functions) == [
             stream: 1
           ]

    assert Orangeade.Generator.Tuple.__info__(:functions) == [
             stream: 1
           ]
  end
end
