defmodule AeternityNode.Model.PostTxResponse do

  @derive [Poison.Encoder]
  defstruct [
    :"tx_hash"
  ]

  @type t :: %__MODULE__{
    :"tx_hash" => String.t()
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.PostTxResponse do
  def decode(value, options) do
    value
  end
end

