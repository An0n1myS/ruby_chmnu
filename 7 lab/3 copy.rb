# − freeze -   з рідкого у тверде;
# − boil -     з рідкого до газоподібного;
# − melt -     із твердого в рідке;
# − sublime -  із твердого в газоподібне;
# − condense - із газоподібного в рідке;
# − deposit —  із газоподібного до твердого.

GAS = :gas
SOLID = :solid
LIQUID = :liquid

class Base 
    attr_accessor :status
    
    def status
        @status
    end
    def status=(new_status)
        @status = new_status
    end

    def condense
        raise NoMethodError
    end

    def deposit
        raise NoMethodError
    end

    def melt
        raise NoMethodError
    end

    def sublime
        raise NoMethodError
    end

    def freeze
        raise NoMethodError
    end

    def boil 
        raise NoMethodError
    end
end

class Liquid < Base
    def initialize ()
        @status = LIQUID
    end
    def freeze
        puts "Freezing"
        return Solid.new
    end

    def boil
        puts "Boiling"
        return Gas.new
    end
end

class Gas < Base
    def initialize ()
        @status = GAS
    end

    def condense
        puts "Condensing"
        return Liquid.new
    end

    def deposit
        puts "Depositing"
        return Solid.new
    end
end

class Solid < Base
    def initialize ()
        @status = SOLID
    end

    def melt
        puts "Melting"
        return Liquid.new
    end

    def sublime
        puts "Subliming"
        return Gas.new
    end
end

a = Gas.new
puts "START:"
puts "a: #{a.status}"

a = a.condense
puts "a: #{a.status}"

a = a.freeze
puts "a: #{a.status}"

a = a.sublime
puts "a: #{a.status}"

a = a.deposit
puts "a: #{a.status}"

a = a.melt 
puts "a: #{a.status}"

a = a.boil
puts "a: #{a.status}"

puts "END."