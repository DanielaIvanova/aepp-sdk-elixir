# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.OffChainCallContract do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :op,
    :caller,
    :contract,
    :vm_version,
    :amount,
    :gas,
    :gas_price,
    :call_data
  ]

  @type t :: %__MODULE__{
          :op => String.t(),
          :caller => EncodedHash,
          :contract => EncodedHash,
          :vm_version => integer(),
          :amount => integer(),
          :gas => integer(),
          :gas_price => integer(),
          :call_data => EncodedByteArray
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OffChainCallContract do
  def decode(value, options) do
    value
  end
end
