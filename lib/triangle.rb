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
        binding.pry
        if x == y && y == z
          :equilateral
        elsif x == y || y == z || z == x
          :isosceles
        else
          :scalene
        end
    end

    def validate
      if x <= 0 || y <= 0 || z <= 0
        TriangleError
      elsif x+y < z || x+z <y || y+z < x
        TriangleError

      end
    end

    class TriangleError < StandardError
      # triangle error code

    end
end
