defmodule AeternityNode.Model.OracleRegisterTx do
  alias AeternityNode.Model.Ttl
  @derive [Poison.Encoder]
  defstruct [
    :query_format,
    :response_format,
    :query_fee,
    :oracle_ttl,
    :account_id,
    :nonce,
    :fee,
    :ttl,
    :vm_version
  ]

  @type t :: %__MODULE__{
          :query_format => String.t(),
          :response_format => String.t(),
          :query_fee => integer(),
          :oracle_ttl => Ttl.t(),
          :account_id => String.t(),
          :nonce => integer(),
          :fee => integer(),
          :ttl => integer(),
          :vm_version => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleRegisterTx do
  def decode(value, _options) do
    value
  end
end
