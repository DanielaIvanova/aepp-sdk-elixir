defmodule AeternityNode.Model.SophiaJsonData do
  @derive [Poison.Encoder]
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data => Object
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.SophiaJsonData do
  def decode(value, options) do
    value
  end
end
