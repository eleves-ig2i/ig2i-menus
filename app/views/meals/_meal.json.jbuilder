json.extract! meal, :id, :name, :ingredients, :created_at, :updated_at
json.url meal_url(meal, format: :json)
