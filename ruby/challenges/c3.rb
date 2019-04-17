# --------------------------------------- Vocales Challenge -------------------------------------------------------------

# def input_string ()
#     puts "Ingresa un string: "
#     string = gets.chomp
#     vowels(string)
# end

# def vowels (string) 
#     i = 0
#     array = string.split(//)
#     array.each_with_index do |x, index|
#         if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"
#             array[index] = "x"
#             i += 1
#         end
#     end
#     puts "El string tiene #{i} vocales."
#     p array.join
# end

# input_string()

# --------------------------------------- Formando Arrays Challenge -------------------------------------------------------------

# def create_array ()
#     passed_string = ""
#     array = []
#     loop do
#         puts 'Ingresa un strig para el array. Escribe "Ya" cuando hayas acabado.'
#         passed_string = gets.chomp
#         break if passed_string == "Ya"
#         array << passed_string
#     end
#     puts "¿Cuantas veces quieres repetir cada valor?" 
#     times = gets.chomp.to_i
#     array_index(array, times)
# end

# def array_index (array, t) 
#     array2 = Array.new
#     array.each do |x|
#         (0...t).each do
#             array2 << [x, t]
#         end
#     end
#     p array2
# end

# create_array()

# --------------------------------------- Formando Arrays 2 Challenge -------------------------------------------------------------

# def create_array ()
#     passed_string = ""
#     array = []
#     loop do
#         puts 'Ingresa un strig para el array. Escribe "Ya" cuando hayas acabado.'
#         passed_string = gets.chomp
#         break if passed_string == "Ya"
#         array << passed_string
#     end
#     puts "¿Cuantas veces quieres repetir cada valor?" 
#     times = gets.chomp.to_i
#     array_index(array, times)
# end

# def array_index (array, t) 
#     array2 = Array.new
#     array3 = (1..t).to_a
#     array.each do |x|
#         array2 << [x, array3]
#     end
#     p array2
# end

# create_array()

# --------------------------------------- Max Num Challenge -------------------------------------------------------------

# def create_array ()
#     passed_float = ""
#     array = []
#     loop do
#         puts 'Ingresa un número para el array. Escribe "0" cuando hayas acabado.'
#         passed_float = gets.chomp.to_f
#         break if passed_float == 0
#         array << passed_float
#     end
#     max_num(array)
# end

# def max_num (array)
#     a_max_num = 0
#     array.each do |x|
#         if x > a_max_num
#             a_max_num = x
#         end
#     end
#     puts "El número más grande es: #{a_max_num}"
# end

# create_array()

# --------------------------------------- Hash Challenge -------------------------------------------------------------

# def family_members (hash)
#     array = []
#     hash[:sisters].each do |x|
#         array << x
#     end
#     hash[:brothers].each do |x|
#         array << x
#     end
#     p array
# end

# family = {  
#     uncles: ["jorge", "samuel", "steve"],
#     sisters: ["angelica", "mago", "julia"],
#     brothers: ["polo","rob","david"],
#     aunts: ["maria","minerva","susana"]
# }

# family_members(family)

# --------------------------------------- Anagrams Challenge -------------------------------------------------------------
# def create_array ()
#     inputs = 0
#     passed_string = ""
#     array = []
#     loop do
#         puts 'Ingresa un strig para el array. Escribe "Ya" cuando hayas acabado.'
#         passed_string = gets.chomp
#         break if passed_string == "Ya"
#         array << passed_string
#     end 
#     anagram(array)
# end


# def anagram (array)
#     ref_hash = {}
#     array.each_with_index do |x, index|
#         word_array = x.downcase.split(//).sort.join
#         if (ref_hash.has_key?(word_array)) == false
#             ref_hash[word_array] = []
#         end
#     end

#     array.each_with_index do |x, index|
#         word_array = x.downcase.split(//).sort.join
#         if (ref_hash.has_key?(word_array))
#             ref_hash[word_array] << x
#         end
#     end

#     p ref_hash.values
# end

# # words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'flow', 'neon', 'fowl', 'wolf' , 'diet', 'edit', 'tied']
# create_array()

# --------------------------------------- Edad Challenge -------------------------------------------------------------

# def create_array ()
#     passed_float = ""
#     array = []
#     loop do
#         puts 'Ingresa una edad para el array. Escribe "0" cuando hayas acabado.'
#         passed_float = gets.chomp.to_i
#         break if passed_float == 0
#         array << passed_float
#     end
#     puts 'Ingresa una edad minima.'
#     min = gets.chomp.to_i
#     puts 'Ingresa una edad maxima.'
#     max = gets.chomp.to_i
#     between_age(array, min, max)
# end

# def between_age (ages, min, max)
#     i = 0
#     ages.each do |x|
#         if (x > min) && (x < max)
#             i+=1
#         end
#     end
#     puts "#{i} edades están dentro del rango."
# end

# create_array()