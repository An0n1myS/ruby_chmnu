# − freeze -   з рідкого у тверде;
# − boil -     з рідкого до газоподібного;
# − melt -     із твердого в рідке;
# − sublime -  із твердого в газоподібне;
# − condense - із газоподібного в рідке;
# − deposit —  із газоподібного до твердого.

GAS = :gas
SOLID = :solid
LIQUID = :liquid

class Substance
    attr_accessor :status
    def initialize (status=:gas)
        if status == LIQUID || status == SOLID || status == GAS
            @status = status
        else
            raise "Unknown status" 
        end
    end
    def status
        @status
    end
    def status=(new_status)
        @status = new_status
    end

    def condense
        if @status == GAS
            @status = LIQUID
        else
            raise "Can't condense, while gas"
        end
    end

    def deposit
        if @status == GAS
            @status = SOLID
        else
            raise "Can't deposit, while gas"
        end
    end

    def melt
        if @status == SOLID
            @status = LIQUID
        else
            raise "Can't melt, while solid"
        end
    end

    def sublime
        if @status == SOLID
            @status = GAS
        else
            raise "Can't sublime, while solid"
        end
    end

    def freeze
        if @status == LIQUID
            @status = SOLID
        else
            raise "Can't freeze, while liquid"
        end
    end

    def boil
        if @status == LIQUID
            @status = GAS
        else
            raise "Can't boil, while liquid"
        end
    end
end

a = Substance.new(:gas)
b = Substance.new
puts "START:"

puts "a: #{a.status} b: #{b.status}"


a.condense
b.deposit
puts "a: #{a.status} b: #{b.status}"

a.freeze
b.melt 
puts "a: #{a.status} b: #{b.status}"


a.sublime
b.boil
puts "a: #{a.status} b: #{b.status}"

puts "END."