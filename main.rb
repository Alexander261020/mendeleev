require_relative 'lib/element'
require_relative 'lib/elements_collection'

path = "#{__dir__}/files/elements.json"

elements = ElementsCollection.read_from_file(path)

puts "О каком элементе хотите узнать?"
puts elements

user_input = 0

until user_input.to_i.between?(1, elements.size)
  user_input = STDIN.gets.downcase.chomp

  if elements.symbols.include?(user_input)
    user_input = elements.symbols.find_index(user_input) + 1
  end
end

element = elements.index_by(user_input.to_i - 1)

puts element
