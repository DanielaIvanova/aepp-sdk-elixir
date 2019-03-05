defmodule AeternityNode.Model.Calldata do
  @derive [Poison.Encoder]
  defstruct [
    :calldata
  ]

  @type t :: %__MODULE__{
          :calldata => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.Calldata do
  def decode(value, options) do
    value
  end
end
