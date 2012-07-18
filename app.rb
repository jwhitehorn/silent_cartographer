get '/' do
  erb :index
end

get '/tiles/:zoom_level/:column/:row' do
  @@mbtile ||= Mbtile.new(settings.database)
  
  column = params[:column].to_i
  zoom_level = params[:zoom_level].to_i
  max_tile = 2 ** zoom_level 
  row = max_tile - params[:row].to_i
  
  image = @@mbtile.get_tile({ :column => column, :zoom_level => zoom_level, :row => row })
  content_type(@@mbtile.tile_format)
  if image.nil?
    status(404)
    image = File.read("public/missing.#{@@mbtile.tile_format}")
  end
  
  image
end