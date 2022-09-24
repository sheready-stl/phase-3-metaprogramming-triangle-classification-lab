class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    if x == 0 && y == 0 && z == 0
      raise TriangleError
    elsif x < 0 || y < 0 || z <0
      raise TriangleError
    else
      @x = x
      @y = y
      @z = z
    end
  end

  def kind
    if x == 0 && y == 0 && z == 0
      raise TriangleError
    end

    if x == y && y == z
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "Wrong triangle format or input"
    end
  end
end

tri = Triangle.new(4, 4, 4)
