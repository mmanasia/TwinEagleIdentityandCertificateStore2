require 'test_helper'

class UserSourceLinksControllerTest < ActionController::TestCase
  setup do
    @user_source_link = user_source_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_source_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_source_link" do
    assert_difference('UserSourceLink.count') do
      post :create, user_source_link: { CreatedBy: @user_source_link.CreatedBy, CreatedDate: @user_source_link.CreatedDate, IsDeleted: @user_source_link.IsDeleted, LastModifiedBy: @user_source_link.LastModifiedBy, LastModifiedDate: @user_source_link.LastModifiedDate, SourceLink_id: @user_source_link.SourceLink_id, UserStore_id: @user_source_link.UserStore_id }
    end

    assert_redirected_to user_source_link_path(assigns(:user_source_link))
  end

  test "should show user_source_link" do
    get :show, id: @user_source_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_source_link
    assert_response :success
  end

  test "should update user_source_link" do
    patch :update, id: @user_source_link, user_source_link: { CreatedBy: @user_source_link.CreatedBy, CreatedDate: @user_source_link.CreatedDate, IsDeleted: @user_source_link.IsDeleted, LastModifiedBy: @user_source_link.LastModifiedBy, LastModifiedDate: @user_source_link.LastModifiedDate, SourceLink_id: @user_source_link.SourceLink_id, UserStore_id: @user_source_link.UserStore_id }
    assert_redirected_to user_source_link_path(assigns(:user_source_link))
  end

  test "should destroy user_source_link" do
    assert_difference('UserSourceLink.count', -1) do
      delete :destroy, id: @user_source_link
    end

    assert_redirected_to user_source_links_path
  end
end
