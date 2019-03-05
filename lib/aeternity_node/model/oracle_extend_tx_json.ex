defmodule AeternityNode.Model.OracleExtendTxJson do
  alias AeternityNode.Model.RelativeTtl
  @derive [Poison.Encoder]
  defstruct [
    :fee,
    :oracle_ttl,
    :oracle_id,
    :nonce,
    :ttl,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :fee => integer(),
          :oracle_ttl => RelativeTtl.t(),
          :oracle_id => String.t(),
          :nonce => integer(),
          :ttl => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleExtendTxJson do
  def decode(value, options) do
    value
  end
end
