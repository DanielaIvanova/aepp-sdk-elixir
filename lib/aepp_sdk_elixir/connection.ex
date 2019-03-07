defmodule AeternityNode.Connection do
  @moduledoc """
  Handle Tesla connections for AeternityNode.
  """

  use Tesla

  plug(Tesla.Middleware.Headers, [{"User-Agent", "Elixir"}])
  plug(Tesla.Middleware.EncodeJson)

  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client()
  def new() do
    # Application.get_env(:)
    Tesla.client([{Tesla.Middleware.BaseUrl, "http://localhost:3113/v2"}])
  end

  @spec new(String.t()) :: Tesla.Env.client()
  def new(url) do
    Tesla.client([{Tesla.Middleware.BaseUrl, url}])
  end
end
