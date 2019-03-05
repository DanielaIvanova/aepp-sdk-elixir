# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AeternityNode.Model.MicroBlockHeader do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"hash",
    :"height",
    :"pof_hash",
    :"prev_hash",
    :"prev_key_hash",
    :"state_hash",
    :"txs_hash",
    :"signature",
    :"time",
    :"version"
  ]

  @type t :: %__MODULE__{
    :"hash" => EncodedHash,
    :"height" => integer(),
    :"pof_hash" => String.t,
    :"prev_hash" => EncodedHash,
    :"prev_key_hash" => EncodedHash,
    :"state_hash" => EncodedHash,
    :"txs_hash" => EncodedHash,
    :"signature" => EncodedHash,
    :"time" => integer(),
    :"version" => integer()
  }
end

defimpl Poison.Decoder, for: AeternityNode.Model.MicroBlockHeader do

  def decode(value, options) do
    value
  end
end

