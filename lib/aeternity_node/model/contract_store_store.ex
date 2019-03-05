defmodule AeternityNode.Model.ContractStoreStore do
  alias AeternityNode.Model.EncodedByteArray

  @derive [Poison.Encoder]
  defstruct [
    :key,
    :value
  ]

  @type t :: %__MODULE__{
          :key => String.t(),
          :value => EncodedByteArray.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractStoreStore do
  def decode(value, options) do
    value
  end
end
