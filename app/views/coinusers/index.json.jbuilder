json.array!(@coinusers) do |coinuser|
  json.extract! coinuser, :id, :username, :email, :encryptedpwd, :userid
  json.url coinuser_url(coinuser, format: :json)
end
