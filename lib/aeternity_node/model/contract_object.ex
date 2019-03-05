defmodule AeternityNode.Model.ContractObject do
  @derive [Poison.Encoder]
  defstruct [
    :id,
    :owner_id,
    :vm_version,
    :log,
    :active,
    :referrer_ids,
    :deposit
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :owner_id => String.t(),
          :vm_version => integer(),
          :log => String.t(),
          :active => boolean(),
          :referrer_ids => [String.t()],
          :deposit => integer()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.ContractObject do
  def decode(value, options) do
    value
  end
end
