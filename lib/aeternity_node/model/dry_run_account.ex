defmodule AeternityNode.Model.DryRunAccount do
  @derive [Poison.Encoder]
  defstruct [
    :pub_key,
    :amount
  ]

  @type t :: %__MODULE__{
          :pub_key => String.t(),
          :amount => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.DryRunAccount do
  def decode(value, options) do
    value
  end
end
