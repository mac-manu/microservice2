defmodule Microservicio2Test do
  use ExUnit.Case
  doctest Microservicio2

  test "greets the world" do
    assert Microservicio2.hello() == :world
  end
end
