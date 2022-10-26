defmodule GameTest do
  use ExUnit.Case

  test "greets the world" do
    {:ok, pid} = Game.start_link
  end
end
