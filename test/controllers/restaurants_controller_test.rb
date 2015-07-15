require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get favorite" do
    get :favorite
    assert_response :success
  end

end
