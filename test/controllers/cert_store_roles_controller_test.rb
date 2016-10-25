require 'test_helper'

class CertStoreRolesControllerTest < ActionController::TestCase
  setup do
    @cert_store_role = cert_store_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cert_store_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert_store_role" do
    assert_difference('CertStoreRole.count') do
      post :create, cert_store_role: { CertStore_id: @cert_store_role.CertStore_id, CreatedBy: @cert_store_role.CreatedBy, CreatedDate: @cert_store_role.CreatedDate, IsDeleted: @cert_store_role.IsDeleted, LastModifiedBy: @cert_store_role.LastModifiedBy, LastModifiedDate: @cert_store_role.LastModifiedDate, Role_id: @cert_store_role.Role_id }
    end

    assert_redirected_to cert_store_role_path(assigns(:cert_store_role))
  end

  test "should show cert_store_role" do
    get :show, id: @cert_store_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert_store_role
    assert_response :success
  end

  test "should update cert_store_role" do
    patch :update, id: @cert_store_role, cert_store_role: { CertStore_id: @cert_store_role.CertStore_id, CreatedBy: @cert_store_role.CreatedBy, CreatedDate: @cert_store_role.CreatedDate, IsDeleted: @cert_store_role.IsDeleted, LastModifiedBy: @cert_store_role.LastModifiedBy, LastModifiedDate: @cert_store_role.LastModifiedDate, Role_id: @cert_store_role.Role_id }
    assert_redirected_to cert_store_role_path(assigns(:cert_store_role))
  end

  test "should destroy cert_store_role" do
    assert_difference('CertStoreRole.count', -1) do
      delete :destroy, id: @cert_store_role
    end

    assert_redirected_to cert_store_roles_path
  end
end
