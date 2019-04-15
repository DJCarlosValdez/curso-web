#puts "Escribe un nombre:"
#name = gets.chomp
#letters = name.size()
#message = "Welcome #{name}, your name has #{letters} letters" 
#p message == "Welcome Rodrigo, your name has 7 letters"

def sum_strings (str1, str2)
    str1 + str2
end

puts "Primer String"
string1 = gets.chomp

puts "Segundo String"
string2 = gets.chomp

p sum_strings(string1, string2)