# --------------------------------------- Bacon Challenge -------------------------------------------------------------

# def baconian_cipher (string)
    
#     diccionario =
#     {"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
#     "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
#     "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
#     "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
#     "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}
    
#     array1 = string.scan(/...../)
#     string2 = ""
#     array1.each do |x|
#         letter = diccionario.key(x)
#         string2 << (letter)
#     end

#     string2

# end

# p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB")# == "teesperoalascinco"
# p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB")# == "laclaveesdostres"

# --------------------------------------- Enumerables Challenge -------------------------------------------------------------

# def odd_indexed(arr)
#     array = []
#     arr.each_with_index do |x, i|
#         if i.odd?
#             array << (x)
#         end
#     end
#     array
# end

# def long_strings(arr)
#     arr.select{|x| x.size > 4}
# end

# def start_with_h(arr)
#     arr.select{|x| x.downcase.start_with? ("h")}.join
# end

# def capitalize_array(arr)
#     arr.collect{|x| x.capitalize}
# end

# def group_by_starting_letter(arr)
#     arr.group_by{|x| x[0]}
# end

# def number_of_r (str)
#     str.count("r")
# end
# # Pruebas

# p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["dos", "cuatro"]
# p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
# p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
# p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
# p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
# p number_of_r("ferrocarril") == 4

# def factorial (num)
#     (1..num).to_a.inject{|mul, n| mul * n}
# end
# p factorial(5) == 120

# --------------------------------------- Deaf Grandma Challenge -------------------------------------------------------------

# - Como la abuela esta sorda cualquier cosa que le digas ella responderá gritando "HUH?! NO TE ESCUCHO, HIJO!"
# - Si gritas para intentar que te escuche, lo va a entender mal y responderá gritando "NO, NO DESDE 1983"
# - Para poder irte y dejar de hablar con ella tendrás que con mucho amor decir "BYE TQM"

# def deaf_grandma
#     i = 0

#     input = ""

#     puts "¡¿QUÉ PASO HIJO?!"
#     input = gets.chomp

#     loop do
#         if (input.upcase != input && input != "BYE TQM")
#             i = 0
#             puts "HUH?! NO TE ESCUCHO, HIJO!"
#         elsif (input.upcase == input && input != "BYE TQM")
#             i = 0
#             puts "¡NO, NO DESDE 1983!"
#         elsif (input.upcase == input && input == "BYE TQM" && i != 2)
#             i += 1
#             puts "¡NO, NO DESDE 1983!"
#         elsif (input.upcase == input && input == "BYE TQM" && i == 2)
#             puts "¡ADIOS HIJO!"
#             break
#         end
#         input = gets.chomp
#     end 
# end

# deaf_grandma()

# --------------------------------------- Dictionary Challenge -------------------------------------------------------------


def dictionary_sort
    input_original = gets.chomp.split("#")
    # array1.each_with_index do |x, i|
    #     p array1[i] = array_original[i]
    # end
    p array1
end

dictionary_sort()