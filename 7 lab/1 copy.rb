class TeddyBear
end

class Ball
end

class Cube
end


class Factory
  @@count = 0
  @@offer = {
    :teddy_bear => 0,
    :ball => 0,
    :cube => 0
  }

  def self.build (symb)
    result = nil

    case symb
    when :teddy_bear
      result = TeddyBear.new
    when :ball
      result = Ball.new
    when :cube
      result = Cube.new
    else 
      raise "Unknown type!"
    end

    @@count += 1
    @@offer[symb] += 1

    return result
  end

  def self.total
    @@count
  end

  def self.offer
    @@offer
  end
end

pp Factory.build(:cube)
pp Factory.build(:cube)
pp Factory.build(:cube)
pp Factory.build(:ball)
pp Factory.build(:teddy_bear)
pp Factory.build(:teddy_bear)

puts "Total count = #{Factory.total}"
puts Factory.offer
