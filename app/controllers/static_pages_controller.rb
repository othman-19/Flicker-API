class StaticPagesController < ApplicationController
  def home
    return unless params[:user_id]
      @user_id = params[:user_id]
      @user = flickr.people.findByUsername username: params[:username]
      @photostream = flickr.people.getPublicPhotos user_id: @user['id']
  end
end
