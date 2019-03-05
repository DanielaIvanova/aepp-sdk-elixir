defmodule AeternityNode.Model.Peers do
  alias AeternityNode.Model.Peer
  @derive [Poison.Encoder]
  defstruct [
    :peers,
    :blocked
  ]

  @type t :: %__MODULE__{
          :peers => [Peer.t()],
          :blocked => [Peer.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.Peers do
  def decode(value, options) do
    value
  end
end
