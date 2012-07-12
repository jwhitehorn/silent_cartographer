require 'sinatra'
require 'sqlite3'

configure do
  mime_type :jpeg, 'image/jpeg'
end

get '/' do
  redirect '/index.html'
end

get '/tiles/:version/:zoom_level/:column/:row' do
  db = SQLite3::Database.new("map.mbtiles")
  column = params[:column].to_i
  zoom_level = params[:zoom_level].to_i
  max_tile = 2 ** zoom_level 
  row = max_tile - params[:row].to_i
  
  content_type :jpeg
  db.get_first_value("select tile_data from tiles where zoom_level=? and tile_column=? and tile_row=?", zoom_level, column, row)
end