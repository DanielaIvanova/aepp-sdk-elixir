defmodule Utils.AccountUtil do
  alias AeternityNode.Api.Account
  alias AeternityNode.Connection
  alias AeternityNode.Api.Chain
  alias AeternityNode.Model.SpendTx

  @spend_tx_gas_price 15_000

  def next_nonce(pub_key, _connection) do
    {:ok, data} = Account.get_account_by_pubkey(Connection.new(), pub_key) #TODO: adjust connection to be variable
    data.nonce + 1
  end

  def calculate_min_fee(%SpendTx{} = tx) do
     (@spend_tx_gas_price + byte_size(RLP.tx) + 0 #(for each txs should be function gas for spend is 0)
     ) * 1000000 # aec_hard_forks:protocol_effective_at_height(current_height)
    end

  def get_current_height(_connection) do  #TODO: adjust connection to be variable
    {:ok, data} = Chain.get_current_key_block(Connection.new())
    data.height
  end
end
