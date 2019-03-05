defmodule AeternityNode.Model.InlineResponse2002 do
  @derive [Poison.Encoder]
  defstruct [
    :count
  ]

  @type t :: %__MODULE__{
          :count => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.InlineResponse2002 do
  def decode(value, _options) do
    value
  end
end
