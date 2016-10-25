class NetworkUsersController < ApplicationController
  before_action :set_network_user, only: [:show, :edit, :update, :destroy]

  # GET /network_users
  # GET /network_users.json
  def index
    @network_users = NetworkUser.all
  end

  # GET /network_users/1
  # GET /network_users/1.json
  def show
  end

  # GET /network_users/new
  def new
    @network_user = NetworkUser.new
  end

  # GET /network_users/1/edit
  def edit
  end

  # POST /network_users
  # POST /network_users.json
  def create
    @network_user = NetworkUser.new(network_user_params)

    respond_to do |format|
      if @network_user.save
        format.html { redirect_to @network_user, notice: 'Network user was successfully created.' }
        format.json { render :show, status: :created, location: @network_user }
      else
        format.html { render :new }
        format.json { render json: @network_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_users/1
  # PATCH/PUT /network_users/1.json
  def update
    respond_to do |format|
      if @network_user.update(network_user_params)
        format.html { redirect_to @network_user, notice: 'Network user was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_user }
      else
        format.html { render :edit }
        format.json { render json: @network_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_users/1
  # DELETE /network_users/1.json
  def destroy
    @network_user.destroy
    respond_to do |format|
      format.html { redirect_to network_users_url, notice: 'Network user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_user
      @network_user = NetworkUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_user_params
      params.require(:network_user).permit(:NetworkFirstName, :NetworkLastName, :Email, :NetworkUsername, :NetworkPassword, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
