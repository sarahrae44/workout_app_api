require 'test_helper'

class UsersavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usersafe = usersaves(:one)
  end

  test "should get index" do
    get usersaves_url, as: :json
    assert_response :success
  end

  test "should create usersafe" do
    assert_difference('Usersafe.count') do
      post usersaves_url, params: { usersafe: { group_id: @usersafe.group_id, user_id: @usersafe.user_id, usergroupid: @usersafe.usergroupid } }, as: :json
    end

    assert_response 201
  end

  test "should show usersafe" do
    get usersafe_url(@usersafe), as: :json
    assert_response :success
  end

  test "should update usersafe" do
    patch usersafe_url(@usersafe), params: { usersafe: { group_id: @usersafe.group_id, user_id: @usersafe.user_id, usergroupid: @usersafe.usergroupid } }, as: :json
    assert_response 200
  end

  test "should destroy usersafe" do
    assert_difference('Usersafe.count', -1) do
      delete usersafe_url(@usersafe), as: :json
    end

    assert_response 204
  end
end
