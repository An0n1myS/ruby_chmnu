biggest_number = nil

if ARGV.length == 0
    abort "Empty args."
end
ARGV.each do|a|
    check = Integer(a) rescue false
    if check
        number = a.to_i
        if biggest_number.nil?
            biggest_number = number
        elsif biggest_number < number
            biggest_number = number
        end
    else
        abort "#{a} is not an integer."
    end
end

puts "#{biggest_number} is a biggest number!"
