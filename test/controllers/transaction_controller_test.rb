require 'test_helper'

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transaction_index_url
    assert_response :success
  end

end
