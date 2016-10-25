require 'test_helper'

class UserStoreRolesControllerTest < ActionController::TestCase
  setup do
    @user_store_role = user_store_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_store_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_store_role" do
    assert_difference('UserStoreRole.count') do
      post :create, user_store_role: { CreatedBy: @user_store_role.CreatedBy, CreatedDate: @user_store_role.CreatedDate, IsDeleted: @user_store_role.IsDeleted, LastModifiedBy: @user_store_role.LastModifiedBy, LastModifiedDate: @user_store_role.LastModifiedDate, Role_id: @user_store_role.Role_id, UserStore_id: @user_store_role.UserStore_id }
    end

    assert_redirected_to user_store_role_path(assigns(:user_store_role))
  end

  test "should show user_store_role" do
    get :show, id: @user_store_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_store_role
    assert_response :success
  end

  test "should update user_store_role" do
    patch :update, id: @user_store_role, user_store_role: { CreatedBy: @user_store_role.CreatedBy, CreatedDate: @user_store_role.CreatedDate, IsDeleted: @user_store_role.IsDeleted, LastModifiedBy: @user_store_role.LastModifiedBy, LastModifiedDate: @user_store_role.LastModifiedDate, Role_id: @user_store_role.Role_id, UserStore_id: @user_store_role.UserStore_id }
    assert_redirected_to user_store_role_path(assigns(:user_store_role))
  end

  test "should destroy user_store_role" do
    assert_difference('UserStoreRole.count', -1) do
      delete :destroy, id: @user_store_role
    end

    assert_redirected_to user_store_roles_path
  end
end
