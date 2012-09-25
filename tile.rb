class Tile

  def initialize(row, column, ship)
    @row = row
    @column = column
    @called = false 
    @ship = ship
  end

  def marker
    if @called
      "o"
    elsif @ship
      "x"
    else
      "~"
    end
  end
  
  def called
    @called = true
  end
  
end