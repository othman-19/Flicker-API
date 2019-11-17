# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

require 'flickraw'

#FlickRaw.api_key="e65c93e43a854cfca0a4b25194f96fdc"
#FlickRaw.shared_secret="32b58fee4b293cb9"
FlickRaw.api_key=ENV["flickr_api_key"]
FlickRaw.shared_secret=ENV["flickr_api_secret"]
