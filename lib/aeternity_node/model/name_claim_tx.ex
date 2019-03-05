defmodule AeternityNode.Model.NameClaimTx do
  @derive [Poison.Encoder]
  defstruct [
    :name,
    :name_salt,
    :fee,
    :ttl,
    :account_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :name_salt => integer(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameClaimTx do
  def decode(value, options) do
    value
  end
end