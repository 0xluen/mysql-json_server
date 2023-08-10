config :mysql_json_server, MysqlJsonServer.Repo,
  username: "your_mysql_username",
  password: "your_mysql_password",
  database: "testdb",
  hostname: "localhost",
  port: 3306,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10