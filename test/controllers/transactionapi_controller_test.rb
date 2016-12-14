require 'test_helper'

class TransactionapiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transactionapi_index_url
    assert_response :success
  end

end
