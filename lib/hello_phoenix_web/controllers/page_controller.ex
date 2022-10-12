defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  def index(conn, _params) do
    pages = [%{title: "Foo"}, %{title: "Bar"}]

    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error!")
    render(conn, "index.html", username: "Keldy", pages: pages)
    # |> redirect(to: Routes.page_path(conn, :redirect_test))
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html", username: "Keldy")
  end

  def show(conn, _params) do

    page = %{title: "foo"}
    render(conn, "show.json", page: page)
  end
end
