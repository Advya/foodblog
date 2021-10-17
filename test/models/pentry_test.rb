require "test_helper"

class PentryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is vaid" do
    entry = Pentry.new(meal_type: "Breakfast", carbohydrates: 34, proteins: 45, calories: 235, fats: 55)
    assert entry.save
  end
end
