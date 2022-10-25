defmodule Module1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Module1.Repo,
      # Start the Telemetry supervisor
      Module1Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Module1.PubSub},
      # Start the Endpoint (http/https)
      Module1Web.Endpoint
      # Start a worker by calling: Module1.Worker.start_link(arg)
      # {Module1.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Module1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Module1Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
