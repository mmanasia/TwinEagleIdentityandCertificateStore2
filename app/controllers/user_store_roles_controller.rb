class UserStoreRolesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_user_store_role, only: [:show, :edit, :update, :destroy]

  # GET /user_store_roles
  # GET /user_store_roles.json
  def index
    @user_store_roles = UserStoreRole.all
  end

  # GET /user_store_roles/1
  # GET /user_store_roles/1.json
  def show
  end

  # GET /user_store_roles/new
  def new
    @user_store_role = UserStoreRole.new
  end

  # GET /user_store_roles/1/edit
  def edit
  end

  # POST /user_store_roles
  # POST /user_store_roles.json
  def create
    @user_store_role = UserStoreRole.new(user_store_role_params)

    respond_to do |format|
      if @user_store_role.save
        format.html { redirect_to @user_store_role, notice: 'User store role was successfully created.' }
        format.json { render :show, status: :created, location: @user_store_role }
      else
        format.html { render :new }
        format.json { render json: @user_store_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_store_roles/1
  # PATCH/PUT /user_store_roles/1.json
  def update
    respond_to do |format|
      if @user_store_role.update(user_store_role_params)
        format.html { redirect_to @user_store_role, notice: 'User store role was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_store_role }
      else
        format.html { render :edit }
        format.json { render json: @user_store_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_store_roles/1
  # DELETE /user_store_roles/1.json
  def destroy
    @user_store_role.destroy
    respond_to do |format|
      format.html { redirect_to user_store_roles_url, notice: 'User store role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_store_role
      @user_store_role = UserStoreRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_store_role_params
      params.require(:user_store_role).permit(:Role_id, :UserStore_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
