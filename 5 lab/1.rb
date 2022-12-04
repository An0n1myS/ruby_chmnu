# def daysOfWeekend(x)
#     mapDayToInt = {
#         1 => "Понеділок",
#         2 => "Вівторок",
#         3 => "Середа",
#         4 => "Четверг",
#         5 => "П'ятниця",
#         6 => "Суббота",
#         7 => "Неділя",
#     }
#     mapDayToInt[x]
# end

# puts daysOfWeekend(1).class
# puts daysOfWeekend(1).nil?
# puts
# puts daysOfWeekend(7).class
# puts daysOfWeekend(7).nil?
# puts
# puts daysOfWeekend(8).class
# puts daysOfWeekend(8).nil?


def daysOfWeekend2(x)
    case x
    when 1
        return 'понеділок'
    when 2
        return 'вівторок'
    when 3
        return 'середа'
    when 4
        return 'четвер'
    when 5
        return 'пятниця'
    when 6
        return 'субота'
    when 7
        return 'неділя'
    else
        return nil
    end
end

puts "1: #{daysOfWeekend2(1)}"
puts daysOfWeekend2(1).class
puts daysOfWeekend2(1).nil?
puts
puts "7: #{daysOfWeekend2(7)}"
puts daysOfWeekend2(7).class
puts daysOfWeekend2(7).nil?
puts
puts "8: #{daysOfWeekend2(8)}"
puts daysOfWeekend2(8).class
puts daysOfWeekend2(8).nil?
