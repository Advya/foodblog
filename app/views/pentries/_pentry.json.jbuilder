json.extract! pentry, :id, :meal_type, :calories, :proteins, :carbohydrates, :fats, :created_at, :updated_at
json.url pentry_url(pentry, format: :json)
