defmodule AeternityNode.Model.SpendTx do
  @derive [Poison.Encoder]
  defstruct [
    :recipient_id,
    :amount,
    :fee,
    :ttl,
    :sender_id,
    :nonce,
    :payload
  ]

  @type t :: %__MODULE__{
          :recipient_id => String.t(),
          :amount => integer(),
          :fee => integer(),
          :ttl => integer(),
          :sender_id => String.t(),
          :nonce => integer(),
          :payload => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.SpendTx do
  def decode(value, options) do
    value
  end
end
