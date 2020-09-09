#defining a method for a dice roll. Number of sides is the argument.
def roll(sides)
  result = rand(sides + 1)
  while result == 0
    result = rand(sides + 1)
  end
  return result
end

#creating two variables to keep track of number of rounds won
p1wins = 0
p2wins = 0

#until one of the players wins two rounds, they take turns rolling the dice
until p1wins == 2 || p2wins == 2 do
  p1 = roll(6) + roll(6)
  p2 = roll(6) + roll(6)
  if p1 > p2
    p1wins += 1
    puts "p1 = #{p1}"
  elsif p1 < p2
    p2wins += 1
    puts "p2 = #{p2}"
  else
    nil
  end
end

puts "p1: #{p1wins} wins"
puts "p2: #{p2wins} wins"

if p1wins > p2wins
  puts "P1 wins!"
else
  puts "P2 wins!"
end
