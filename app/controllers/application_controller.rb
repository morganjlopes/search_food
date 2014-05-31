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

  def _ensure_user_can_edit(model)
    unless model.users.where(:id => current_user.id).present?
      raise "You don't have permission"
    end
  end
end
