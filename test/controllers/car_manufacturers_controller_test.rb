require "test_helper"

class CarManufacturersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_manufacturers_index_url
    assert_response :success
  end

  test "should get show" do
    get car_manufacturers_show_url
    assert_response :success
  end
end
