defmodule GlobalId do
  @moduledoc """
  Documentation for GlobalId.
  GlobalId module contains an implementation of a guaranteed globally unique id system.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GlobalId.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Please implement the following function.
  64 bit non negative integer output
  """
  @spec get_id(non_neg_integer) :: non_neg_integer
  def get_id(last_id) do
    Base.encode64("#{last_id}:#{node_id()}:#{timestamp()}")
  end

  #
  # You are given the following helper functions
  # Presume they are implemented - there is no need to implement them.
  #

  @doc """
  Returns your node id as an integer.
  It will be greater than or equal to 0 and less than or equal to 1024.
  It is guaranteed to be globally unique.
  """
  @spec node_id() :: non_neg_integer
  def node_id do
    Enum.random(1..1024)
  end

  @doc """
  Returns timestamp since the epoch in milliseconds.
  """
  @spec timestamp() :: non_neg_integer
  def timestamp do
    :os.system_time(:seconds)
  end

end
