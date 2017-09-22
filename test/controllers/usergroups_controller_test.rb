require 'test_helper'

class UsergroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usergroup = usergroups(:one)
  end

  test "should get index" do
    get usergroups_url, as: :json
    assert_response :success
  end

  test "should create usergroup" do
    assert_difference('Usergroup.count') do
      post usergroups_url, params: { usergroup: { group_id: @usergroup.group_id, integer: @usergroup.integer, user: @usergroup.user, usergroupid: @usergroup.usergroupid } }, as: :json
    end

    assert_response 201
  end

  test "should show usergroup" do
    get usergroup_url(@usergroup), as: :json
    assert_response :success
  end

  test "should update usergroup" do
    patch usergroup_url(@usergroup), params: { usergroup: { group_id: @usergroup.group_id, integer: @usergroup.integer, user: @usergroup.user, usergroupid: @usergroup.usergroupid } }, as: :json
    assert_response 200
  end

  test "should destroy usergroup" do
    assert_difference('Usergroup.count', -1) do
      delete usergroup_url(@usergroup), as: :json
    end

    assert_response 204
  end
end
