json.array!(@crews) do |crew|
  json.extract! crew, :id, :name, :game_id
end