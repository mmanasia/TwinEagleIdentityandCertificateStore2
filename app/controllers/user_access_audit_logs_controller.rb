class UserAccessAuditLogsController < ApplicationController
  before_action :set_user_access_audit_log, only: [:show, :edit, :update, :destroy]

  # GET /user_access_audit_logs
  # GET /user_access_audit_logs.json
  def index
    @user_access_audit_logs = UserAccessAuditLog.all
  end

  # GET /user_access_audit_logs/1
  # GET /user_access_audit_logs/1.json
  def show
  end

  # GET /user_access_audit_logs/new
  def new
    @user_access_audit_log = UserAccessAuditLog.new
  end

  # GET /user_access_audit_logs/1/edit
  def edit
  end

  # POST /user_access_audit_logs
  # POST /user_access_audit_logs.json
  def create
    @user_access_audit_log = UserAccessAuditLog.new(user_access_audit_log_params)

    respond_to do |format|
      if @user_access_audit_log.save
        format.html { redirect_to @user_access_audit_log, notice: 'User access audit log was successfully created.' }
        format.json { render :show, status: :created, location: @user_access_audit_log }
      else
        format.html { render :new }
        format.json { render json: @user_access_audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_access_audit_logs/1
  # PATCH/PUT /user_access_audit_logs/1.json
  def update
    respond_to do |format|
      if @user_access_audit_log.update(user_access_audit_log_params)
        format.html { redirect_to @user_access_audit_log, notice: 'User access audit log was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_access_audit_log }
      else
        format.html { render :edit }
        format.json { render json: @user_access_audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_access_audit_logs/1
  # DELETE /user_access_audit_logs/1.json
  def destroy
    @user_access_audit_log.destroy
    respond_to do |format|
      format.html { redirect_to user_access_audit_logs_url, notice: 'User access audit log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_access_audit_log
      @user_access_audit_log = UserAccessAuditLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_access_audit_log_params
      params.require(:user_access_audit_log).permit(:RecordId, :TableName, :Attribute, :PreviousValue, :CurrentValue, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
