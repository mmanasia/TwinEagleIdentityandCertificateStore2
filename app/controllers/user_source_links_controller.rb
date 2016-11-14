class UserSourceLinksController < ApplicationController
  before_action :authenticate_user!

  before_action :set_user_source_link, only: [:show, :edit, :update, :destroy]

  # GET /user_source_links
  # GET /user_source_links.json
  def index
    @user_source_links = UserSourceLink.all
  end

  # GET /user_source_links/1
  # GET /user_source_links/1.json
  def show
  end

  # GET /user_source_links/new
  def new
    authorize @user_source_link

    @user_source_link = UserSourceLink.new
  end

  # GET /user_source_links/1/edit
  def edit
  end

  # POST /user_source_links
  # POST /user_source_links.json
  def create
    authorize @user_source_link

    @user_source_link = UserSourceLink.new(user_source_link_params)

    respond_to do |format|
      if @user_source_link.save
        format.html { redirect_to @user_source_link, notice: 'User source link was successfully created.' }
        format.json { render :show, status: :created, location: @user_source_link }
      else
        format.html { render :new }
        format.json { render json: @user_source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_source_links/1
  # PATCH/PUT /user_source_links/1.json
  def update
    authorize @user_source_link

    respond_to do |format|
      if @user_source_link.update(user_source_link_params)
        format.html { redirect_to @user_source_link, notice: 'User source link was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_source_link }
      else
        format.html { render :edit }
        format.json { render json: @user_source_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_source_links/1
  # DELETE /user_source_links/1.json
  def destroy
    authorize @user_source_link

    @user_source_link.destroy
    respond_to do |format|
      format.html { redirect_to user_source_links_url, notice: 'User source link was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_source_link
      @user_source_link = UserSourceLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_source_link_params
      params.require(:user_source_link).permit(:source_link_id, :user_store_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
