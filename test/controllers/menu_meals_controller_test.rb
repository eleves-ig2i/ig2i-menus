require 'test_helper'

class MenuMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_meal = menu_meals(:one)
  end

  test "should get index" do
    get menu_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_meal_url
    assert_response :success
  end

  test "should create menu_meal" do
    assert_difference('MenuMeal.count') do
      post menu_meals_url, params: { menu_meal: { meal_id: @menu_meal.meal_id, menu_id: @menu_meal.menu_id } }
    end

    assert_redirected_to menu_meal_url(MenuMeal.last)
  end

  test "should show menu_meal" do
    get menu_meal_url(@menu_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_meal_url(@menu_meal)
    assert_response :success
  end

  test "should update menu_meal" do
    patch menu_meal_url(@menu_meal), params: { menu_meal: { meal_id: @menu_meal.meal_id, menu_id: @menu_meal.menu_id } }
    assert_redirected_to menu_meal_url(@menu_meal)
  end

  test "should destroy menu_meal" do
    assert_difference('MenuMeal.count', -1) do
      delete menu_meal_url(@menu_meal)
    end

    assert_redirected_to menu_meals_url
  end
end
