defmodule AeternityNode.Model.DryRunResult do
  alias AeternityNode.Model.ContractCallObject

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :result,
    :reason,
    :call_obj
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :result => String.t(),
          :reason => String.t(),
          :call_obj => ContractCallObject.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.DryRunResult do
  def decode(value, options) do
    value
  end
end
