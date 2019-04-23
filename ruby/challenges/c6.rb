# def linear_search (num, arr) 
#     arr.each_with_index do |x, i|
#         if (x == num)
#             p i
#             break
#         end
#     end  
# end
# random_numbers = [4, 15, 30, 35, 67, 20, 17, 2, 20]

# linear_search(20, random_numbers)

# def global_linear_search (str, arr)
#     array = []
#     arr.each_with_index do |x, i|
#         if (x == str)
#             array << i
#         end
#     end
#     p array
# end

# arr = "entretenerse".split(//)

# global_linear_search("e", arr)

# --------------------------------------- Anagrams 2 Challenge -------------------------------------------------------------

# def canonical(word)
#     arr = word.downcase.split(//).sort
#     arr.join
# end

# def are_anagrams?(word1, word2)
#     p canonical(word1) == canonical(word2)
# end

# are_anagrams?("HOLA", "ALOH")

# def anagrams_for (word, arr)
#     array = []
#     arr.each do |x|
#         if canonical(x) == canonical(word)
#             array << x
#         end
#     end
#     p array
# end

# def anagrams(words)
#     p words.group_by{|i| canonical(i)}.values
# end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'flow', 'neon', 'fowl', 'wolf' , 'diet', 'edit', 'tied']

# anagrams_for("demo", words)

# anagrams(words)

# --------------------------------------- Fibonacci Challenge -------------------------------------------------------------

# def fibonacci_iterative (fibonacci_index_number)
#     array1 = Array.new(2){ 1 } #[1 ,1]
#     count = 0
  
#     if fibonacci_index_number == 0
#         p 0
  
#     elsif fibonacci_index_number == 1
#         p 1
  
#     else
#         while count < fibonacci_index_number-2
#         puts "#{array1[array1.length-1]}"
#         array1[array1.length-2]
#         p array1[array1.length] = array1[array1.length-1] + array1[array1.length-2]
#         p array1
#         count = count + 1
#         end
#         p array1.last
#     end
# end
  

# def fibonacci_recursive(n)
  
# 	if n <= 1 then
# 	  return  n
# 	end

#     fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)

# end 

# p fibonacci_recursive(5) == 5
# p fibonacci_iterative(5) == 

# --------------------------------------- Pig Latin Challenge -------------------------------------------------------------

# def pig_latin (word)
#     array = word.split(//)
#     vocales = ["a", "e", "i", "o", "u"]
#     translation = ""
#     if (vocales.include?(array[0].downcase))
#         translation = array.join << "way"
#         p translation
#     else
#         loop do 
#             if (!vocales.include?(array[0].downcase))
#                 x = array[0]
#                 array << x
#                 array.delete_at(0)
#             else
#                 translation = array.join << "ay"
#                 break
#             end
#         end
#         p translation
#     end
# end

# pig_latin("ola")
# pig_latin("hola")
# pig_latin("traductor")

# --------------------------------------- Binary Challenge -------------------------------------------------------------

# def binary_search (num, array)
#     midpoint = 0
#     look_arr = array.sort
#     i = 0
#     index = nil

#     return nil if num > array.last
    
#     loop do
#         midpoint = look_arr.size / 2
#         if (num >= look_arr[midpoint] && look_arr.size != 1)
#             look_arr = look_arr.drop(midpoint)
#             i += 1
#         elsif (num < look_arr[midpoint] && look_arr.size != 1)
#             look_arr = look_arr.take(midpoint)
#             i += 1
#         elsif (look_arr.size == 1)
#             index = array.find_index(look_arr[0])
#             break
#         end
#     end

#     index

# end

# p binary_search(1, [1]) == 0
# p binary_search(4, [1,2,3]) == nil
# p binary_search(4, [1,2,3,4,5]) == 3
# p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
# p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
# p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4
# binary_search(7, [1,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])

# --------------------------------------- Crossword Challenge -------------------------------------------------------------



class Board
# You should put here the given boards templates
@@boards_templates =  "AMEOPXCXPOEMAXSXAMEOPCMXDXIXXNROXXOXNXXR"
@@words = ["POEMA", "CANCION", "RONDAS", "RIMAS"]
@@template = []
@@vertical = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => [],
    5 => [],
    6 => [],
    7 => []
}

@@rows = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => []
}

def initialize
    
end

def print_board
    @@template = @@boards_templates.scan(/.{1,8}/)
    @@template.each do |x|
        p x
    end
end

def look_vertical
    i = 0 
    loop do
        @@template.each do |x|
            @@vertical[i] << x[i]
        end
        i += 1
        break if i == 8
    end

    @@words.each do |x|
        @@vertical.each_key do |y|
            if (@@vertical[y].join.include?(x))
                puts "La palabra: #{x}, esta en la columna: #{y+1}"
            elsif (@@vertical[y].join.reverse.include?(x))
                puts "La palabra: #{x}, esta en la columna: #{y+1}. Pero esta al revés"
            end
        end
    end
end

def look_horizontal
    i = 0

    @@template.each do |x|
        @@rows[i] << x.split(//)
        i += 1
    end

    @@words.each do |x|
        @@rows.each_key do |y|
            if (@@rows[y].join.include?(x))
                puts "La palabra: #{x}, esta en la fila: #{y+1}"
            elsif (@@rows[y].join.reverse.include?(x))
                puts "La palabra: #{x}, esta en la fila: #{y+1}. Pero esta al revés"
            end
        end
    end
end

private
end

# def complete_board!
#     #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
# end

board = Board.new
board.print_board
board.look_vertical
board.look_horizontal

# [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
# [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
# [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]