defmodule MysqlJsonServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :mysql_json_server,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.7"},
      {:mysql_ecto, "~> 0.6"},
      {:cowboy, "~> 2.9"},
      {:poison, "~> 4.0"}
    ]
  end
end
