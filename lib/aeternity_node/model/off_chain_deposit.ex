defmodule AeternityNode.Model.OffChainDeposit do
  @derive [Poison.Encoder]
  defstruct [
    :op,
    :from,
    :am
  ]

  @type t :: %__MODULE__{
          :op => String.t(),
          :from => String.t(),
          :am => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OffChainDeposit do
  def decode(value, options) do
    value
  end
end
