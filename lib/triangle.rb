require 'pry'

class Triangle

  attr_reader :x, :y, :z

    def initialize(x,y,z)
      @x = x
      @y = y
      @z = z
    end

    def kind
        validate
        if x == y && y == z
          :equilateral
        elsif x == y || y == z || z == x
          :isosceles
        else
          :scalene
        end
    end

    def validate
      if (x+y <= z || x+z <=y || y+z <= x)
        TriangleError
      elsif  (x < 0 || y < 0 || z < 0)
        TriangleError

      end
    end

    class TriangleError < StandardError
    end
end
