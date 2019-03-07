defmodule AeternityNode.Model.ContractCallTxJson do
  alias AeternityNode.Model.EncodedByteArray

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
    :call_data,
    :version,
    :type
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
          :call_data => EncodedByteArray.t(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallTxJson do
  def decode(value, _options) do
    value
  end
end
