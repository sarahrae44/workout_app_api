require 'test_helper'

class UserexercisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userexercise = userexercises(:one)
  end

  test "should get index" do
    get userexercises_url, as: :json
    assert_response :success
  end

  test "should create userexercise" do
    assert_difference('Userexercise.count') do
      post userexercises_url, params: { userexercise: { group: @userexercise.group, integer: @userexercise.integer, references: @userexercise.references, references: @userexercise.references, user: @userexercise.user, usergroupid: @userexercise.usergroupid } }, as: :json
    end

    assert_response 201
  end

  test "should show userexercise" do
    get userexercise_url(@userexercise), as: :json
    assert_response :success
  end

  test "should update userexercise" do
    patch userexercise_url(@userexercise), params: { userexercise: { group: @userexercise.group, integer: @userexercise.integer, references: @userexercise.references, references: @userexercise.references, user: @userexercise.user, usergroupid: @userexercise.usergroupid } }, as: :json
    assert_response 200
  end

  test "should destroy userexercise" do
    assert_difference('Userexercise.count', -1) do
      delete userexercise_url(@userexercise), as: :json
    end

    assert_response 204
  end
end
