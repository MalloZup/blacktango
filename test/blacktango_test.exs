defmodule BlacktangoTest do
  use ExUnit.Case
  doctest Blacktango

  test "greets the world" do
    assert Blacktango.hello() == :world
  end
end
