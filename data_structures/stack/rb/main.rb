require_relative 'stack'

stack = Stack.new

stack.push("Bulbasaur")
stack.push("Charmander")
stack.push("Squirtle")
stack.display

puts "Taking out Squirtle"
stack.pop
stack.display

puts "Adding Pikachu"
stack.push("Pikachu");
stack.display
