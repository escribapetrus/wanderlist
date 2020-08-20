defmodule WanderlistWeb.UserController do
  use WanderlistWeb, :controller
  alias Wanderlist.Accounts
  alias Wanderlist.Accounts.User

  def index(conn, _params) do
    users = Accounts.get_users()
    render(conn, "index.html", [users: users])
  end

  def new(conn,_params) do
    changeset = Accounts.change_registration(%User{}, %{})
    render(conn, :new, [changeset: changeset])
  end

  def create(conn, %{"user" => _params}) do
    conn |> redirect(to: Routes.page_path(conn, :index))
  end

end
