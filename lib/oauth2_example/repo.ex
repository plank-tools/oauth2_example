defmodule OAuth2Example.Repo do
  use Ecto.Repo,
    otp_app: :oauth2_example,
    adapter: Ecto.Adapters.Postgres
end
