defmodule AeternityNode.Model.ContractCallTx do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :caller_id,
    :nonce,
    :contract_id,
    :vm_version,
    :abi_version,
    :fee,
    :ttl,
    :amount,
    :gas,
    :gas_price,
    :call_data
  ]

  @type t :: %__MODULE__{
          :caller_id => String.t(),
          :nonce => integer() | nil,
          :contract_id => String.t(),
          :vm_version => integer() | nil,
          :abi_version => integer() | nil,
          :fee => integer(),
          :ttl => integer() | nil,
          :amount => integer(),
          :gas => integer(),
          :gas_price => integer(),
          :call_data => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallTx do
  def decode(value, _options) do
    value
  end
end