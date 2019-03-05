defmodule AeternityNode.Model.OracleRegisterTxJson do
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
    :vm_version,
    :version,
    :type
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
          :vm_version => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleRegisterTxJson do
  def decode(value, _options) do
    value
  end
end
