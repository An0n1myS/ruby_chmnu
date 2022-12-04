class Student
    attr_accessor :first_name, :last_name, :middle_name, :grade
    def initialize(first_name, last_name, middle_name, grade)
        @first_name = first_name
        @last_name = last_name
        @middle_name = middle_name
        @grade = grade
    end

    def print
        puts "#{@first_name} #{@last_name} #{@middle_name} #{@grade}"
    end

    def mark
        @grade
    end
end

students = [
    Student.new('Dima', 'Khomenko', 'Sergievuch', 5),
    Student.new('Andij', 'Batuk', 'Grigorovich', 3.5),
    Student.new('Orin', 'Raq', 'Garcia', 4.21),
    Student.new('Vinson', 'King', 'Nyro', 4.7),
    Student.new('Xanthos', 'Robinson', 'Myro', 1.2),
    Student.new('Eduardo', 'Young', 'Ruby', 4.5),
    Student.new('Pick', 'Rafael', 'Qas', 4.7),
    Student.new('Rafael', 'Nick', 'Vas', 1.87),
    Student.new('Tac', 'Kavkaz', 'Pas', 1.31),
    Student.new('Nyro', 'Tac', 'Laplas', 1.9),
    Student.new('Salamandra', 'Qdar', 'ZXC', 3.3),
]


sum = 0.0
students.each do |student|
    sum += student.mark.to_f
end

average = sum/students.length.to_f

puts "Average : #{average}"

students.each do |student|
    if student.mark >= average
        student.print
    end
end
