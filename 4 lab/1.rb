a = 7

puts a * a

result = a
n = 2
for i in Array.new(n-1)
    result = result * a
end
puts result

result = a
for i in (1...n)
    result = result * a
end
puts result

result = a
power = 1
while power < n && power > 0
    result = result * a
    power += 1
end
puts result
