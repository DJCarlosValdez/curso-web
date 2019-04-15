#puts "Escribe un nombre:"
#name = gets.chomp
#letters = name.size()
#message = "Welcome #{name}, your name has #{letters} letters" 
#p message == "Welcome Rodrigo, your name has 7 letters"

# def sum_strings (str1, str2)
#     str1 + str2
# end

# puts "Primer String"
# string1 = gets.chomp

# puts "Segundo String"
# string2 = gets.chomp

# p sum_strings(string1, string2)

def caesar_cipher(original_text, rotate_number)
    original_alphabet = "abcdefghijklmnopqrstuvwxyz"
    cipher_text = ""
    original_text.split("").each do |letter|
      if "?.,! ".include?(letter)
        cipher_text << letter
      else
        cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
        if letter == letter.upcase
          cipher_text << cipher_alphabet.upcase
        else
          cipher_text << cipher_alphabet
        end
      end
    end
    cipher_text
  end
  
  #test
  
  p caesar_cipher("hola", 3) == "krod"
  p caesar_cipher("hola", 4) == "lspe"