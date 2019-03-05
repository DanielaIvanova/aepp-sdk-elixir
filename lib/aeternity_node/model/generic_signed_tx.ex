defmodule AeternityNode.Model.GenericSignedTx do
  alias AeternityNode.Model.GenericTx

  @derive [Poison.Encoder]
  defstruct [
    :tx,
    :block_height,
    :block_hash,
    :hash,
    :signatures
  ]

  @type t :: %__MODULE__{
          :tx => GenericTx.t(),
          :block_height => integer(),
          :block_hash => String.t(),
          :hash => String.t(),
          :signatures => [String.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.GenericSignedTx do
  def decode(value, _options) do
    value
  end
end
