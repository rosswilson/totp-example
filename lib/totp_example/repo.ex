defmodule TotpExample.Repo do
  use Ecto.Repo,
    otp_app: :totp_example,
    adapter: Ecto.Adapters.Postgres
end
