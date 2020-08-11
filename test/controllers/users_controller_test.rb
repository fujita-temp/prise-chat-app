require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get root_path
    #signupのパス使用時は以下のコマンドを使用
    #get sign_up_path
    assert_response :success
  end

end
