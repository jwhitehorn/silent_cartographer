require 'sqlite3'

class Mbtile
  attr_accessor :tile_format
  
  def initialize(connection_string)
    connection_string = connection_string
    @db = SQLite3::Database.new(connection_string)
    
    @db.execute("select name,value from metadata") do |row|
      @tile_format = row[1].to_sym if row[0] == "format"
    end
  end
  
  def get_tile(params)    
    column = params[:column]
    zoom_level = params[:zoom_level]
    row = params[:row]
  
    @db.get_first_value("select tile_data from tiles where zoom_level=? and tile_column=? and tile_row=?", zoom_level, column, row)
  end
  
end