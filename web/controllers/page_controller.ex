defmodule Goals.PageController do
  use Goals.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
