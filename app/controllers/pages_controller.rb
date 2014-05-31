class PagesController < ApplicationController
  def home
  	@full_width = true

  	if params[:search].present?
	    @agencies = Address.near("#{params[:search]}")
	  else
	    @agencies = Agency.all
	  end
  end
end
