defmodule AeternityNode.Model.KeyBlockOrMicroBlockHeader do
  alias AeternityNode.Model.KeyBlock
  alias AeternityNode.Model.MicroBlockHeader

  @derive [Poison.Encoder]
  defstruct [
    :key_block,
    :micro_block
  ]

  @type t :: %__MODULE__{
          :key_block => KeyBlock.t(),
          :micro_block => MicroBlockHeader.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.KeyBlockOrMicroBlockHeader do
  def decode(value, options) do
    value
  end
end
