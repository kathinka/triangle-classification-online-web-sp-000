class Triangle
  def initialize (x,y,z)
    @x = x
    @y = y
    @z = z

    # validate
    #kind
  end

  def validate
    if x <= 0 || y <= 0 || z <= 0
      TriangleError
    elsif x+y < z || x+z <y || y+z < x
      TriangleError  
  end


  def kind

  end

  class TriangleError < StandardError
    # triangle error code
  end

end
