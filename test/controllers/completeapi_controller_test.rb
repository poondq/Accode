require 'test_helper'

class CompleteapiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get completeapi_index_url
    assert_response :success
  end

end
