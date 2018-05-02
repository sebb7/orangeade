defmodule Orangeade.Application.Supervisor do
  use Supervisor

  def start_link(start_seed: seed) do
    Supervisor.start_link(__MODULE__, seed)
  end

  def init(seed) do
    children = [
      %{
        id: SeedState,
        start: {Orangeade.Application.SeedState, :start_link, [[start_seed: seed]]}
      }
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
