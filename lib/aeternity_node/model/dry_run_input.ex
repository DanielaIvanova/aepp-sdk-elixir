defmodule AeternityNode.Model.DryRunInput do
  alias AeternityNode.Model.DryRunAccount

  @derive [Poison.Encoder]
  defstruct [
    :top,
    :accounts,
    :txs
  ]

  @type t :: %__MODULE__{
          :top => String.t(),
          :accounts => [DryRunAccount.t()],
          :txs => [String.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.DryRunInput do
  def decode(value, options) do
    value
  end
end
