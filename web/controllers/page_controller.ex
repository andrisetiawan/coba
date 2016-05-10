defmodule Infobola.PageController do
  require Logger
  use Infobola.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def webhook(conn, %{ "message" => %{ "chat" => chat, "date" => date, "from" => from, "message_id" => message_id, "text" => text }}) do
    # %{
    #   "message" => %{
    #     "chat" => %{
    #       "first_name" => "Andri",
    #       "id" => 82911682,
    #       "last_name" => "Setiawan",
    #       "type" => "private",
    #       "username" => "andriset"
    #     },
    #     "date" => 1462851529,
    #     "from" => %{
    #       "first_name" => "Andri",
    #       "id" => 82911682,
    #       "last_name" => "Setiawan",
    #       "username" => "andriset"
    #     },
    #     "message_id" => 9,
    #     "text" => "adsfasf"
    #   },
    #   "update_id" => 949329732
    # }

    reply_message = "hi, " <> from["first_name"] <> " kamu nulis: " <> text
    Yocingo.send_message(chat["id"], reply_message, false, nil, %{ "force_reply" => false })
    # Yocingo.send_message(82911682, "asfasdf ogitu",false,nil, %{ "force_reply" => false })
    # Yocingo.send_message(82911682, "ya atau ngga?", false, nil, %{ "keyboard" => [ [%{ "text" => "yes"}, %{ "text" => "no"}]], "one_time_keyboard" => true, "resize_keyboard" => true })
    # Yocingo.send_message(82911682, "ya atau ngga?", false, nil, %{ "keyboard" => [ [%{ "text" => "yes", "request_location" => true}, %{ "text" => "no"}]], "one_time_keyboard" => true, "resize_keyboard" => true })
    # Yocingo.send_message(82911682, "ya atau ngga?", false, nil, %{ "hide_keyboard" => true })
    log = from["first_name"] <> ":" <> text
    Logger.info(log)
    # Yocingo.send_message(id, Handler.parse(text, from))
    render conn, "index.html"
  end
end
