defmodule Builder.Tx do
  alias AeternityNode.Model.SpendTx
  alias Utils.AccountUtil
  alias Utils.Encoding

  def spend_tx(amount, recipient_id, sender_id, payload \\ "", ttl \\ 0) do
    # nonce = AccountUtil.next_nonce(sender_id, "")

    fee = 0
    nonce = 37181
    sender_bin = Encoding.prefix_decode_base58c(sender_id)
    recipient_bin = Encoding.prefix_decode_base58c(recipient_id)

    no_fee_tx =
      new(SpendTx,
        amount: amount,
        recipient_id: recipient_bin,
        sender_id: sender_bin,
        payload: payload,
        ttl: ttl,
        nonce: nonce,
        fee: fee
      )

    %{
      no_fee_tx
      | fee: AccountUtil.calculate_min_fee(no_fee_tx),
        sender_id: sender_id,
        recipient_id: recipient_id
    }
  end

  def new(type, fields \\ []) when is_atom(type) do
    struct(type, fields)
  end
end
