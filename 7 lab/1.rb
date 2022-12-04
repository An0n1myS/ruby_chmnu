class TeddyBear
end

class Ball
end

class Cube
end

class Factory
    attr_accessor :count, :offer

    def initialize
        @count = 0
        @offer = {
            :teddy_bear => 0,
            :ball => 0,
            :cube => 0
        }
    end

    def build (symb)
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

        @count += 1
        @offer[symb] += 1

        return result
    end

    def total
        @count
    end
end

first = Factory.new
pp first.build(:cube)
pp first.build(:cube)
pp first.build(:cube)
pp first.build(:ball)
pp first.build(:teddy_bear)
pp first.build(:teddy_bear)

puts "Total count = #{first.total}"
pp first.offer
