class Hello
    @v
    def initialize (v)
        @v = v
    end

    def say
        puts to_s
    end

    def to_s
        return "Hello, #{@v}"
    end 
end

hello = Hello.new("world")
hello.say

puts hello
