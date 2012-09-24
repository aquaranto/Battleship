#!/usr/bin/env ruby
require './tile'
require './board'

bananas = Board.new
bananas.tile_create
bananas.draw

print 'Select a row(0-9): '
row = gets.chomp.to_i
print 'Select a column(0-9): '
column = gets.chomp.to_i

bananas.fire(row, column)
bananas.draw
