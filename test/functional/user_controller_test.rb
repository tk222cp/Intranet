require 'test_helper'

class Admin::UserControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do    
    sign_in users(:one)
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { :email => 'test@intranet.com', :password => '123456789', :password_confirmation => '123456789', :first_name => 'test', :last_name => 'user' }
    end

    assert_redirected_to admin_users_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: {  }
    assert_response :success
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to admin_users_path
  end
end
