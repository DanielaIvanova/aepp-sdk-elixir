# Aepp SDK Elixir

Elixir SDK for the revolutionary [æternity](https://aeternity.com/) blockchain, targeting the
[æternity node](https://github.com/aeternity/aeternity) implementation.

## Prerequisites
Ensure that you have installed [Elixir](https://elixir-lang.org/install.html).

## Setup the project

```
git clone https://github.com/aeternity/aepp-sdk-elixir

cd aepp-sdk-elixir/

mix deps.get

iex -S mix
```

## Usage example
**1.** To get an account record by pubkey, you should call:
``` elixir
AeternityNode.Api.Account.get_account_by_pubkey(AeternityNode.Connection.new(),"ak_1GPPzM3VDKCP5RNEbp2uBNtgGTHRNQmrNkeAKGp7wfPWKYQvM")
```
Where:
- `AeternityNode.Connection.new()` - creates a connection which holds the endpoint configuration, if called without parameter `path`, defaults to `"http://localhost:3013/v2"`.
- `"ak_1GPPzM3VDKCP5RNEbp2uBNtgGTHRNQmrNkeAKGp7wfPWKYQvM"` - account pubkey.

**NOTE:** The given pubkey should exist in `aeternity node's chainstate` in order to be found, otherwise will return `%{"reason" => "Account not found"}`.

The return of the function should look like this: 
``` elixir
{:ok,
 %AeternityNode.Model.Account{
   balance: 6098700000000000000000,  #Can be different
   id: "ak_1GPPzM3VDKCP5RNEbp2uBNtgGTHRNQmrNkeAKGp7wfPWKYQvM",
   nonce: 0 #Can be different
}}
```

**2.** To get a current key block, you should call:
``` elixir 
AeternityNode.Api.Chain.get_current_key_block(AeternityNode.Connection.new())
```
Where:
- `AeternityNode.Connection.new()` - creates a connection which holds the endpoint configuration, if called without parameter `path`, defaults to `"http://localhost:3013/v2"`.
  
The return of the function should look like this: 
``` elixir
{:ok,
 %AeternityNode.Model.KeyBlock{
   beneficiary: "ak_nv5B93FPzRHrGNmMdTDfGdd5xGZvep3MVSpJqzcQmMp59bBCv",
   hash: "kh_7yGzhvDCJNKdpbxGkgrZ4AJfA6dpfwUsBD6DiQRAPDPTVZv8t",
   height: 7102,
   miner: "ak_mfuNAYUAQdxbVEkmw2tRPEVatzN7sgHZJPWzxr6J6eg3d8L1i",
   nonce: 1326703982947845778,
   pow: [8032809, 11985601, 15963635, 28206594, 41296775, 49316931, 54134274,
    77296457, 98647370, 101750126, 103002178, 108346976, 154525207, 185524902,
    188217962, 189252946, 198597578, 216081364, 224382950, 224843211, 236735187,
    249520027, 272348481, 299468982, 313571775, 325759167, 329378971, 330604592,
    333134592, 345735022, 379948147, 387441614, 404027442, 435483211, 436684202,
    479049039, 480484638, 481117675, 481134412, 492612388, 516295486,
    529772129],
   prev_hash: "mh_2TDzxxZzfSVA9B13r69XVKyUKHmDjR3gxjPZaDUCg89iKs4Uk6",
   prev_key_hash: "kh_2Jr3RhPsh9PmyYVfJE2hEjERe9NfNASf6Gt9vQU2G6F25mgf1c",
   state_hash: "bs_2ruaz3QTu6KaQKoawob1Sw8du8sbzuo4oxHhK2avvopNCDwJbB",
   target: 505147291,
   time: 1544621099346,
   version: 1
}}
```

**3.** To get generation by `height`, you should call:
``` elixir
AeternityNode.Api.Chain.get_generation_by_height(AeternityNode.Connection.new(), 7)
```

Where: 
- `AeternityNode.Connection.new()` - creates a connection which holds the endpoint configuration, if called without parameter `path`, defaults to `"http://localhost:3013/v2"`.
- `7` - key block height.

The return of the function should look like this: 
``` elixir
{:ok,
 %AeternityNode.Model.Generation{
   key_block: %{
     "beneficiary" => "ak_2BMyg3B2p3KF4bosu7hyjvh2d38scnRyhU1H2peWdM2bMLBxqL",
     "hash" => "kh_2f4piAHhPLFMqjzCGe8H3ithxsLwpXsVHYut9Mfewrk5HBpd6t",
     "height" => 7,
     "miner" => "ak_2pFzpvuGp23T3vUGdihJCcsoUduRJK4ZNWDVZ8pZQEEZsM6ySx",
     "nonce" => 11293829797202889208,
     "pow" => [19679812, 20719909, 41031692, 92789355, 96517974, 126968771,
      130826629, 214903943, 220923455, 231577447, 231702711, 252064491,
      253426269, 266187434, 271207823, 301284156, 304551663, 314773415,
      314973367, 316925686, 320557720, 329410295, 335225302, 344884946,
      363851571, 372488896, 373108845, 373328816, 388065033, 393854955,
      396838782, 407373602, 430128434, 435972588, 456998863, 465815191,
      474882106, 475122799, 494754470, 520963758, 531592744, ...],
     "prev_hash" => "kh_X7PoDFRUbH5Vb3zhyJ8dT5SmtknWBrX5srEbufJqUWM5xHeUs",
     "prev_key_hash" => "kh_X7PoDFRUbH5Vb3zhyJ8dT5SmtknWBrX5srEbufJqUWM5xHeUs",
     "state_hash" => "bs_2pAUexcNWE9HFruXUugY28yfUifWDh449JK1dDgdeMix5uk8Q",
     "target" => 522133279,
     "time" => 1543376476328,
     "version" => 1
   },
   micro_blocks: []
}}
```