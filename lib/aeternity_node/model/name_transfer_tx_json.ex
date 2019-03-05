# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.NameTransferTxJson do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name_id,
    :recipient_id,
    :fee,
    :ttl,
    :account_id,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :name_id => EncodedHash,
          :recipient_id => EncodedHash,
          :fee => integer(),
          :ttl => integer(),
          :account_id => EncodedHash,
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameTransferTxJson do
  def decode(value, options) do
    value
  end
end
