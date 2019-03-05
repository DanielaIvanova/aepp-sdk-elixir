defmodule AeternityNode.Model.ContractCreateTx do
  alias AeternityNode.Model.EncodedByteArray

  @derive [Poison.Encoder]
  defstruct [
    :owner_id,
    :nonce,
    :code,
    :vm_version,
    :deposit,
    :amount,
    :gas,
    :gas_price,
    :fee,
    :ttl,
    :call_data
  ]

  @type t :: %__MODULE__{
          :owner_id => String.t(),
          :nonce => integer(),
          :code => String.t(),
          :vm_version => integer(),
          :deposit => integer(),
          :amount => integer(),
          :gas => integer(),
          :gas_price => integer(),
          :fee => integer(),
          :ttl => integer(),
          :call_data => EncodedByteArray.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCreateTx do
  def decode(value, _options) do
    value
  end
end
