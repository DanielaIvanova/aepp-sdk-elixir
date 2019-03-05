defmodule AeternityNode.Model.OracleResponseTxJson do
  alias AeternityNode.Model.RelativeTtl
  @derive [Poison.Encoder]
  defstruct [
    :query_id,
    :response,
    :response_ttl,
    :fee,
    :ttl,
    :oracle_id,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :query_id => String.t(),
          :response => String.t(),
          :response_ttl => RelativeTtl.t(),
          :fee => integer(),
          :ttl => integer(),
          :oracle_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleResponseTxJson do
  def decode(value, _options) do
    value
  end
end
