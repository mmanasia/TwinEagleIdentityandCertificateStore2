class StoreAccessesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_store_access, only: [:show, :edit, :update, :destroy]

  # GET /store_accesses
  # GET /store_accesses.json
  def index
    @store_accesses = StoreAccess.all
  end

  # GET /store_accesses/1
  # GET /store_accesses/1.json
  def show
  end

  # GET /store_accesses/new
  def new
    @store_access = StoreAccess.new
  end

  # GET /store_accesses/1/edit
  def edit
  end

  # POST /store_accesses
  # POST /store_accesses.json
  def create
    @store_access = StoreAccess.new(store_access_params)

    respond_to do |format|
      if @store_access.save
        format.html { redirect_to @store_access, notice: 'Store access was successfully created.' }
        format.json { render :show, status: :created, location: @store_access }
      else
        format.html { render :new }
        format.json { render json: @store_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_accesses/1
  # PATCH/PUT /store_accesses/1.json
  def update
    respond_to do |format|
      if @store_access.update(store_access_params)
        format.html { redirect_to @store_access, notice: 'Store access was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_access }
      else
        format.html { render :edit }
        format.json { render json: @store_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_accesses/1
  # DELETE /store_accesses/1.json
  def destroy
    @store_access.destroy
    respond_to do |format|
      format.html { redirect_to store_accesses_url, notice: 'Store access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_access
      @store_access = StoreAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_access_params
      params.require(:store_access).permit(:NetworkId, :UserStore_id, :CertStore_id, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
