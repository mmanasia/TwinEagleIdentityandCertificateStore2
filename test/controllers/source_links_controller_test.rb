require 'test_helper'

class SourceLinksControllerTest < ActionController::TestCase
  setup do
    @source_link = source_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:source_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create source_link" do
    assert_difference('SourceLink.count') do
      post :create, source_link: { CreatedBy: @source_link.CreatedBy, CreatedDate: @source_link.CreatedDate, Hyperlink: @source_link.Hyperlink, IsDeleted: @source_link.IsDeleted, LastModifiedBy: @source_link.LastModifiedBy, LastModifiedDate: @source_link.LastModifiedDate }
    end

    assert_redirected_to source_link_path(assigns(:source_link))
  end

  test "should show source_link" do
    get :show, id: @source_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @source_link
    assert_response :success
  end

  test "should update source_link" do
    patch :update, id: @source_link, source_link: { CreatedBy: @source_link.CreatedBy, CreatedDate: @source_link.CreatedDate, Hyperlink: @source_link.Hyperlink, IsDeleted: @source_link.IsDeleted, LastModifiedBy: @source_link.LastModifiedBy, LastModifiedDate: @source_link.LastModifiedDate }
    assert_redirected_to source_link_path(assigns(:source_link))
  end

  test "should destroy source_link" do
    assert_difference('SourceLink.count', -1) do
      delete :destroy, id: @source_link
    end

    assert_redirected_to source_links_path
  end
end
