require 'date'
print 'Enter year: '
year = $stdin.gets.chomp().to_i
print 'Enter month: '
month = $stdin.gets.chomp().to_i
print 'Enter day: '
day = $stdin.gets.chomp().to_i

birthDay = DateTime.new(year,month,day)
today = DateTime.now
# puts birthDay
# puts today

def age_in_completed_years (bd, d)
    # Difference in years, less one if you have not had a birthday this year.
    a = d.year - bd.year
    a = a - 1 if (
         bd.month >  d.month or
        (bd.month >= d.month and bd.day > d.day)
    )
    a
end

puts "Person is #{age_in_completed_years(birthDay, today)} years old."
