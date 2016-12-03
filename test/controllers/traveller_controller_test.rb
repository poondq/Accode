require 'test_helper'

class TravellerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get traveller_index_url
    assert_response :success
  end

end
