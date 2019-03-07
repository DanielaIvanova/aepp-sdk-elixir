defmodule AeternityNode.Model.ContractCallInput do
  @derive [Poison.Encoder]
  defstruct [
    :abi,
    :code,
    :function,
    :arg,
    :call
  ]

  @type t :: %__MODULE__{
          :abi => String.t(),
          :code => String.t(),
          :function => String.t(),
          :arg => String.t(),
          :call => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallInput do
  def decode(value, _options) do
    value
  end
end
