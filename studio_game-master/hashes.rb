# define a new hash called treasures
treasures = { hammer: 50, bottle: 35 }

# print the value of hammer
puts treasures[:hammer]

# add 50 to the value of hammer, then print the new value
treasures[:hammer] += 50
puts treasures[:hammer]

# iterate over each key-value pair in the has printing out the details of each
treasures.each { |k,v| puts "The #{k} has a value #{v}" }

# display an array of the keys
puts treasures.keys

# display an array of the values
puts treasures.values

# add all the values together
puts treasures.values.reduce(:+)
