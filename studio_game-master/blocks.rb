# An array of lotto numbers
lucky = (1..49).to_a

# Partition the odd and even numbers into 2 subarrays
odds, evens = lucky.partition { |n| n.even? }

# selects all even numbers in an array 
e = lucky.select { |n| n.even? }

# rejects all even numbers in an array
o = lucky.reject { |n| n.even? }

lotto = []
6.times do
  lotto << rand(1..49)
end

puts "Lucky lottery numbers are: #{lotto.join(', ')}"
puts "In ascending order: #{lotto.sort.join(', ')}"
puts "The sum of my lottery numbers is #{lotto.reduce(:+)}"

names = %w[jamie vicky jason deno tomo gaz ann patrick jasmine michelle]
puts "\nPeople I know and love, sorted by NAME:"
puts "#{names.sort.join(', ')}"

puts "\nPeople I know and love, sorted by the LETTER 'J':"
puts "#{names.select { |name| name[0] == 'j'}.join(', ')}"

puts "\nPeople I know and love, sorted by the LETTER 'V':"
puts "#{names.select { |name| name[0] == 'v'}.join(', ')}"