json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :walletid, :coinsaveid
  json.url wallet_url(wallet, format: :json)
end
