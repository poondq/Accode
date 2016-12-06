require 'test_helper'

class CashbalanceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cashbalance_index_url
    assert_response :success
  end

end
