defmodule WanderlistWeb.PageController do
  use WanderlistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
