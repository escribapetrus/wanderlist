defmodule Wanderlist.Repo.Migrations.CreateCredentials do
  use Ecto.Migration

  def change do
    create table(:credentials) do
      add :password_hash, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end
  end
end
