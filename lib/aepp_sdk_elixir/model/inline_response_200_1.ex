defmodule AeternityNode.Model.InlineResponse2001 do
  @derive [Poison.Encoder]
  defstruct [
    :height
  ]

  @type t :: %__MODULE__{
          :height => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.InlineResponse2001 do
  def decode(value, _options) do
    value
  end
end
