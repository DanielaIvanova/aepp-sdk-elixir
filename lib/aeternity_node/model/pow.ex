defmodule AeternityNode.Model.Pow do
  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: AeternityNode.Model.Pow do
  def decode(value, _options) do
    value
  end
end
