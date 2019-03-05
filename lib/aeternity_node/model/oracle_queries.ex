defmodule AeternityNode.Model.OracleQueries do
  alias AeternityNode.Model.OracleQuery
  @derive [Poison.Encoder]
  defstruct [
    :oracle_queries
  ]

  @type t :: %__MODULE__{
          :oracle_queries => [OracleQuery.t()]
        }
end

defimpl Poison.Decoder, for: AeternityNode.Model.OracleQueries do
  def decode(value, options) do
    value
  end
end
