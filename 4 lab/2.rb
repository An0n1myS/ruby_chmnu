

print "Enter a number: "
a = gets.chomp().to_i

if 1 & a == 1
    puts "#{a} is even"
else
    puts "#{a} is odd"
end
