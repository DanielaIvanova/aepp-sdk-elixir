defmodule AeternityNode.Model.ChannelCreateTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :initiator_id,
    :initiator_amount,
    :responder_id,
    :responder_amount,
    :push_amount,
    :channel_reserve,
    :lock_period,
    :ttl,
    :fee,
    :nonce,
    :state_hash,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :initiator_id => String.t(),
          :initiator_amount => integer(),
          :responder_id => String.t(),
          :responder_amount => integer(),
          :push_amount => integer(),
          :channel_reserve => integer(),
          :lock_period => integer(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :state_hash => String.t(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelCreateTxJson do
  def decode(value, options) do
    value
  end
end
