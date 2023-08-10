defmodule MysqlJsonServerTest do
  use ExUnit.Case
  doctest MysqlJsonServer

  test "greets the world" do
    assert MysqlJsonServer.hello() == :world
  end
end
