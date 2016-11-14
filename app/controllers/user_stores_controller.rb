class UserStoresController < ApplicationController
  before_action :authenticate_user!

  before_action :set_user_store, only: [:show, :edit, :update, :destroy]

  # GET /user_stores
  # GET /user_stores.json
  def index
    @user_stores = UserStore.all
  end

  # GET /user_stores/1
  # GET /user_stores/1.json
  def show
  end

  # GET /user_stores/new
  def new
    authorize @user_store

    @user_store = UserStore.new
  end

  # GET /user_stores/1/edit
  def edit
  end

  # POST /user_stores
  # POST /user_stores.json
  def create
    authorize @user_store

    @user_store = UserStore.new(user_store_params)

    respond_to do |format|
      if @user_store.save
        format.html { redirect_to @user_store, notice: 'User store was successfully created.' }
        format.json { render :show, status: :created, location: @user_store }
      else
        format.html { render :new }
        format.json { render json: @user_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_stores/1
  # PATCH/PUT /user_stores/1.json
  def update
    authorize @user_store

    respond_to do |format|
      if @user_store.update(user_store_params)
        format.html { redirect_to @user_store, notice: 'User store was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_store }
      else
        format.html { render :edit }
        format.json { render json: @user_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_stores/1
  # DELETE /user_stores/1.json
  def destroy
    authorize @user_store

    @user_store.destroy
    respond_to do |format|
      format.html { redirect_to user_stores_url, notice: 'User store was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_store
      @user_store = UserStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_store_params
      params.require(:user_store).permit(:UserStoreName, :UserStorePassword, :UserStoreExpirationDate, :source_id, :environment_id, :identity_type_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
