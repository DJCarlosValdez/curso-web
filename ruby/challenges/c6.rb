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
@@boards_templates =  "POEMAXCXXOXAXXSXNXEAXCMXDXIMXNROXXOXAXXR"
@@words = ["POEMA", "CANCION", "RONDAS", "RIMAS"]
@@template = []
@@columns = {
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
    0 => nil,
    1 => nil,
    2 => nil,
    3 => nil,
    4 => nil
}

@@diag_x = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => [],
    5 => [],
    6 => []
}

@@diag_y = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => []
}

@@diag_x_back = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => [],
    5 => [],
    6 => [],
    7 => []
}

@@diag_y_back = {
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

def look_columns
    i = 0 
    loop do
        @@template.each do |x|
            @@columns[i] << x[i]
        end
        i += 1
        break if i == 8
    end
    @@words.each do |x|
        @@columns.each_key do |y|
            if (@@columns[y].join.include?(x))
                puts "La palabra: #{x}, esta en la columna: #{y+1}"
            elsif (@@columns[y].join.reverse.include?(x))
                puts "La palabra: #{x}, esta en la columna: #{y+1}. Pero esta al revés"
            end
        end

    end
    p @@columns
end

def look_horizontal
    i = 0

    @@template.each do |x|
        @@rows[i] = x.split(//)
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

def look_diagonal_y
    # Las columnas son x y las filas son y.
    x = 0
    y = 0
    max_y = 4
    loop do 
        p "begin"
        # En cada fila va a buscar los caracteres que esten en diagonal 
        # y colocarlos en su respectivo array dentro de un hash.
        @@rows.each_key do
            puts "voy a volver a empezar each do en #{y}"
            puts "voy a jalar la letra en = #{x}. la voy a jalar de: #{@@rows[x+y]}"
            puts "en #{@@diag_y[y]} le voy a añadir #{@@rows[x + y][x]}"
            # Agrega los caracteres en diagonal al array de su respectivo hash.
            p @@diag_y[y] << @@rows[x + y][x]
            puts "ahora en la siguiente vuelta voy a jalar #{x}"
            # Aqui define si llego a la ultima fila o si debe continuar descendiendo.
            if max_y - y == x
                # Ultima Fila.
                x = 0     
                puts "reinicie x a #{x}"
                y += 1
                puts "en la siguiente vuelta voy a escribir en #{y}."
            else
                # Continuar descendiendo.
                x += 1
            end
        end

        # Rompe el loop si ha pasado por todas las diagonales en Y.
        break if y == max_y + 1
        
    end

    puts "las diagonales son : #{@@diag_y}"

    # Busca si alguna palabra se encunetra en alguna de las diagonales al derecho o al revés.

    @@words.each do |x|
        @@diag_y.each_key do |z|
            if (@@diag_y[z].join.include?(x))
                puts "La palabra: #{x}, esta en la fila: #{z+1}"
            elsif (@@diag_y[z].join.reverse.include?(x))
                puts "La palabra: #{x}, esta en la fila: #{z+1}. Pero esta al revés"
            end
        end
    end
end

def look_diagonal_x
    # Las columnas son x y las filas son y.
    x = 1
    y = 0
    key = 0
    max_y = 4
    max_x = 7
    turn = 0

    # En cada fila va a buscar los caracteres que esten en diagonal 
    # y colocarlos en su respectivo array dentro de un hash.

    loop do 
        p "begin"
        @@rows.each_key do
            puts "voy a volver a empezar each do en #{y}"
            puts "voy a jalar la letra en = #{x}. la voy a jalar de: #{@@rows[y]}"
            puts "en #{@@diag_x[key]} le voy a añadir #{@@rows[y][x]}"
            # Agrega los caracteres en diagonal al array de su respectivo hash.
            p @@diag_x[key] << @@rows[y][x]
            puts "ahora en la siguiente vuelta voy a jalar #{x + 1}"
            # Aqui define si llego a la ultima columna o si debe continuar descendiendo.
            if max_y - y == 0 || x == 7
                turn += 1
                x = 1 + turn   
                key += 1
                y = 0
                puts "en la siguiente vuelta voy a empezar en x: #{x}. y escribir en el key #{key}"
            else
                x += 1
                y += 1
            end
        end
        break if key == 7
    end
    puts "las diagonales son : #{@@diag_x}"
    @@words.each do |a|
        @@diag_x.each_key do |z|
            if (@@diag_x[z].join.include?(a))
                puts "La palabra: #{a}, esta en la fila: #{z+1}"
            elsif (@@diag_x[z].join.reverse.include?(a))
                puts "La palabra: #{a}, esta en la fila: #{z+1}. Pero esta al revés"
            end
        end
    end
end

def look_diagonal_y_back
    k = 0
    loop do
        i = k
        j = 0
        
        while (i >= 0)
            puts "#{i}, #{j}"
            @@diag_y_back[k] << @@columns[i][j]
            i = i - 1
            j = j + 1
        end
        k += 1
        break if k == 5
    end

    k = 0
    
    if 8 - 5 - 1 > 0 
        j = 7 - (8 - 5 - 1)
        loop do
            i = 0
            while (i <= 4)
                puts "#{i}, #{j}"
                @@diag_x_back[k] << @@columns[j][i]
                p @@diag_x_back
                i = i + 1
                j = j - 1
            end
            j = 7 - (8 - 5 - 1) 
            j += 1
            k += 1
            break if k == 2
        end
    end
end


def look_diagonal_x_back
    k = 3
    loop do
        puts "dentro del loop Diag X Back"
        i = 4
        j = k
        
        while (j <= 7)
            puts "#{i}, #{j}"
            @@diag_x_back[k] << @@columns[j][i]
            p @@diag_x_back
            i = i - 1
            j = j + 1
        end
        k += 1
        break if k == 8
    end
end

private
end

# def complete_board!
#     #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
# end

board = Board.new
board.print_board
board.look_columns
board.look_horizontal
board.look_diagonal_y_back
board.look_diagonal_x_back

# [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
# [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
# [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]