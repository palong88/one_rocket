json.array!(@people) do |person|
  json.extract! person, :id, :name, :email, :start_date
  json.url person_url(person, format: :json)
end
