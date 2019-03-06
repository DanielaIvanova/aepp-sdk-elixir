defmodule AeternityNode.Model.NameUpdateTx do
  alias AeternityNode.Model.NamePointer
  @derive [Poison.Encoder]
  defstruct [
    :name_id,
    :name_ttl,
    :pointers,
    :client_ttl,
    :fee,
    :ttl,
    :account_id,
    :nonce
  ]

  @type t :: %__MODULE__{
          :name_id => String.t(),
          :name_ttl => integer(),
          :pointers => [NamePointer.t()],
          :client_ttl => integer(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameUpdateTx do
  def decode(value, _options) do
    value
  end
end
