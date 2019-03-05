defmodule AeternityNode.Model.NameTransferTx do
  @derive [Poison.Encoder]
  defstruct [
    :name_id,
    :recipient_id,
    :fee,
    :ttl,
    :account_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :name_id => String.t(),
          :recipient_id => String.t(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameTransferTx do
  def decode(value, options) do
    value
  end
end
