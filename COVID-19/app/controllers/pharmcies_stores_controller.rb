class PharmciesStoresController < ApplicationController
  before_action :set_pharmcies_store, only: [:show, :edit, :update, :destroy]

  # GET /pharmcies_stores
  # GET /pharmcies_stores.json
  def index
    @pharmcies_stores = PharmciesStore.all
  end

  # GET /pharmcies_stores/1
  # GET /pharmcies_stores/1.json
  def show
  end

  # GET /pharmcies_stores/new
  def new
    @pharmcies_store = PharmciesStore.new
  end

  # GET /pharmcies_stores/1/edit
  def edit
  end

  # POST /pharmcies_stores
  # POST /pharmcies_stores.json
  def create
    @pharmcies_store = PharmciesStore.new(pharmcies_store_params)

    respond_to do |format|
      if @pharmcies_store.save
        format.html { redirect_to @pharmcies_store, notice: 'Pharmcies store was successfully created.' }
        format.json { render :show, status: :created, location: @pharmcies_store }
      else
        format.html { render :new }
        format.json { render json: @pharmcies_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmcies_stores/1
  # PATCH/PUT /pharmcies_stores/1.json
  def update
    respond_to do |format|
      if @pharmcies_store.update(pharmcies_store_params)
        format.html { redirect_to @pharmcies_store, notice: 'Pharmcies store was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmcies_store }
      else
        format.html { render :edit }
        format.json { render json: @pharmcies_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmcies_stores/1
  # DELETE /pharmcies_stores/1.json
  def destroy
    @pharmcies_store.destroy
    respond_to do |format|
      format.html { redirect_to pharmcies_stores_url, notice: 'Pharmcies store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmcies_store
      @pharmcies_store = PharmciesStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmcies_store_params
      params.require(:pharmcies_store).permit(:name, :latitude, :longitude)
    end
end
