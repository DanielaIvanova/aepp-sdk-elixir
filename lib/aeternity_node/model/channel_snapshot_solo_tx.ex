defmodule AeternityNode.Model.ChannelSnapshotSoloTx do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :from_id,
    :payload,
    :ttl,
    :fee,
    :nonce
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :from_id => String.t(),
          :payload => String.t(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelSnapshotSoloTx do
  def decode(value, _options) do
    value
  end
end
