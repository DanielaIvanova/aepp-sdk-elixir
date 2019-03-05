defmodule AeternityNode.Model.NamePreclaimTxJson do
  @derive [Poison.Encoder]
  defstruct [
    :commitment_id,
    :fee,
    :ttl,
    :account_id,
    :nonce,
    :version,
    :type
  ]

  @type t :: %__MODULE__{
          :commitment_id => String.t(),
          :fee => integer(),
          :ttl => integer(),
          :account_id => String.t(),
          :nonce => integer(),
          :version => integer(),
          :type => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NamePreclaimTxJson do
  def decode(value, options) do
    value
  end
end
