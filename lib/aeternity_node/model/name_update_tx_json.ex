defmodule AeternityNode.Model.NameUpdateTxJson do
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
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :name_id => String.t(),
          :name_ttl => integer(),
          :pointers => [NamePointer.t()],
          :client_ttl => integer(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameUpdateTxJson do
  def decode(value, options) do
    value
  end
end
