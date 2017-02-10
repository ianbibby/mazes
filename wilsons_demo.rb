require 'grid'
require 'wilsons'

grid = Grid.new(5,5)

Wilsons.on(grid)

filename = "wilsons.png"

grid.to_png.save(filename)
puts "Saved to #{filename}"
