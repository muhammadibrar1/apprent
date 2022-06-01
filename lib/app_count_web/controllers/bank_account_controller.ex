defmodule AppCountWeb.BankAccountController do
  use AppCountWeb, :controller

  authorize(["Accountant"])

  def index(conn, _params) do
    render(conn, "index.html", %{title: "Bank Accounts"})
  end
end
