defmodule Orangeade.Generator.Boolean do
  @moduledoc """
  A boolean values generator
  
  
  ## Examples

      iex(1)> Caffeine.Stream.take(
      ...(1)> Orangeade.Generator.Boolean.stream(),
      ...(1)> 5_000)
      [false, false, nil, nil, nil, nil, false, true, false, nil, nil, nil, nil, true,
      true, nil, nil, nil, nil, false, nil, false, nil, false, nil, false, true,
      false, true, false, true, false, nil, false, true, false, false, false, false,
      false, false, true, nil, false, false, false, false, nil, true, true, ...]

  """
  def stream do
    alias Orangeade.Generator.BoundNatural, as: BoundNatural
    BoundNatural.stream(limit: 3)
      |> Caffeine.Stream.map(&bool/1)
    end
    
    defp bool(e) do
      cond do
        e === 0 ->
          :true
        e === 1 ->
          :false
        true ->
          :nil
      end
    end
end
