class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1; @side2 = side2; @side3 = side3
    puts @valid_triangle = (@side1 + @side2 >= @side3) || (@side2 + @side3 >= @side1) || (@side1 + @side3 >= @side2)

    # something is wrong with our valid triangle check.
    # the length of a side of a triangle is less than the sum of the lengths of the other two sides and greater than the difference of the lengths of the other two sides.
  end

  def type_check
    @check = true

    if(@check)
      true
    else
      false
    end
  end

  def whoami
    # self.type_check ? "I'm a Triangle!" : "I'm not sure what you're doing!"
    if (@valid_triangle == false)
      "Oh NOooooo"
    elsif (@valid_triangle == true && self.type_check == true)
      "I am a(n) #{self.class}!"
    else
      "I am not a(n) #{self.class}!"
    end
  end
end


class Equilateral < Triangle
  def type_check
    @check = @side1 == @side2 && @side3 == @side1
  end

  # def whoami
  #   self.class
  # end
end


class Scalene < Triangle
  def type_check
    @check = @side1 != @side2 && @side3 != @side1
    # "Scalene"
  end
end


class Isoceles < Triangle

  def type_check
    @check =  (@side1 == @side2 && @side2 != @side3) ||
              (@side1 == @side3 && @side3 != @side2) ||
              (@side2 == @side3 && @side3 != @side1)

    # "Isoceles"
  end
end


triangle = Equilateral.new(2,500,2)
puts triangle.whoami

# test_equilateral = Equilateral.new(2,2,2)
# puts test_equilateral.type_check
