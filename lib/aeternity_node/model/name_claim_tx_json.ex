defmodule AeternityNode.Model.NameClaimTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :name,
    :name_salt,
    :fee,
    :ttl,
    :account_id,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :name_salt => integer(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameClaimTxJson do
  def decode(value, options) do
    value
  end
end
