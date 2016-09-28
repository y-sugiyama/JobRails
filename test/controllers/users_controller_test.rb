require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get users_add_url
    assert_response :success
  end

  test "should get delete" do
    get users_delete_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

end
