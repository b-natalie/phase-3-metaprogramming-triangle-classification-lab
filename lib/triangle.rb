class Triangle

  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 > 0 && self.side2 > 0 && self.side3 > 0 && side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
      if self.side1 == self.side2 && self.side2 == self.side3
        :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message

    end
  end

end
