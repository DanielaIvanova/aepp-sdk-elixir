defmodule AeternityNode.Model.OracleQueryTx do
  alias AeternityNode.Model.Ttl
  alias AetenrityNode.Model.RelativeTtl

  @derive [Poison.Encoder]
  defstruct [
    :oracle_id,
    :query,
    :query_fee,
    :query_ttl,
    :response_ttl,
    :fee,
    :ttl,
    :sender_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :oracle_id => String.t(),
          :query => String.t(),
          :query_fee => integer(),
          :query_ttl => Ttl.t(),
          :response_ttl => RelativeTtl.t(),
          :fee => integer(),
          :ttl => integer(),
          :sender_id => EncodedHash,
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleQueryTx do
  def decode(value, options) do
    value
  end
end
