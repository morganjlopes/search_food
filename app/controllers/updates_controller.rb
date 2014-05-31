class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]
  before_action :_load_agency_from_url

  # GET /updates
  # GET /updates.json
  def index
    @updates = @agency_from_url.updates.all
  end

  # GET /updates/1
  # GET /updates/1.json
  def show
  end

  # GET /updates/new
  def new
    @update = @agency_from_url.updates.new
  end

  # GET /updates/1/edit
  def edit
  end

  # POST /updates
  # POST /updates.json
  def create
    @update = @agency_from_url.updates.new(update_params)

    respond_to do |format|
      if @update.save
        format.html { redirect_to agency_path(@agency_from_url), notice: 'Update was successfully created.' }
        format.json { render :show, status: :created, location: @update }
      else
        format.html { render :new }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /updates/1
  # PATCH/PUT /updates/1.json
  def update
    respond_to do |format|
      if @update.update(update_params)
        format.html { redirect_to agency_path(@agency_from_url), notice: 'Update was successfully updated.' }
        format.json { render :show, status: :ok, location: @update }
      else
        format.html { render :edit }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updates/1
  # DELETE /updates/1.json
  def destroy
    @update.destroy
    respond_to do |format|
      format.html { redirect_to updates_url, notice: 'Update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @update = Update.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def update_params
      params.require(:update).permit(:content)
    end
end
