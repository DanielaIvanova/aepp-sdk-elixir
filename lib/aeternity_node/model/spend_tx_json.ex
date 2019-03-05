defmodule AeternityNode.Model.SpendTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :recipient_id,
    :amount,
    :fee,
    :ttl,
    :sender_id,
    :nonce,
    :payload,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :recipient_id => String.t(),
          :amount => integer(),
          :fee => integer(),
          :ttl => integer(),
          :sender_id => String.t(),
          :nonce => integer(),
          :payload => String.t(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.SpendTxJson do
  def decode(value, options) do
    value
  end
end
