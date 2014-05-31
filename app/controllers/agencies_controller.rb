class AgenciesController < ApplicationController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]
  before_action :_load_agency_from_url
  before_action :authenticate_user!, :except => [:show]

  # GET /agencies
  # GET /agencies.json
  def index
    @agencies = current_user.agencies.all
  end

  # GET /agencies/1
  # GET /agencies/1.json
  def show
    @full_width = true
  end

  # GET /agencies/new
  def new
    @agency = Agency.new
    @agency.build_address
    @agency.address.state = "GA"
  end

  # GET /agencies/1/edit
  def edit
    _ensure_user_can_edit(@agency)
  end

  # POST /agencies
  # POST /agencies.json
  def create
    @agency = Agency.new(agency_params)

    @manager        = Management.new
    @manager.user   = current_user
    @manager.agency = @agency
    @manager.save

    respond_to do |format|
      if @agency.save
        AdminMailer.new_agency(@agency).deliver
        format.html { redirect_to @agency, notice: 'Agency was successfully created.' }
        format.json { render :show, status: :created, location: @agency }
      else
        format.html { render :new }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agencies/1
  # PATCH/PUT /agencies/1.json
  def update
    _ensure_user_can_edit(@agency)
    respond_to do |format|
      if @agency.update(agency_params)
        format.html { redirect_to @agency, notice: 'Agency was successfully updated.' }
        format.json { render :show, status: :ok, location: @agency }
      else
        format.html { render :edit }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agencies/1
  # DELETE /agencies/1.json
  def destroy
    _ensure_user_can_edit(@agency)
    @agency.destroy
    respond_to do |format|
      format.html { redirect_to agencies_url, notice: 'Agency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agency_params
      params.require(:agency).permit(:name,
                                     :agycode,
                                     :photo,
                                     :description,
                                     :restrictions,
                                     :hours_of_operation,
                                     :address_id,
                                     :contact_name,
                                     :contact_phone,
                                     :contact_email,
                                     :services,
                                     :geographic_restrictions,
                                     :family_stipulations,
                                     :faith_based,
                                     :is_active,
                                     :general_information,
                                     { :service_ids => [] },
                                     address_attributes: [:id, :street_line_1, :street_line_2, :city, :state, :zip])
    end
end
