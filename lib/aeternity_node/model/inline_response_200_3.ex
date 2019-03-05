defmodule AeternityNode.Model.InlineResponse2003 do
  @derive [Poison.Encoder]
  defstruct [
    :pubkey
  ]

  @type t :: %__MODULE__{
          :pubkey => String.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.InlineResponse2003 do
  def decode(value, _options) do
    value
  end
end
