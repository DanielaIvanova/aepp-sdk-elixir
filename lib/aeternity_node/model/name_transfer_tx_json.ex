defmodule AeternityNode.Model.NameTransferTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :name_id,
    :recipient_id,
    :fee,
    :ttl,
    :account_id,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :name_id => String.t(),
          :recipient_id => String.t(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameTransferTxJson do
  def decode(value, options) do
    value
  end
end
