defmodule AeternityNode.Model.ChannelForceProgressTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :from_id,
    :payload,
    :round,
    :update,
    :state_hash,
    :ttl,
    :fee,
    :nonce,
    :offchain_trees,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :from_id => String.t(),
          :payload => String.t(),
          :round => integer(),
          :update => map(),
          :state_hash => String.t(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :offchain_trees => String.t(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelForceProgressTxJson do
  def decode(value, _options) do
    value
  end
end