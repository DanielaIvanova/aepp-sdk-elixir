defmodule AeternityNode.Model.DryRunResults do
  alias AeternityNode.Model.DryRunResult

  @derive [Poison.Encoder]
  defstruct [
    :results
  ]

  @type t :: %__MODULE__{
          :results => [DryRunResult.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.DryRunResults do
  def decode(value, _options) do
    value
  end
end
