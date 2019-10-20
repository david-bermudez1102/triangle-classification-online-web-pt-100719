class Triangle

  attr_reader :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    triangle_sides = [@l1,@l2,@l3]
    triangle_sides = triangle_sides.sort

    number = 0
    triangle_sides.combination(2).any? {|a, b| a > b }
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
