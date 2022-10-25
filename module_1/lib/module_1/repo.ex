defmodule Module1.Repo do
  use Ecto.Repo,
    otp_app: :module_1,
    adapter: Ecto.Adapters.Postgres
end
