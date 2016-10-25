require 'test_helper'

class UserStoresControllerTest < ActionController::TestCase
  setup do
    @user_store = user_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_store" do
    assert_difference('UserStore.count') do
      post :create, user_store: { CreatedBy: @user_store.CreatedBy, CreatedDate: @user_store.CreatedDate, Environment_id: @user_store.Environment_id, IdentityType_id: @user_store.IdentityType_id, IsDeleted: @user_store.IsDeleted, LastModifiedBy: @user_store.LastModifiedBy, LastModifiedDate: @user_store.LastModifiedDate, Source_id: @user_store.Source_id, UserStoreExpirationDate: @user_store.UserStoreExpirationDate, UserStoreName: @user_store.UserStoreName, UserStorePassword: @user_store.UserStorePassword }
    end

    assert_redirected_to user_store_path(assigns(:user_store))
  end

  test "should show user_store" do
    get :show, id: @user_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_store
    assert_response :success
  end

  test "should update user_store" do
    patch :update, id: @user_store, user_store: { CreatedBy: @user_store.CreatedBy, CreatedDate: @user_store.CreatedDate, Environment_id: @user_store.Environment_id, IdentityType_id: @user_store.IdentityType_id, IsDeleted: @user_store.IsDeleted, LastModifiedBy: @user_store.LastModifiedBy, LastModifiedDate: @user_store.LastModifiedDate, Source_id: @user_store.Source_id, UserStoreExpirationDate: @user_store.UserStoreExpirationDate, UserStoreName: @user_store.UserStoreName, UserStorePassword: @user_store.UserStorePassword }
    assert_redirected_to user_store_path(assigns(:user_store))
  end

  test "should destroy user_store" do
    assert_difference('UserStore.count', -1) do
      delete :destroy, id: @user_store
    end

    assert_redirected_to user_stores_path
  end
end
