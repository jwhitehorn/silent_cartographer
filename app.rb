require 'sinatra'
require './lib/mbtile.rb'

configure do
  mime_type :jpeg, 'image/jpeg'
  mime_type :png,  'image/png'
end

get '/' do
  erb :index
end

get '/tiles/:zoom_level/:column/:row' do
  @@mbtile ||= Mbtile.new("map.mbtiles")
  
  column = params[:column].to_i
  zoom_level = params[:zoom_level].to_i
  max_tile = 2 ** zoom_level 
  row = max_tile - params[:row].to_i
  
  image = @@mbtile.get_tile({ :column => column, :zoom_level => zoom_level, :row => row })
  image.tap do |i| 
    i.nil? ? status(404) : content_type(@@mbtile.tile_format)
  end
end