defmodule HomeAutomation.SessionController do
  use HomeAutomation.Web, :controller

  def index(conn, _params) do
    conn
    |> json(%{status: "Ok"})
  end
end
