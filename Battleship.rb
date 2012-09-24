#!/usr/bin/env ruby
require './tile'
require './board'

new_game = Board.new
new_game.tile_create
new_game.draw

until new_game.game_over?
  print 'Select a row(0-9): '
  row = gets.chomp.to_i
  print 'Select a column(0-9): '
  column = gets.chomp.to_i

  new_game.fire(row, column)
  new_game.draw
end

