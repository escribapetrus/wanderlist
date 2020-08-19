defmodule WanderlistWeb.SessionController do
  use WanderlistWeb, :controller

  def new(conn,_params) do
    render(conn, "new.html")
  end
end
