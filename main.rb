# Dependencies
require 'sinatra'
require 'rest-client'
require 'json'
require_relative 'social_media/base'
require_relative 'social_media/fetch_data'
Dir['social_media/apps/*.rb'].each { |social_media_app| require_relative social_media_app }
require_relative 'lib/core_extensions/string/formatting'

# Patches
String.prepend CoreExtensions::String::Formatting

# Port Configuration
set :port, 3000

# Application Route
get '/' do
  JSON.pretty_generate(SocialMedia::FetchData.call)
end
