defmodule AeternityNode.Api.Account do
  @moduledoc """
  API calls for all endpoints tagged `Account`.
  """

  alias AeternityNode.Connection
  import AeternityNode.RequestBuilder


  @doc """
  Get an account by public key

  ## Parameters

  - connection (AeternityNode.Connection): Connection to server
  - pubkey (String.t): The public key of the account
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AeternityNode.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec get_account_by_pubkey(Tesla.Env.client, String.t, keyword()) :: {:ok, AeternityNode.Model.Account.t} | {:error, Tesla.Env.t}
  def get_account_by_pubkey(connection, pubkey, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{pubkey}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AeternityNode.Model.Account{})
  end

  @doc """
  Get pending account transactions by public key

  ## Parameters

  - connection (AeternityNode.Connection): Connection to server
  - pubkey (String.t): The public key of the account
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AeternityNode.Model.GenericTxs{}} on success
  {:error, info} on failure
  """
  @spec get_pending_account_transactions_by_pubkey(Tesla.Env.client, String.t, keyword()) :: {:ok, AeternityNode.Model.GenericTxs.t} | {:error, Tesla.Env.t}
  def get_pending_account_transactions_by_pubkey(connection, pubkey, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{pubkey}/transactions/pending")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AeternityNode.Model.GenericTxs{})
  end
end
