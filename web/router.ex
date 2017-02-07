defmodule HomeAutomation.Router do
  use HomeAutomation.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", HomeAutomation do
    pipe_through :api

    resources "session", SessionController, only: [:index]
  end
end
