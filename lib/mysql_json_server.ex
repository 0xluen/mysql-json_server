defmodule MysqlJsonServer do
  use Application

  def start(_type, _args) do
    children = [
      {Cowboy, scheme: :http, plug: MysqlJsonServer.Router, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: MysqlJsonServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end