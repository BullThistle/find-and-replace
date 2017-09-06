require('pry')

def replace(stringin, word, change)
  stringin = stringin.split(" ");
  stringin.map do |element|
    if element == word
      element = change
    end
  end
  stringin = stringin.join(" ")
  stringin
end

puts "Please enter a string"
stringin = gets.chomp

puts "Please enter the word you would like to change"
word = gets.chomp

puts "What word would you like to replace it with?"
change = gets.chomp

File.open("../write_file.txt", "a") do |line|
  line.puts "" + stringin
  stringin = replace(stringin, word, change)
   line.puts "" + stringin
end
