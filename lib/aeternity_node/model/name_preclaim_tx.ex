defmodule AeternityNode.Model.NamePreclaimTx do
  @derive [Poison.Encoder]
  defstruct [
    :commitment_id,
    :fee,
    :ttl,
    :account_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :commitment_id => String.t(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NamePreclaimTx do
  def decode(value, options) do
    value
  end
end
