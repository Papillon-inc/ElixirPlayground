defmodule WebServer.Repo do
  use Ecto.Repo,
    otp_app: :web_server,
    adapter: Ecto.Adapters.Postgres
end
