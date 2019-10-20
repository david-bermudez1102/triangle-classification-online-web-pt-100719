class Triangle

  attr_reader :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    triangle_sides = [@l1,@l2,@l3]

    if !triangle_sides.combination(2).inject(:*).all? {|a, b| a > b }
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif triangle_sides.all? { |a|  a == triangle_sides[0]}
      :equilateral
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle wrong"
    end
  end
end
