require "test_helper"

class FavoriteSuppliersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favorite_suppliers_create_url
    assert_response :success
  end
end
