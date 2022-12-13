defmodule Frank.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Doug.Supervisor, [app_name: Frank.Doug.app_name]}
    ]

    opts = [strategy: :one_for_one, name: Frank.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
