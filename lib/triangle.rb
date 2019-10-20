class Triangle

  attr_reader :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    triangle_sides = [@l1,@l2,@l3]
    sides_temp = triangle_sides.combination(2).to_a

    sides_temp.map{|s|
      s.reduce(:*)
    }

    sides_temp.any?{|s| triangle_sides.each{|triangle_side| s>triangle_side}}

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
