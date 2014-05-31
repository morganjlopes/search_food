class PagesController < ApplicationController
  def home
  	@full_width = true

  	if params[:search].present?
	    @agencies = Agency.select do |a|
	    	a.address.zip == params[:search]
	    end
	  else
	    @agencies = Agency.all
	  end
  end
end
