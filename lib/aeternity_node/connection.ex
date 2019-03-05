defmodule AeternityNode.Connection do
  @moduledoc """
  Handle Tesla connections for AeternityNode.
  """

  use Tesla

  # Add any middleware here (authentication)
  plug(
    Tesla.Middleware.BaseUrl,
    "http://localhost:#{Application.get_env(:aeternity_node, :external)}/v2"
  )

  plug(Tesla.Middleware.Headers, [{"User-Agent", "Elixir"}])
  plug(Tesla.Middleware.EncodeJson)

  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client()
  def new do
    Tesla.client([])
  end
end
