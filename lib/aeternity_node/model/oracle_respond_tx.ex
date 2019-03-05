defmodule AeternityNode.Model.OracleRespondTx do
  alias AeternityNode.Model.RelativeTtl
  @derive [Poison.Encoder]
  defstruct [
    :query_id,
    :response,
    :response_ttl,
    :fee,
    :ttl,
    :oracle_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :query_id => String.t(),
          :response => String.t(),
          :response_ttl => RelativeTtl.t(),
          :fee => integer(),
          :ttl => integer(),
          :oracle_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleRespondTx do
  def decode(value, options) do
    value
  end
end
