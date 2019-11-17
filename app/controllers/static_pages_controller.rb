# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @flickr_id = params[:flickr_id] || '185516062@N03'
    flickr = FlickRaw::Flickr.new # (ENV['FLICKRAW_API_KEY'], ENV['FLICKRAW_SHARED_SECRET'])
    @photos = flickr.people.getPublicPhotos(user_id: @flickr_id, per_page: 50)
  end
end
