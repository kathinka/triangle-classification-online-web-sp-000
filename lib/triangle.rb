class Triangle
  def initialize (x,y,z)
    @x = x
    @y = y
    @z = z
    kind
  end

  def validate
    if x <= 0 || y <= 0 || z <= 0
      TriangleError
    elsif x+y < z || x+z <y || y+z < x
      TriangleError
    end
  end


  def kind
      #validate
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
  end

end
