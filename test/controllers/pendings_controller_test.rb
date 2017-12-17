require 'test_helper'

class PendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get pendings_update_url
    assert_response :success
  end

end
