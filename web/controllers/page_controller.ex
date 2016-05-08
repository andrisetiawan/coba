defmodule Infobola.PageController do
  use Infobola.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
