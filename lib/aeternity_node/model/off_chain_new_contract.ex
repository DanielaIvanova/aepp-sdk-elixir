defmodule AeternityNode.Model.OffChainNewContract do
  alias AeternityNode.Model.ByteCode
  alias AeternityNode.Model.EncodedByteArray
  @derive [Poison.Encoder]
  defstruct [
    :op,
    :owner,
    :vm_version,
    :code,
    :deposit,
    :call_data
  ]

  @type t :: %__MODULE__{
          :op => String.t(),
          :owner => String.t(),
          :vm_version => integer(),
          :code => ByteCode.t(),
          :deposit => integer(),
          :call_data => EncodedByteArray.t()
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OffChainNewContract do
  def decode(value, _options) do
    value
  end
end
