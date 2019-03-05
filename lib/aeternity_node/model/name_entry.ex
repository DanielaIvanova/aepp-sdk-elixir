defmodule AeternityNode.Model.NameEntry do
  alias AeternityNode.Model.NamePointer

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :ttl,
    :pointers
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :ttl => integer(),
          :pointers => [NamePointer.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.NameEntry do
  def decode(value, options) do
    value
  end
end
