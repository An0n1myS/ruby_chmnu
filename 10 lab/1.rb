BACKEND = :backend
FRONTEND = :frontend
SEO = :seo
DESIGNER = :designer
TESTER = :tester

class EmployeesList
    attr_accessor :employees
    def initialize (*args)
        @employees = args&.flatten
    end

    def print
        @employees.sort_by{|a| a.first_name}.each{|a| puts a}
        # @employees.sort{|a, b| a.first_name <=> b.first_name}.each{|a| puts a}
    end

    def each
        @employees.each{|a| yield a}
    end

    def [](x)
        @employees[x]
    end

end

class Unit < EmployeesList

    def <<(x)
        return @employees << x
    end

    def createEmployee(first_name, last_name, middle_name, role)
        @employees << Employee.new(first_name, last_name, middle_name, role)
    end

    def backend
        EmployeesList.new(@employees.select {|e| e.role == BACKEND})
    end

    def frontend
        EmployeesList.new(@employees.select {|e| e.role == FRONTEND})
    end

    def tester
        EmployeesList.new(@employees.select {|e| e.role == TESTER})
    end

    def seo
        EmployeesList.new(@employees.select {|e| e.role == SEO})
    end

    def designer
        EmployeesList.new(@employees.select {|e| e.role == DESIGNER})
    end

    def delete (obj)
        # puts "asd: #{obj.object_id}"
        # each{|e| puts e.object_id}
        @employees.delete_if {|x| x.object_id == obj.object_id}
    end

    class Employee
        attr_accessor :first_name, :last_name, :middle_name, :role
        def initialize(first_name, last_name, middle_name, role)
            @first_name = first_name
            @last_name = last_name
            @middle_name = middle_name
            @role = role
        end

        def to_s
            "#{@first_name} #{@last_name} #{@middle_name} #{@role}"
        end

        def first_name
             @first_name
        end
        def first_name=(new_name)
            @first_name = new_name
        end

        def last_name
            @last_name
        end
        def last_name=(new_name)
            @last_name = new_name
        end

        def middle_name
            @middle_name
        end
        def middle_name=(new_name)
            @middle_name = new_name
        end
    end
end


unit = Unit.new

unit.createEmployee('Dima', 'Khomenko', 'Sergievuch', SEO)
unit.createEmployee('Andij', 'Batuk', 'Grigorovich', BACKEND)
unit.createEmployee('Orin', 'Raq', 'Garcia', BACKEND)
unit.createEmployee('Vinson', 'King', 'Nyro', FRONTEND)
unit.createEmployee('Xanthos', 'Robinson', 'Myro', FRONTEND)
unit.createEmployee('Eduardo', 'Young', 'Ruby', TESTER)
unit.createEmployee('Pick', 'Rafael', 'Qas', TESTER)
unit.createEmployee("Elon", "Tusk", "Mustache", DESIGNER)

puts unit
pp unit
puts

puts "WHOLE TEAM:::"
unit.print


puts "DESIGNER:::"
unit.designer.print
puts "BACKEND:::"
unit.backend.print

puts "first:::"
puts unit.backend[0]

unit.backend[1].first_name = "ADOLF"

unit.delete unit.backend[0]

puts "BACKEND:::"
unit.backend.print
