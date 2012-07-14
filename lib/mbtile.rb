require 'sqlite3'

class Mbtile
  
  def initialize(connection_string)
    connection_string = connection_string
    @db = SQLite3::Database.new(connection_string)
  end
  
  def tile_format
    :jpeg #todo, actually implement this... mbtiles 1.1 supports both jpeg and png
  end
  
  def get_tile(params)    
    column = params[:column]
    zoom_level = params[:zoom_level]
    row = params[:row]
  
    @db.get_first_value("select tile_data from tiles where zoom_level=? and tile_column=? and tile_row=?", zoom_level, column, row)
  end
  
end