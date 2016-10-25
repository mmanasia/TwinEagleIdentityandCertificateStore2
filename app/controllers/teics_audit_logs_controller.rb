class TeicsAuditLogsController < ApplicationController
  before_action :set_teics_audit_log, only: [:show, :edit, :update, :destroy]

  # GET /teics_audit_logs
  # GET /teics_audit_logs.json
  def index
    @teics_audit_logs = TeicsAuditLog.all
  end

  # GET /teics_audit_logs/1
  # GET /teics_audit_logs/1.json
  def show
  end

  # GET /teics_audit_logs/new
  def new
    @teics_audit_log = TeicsAuditLog.new
  end

  # GET /teics_audit_logs/1/edit
  def edit
  end

  # POST /teics_audit_logs
  # POST /teics_audit_logs.json
  def create
    @teics_audit_log = TeicsAuditLog.new(teics_audit_log_params)

    respond_to do |format|
      if @teics_audit_log.save
        format.html { redirect_to @teics_audit_log, notice: 'Teics audit log was successfully created.' }
        format.json { render :show, status: :created, location: @teics_audit_log }
      else
        format.html { render :new }
        format.json { render json: @teics_audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teics_audit_logs/1
  # PATCH/PUT /teics_audit_logs/1.json
  def update
    respond_to do |format|
      if @teics_audit_log.update(teics_audit_log_params)
        format.html { redirect_to @teics_audit_log, notice: 'Teics audit log was successfully updated.' }
        format.json { render :show, status: :ok, location: @teics_audit_log }
      else
        format.html { render :edit }
        format.json { render json: @teics_audit_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teics_audit_logs/1
  # DELETE /teics_audit_logs/1.json
  def destroy
    @teics_audit_log.destroy
    respond_to do |format|
      format.html { redirect_to teics_audit_logs_url, notice: 'Teics audit log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teics_audit_log
      @teics_audit_log = TeicsAuditLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teics_audit_log_params
      params.require(:teics_audit_log).permit(:RecordId, :TableName, :Attribute, :PreviousValue, :CurrentValue, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
