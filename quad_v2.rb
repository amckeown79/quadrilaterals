# Revisit your Quadrilateral object hierarchy from yesterday.
#Add a way to:
# Calculate the perimeter of every shape.
# Calculate the area of shapes with right angles: rectangles and squares.
# Get the length of a single side of equilaterals: squares and rhombi.
# Use TDD to confirm that all of your classes are working correctly.

module Equilateral
	def initialize(side)
		@side = side
	end
	def perimeter
		@side*4
	end
end

class Quadrilateral
	attr_accessor :sides
	@sides = 4

	def initialize(side1, side2, side3, side4)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@side4 = side4
	end

	def perimeter
		@side1+@side2+@side3+@side4
	end
end

class Rectangle < Quadrilateral #for Rectangle: calculate area and perimeter
	attr_reader :length, :width

	def initialize(length, width)
		@length = length
		@width = width		
	end

	def perimeter
		2 * (@length + @width)
	end
	
	def area
		@length * @width
	end
end

class Square < Rectangle #for Square: calculate area, perimeter, and length of a single side
	include Equilateral
	attr_reader :side
		def area
		@side**2
	end
end

class Trapezoid < Quadrilateral #for Trapezoid: calculate perimeter
end

class Rhombus < Trapezoid # for Rhombus: calculate perimeter and length of a single side
	include Equilateral
	attr_reader :side	
end


def test 	
  puts "Quadrilateral Tests"
  quad = Quadrilateral.new(1,2,3,4)
  puts quad.perimeter == 10
  
  puts "Rectangle Tests"
  rect = Rectangle.new(2,3)
  puts rect.perimeter == 10
  puts rect.area == 6

  puts "Square Tests"
  squa = Square.new(2)
  puts squa.perimeter == 8
  puts squa.area == 4
  puts squa.side == 2

  puts "Trapezoid Tests"
  trap = Trapezoid.new(2,3,4,5)
  puts trap.perimeter == 14

  puts "Rhombus Tests"
  rhom = Rhombus.new(3)
  puts rhom.perimeter == 12
  puts rhom.side == 3
end

test
