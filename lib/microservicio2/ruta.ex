defmodule Microservicio2.Ruta do
  #CONN
  import Plug.Conn

  def init(options) do
    IO.inspect(options, label: "init ")
    options
  end


  def call(conn, _options ) do
    IO.inspect(conn, label: "conn ")
    # peticiones https
    send_resp( conn, 200, "Hello World!" )
  end

end
