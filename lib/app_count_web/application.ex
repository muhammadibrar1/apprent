defmodule AppCountWeb.Application do
  use Application

  def start(_type, _args) do
    # Define workers and child supervisors to be supervised
    children = [
      # Start the endpoint when the application starts
      AppCountWeb.Endpoint
      # Start your own worker by calling: AppCountWeb.Worker.start_link(arg1, arg2, arg3)
      # worker(AppCountWeb.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AppCountWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
