require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get products_name:string_url
    assert_response :success
  end

  test "should get price:float" do
    get products_price:float_url
    assert_response :success
  end
end
