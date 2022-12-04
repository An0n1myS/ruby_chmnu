# static methods // singleton class 

# class Integer
#   class << self 
#     def days obj
#       (obj  * 24).hours
#     end
#   end
# end

# def Integer.days obj
#   (obj  * 24).hours
# end


class Integer
    def minutes
      self * 60
    end
  
    def hours
      self  * 60 * 60
    end

    def days
      (self  * 24).hours
    end
end

puts 5.minutes
puts 2.hours
puts 1.days

# puts Integer.days 1
