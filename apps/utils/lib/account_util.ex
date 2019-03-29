defmodule Utils.AccountUtil do
  alias AeternityNode.Api.Account
  alias AeternityNode.Connection
  alias AeternityNode.Api.Chain
  alias AeternityNode.Model.SpendTx
  alias Utils.Encoding

  @spend_tx_gas_price 15_000

  def next_nonce(pub_key, _connection) do
    # TODO: adjust connection to be variable
    {:ok, data} = Account.get_account_by_pubkey(Connection.new(), pub_key)
    data.nonce + 1
  end

  def calculate_min_fee(%SpendTx{} = tx) do
    # (for each txs should be function gas for spend is 0)
    # aec_hard_forks:protocol_effective_at_height(current_height)
    (@spend_tx_gas_price + byte_size(Encoding.rlp_encode(tx)) + 0) * 1_000_000
  end

  # TODO: adjust connection to be variable
  def get_current_height(_connection) do
    {:ok, data} = Chain.get_current_key_block(Connection.new())
    data.height
  end
end
