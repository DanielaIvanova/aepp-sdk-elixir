# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.DryRunAccount do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"pub_key",
    :"amount"
  ]

  @type t :: %__MODULE__{
    :"pub_key" => EncodedHash,
    :"amount" => integer()
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.DryRunAccount do

  def decode(value, options) do
    value
  end
end

