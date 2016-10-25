require 'test_helper'

class CertSourceLinksControllerTest < ActionController::TestCase
  setup do
    @cert_source_link = cert_source_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cert_source_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert_source_link" do
    assert_difference('CertSourceLink.count') do
      post :create, cert_source_link: { CertStore_id: @cert_source_link.CertStore_id, CreatedBy: @cert_source_link.CreatedBy, CreatedDate: @cert_source_link.CreatedDate, IsDeleted: @cert_source_link.IsDeleted, LastModifiedBy: @cert_source_link.LastModifiedBy, LastModifiedDate: @cert_source_link.LastModifiedDate, SourceLink_id: @cert_source_link.SourceLink_id }
    end

    assert_redirected_to cert_source_link_path(assigns(:cert_source_link))
  end

  test "should show cert_source_link" do
    get :show, id: @cert_source_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert_source_link
    assert_response :success
  end

  test "should update cert_source_link" do
    patch :update, id: @cert_source_link, cert_source_link: { CertStore_id: @cert_source_link.CertStore_id, CreatedBy: @cert_source_link.CreatedBy, CreatedDate: @cert_source_link.CreatedDate, IsDeleted: @cert_source_link.IsDeleted, LastModifiedBy: @cert_source_link.LastModifiedBy, LastModifiedDate: @cert_source_link.LastModifiedDate, SourceLink_id: @cert_source_link.SourceLink_id }
    assert_redirected_to cert_source_link_path(assigns(:cert_source_link))
  end

  test "should destroy cert_source_link" do
    assert_difference('CertSourceLink.count', -1) do
      delete :destroy, id: @cert_source_link
    end

    assert_redirected_to cert_source_links_path
  end
end
