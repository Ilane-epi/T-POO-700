defmodule Module1Web.PageController do
  use Module1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
