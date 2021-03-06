# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
import Config

# データベース設定を書き換え
# database_url =
#   System.get_env("DATABASE_URL") ||
#     raise """
#     environment variable DATABASE_URL is missing.
#     For example: ecto://USER:PASS@HOST/DATABASE
#     """

# config :db_server, DbServer.Repo,
#   # ssl: true,
#   url: database_url,
#   pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")

# new database configuration
config :db_server, DbServer.Repo,
  username: "postgres",
  password: "postgres",
  database: "db_prod",
  socket_dir: "/tmp/cloudsql/e-players-293208:asia-northeast1:dummy-db",
  pool_size: 10

# FIXME: In a real application, need to provide secret key in another mechanism.
# secret_key_base =
#   System.get_env("SECRET_KEY_BASE") ||
#     raise """
#     environment variable SECRET_KEY_BASE is missing.
#     You can generate one by calling: mix phx.gen.secret
#     """

config :db_server, DbServerWeb.Endpoint,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  check_origin: false,
  server: true,
  root: ".",
  secret_key_base: "85VzfG4C6TIBwPbzt0rsUD4I4mllN75Z0e2NpWA9DrU7fzZCezsprhrvqqr7CG96"
  #cache_static_manifest: "priv/static/cache_manifest.json"
  # NOTE: Past Settings
  # http: [
  #   port: String.to_integer(System.get_env("PORT") || "4000"),
  #   transport_options: [socket_opts: [:inet6]]
  # ],
  # secret_key_base: "85VzfG4C6TIBwPbzt0rsUD4I4mllN75Z0e2NpWA9DrU7fzZCezsprhrvqqr7CG96"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :db_server, DbServerWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
