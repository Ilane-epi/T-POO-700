import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :module_1, Module1.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "module_1_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :module_1, Module1Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "7dmNJbTg2qiJ/3KRbd1pMul13Nxq1E8vSDGpLkfSpjSe398vxs/YNeipauEj9q9H",
  server: false

# In test we don't send emails.
config :module_1, Module1.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
