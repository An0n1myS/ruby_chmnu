sum = 0

ARGV.each do|a|
    sum += a.to_f
end

puts sum

arr = Array[1, 2, 3, 4, 5.5, 6]
puts arr.sum

print "Enter lenght:"
len = $stdin.gets.chomp.to_i
arr = []
(0..len-1).each do |n|
    print "#{n+1} << "
    arr.append($stdin.gets.chomp().to_f)
end
puts arr.sum
