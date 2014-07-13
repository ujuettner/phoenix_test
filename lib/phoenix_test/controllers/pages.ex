defmodule PhoenixTest.Controllers.Pages do
  use Phoenix.Controller

  def index(conn, _params) do
    text conn, "index"
  end

  def show_page(conn, %{"page" => page}) do
    render conn, "pages", title: "On page #{page}"
  end
end
