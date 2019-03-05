# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.ContractCallTxJson do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"caller_id",
    :"nonce",
    :"contract_id",
    :"vm_version",
    :"fee",
    :"ttl",
    :"amount",
    :"gas",
    :"gas_price",
    :"call_data",
    :"version",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"caller_id" => EncodedHash,
    :"nonce" => integer(),
    :"contract_id" => EncodedHash,
    :"vm_version" => integer(),
    :"fee" => integer(),
    :"ttl" => integer(),
    :"amount" => integer(),
    :"gas" => integer(),
    :"gas_price" => integer(),
    :"call_data" => EncodedByteArray,
    :"version" => integer(),
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractCallTxJson do

  def decode(value, options) do
    value
  end
end

