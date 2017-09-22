require 'test_helper'

class UserExesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_ex = user_exes(:one)
  end

  test "should get index" do
    get user_exes_url, as: :json
    assert_response :success
  end

  test "should create user_ex" do
    assert_difference('UserEx.count') do
      post user_exes_url, params: { user_ex: { exercise_id: @user_ex.exercise_id, user_id: @user_ex.user_id, userexid: @user_ex.userexid } }, as: :json
    end

    assert_response 201
  end

  test "should show user_ex" do
    get user_ex_url(@user_ex), as: :json
    assert_response :success
  end

  test "should update user_ex" do
    patch user_ex_url(@user_ex), params: { user_ex: { exercise_id: @user_ex.exercise_id, user_id: @user_ex.user_id, userexid: @user_ex.userexid } }, as: :json
    assert_response 200
  end

  test "should destroy user_ex" do
    assert_difference('UserEx.count', -1) do
      delete user_ex_url(@user_ex), as: :json
    end

    assert_response 204
  end
end
