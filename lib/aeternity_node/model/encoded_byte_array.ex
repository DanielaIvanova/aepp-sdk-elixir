defmodule AeternityNode.Model.EncodedByteArray do
  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: AeternityNode.Model.EncodedByteArray do
  def decode(value, _options) do
    value
  end
end
