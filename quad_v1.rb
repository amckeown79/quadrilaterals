# A quadrilateral is any four-sided shape.
# A rectangle, square, rhombus, and trapezoid are all types of quadrilaterals.
# A square is a type of rectangle. A rhombus is a type of trapezoid. 
# Model this concept in Ruby using classes and inheritance.
# Quadrilateral > rectangle > square
# Quadrilateral > trapezoid > rhombus

# Use TDD to confirm that all of your classes are working correctly. For example:


class Quadrilateral
	attr_accessor :sides
	@sides = 4
end


class Rectangle < Quadrilateral
end

class Square < Rectangle
end

class Trapezoid < Quadrilateral
end

class Rhombus < Trapezoid
end

def test
    rect = Rectangle.new
    puts rect.is_a? Quadrilateral
    puts not(rect.is_a? Trapezoid)

    squa = Square.new
    puts squa.is_a? Rectangle
    puts squa.is_a? Quadrilateral
    puts not(rect.is_a? Trapezoid)

	trap = Trapezoid.new
    puts trap.is_a? Quadrilateral
    puts not(trap.is_a? Rectangle)
    
    rhom = Rhombus.new
    puts rhom.is_a? Quadrilateral
    puts rhom.is_a? Trapezoid
    puts not(rhom.is_a? Rectangle)

end

test

