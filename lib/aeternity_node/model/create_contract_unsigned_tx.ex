defmodule AeternityNode.Model.CreateContractUnsignedTx do
  @derive [Poison.Encoder]
  defstruct [
    :tx,
    :contract_id
  ]

  @type t :: %__MODULE__{
          :tx => String.t(),
          :contract_id => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.CreateContractUnsignedTx do
  def decode(value, options) do
    value
  end
end