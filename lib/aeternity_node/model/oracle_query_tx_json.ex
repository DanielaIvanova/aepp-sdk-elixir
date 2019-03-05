defmodule AeternityNode.Model.OracleQueryTxJson do
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
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :oracle_id => EncodedHash,
          :query => String.t(),
          :query_fee => integer(),
          :query_ttl => Ttl.t(),
          :response_ttl => RelativeTtl.t(),
          :fee => integer(),
          :ttl => integer(),
          :sender_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleQueryTxJson do
  def decode(value, _options) do
    value
  end
end
