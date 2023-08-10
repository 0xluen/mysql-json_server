defmodule MysqlJsonServer.DataController do
  use Cowboy.Controller

  alias MysqlJsonServer.Repo

  action :index do
    query = from t in "tableName", select: t

    case Repo.all(query) do
      [] ->
        send_resp(conn, 404, "No data found")

      data ->
        json_data = Poison.encode!(data)
        send_resp(conn, 200, json_data)
    end
  end
end
