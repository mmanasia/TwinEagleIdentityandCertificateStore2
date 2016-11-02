class CertSourceLinksController < ApplicationController
  before_action :authenticate_user!

  before_action :set_cert_source_link, only: [:show, :edit, :update, :destroy]

  # GET /cert_source_links
  # GET /cert_source_links.json
  def index
    @cert_source_links = CertSourceLink.all
  end

  # GET /cert_source_links/1
  # GET /cert_source_links/1.json
  def show
  end

  # GET /cert_source_links/new
  def new
    @cert_source_link = CertSourceLink.new
  end

  # GET /cert_source_links/1/edit
  def edit
  end

  # POST /cert_source_links
  # POST /cert_source_links.json
  def create
    @cert_source_link = CertSourceLink.new(cert_source_link_params)

    respond_to do |format|
      if @cert_source_link.save
        format.html { redirect_to @cert_source_link, notice: 'Cert source link was successfully created.' }
        format.json { render :show, status: :created, location: @cert_source_link }
      else
        format.html { render :new }
        format.json { render json: @cert_source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cert_source_links/1
  # PATCH/PUT /cert_source_links/1.json
  def update
    respond_to do |format|
      if @cert_source_link.update(cert_source_link_params)
        format.html { redirect_to @cert_source_link, notice: 'Cert source link was successfully updated.' }
        format.json { render :show, status: :ok, location: @cert_source_link }
      else
        format.html { render :edit }
        format.json { render json: @cert_source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cert_source_links/1
  # DELETE /cert_source_links/1.json
  def destroy
    @cert_source_link.destroy
    respond_to do |format|
      format.html { redirect_to cert_source_links_url, notice: 'Cert source link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert_source_link
      @cert_source_link = CertSourceLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_source_link_params
      params.require(:cert_source_link).permit(:SourceLink_id, :CertStore_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
