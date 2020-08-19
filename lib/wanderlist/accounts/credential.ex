defmodule Wanderlist.Accounts.Credential do
  use Ecto.Schema
  # import Ecto.Changeset
  # alias Wanderlist.Accounts.Credential
  alias Wanderlist.Accounts.User

  schema "credentials" do
      field :password_hash, :string
      belongs_to :user, User
      timestamps()
  end

  # def changeset(%Credential{} = credential, attrs) do
  #   credential
  #   |> cast(attrs, [:password_hash])
  # end
end
