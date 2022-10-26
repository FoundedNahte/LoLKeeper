defmodule Game do
  use GenServer

  # Client

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok)
  end

  def add_player(player_name) do
    GenServer.cast(__MODULE__, {:add_player, name})

    {:ok, name}
  end

  def remove_player(name) do
    GenServer.cast(__MODULE__, {:remove_player, name})

    {:ok, name}
  end

  # Server

  @impl true
  def init(:ok) do
    {:ok, %{:red => %{
      :top => nil,
      :jungle => nil,
      :middle => nil,
      :bottom => nil,
      :support => nil,
    }
    , :blue => %{
      :top => nil,
      :jungle => nil,
      :middle => nil,
      :bottom => nil,
      :support => nil,
    }}}
  end

  @impl true
  def handle_cast(:add_player, team) do

  end

  @impl true
  def handle_cast(:add_player, team) do

  end
end
