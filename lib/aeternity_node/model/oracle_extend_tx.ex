defmodule AeternityNode.Model.OracleExtendTx do
  alias AeternityNode.Model.RelativeTtl
  @derive [Poison.Encoder]
  defstruct [
    :fee,
    :oracle_ttl,
    :oracle_id,
    :nonce,
    :ttl
  ]

  @type t :: %__MODULE__{
          :fee => integer(),
          :oracle_ttl => RelativeTtl.t(),
          :oracle_id => String.t(),
          :nonce => integer(),
          :ttl => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleExtendTx do
  def decode(value, options) do
    value
  end
end
