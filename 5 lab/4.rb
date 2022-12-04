require 'date'

today = DateTime.now
weekdays =  %w{Пн Вт Ср Чт Пт Сб Нд}

last_day_of_month = Date.new(today.year, today.month, -1)

# returns the integer representing the day of the week, 0..6, with Sunday == 0.
last_day_week = last_day_of_month.wday
# returns day of month. 0..31
num_of_days = last_day_of_month.mday

def getFirstDayFromTheEnd(day, num_of_days)
    while num_of_days > 0
        num_of_days = num_of_days - 1
        day -= 1
        if day < 0
            day = 6
        end
    end
    return day
end

mondayIndex = 1 - getFirstDayFromTheEnd(last_day_week, num_of_days)

puts "\t \t#{Date::MONTHNAMES[today.month]} #{today.year}"
for dayIndex in (0..6)
    tmp = mondayIndex
    resultString = weekdays[dayIndex] + " \t"
    while tmp <= num_of_days
        result = ""
        if tmp <= 0
            resultString += " \t"
        elsif tmp <= num_of_days
            result = tmp.to_s
            if tmp == today.day
                result = "(" + result + ")"
            end
            resultString += result + " \t"
        end
        resultString
        tmp += 7
    end
    mondayIndex+=1
    puts resultString
end
