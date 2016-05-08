defmodule Handler do

  def parse(text, from) do

    text = String.replace(text, "@InfobolaBot", "")
          |> String.strip
          |> String.downcase
    answer = answer(text)

    if answer do
      answer
    else
      from <> ", " <> text # JUST A PONG MESSAGE
    end
  end

  def answer("hello") do
    "hey!"
  end

  def answer(_question) do
    nil
  end
end
