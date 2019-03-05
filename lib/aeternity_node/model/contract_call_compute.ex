defmodule AeternityNode.Model.ContractCallCompute do
  @derive [Poison.Encoder]
  defstruct [
    :caller_id,
    :nonce,
    :contract_id,
    :vm_version,
    :fee,
    :ttl,
    :amount,
    :gas,
    :gas_price,
    :function,
    :arguments,
    :call
  ]

  @type t :: %__MODULE__{
          :caller_id => String.t(),
          :nonce => integer(),
          :contract_id => String.t(),
          :vm_version => integer(),
          :fee => integer(),
          :ttl => integer(),
          :amount => integer(),
          :gas => integer(),
          :gas_price => integer(),
          :function => String.t(),
          :arguments => String.t(),
          :call => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallCompute do
  def decode(value, _options) do
    value
  end
end
