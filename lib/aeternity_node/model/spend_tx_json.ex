# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.SpendTxJson do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :recipient_id,
    :amount,
    :fee,
    :ttl,
    :sender_id,
    :nonce,
    :payload,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :recipient_id => EncodedHash,
          :amount => integer(),
          :fee => integer(),
          :ttl => integer(),
          :sender_id => EncodedHash,
          :nonce => integer(),
          :payload => String.t(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.SpendTxJson do
  def decode(value, options) do
    value
  end
end
