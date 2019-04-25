defmodule Util do
  types = ~w[function nil integer binary bitstring list map float atom tuple pid port reference]
  for type <- types do
    def typeof(x) when unquote(:"is_#{type}")(x), do: unquote(type)
  end
end

defmodule GlobalIdTest do
  use ExUnit.Case
  doctest GlobalId

  test "generates an unique id " do
    assert Util.typeof(GlobalId.get_id(1)) == "binary"
  end

  test "generates a node_id" do
    node_id = GlobalId.node_id()
    assert is_integer(node_id)
    assert node_id >= 1 && node_id <= 1024
  end

  test "returns timestamp" do
    timestamp = GlobalId.timestamp()
    assert is_integer(timestamp)
    assert timestamp > 0
  end
end
