defmodule HelloPhoenixWeb.HelloPhoenixController do
  use HelloPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
    # render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> assign(:messenger, messenger)
    |> assign(:reciever, "Kenneth")
    |> render("show.html")
    # render(conn, "show.html", messenger: messenger)
    # text(conn , "From Messenger #{messenger}")
    # json(conn, %{id: messenger})
  end
end
