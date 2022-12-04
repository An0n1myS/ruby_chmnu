solar_system = {
    "Mars" => 0.642,
    "Saturn" => 568,
    "Upiter" => 1898,
    "Neptun" => 102,
    "Uran" => 86.8,
    "Earth" => 5.97,
    "Venera" => 4.87,
    "Merkuriy" => 0.330
}

puts "First version"

p solar_system.sort_by(&:last).last(3)
p solar_system.sort_by(&:last).first(3)

puts "Second version"

sorted = solar_system.sort_by{|k, v| v}
p sorted[0,3]
p sorted[-3..-1]
