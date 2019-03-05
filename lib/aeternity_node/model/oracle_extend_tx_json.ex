# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.OracleExtendTxJson do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"fee",
    :"oracle_ttl",
    :"oracle_id",
    :"nonce",
    :"ttl",
    :"version",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"fee" => integer(),
    :"oracle_ttl" => RelativeTtl,
    :"oracle_id" => EncodedHash,
    :"nonce" => integer(),
    :"ttl" => integer(),
    :"version" => integer(),
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleExtendTxJson do

  def decode(value, options) do
    value
  end
end

