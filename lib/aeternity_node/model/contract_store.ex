defmodule AeternityNode.Model.ContractStore do
  alias AeternityNode.Model.ContractStoreStore

  @derive [Poison.Encoder]
  defstruct [
    :store
  ]

  @type t :: %__MODULE__{
          :store => [ContractStoreStore.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractStore do
  def decode(value, options) do
    value
  end
end
