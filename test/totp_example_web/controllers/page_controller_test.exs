defmodule TotpExampleWeb.PageControllerTest do
  use TotpExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "TOTP Example Application"
  end
end
