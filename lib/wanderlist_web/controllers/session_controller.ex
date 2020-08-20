defmodule WanderlistWeb.SessionController do
  use WanderlistWeb, :controller

  def new(conn,_params) do
    render(conn, "new.html")
  end

  # def create(conn, %{"user" => %{"username" => username, "password" => password}}) do
  #   case Accounts.authenticate(username, password) do
  #     {ok, user} ->
  #       conn
  #       |> put_flash(:info, "Welcome back!")
  #       |> put_session(:user_id, user.id)
  #       |> configure_session(renew: true)
  #       |> redirect(to: Routes.page_path(conn, :index))
  #     {:error, :unauthorized} ->
  #       conn
  #       |> put_flash(:error, "Bad email/password combination")
  #       |> redirect(to: Routes.session_path(conn, :new))
  #   end
  # end

  def delete(conn, _) do
    conn
    |> configure_session(drop: true)
    |> redirect(to: Routes.page_path(conn, :index))
  end
end
