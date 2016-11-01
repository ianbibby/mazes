class AldousBroder
  def self.on(grid)
    unvisited = grid.size - 1
    cell = grid.random_cell

    while unvisited > 0
      neighbor = cell.neighbors.sample
      if neighbor.links.empty?
        cell.link(neighbor) 
        unvisited -= 1
      end
      cell = neighbor
    end
    grid
  end
end
