class Human
    attr_accessor :first_name, :last_name, :middle_name
    def initialize (first_name, last_name, middle_name)
        @first_name = first_name
        @last_name = last_name
        @middle_name = middle_name
    end
    def say
        puts self.class
    end
    def to_s
        "#{@first_name} #{@last_name} #{@middle_name}"
    end
end

class WebSiteUser < Human
    def initialize (*args)
        if args.size == 3
            super(*args)
        elsif args.size > 0
            raise "Invalid number of arguments"
        else
            yield self
        end
    end
end

class User < WebSiteUser

end

class Author < WebSiteUser

end

class Admin < WebSiteUser

end

class Moderator < WebSiteUser

end

puts

webSiteUser = WebSiteUser.new do |u|
    u.last_name = "Давыденко"
    u.first_name = "Євген"
    u.middle_name = "Миколаєвич"
end

puts webSiteUser.first_name
webSiteUser.say
puts webSiteUser.to_s
puts

moderator = Moderator.new do |u|
    u.last_name = "Горбань"
    u.first_name = "Гліб"
    u.middle_name = "Валентинович"
end

moderator.say
puts moderator

puts
admin = Admin.new("Дмитро", "Хоменко", "Сергійович")

admin.say
puts admin
puts
