class Board

  def initialize
    @size = 10
    @tiles = []
  end
  
  def tile_create # list of coordinates
    @size.times do |row|
      @size.times do |column|
        @tiles << Tile.new(row, column)
        #p @tiles
      end
    end
  end
  
  def draw
    #for each tile
    #print marker
    @size.times do |row|
      @size.times do |column|
        print @tiles[row * @size + column].marker + ' '
      end
      print "\n"
    end
  end
  
  def fire(row, column)
    @tiles[row * @size + column].hit #finds the tile and hit it  
  end

  def game_over?
    false
  end
end