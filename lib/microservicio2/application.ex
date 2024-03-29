defmodule Microservicio2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Microservicio2.Worker.start_link(arg)
      # {Microservicio2.Worker, arg}
      Plug.Cowboy.child_spec( plug: Microservicio2.Ruta, scheme: :http, options: [port: 4000] )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Microservicio2.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
