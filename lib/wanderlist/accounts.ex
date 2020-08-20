defmodule Wanderlist.Accounts do
  alias Wanderlist.Accounts.User

  def get_users do
    [
      %User{id: 1, name: "Lana del Rey", username: "lanadelrey", email: "lanadelrey@email.com"},
      %User{id: 2, name: "Francis Drake", username: "pirateking",  email: "pirateking@email.com"},
      %User{id: 3, name: "Hewlett Packard", username: "hpbrand",  email: "hp@email.com"}
    ]
  end

  def get_user_by_id(id) do
    get_users()
    |> Enum.filter(&(&1.id == id))
  end

  # def create_user(attrs \\ %{}) do
  #   %User
  #   |> User.changeset(attrs)
  #   |> Repo.insert()
  # end

  def change_registration(%User{} = user, params) do
    User.changeset(user, params)
  end

  # def authenticate(username, password) do
  #   query = from u in User,
  #     inner_join: c in assoc(u, :credential),
  #     where: c.
  # end
end
