defmodule AeternityNode.Model.ChannelCloseMutualTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :from_id,
    :initiator_amount_final,
    :responder_amount_final,
    :ttl,
    :fee,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :from_id => String.t(),
          :initiator_amount_final => integer(),
          :responder_amount_final => integer(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelCloseMutualTxJson do
  def decode(value, options) do
    value
  end
end