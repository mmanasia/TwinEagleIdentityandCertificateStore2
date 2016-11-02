class SourceLinksController < ApplicationController
  before_action :authenticate_user!

  before_action :set_source_link, only: [:show, :edit, :update, :destroy]

  # GET /source_links
  # GET /source_links.json
  def index
    @source_links = SourceLink.all
  end

  # GET /source_links/1
  # GET /source_links/1.json
  def show
  end

  # GET /source_links/new
  def new
    @source_link = SourceLink.new
  end

  # GET /source_links/1/edit
  def edit
  end

  # POST /source_links
  # POST /source_links.json
  def create
    @source_link = SourceLink.new(source_link_params)

    respond_to do |format|
      if @source_link.save
        format.html { redirect_to @source_link, notice: 'Source link was successfully created.' }
        format.json { render :show, status: :created, location: @source_link }
      else
        format.html { render :new }
        format.json { render json: @source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_links/1
  # PATCH/PUT /source_links/1.json
  def update
    respond_to do |format|
      if @source_link.update(source_link_params)
        format.html { redirect_to @source_link, notice: 'Source link was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_link }
      else
        format.html { render :edit }
        format.json { render json: @source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_links/1
  # DELETE /source_links/1.json
  def destroy
    @source_link.destroy
    respond_to do |format|
      format.html { redirect_to source_links_url, notice: 'Source link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_link
      @source_link = SourceLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_link_params
      params.require(:source_link).permit(:Hyperlink, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
