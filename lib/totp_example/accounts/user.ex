defmodule TotpExample.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "users" do
    field :email, :string
    field :otp_last, :integer, default: 0
    field :otp_secret, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
    |> unique_constraint(:email)
    |> generate_otp_secret()
  end

  defp generate_otp_secret(changeset) do
    secret = :crypto.strong_rand_bytes(10) |> Base.encode32()
    put_change(changeset, :otp_secret, secret)
  end
end
