class List
    attr_accessor :objects
    def initialize(*objects)
        puts objects.class
        @objects = objects
    end
  
    def <<(val)
        @objects << val
    end

    def each(&block)
        @objects.each(&block)
    end

    # def each
    #     @params.each {|el| yield el}
    # end
end

l = List.new(1,2, "A", 'c')

a = 0
l.each do |i| 
    a += 1
    puts "#{a}: #{i}"
end
