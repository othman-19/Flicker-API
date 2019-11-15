class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def home
    if params[:user_id]
  		@user_id = params[:user_id]
  		#here call method that you will store in helper
  		#to search for photos
  	end	
  end
end
