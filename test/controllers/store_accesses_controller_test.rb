require 'test_helper'

class StoreAccessesControllerTest < ActionController::TestCase
  setup do
    @store_access = store_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_access" do
    assert_difference('StoreAccess.count') do
      post :create, store_access: { CertStore_id: @store_access.CertStore_id, CreatedBy: @store_access.CreatedBy, CreatedDate: @store_access.CreatedDate, IsDeleted: @store_access.IsDeleted, LastModifiedBy: @store_access.LastModifiedBy, LastModifiedDate: @store_access.LastModifiedDate, NetworkId: @store_access.NetworkId, UserStore_id: @store_access.UserStore_id }
    end

    assert_redirected_to store_access_path(assigns(:store_access))
  end

  test "should show store_access" do
    get :show, id: @store_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_access
    assert_response :success
  end

  test "should update store_access" do
    patch :update, id: @store_access, store_access: { CertStore_id: @store_access.CertStore_id, CreatedBy: @store_access.CreatedBy, CreatedDate: @store_access.CreatedDate, IsDeleted: @store_access.IsDeleted, LastModifiedBy: @store_access.LastModifiedBy, LastModifiedDate: @store_access.LastModifiedDate, NetworkId: @store_access.NetworkId, UserStore_id: @store_access.UserStore_id }
    assert_redirected_to store_access_path(assigns(:store_access))
  end

  test "should destroy store_access" do
    assert_difference('StoreAccess.count', -1) do
      delete :destroy, id: @store_access
    end

    assert_redirected_to store_accesses_path
  end
end
