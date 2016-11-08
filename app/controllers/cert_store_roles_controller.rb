class CertStoreRolesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_cert_store_role, only: [:show, :edit, :update, :destroy]

  # GET /cert_store_roles
  # GET /cert_store_roles.json
  def index
    @cert_store_roles = CertStoreRole.all
  end

  # GET /cert_store_roles/1
  # GET /cert_store_roles/1.json
  def show
  end

  # GET /cert_store_roles/new
  def new
    @cert_store_role = CertStoreRole.new
  end

  # GET /cert_store_roles/1/edit
  def edit
  end

  # POST /cert_store_roles
  # POST /cert_store_roles.json
  def create
    @cert_store_role = CertStoreRole.new(cert_store_role_params)

    respond_to do |format|
      if @cert_store_role.save
        format.html { redirect_to @cert_store_role, notice: 'Certificate role was successfully created.' }
        format.json { render :show, status: :created, location: @cert_store_role }
      else
        format.html { render :new }
        format.json { render json: @cert_store_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cert_store_roles/1
  # PATCH/PUT /cert_store_roles/1.json
  def update
    respond_to do |format|
      if @cert_store_role.update(cert_store_role_params)
        format.html { redirect_to @cert_store_role, notice: 'Certificate role was successfully updated.' }
        format.json { render :show, status: :ok, location: @cert_store_role }
      else
        format.html { render :edit }
        format.json { render json: @cert_store_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cert_store_roles/1
  # DELETE /cert_store_roles/1.json
  def destroy
    @cert_store_role.destroy
    respond_to do |format|
      format.html { redirect_to cert_store_roles_url, notice: 'Certificate role was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert_store_role
      @cert_store_role = CertStoreRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_store_role_params
      params.require(:cert_store_role).permit(:Role_id, :CertStore_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
