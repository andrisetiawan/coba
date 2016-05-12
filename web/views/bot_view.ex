defmodule Infobola.BotView do
  use Infobola.Web, :view

  def render("webhook.json", _object) do
    %{status: "ok"}
  end

  def render("404.json", _object) do
    %{status: "404"}
  end
end
