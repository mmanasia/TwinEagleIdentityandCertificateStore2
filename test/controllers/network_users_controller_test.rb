require 'test_helper'

class NetworkUsersControllerTest < ActionController::TestCase
  setup do
    @network_user = network_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:network_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network_user" do
    assert_difference('NetworkUser.count') do
      post :create, network_user: { CreatedBy: @network_user.CreatedBy, CreatedDate: @network_user.CreatedDate, Email: @network_user.Email, IsDeleted: @network_user.IsDeleted, LastModifiedBy: @network_user.LastModifiedBy, LastModifiedDate: @network_user.LastModifiedDate, NetworkFirstName: @network_user.NetworkFirstName, NetworkLastName: @network_user.NetworkLastName, NetworkPassword: @network_user.NetworkPassword, NetworkUsername: @network_user.NetworkUsername }
    end

    assert_redirected_to network_user_path(assigns(:network_user))
  end

  test "should show network_user" do
    get :show, id: @network_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network_user
    assert_response :success
  end

  test "should update network_user" do
    patch :update, id: @network_user, network_user: { CreatedBy: @network_user.CreatedBy, CreatedDate: @network_user.CreatedDate, Email: @network_user.Email, IsDeleted: @network_user.IsDeleted, LastModifiedBy: @network_user.LastModifiedBy, LastModifiedDate: @network_user.LastModifiedDate, NetworkFirstName: @network_user.NetworkFirstName, NetworkLastName: @network_user.NetworkLastName, NetworkPassword: @network_user.NetworkPassword, NetworkUsername: @network_user.NetworkUsername }
    assert_redirected_to network_user_path(assigns(:network_user))
  end

  test "should destroy network_user" do
    assert_difference('NetworkUser.count', -1) do
      delete :destroy, id: @network_user
    end

    assert_redirected_to network_users_path
  end
end
