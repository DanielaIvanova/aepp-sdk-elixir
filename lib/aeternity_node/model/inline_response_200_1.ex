# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.InlineResponse2001 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"height"
  ]

  @type t :: %__MODULE__{
    :"height" => integer()
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.InlineResponse2001 do
  def decode(value, _options) do
    value
  end
end

