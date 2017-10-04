puts "Let's play a game!\n
Guess a number from 0 to 100. You have 10 tries."

random_number = rand(101)

life = 100

for i in 1..10
input = gets.chomp.to_i

if input == random_number
  puts "You'll live to see another day!"
  break

else
  life -= 10
  if random_number > input
    puts "Higher!"
  else
    puts "Lower!"
  end
  puts "you just lost 10 life, #{life} remaining."
  puts "You're dead" if i == 10

end
end
