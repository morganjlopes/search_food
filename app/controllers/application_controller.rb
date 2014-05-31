class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def _load_agency_from_url
    if @agency
    	@agency_from_url = @agency
    elsif params[:agency_id]
    	@agency_from_url = Agency.friendly.find(params[:agency_id])
    end
  end
end
