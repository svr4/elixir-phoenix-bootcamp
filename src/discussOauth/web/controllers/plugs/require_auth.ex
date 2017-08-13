defmodule Discuss.Plugs.RequireAuth do
  import Plug.Conn #halt()
  import Phoenix.Controller #redirect, put_flash

  alias Discuss.Router.Helpers


  def init(_params) do
  end

  def call(conn, _params) do
    if conn.assigns[:user] do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in.")
      |> redirect(to: Helpers.topic_path(conn, :index))
      |> halt() # sends the response and halts the executions of other plugs
    end

  end

end
