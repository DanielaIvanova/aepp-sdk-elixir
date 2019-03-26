defmodule Utils.Encoding do
  @moduledoc """
  Contains encoding/decoding utils
  """

  @checksum_bytes 4

  @prefix_bits 24

  @typedoc """
  A base58check string.
  """
  @type base58c :: String.t()

  @typedoc """
  A hexadecimal string.
  """
  @type hex :: String.t()

  @doc false

  @spec prefix_encode_base58c(String.t(), binary()) :: base58c()
  def prefix_encode_base58c(prefix, payload) when is_binary(payload),
    do: prefix <> "_" <> encode_base58c(payload)

  @doc false

  @spec prefix_decode_base58c(base58c()) :: binary()
  def prefix_decode_base58c(<<_prefix::@prefix_bits, payload::binary>>),
    do: decode_base58c(payload)

  @doc """
  Encodes a binary payload to base58check.

  ## Examples
      iex> Utils.Encoding.encode_base58c(<<200, 90, 234, 160, 66, 120, 244, 87, 88, 94, 87, 208, 13, 42, 126, 71, 172, 2, 81, 252, 214, 24, 155, 227, 26, 49, 210, 31, 106, 147, 200, 81>>)
      "2XEob1Ub1DWCzeMLm1CWQKrUBsVfF9zLZBDaUXiu6Lr1qLn55n"
  """

  @spec encode_base58c(binary()) :: base58c()
  def encode_base58c(payload) do
    checksum = generate_checksum(payload)

    payload
    |> Kernel.<>(checksum)
    |> :base58.binary_to_base58()
    |> to_string()
  end

  @doc """
  Decodes a base58check string to binary.

      iex> Utils.Encoding.decode_base58c("2XEob1Ub1DWCzeMLm1CWQKrUBsVfF9zLZBDaUXiu6Lr1qLn55n")
      <<200, 90, 234, 160, 66, 120, 244, 87, 88, 94, 87, 208, 13, 42, 126, 71, 172, 2, 81, 252, 214, 24, 155, 227, 26, 49, 210, 31, 106, 147, 200, 81>>
  """

  @spec decode_base58c(base58c()) :: binary()
  def decode_base58c(payload) do
    decoded_payload =
      payload
      |> String.to_charlist()
      |> :base58.base58_to_binary()

    bsize = byte_size(decoded_payload) - @checksum_bytes
    <<data::binary-size(bsize), _checksum::binary-size(@checksum_bytes)>> = decoded_payload

    data
  end

  defp generate_checksum(payload) do
    <<checksum::binary-size(@checksum_bytes), _::binary>> =
      :crypto.hash(:sha256, :crypto.hash(:sha256, payload))

    checksum
  end
end
