defmodule AeternityNode.Model.Uri do
  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: AeternityNode.Model.Uri do
  def decode(value, _options) do
    value
  end
end
