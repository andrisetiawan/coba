defmodule Infobola.PageController do
  require Logger
  use Infobola.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def webhook(conn, params) do
    Logger.info(params)
    # Yocingo.send_message(id, Handler.parse(text, from))
    render conn, "index.html"
  end

  # def parse(text, from) do
  #
  #   text = String.replace(text, "@InfobolaBot", "")
  #         |> String.strip
  #         |> String.downcase
  #   answer = answer(text)
  #
  #   if answer do
  #     answer
  #   else
  #     from <> ", " <> text # JUST A PONG MESSAGE
  #   end
  # end
  #
  # defp answer("hello") do
  #   "hey!"
  # end
  #
  # defp answer(_question) do
  #   nil
  # end

end
