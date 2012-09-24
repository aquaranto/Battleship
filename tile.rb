class Tile

  def initialize(row, column)
    @row = row
    @column = column
    @hit = false 
  end

  def marker
    if @hit 
      "o"
    else
      "~"
    end
  end
  
  def hit
    @hit = true
  end
  
end