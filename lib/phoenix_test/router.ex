defmodule PhoenixTest.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :phoenix_test
  get "/", PhoenixTest.Controllers.Pages, :index, as: :page
end
