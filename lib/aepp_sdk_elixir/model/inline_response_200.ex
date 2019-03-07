defmodule AeternityNode.Model.InlineResponse200 do
  @derive [Poison.Encoder]
  defstruct [
    :hash
  ]

  @type t :: %__MODULE__{
          :hash => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.InlineResponse200 do
  def decode(value, _options) do
    value
  end
end
