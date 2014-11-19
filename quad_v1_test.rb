def test
    squa = Square.new
    puts squa.is_a? Rectangle
    puts squa.is_a? Quadrilateral

    rect = Rectangle.new
    puts rect.is_a? Quadrilateral
    puts not(rect.is_a? Trapezoid)

	rhom = Rhombus.new	
    puts rhom.is_a? Rectangle
    puts rhom.is_a? Quadrilateral

	trap = Trapezoid.new
    puts trap.is_a? Rectangle
    puts trap.is_a? Quadrilateral

end

test
