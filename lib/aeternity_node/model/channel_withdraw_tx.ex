defmodule AeternityNode.Model.ChannelWithdrawTx do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :to_id,
    :amount,
    :ttl,
    :fee,
    :nonce,
    :state_hash,
    :round
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :to_id => String.t(),
          :amount => integer(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :state_hash => String.t(),
          :round => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelWithdrawTx do
  def decode(value, options) do
    value
  end
end