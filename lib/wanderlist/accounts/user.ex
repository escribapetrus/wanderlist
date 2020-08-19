defmodule Wanderlist.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Wanderlist.Accounts.User
  alias Wanderlist.Accounts.Credential

  schema "users" do
    field :name, :string
    field :username, :string
    field :email, :string
    has_many :credential, Credential
    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :username, :email])
    |> validate_required([:username, :email])
    |> unique_constraint([:username, :email])
  end

end
