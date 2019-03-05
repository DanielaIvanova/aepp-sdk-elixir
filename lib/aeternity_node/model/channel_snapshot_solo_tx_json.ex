defmodule AeternityNode.Model.ChannelSnapshotSoloTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :channel_id,
    :from_id,
    :payload,
    :ttl,
    :fee,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :channel_id => String.t(),
          :from_id => String.t(),
          :payload => String.t(),
          :ttl => integer(),
          :fee => integer(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ChannelSnapshotSoloTxJson do
  def decode(value, options) do
    value
  end
end
