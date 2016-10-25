require 'test_helper'

class MemberGroupsControllerTest < ActionController::TestCase
  setup do
    @member_group = member_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_group" do
    assert_difference('MemberGroup.count') do
      post :create, member_group: { CreatedBy: @member_group.CreatedBy, CreatedDate: @member_group.CreatedDate, IsDeleted: @member_group.IsDeleted, LastModifiedBy: @member_group.LastModifiedBy, LastModifiedDate: @member_group.LastModifiedDate, NetworkUser_id: @member_group.NetworkUser_id, UserGroup_id: @member_group.UserGroup_id }
    end

    assert_redirected_to member_group_path(assigns(:member_group))
  end

  test "should show member_group" do
    get :show, id: @member_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_group
    assert_response :success
  end

  test "should update member_group" do
    patch :update, id: @member_group, member_group: { CreatedBy: @member_group.CreatedBy, CreatedDate: @member_group.CreatedDate, IsDeleted: @member_group.IsDeleted, LastModifiedBy: @member_group.LastModifiedBy, LastModifiedDate: @member_group.LastModifiedDate, NetworkUser_id: @member_group.NetworkUser_id, UserGroup_id: @member_group.UserGroup_id }
    assert_redirected_to member_group_path(assigns(:member_group))
  end

  test "should destroy member_group" do
    assert_difference('MemberGroup.count', -1) do
      delete :destroy, id: @member_group
    end

    assert_redirected_to member_groups_path
  end
end
