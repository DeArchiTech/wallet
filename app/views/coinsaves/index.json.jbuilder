json.array!(@coinsaves) do |coinsafe|
  json.extract! coinsafe, :id, :coinsaveid, :walletid
  json.url coinsafe_url(coinsafe, format: :json)
end
