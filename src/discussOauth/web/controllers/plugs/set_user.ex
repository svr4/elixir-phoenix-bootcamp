defmodule Discuss.Plugs.SetUser do
  import Plug.Conn # assign()
  import Phoenix.Controller #get_session

  alias Discuss.Repo
  alias Discuss.User


  def init(_params) do
  end

  # _params - The return value from the init function
  def call(conn, _params) do
    user_id = get_session(conn, :user_id)

    cond do
      user = user_id && Repo.get(User, user_id) ->
        # Adds user to %{assigns} that can share data within Phoenix.
        # assign lives within the conn obj, so it modifies conn
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil)
    end

  end

end
