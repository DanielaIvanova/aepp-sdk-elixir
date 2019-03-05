defmodule AeternityNode.Model.ContractCallObject do
  alias AeternityNode.Model.EncodedByteArray

  @derive [Poison.Encoder]
  defstruct [
    :caller_id,
    :caller_nonce,
    :height,
    :contract_id,
    :gas_price,
    :gas_used,
    :return_value,
    :return_type
  ]

  @type t :: %__MODULE__{
          :caller_id => String.t(),
          :caller_nonce => integer(),
          :height => integer(),
          :contract_id => String.t(),
          :gas_price => integer(),
          :gas_used => integer(),
          :return_value => EncodedByteArray.t(),
          :return_type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallObject do
  def decode(value, options) do
    value
  end
end
