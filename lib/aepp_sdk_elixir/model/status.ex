defmodule AeternityNode.Model.Status do
  alias AeternityNode.Model.Protocol
  @derive [Poison.Encoder]
  defstruct [
    :genesis_key_block_hash,
    :solutions,
    :difficulty,
    :syncing,
    :listening,
    :protocols,
    :node_version,
    :node_revision,
    :peer_count,
    :pending_transactions_count,
    :network_id
  ]

  @type t :: %__MODULE__{
          :genesis_key_block_hash => String.t(),
          :solutions => integer(),
          :difficulty => float(),
          :syncing => boolean(),
          :listening => boolean(),
          :protocols => [Protocol.t()],
          :node_version => String.t(),
          :node_revision => String.t(),
          :peer_count => integer(),
          :pending_transactions_count => integer(),
          :network_id => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.Status do
  def decode(value, _options) do
    value
  end
end