##
# First lb
class Lab2
    ##
    # 1 task: method 1
    def roundToSecondDigit(number)
        return number.round(2)
    end

    def roundToSecondDigit2(number)
        return number.floor(2)
    end

    # 1 task: method 2
    def printRoundToSecondDigit(number)
        puts '%.2f' % number
    end

    # 2 task: method 1
    def printArray(arr)
        for element in arr do
            puts element
        end
    end

    # 2 task: method 2
    def printArrayWithEach(arr)
        arr.each do |element|
            puts element
        end
    end

    # 3 task
    def getRandomElementFromHash(hashInstance)
        return hashInstance.keys.sample
    end

    # 4 task
    def getTimeOfDay(hours)
        case hours
        when 0..5
          return 'Ночь'
        when 6..10
            return "Утро"
        when 11..18
            return "День"
        when 19..24
            return "Вечер"
        else
            return 'Число не входит в диапазон доступных значений!'
        end
    end

    # 5 task
    def deleteWhiteSpacesAtSuffixAndPrefix(str)
        return str.strip
    end

    # 6 task: method 1
    def concatenateStrings(str1, str2)

        return str1 + " " + str2
    end
    # 6 task: method 2
    def concatenateStrings2(*args)
        return args.join(" ")
    end
end


class User
    def initialize(first_name, second_name, middle_name)
        @first_name = first_name
        @second_name = second_name
        @middle_name = middle_name
    end

    def fio()
        return "#{@first_name} #{@middle_name} #{@second_name}"
    end
end

class Point
    attr_accessor :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end

    def self.euclidean_distance(p1, p2)
        Math.sqrt((p1.x-p2.x).abs**2+(p1.y-p2.y).abs**2)
    end

    def self.distance(point1, point2)
        if (point1.instance_of? Point) && (point2.instance_of? Point)
            Point.euclidean_distance(point1, point2)
        end
    end
end

lab2 = Lab2.new

# 1 task
puts "\n1 task"
puts lab2.roundToSecondDigit(Math::PI)
lab2.printRoundToSecondDigit(Math::PI)

# 2 task
puts "\n2 task"
nameOfDays = Array['Понеділок','Вівторок','Середа','Четверг','П`ятниця','Суббота','Неділя']
lab2.printArray(nameOfDays)
lab2.printArrayWithEach(nameOfDays)

# 3 task
puts "\n3 task"
rainbow = {
    "red" => 'червоний',
    "orange" => 'помаранчевий',
    "yellow" => 'жовтий',
    "green" => 'зелений',
    "blue" => 'блакитний',
    "indigo" => 'синій',
    "violet" =>'фіолетовий'
}

colorEng = lab2.getRandomElementFromHash(rainbow)
puts "Eng: #{colorEng} = #{rainbow[colorEng]} in russian"

# 4 task
puts "\n4 task"
puts lab2.getTimeOfDay(1.5)
puts lab2.getTimeOfDay(8)
puts lab2.getTimeOfDay(15)
puts lab2.getTimeOfDay(19)

# 5 task
puts "\n5 task"
puts %Q(stripped value: #{lab2.deleteWhiteSpacesAtSuffixAndPrefix('    hello world       ')}.)

# 6 task
puts "\n6 task"
puts lab2.concatenateStrings('hello','world')
puts lab2.concatenateStrings2('hello','world')

# 7 task
puts "\n7 task"
user = User.new('Dima', 'Khomenko', 'Sergeevich')
pp user.fio

# 8 task
puts "\n8 task"
point1 = Point.new(3,6)
point2 = Point.new(-1,5)
distance = Point.distance(point1, point2)
puts distance

# 9 task
puts "\n9 task"
puts "$LOAD_PATH length = #{$LOAD_PATH.length()}"
