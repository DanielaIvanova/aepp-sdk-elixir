# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.OracleRespondTx do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"query_id",
    :"response",
    :"response_ttl",
    :"fee",
    :"ttl",
    :"oracle_id",
    :"nonce"
  ]

  @type t :: %__MODULE__{
    :"query_id" => EncodedHash,
    :"response" => String.t,
    :"response_ttl" => RelativeTtl,
    :"fee" => integer(),
    :"ttl" => integer(),
    :"oracle_id" => EncodedHash,
    :"nonce" => integer()
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleRespondTx do

  def decode(value, options) do
    value
  end
end

