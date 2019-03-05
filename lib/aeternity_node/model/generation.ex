defmodule AeternityNode.Model.Generation do
  alias AeternityNode.Model.KeyBlock

  @derive [Poison.Encoder]
  defstruct [
    :key_block,
    :micro_blocks
  ]

  @type t :: %__MODULE__{
          :key_block => KeyBlock.t(),
          :micro_blocks => [String.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.Generation do
  def decode(value, options) do
    value
  end
end
