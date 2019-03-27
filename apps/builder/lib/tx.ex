defmodule Builder.Tx do
  alias AeternityNode.Model.SpendTx
  alias Utils.AccountUtil

  def spend_tx(amount, recipient_id, sender_id, payload \\ "", ttl \\ 0) do

    nonce = AccountUtil.next_nonce(sender_id, "")

    fee = 1


      new(SpendTx,
        amount: amount,
        recipient_id: recipient_id,
        sender_id: sender_id,
        payload: payload,
        ttl: ttl,
        nonce: nonce,
        fee: fee
      )
  end

  def new(type, fields \\ []) when is_atom(type) do
    struct(type, fields)
  end
end
