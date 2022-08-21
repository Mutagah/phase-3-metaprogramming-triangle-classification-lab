class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # def check_triangle
  #   return true if (side1>0 && side2>0 && side3 > 0) && (side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2)
  # end
  def validate_triangle
    raise TriangleError unless (side1>0 && side2>0 && side3 > 0) && ((side1 + side2 > side3) && (side2 + side3 > side1) && (side1 + side3 > side2))
  end
  def kind
      validate_triangle
      if (side1 == side2) && (side2 == side3)
        :equilateral
    elsif(side1 == side2) || (side2 == side3) || (side1 == side3)
        :isosceles
    else
        :scalene
    end
  end
  class TriangleError < StandardError
    def message
    "This is an invalid Triangle"
    end
  end
end
