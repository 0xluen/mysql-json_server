defmodule MysqlJsonServer.Router do
  use Cowboy.Router

  pipeline :api do
    plug :match
    plug :dispatch
  end

  scope "/", MysqlJsonServer do
    pipe_through :api

    get "/data", DataController, :index
  end
end
