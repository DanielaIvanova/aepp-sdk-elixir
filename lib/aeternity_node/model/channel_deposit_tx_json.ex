defmodule AeternityNode.Model.ChannelDepositTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :from_id,
    :amount,
    :ttl,
    :fee,
    :nonce,
    :state_hash,
    :round,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :from_id => String.t(),
          :amount => integer(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :state_hash => String.t(),
          :round => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelDepositTxJson do
  def decode(value, options) do
    value
  end
end
