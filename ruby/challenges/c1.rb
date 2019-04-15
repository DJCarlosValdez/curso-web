puts "Escribe un nombre:"
name = gets.chomp
letters = name.size()
message = "Welcome #{name}, your name has #{letters} letters" 
p message == "Welcome Rodrigo, your name has 7 letters"