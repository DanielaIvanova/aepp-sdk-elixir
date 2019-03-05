defmodule AeternityNode.Model.GenericTxs do
  alias AeternityNode.Model.GenericSignedTx

  @derive [Poison.Encoder]
  defstruct [
    :transactions
  ]

  @type t :: %__MODULE__{
          :transactions => [GenericSignedTx.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.GenericTxs do
  def decode(value, options) do
    value
  end
end
