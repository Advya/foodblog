require "test_helper"

class PentriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pentry = pentries(:one)
  end

  test "should get index" do
    get pentries_url
    assert_response :success
  end

  test "should get new" do
    get new_pentry_url
    assert_response :success
  end

  test "should create pentry" do
    assert_difference('Pentry.count') do
      post pentries_url, params: { pentry: { calories: @pentry.calories, carbohydrates: @pentry.carbohydrates, fats: @pentry.fats, meal_type: @pentry.meal_type, proteins: @pentry.proteins } }
    end

    assert_redirected_to pentry_url(Pentry.last)
  end

  test "should show pentry" do
    get pentry_url(@pentry)
    assert_response :success
  end

  test "should get edit" do
    get edit_pentry_url(@pentry)
    assert_response :success
  end

  test "should update pentry" do
    patch pentry_url(@pentry), params: { pentry: { calories: @pentry.calories, carbohydrates: @pentry.carbohydrates, fats: @pentry.fats, meal_type: @pentry.meal_type, proteins: @pentry.proteins } }
    assert_redirected_to pentry_url(@pentry)
  end

  test "should destroy pentry" do
    assert_difference('Pentry.count', -1) do
      delete pentry_url(@pentry)
    end

    assert_redirected_to pentries_url
  end
end
