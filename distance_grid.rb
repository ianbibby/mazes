require 'grid'

class DistanceGrid < Grid
  attr_accessor :distances

  def cell_width
    if distances
      max_distance_width + 2
    else
      super
    end
  end

  def contents_of(cell)
    contents = " "
    if distances && distances[cell]
      contents = distances[cell].to_s(36)
    end
    sprintf "%#{max_distance_width}s" % contents
  end

  def max_distance
    return @max_distance if @max_distance

    if distances
      cell, @max_distance = distances.max
      @max_distance
    else
      1
    end
  end

  def max_distance_width
    max_distance.to_s(36).length
  end
end
