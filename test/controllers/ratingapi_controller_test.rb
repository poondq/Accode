require 'test_helper'

class RatingapiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ratingapi_index_url
    assert_response :success
  end

end
