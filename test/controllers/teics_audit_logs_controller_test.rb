require 'test_helper'

class TeicsAuditLogsControllerTest < ActionController::TestCase
  setup do
    @teics_audit_log = teics_audit_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teics_audit_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teics_audit_log" do
    assert_difference('TeicsAuditLog.count') do
      post :create, teics_audit_log: { Attribute: @teics_audit_log.Attribute, CreatedBy: @teics_audit_log.CreatedBy, CreatedDate: @teics_audit_log.CreatedDate, CurrentValue: @teics_audit_log.CurrentValue, IsDeleted: @teics_audit_log.IsDeleted, LastModifiedBy: @teics_audit_log.LastModifiedBy, LastModifiedDate: @teics_audit_log.LastModifiedDate, PreviousValue: @teics_audit_log.PreviousValue, RecordId: @teics_audit_log.RecordId, TableName: @teics_audit_log.TableName }
    end

    assert_redirected_to teics_audit_log_path(assigns(:teics_audit_log))
  end

  test "should show teics_audit_log" do
    get :show, id: @teics_audit_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teics_audit_log
    assert_response :success
  end

  test "should update teics_audit_log" do
    patch :update, id: @teics_audit_log, teics_audit_log: { Attribute: @teics_audit_log.Attribute, CreatedBy: @teics_audit_log.CreatedBy, CreatedDate: @teics_audit_log.CreatedDate, CurrentValue: @teics_audit_log.CurrentValue, IsDeleted: @teics_audit_log.IsDeleted, LastModifiedBy: @teics_audit_log.LastModifiedBy, LastModifiedDate: @teics_audit_log.LastModifiedDate, PreviousValue: @teics_audit_log.PreviousValue, RecordId: @teics_audit_log.RecordId, TableName: @teics_audit_log.TableName }
    assert_redirected_to teics_audit_log_path(assigns(:teics_audit_log))
  end

  test "should destroy teics_audit_log" do
    assert_difference('TeicsAuditLog.count', -1) do
      delete :destroy, id: @teics_audit_log
    end

    assert_redirected_to teics_audit_logs_path
  end
end
