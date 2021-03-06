class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  # def initialize(attributes)
  #   attributes.each {|key, value| self.send(("#{key}="), value)}
  # end

  def kind
    if (side1 <= 0 || side2 <=0 || side3 <=0) || (side1+side2 <= side3 || side1+side3 <= side2 || side2+side3 <= side1)
      raise TriangleError
    elsif 
      side1 == side2 && side2 == side3
      :equilateral
    elsif
      side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    "One or more sides is 0 or less than 0, please check you sides length!"
  end
end
