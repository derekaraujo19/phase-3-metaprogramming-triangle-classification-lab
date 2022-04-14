class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [@side1, @side2, @side3]

    # ERROR SECTION
    sides.each do |side|
      if side <= 0
        raise TriangleError
      end
    end
    if (@side1 + @side2) <= @side3
      raise TriangleError
    elsif (@side2 + @side3) <= @side1
      raise TriangleError
    elsif (@side1 + @side3) <= @side2
      raise TriangleError
    end


    if sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    elsif sides.uniq.length == 3
      :scalene
    end

  end

  class TriangleError < StandardError
    # triangle error code
  end

end
