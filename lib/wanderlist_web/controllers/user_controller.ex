defmodule WanderlistWeb.UserController do
  use WanderlistWeb, :controller
  alias Wanderlist.Accounts

  def index(conn, _params) do
    users = Accounts.get_users()
    render(conn, "index.html", [users: users])
  end
end
