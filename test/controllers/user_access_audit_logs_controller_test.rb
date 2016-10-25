require 'test_helper'

class UserAccessAuditLogsControllerTest < ActionController::TestCase
  setup do
    @user_access_audit_log = user_access_audit_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_access_audit_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_access_audit_log" do
    assert_difference('UserAccessAuditLog.count') do
      post :create, user_access_audit_log: { Attribute: @user_access_audit_log.Attribute, CreatedBy: @user_access_audit_log.CreatedBy, CreatedDate: @user_access_audit_log.CreatedDate, CurrentValue: @user_access_audit_log.CurrentValue, IsDeleted: @user_access_audit_log.IsDeleted, LastModifiedBy: @user_access_audit_log.LastModifiedBy, LastModifiedDate: @user_access_audit_log.LastModifiedDate, PreviousValue: @user_access_audit_log.PreviousValue, RecordId: @user_access_audit_log.RecordId, TableName: @user_access_audit_log.TableName }
    end

    assert_redirected_to user_access_audit_log_path(assigns(:user_access_audit_log))
  end

  test "should show user_access_audit_log" do
    get :show, id: @user_access_audit_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_access_audit_log
    assert_response :success
  end

  test "should update user_access_audit_log" do
    patch :update, id: @user_access_audit_log, user_access_audit_log: { Attribute: @user_access_audit_log.Attribute, CreatedBy: @user_access_audit_log.CreatedBy, CreatedDate: @user_access_audit_log.CreatedDate, CurrentValue: @user_access_audit_log.CurrentValue, IsDeleted: @user_access_audit_log.IsDeleted, LastModifiedBy: @user_access_audit_log.LastModifiedBy, LastModifiedDate: @user_access_audit_log.LastModifiedDate, PreviousValue: @user_access_audit_log.PreviousValue, RecordId: @user_access_audit_log.RecordId, TableName: @user_access_audit_log.TableName }
    assert_redirected_to user_access_audit_log_path(assigns(:user_access_audit_log))
  end

  test "should destroy user_access_audit_log" do
    assert_difference('UserAccessAuditLog.count', -1) do
      delete :destroy, id: @user_access_audit_log
    end

    assert_redirected_to user_access_audit_logs_path
  end
end
