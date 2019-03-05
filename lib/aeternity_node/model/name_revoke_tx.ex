defmodule AeternityNode.Model.NameRevokeTx do
  @derive [Poison.Encoder]
  defstruct [
    :name_id,
    :fee,
    :ttl,
    :account_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :name_id => String.t(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameRevokeTx do
  def decode(value, _options) do
    value
  end
end
