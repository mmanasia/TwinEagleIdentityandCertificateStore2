class CertStoresController < ApplicationController

  before_action :authenticate_user!

  before_action :set_cert_store, only: [:show, :edit, :update, :destroy]

  # GET /cert_stores
  # GET /cert_stores.json
  def index
    @cert_stores = CertStore.all
  end

  # GET /cert_stores/1
  # GET /cert_stores/1.json
  def show
  end

  # GET /cert_stores/new
  def new
    @cert_store = CertStore.new
  end

  # GET /cert_stores/1/edit
  def edit
  end

  # POST /cert_stores
  # POST /cert_stores.json
  def create
    @cert_store = CertStore.new(cert_store_params)

    respond_to do |format|
      if @cert_store.save
        format.html { redirect_to @cert_store, notice: 'Cert store was successfully created.' }
        format.json { render :show, status: :created, location: @cert_store }
      else
        format.html { render :new }
        format.json { render json: @cert_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cert_stores/1
  # PATCH/PUT /cert_stores/1.json
  def update
    respond_to do |format|
      if @cert_store.update(cert_store_params)
        format.html { redirect_to @cert_store, notice: 'Cert store was successfully updated.' }
        format.json { render :show, status: :ok, location: @cert_store }
      else
        format.html { render :edit }
        format.json { render json: @cert_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cert_stores/1
  # DELETE /cert_stores/1.json
  def destroy
    @cert_store.destroy
    respond_to do |format|
      format.html { redirect_to cert_stores_url, notice: 'Cert store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert_store
      @cert_store = CertStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_store_params
      params.require(:cert_store).permit(:CertStoreName, :CertStoreDescription, :CertStorePassword, :CertStoreExpirationDate, :unc, :MimeType, :Source_id, :Environment_id, :IdentityType_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
