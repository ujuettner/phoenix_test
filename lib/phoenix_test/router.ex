defmodule PhoenixTest.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :phoenix_test
  get "/pages", PhoenixTest.Controllers.Pages, :index
  get "/pages/:page", PhoenixTest.Controllers.Pages, :show_page, as: :page
  get "/", PhoenixTest.Controllers.Index, :index
end
