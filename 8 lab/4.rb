module StringFloatOrInteger
    def integer_or_float?
        begin !!Float(self) rescue false end
    end

    def integer_not_float?
        begin !!Integer(self) rescue false end
    end

    def integer?
        integer_not_float? & integer_or_float?
    end

    def float?
        integer_or_float?
    end
end
String.include StringFloatOrInteger

class Foo
    attr_accessor :bar
    def initialize(bar)
        @bar = bar
        @bar.each do |k,v|
            key = k.to_s
            if key.float?
                key = "_#{key}"
            end
            self.class.send :define_method, key do v.to_s end
        end
    end

    def to_s
        "#{@bar.to_s}"
    end

    # def method_missing(name, *args, &blk)
    #     if args.empty? && blk.nil? && @attributes.has_key?(name)
    #         @attributes[name]
    #     else
    #         super
    #     end
    # end
end

a = {
    "a" => 1,
    "b" => 2,
    "3" => 3
}
foo = Foo.new(a)

puts foo.a
puts foo.b
puts foo._3

puts foo.d
