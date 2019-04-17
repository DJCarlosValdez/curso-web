# def large (s) 
#     if s.size > 20 
#         s.upcase!
#     else
#         s
#     end
# end

# p large("1234567890asdfghklñvcbndfghjkcvbn")
# p large("abc")

# -------------------------------------------------------------------------------------------------------------------------------

# def shipping(address) 
#     if address.upcase.include? "MEXICO"
#         "Order Received"
#     else
#         "We only ship orders to Mexico"
#     end
# end
# p shipping("Mexico")
# p shipping("abc")

# p shipping('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Order Received"
# p shipping('Geary Blvd 3320, San Francisco, Estados Unidos') == "We only ship orders to Mexico"

# -------------------------------------------------------------------------------------------------------------------------------

# def user ()
#     inputs = 0
#     passed_string = ""
#     loop do
#         passed_string = gets.chomp
#         inputs += 1
#         break if passed_string == "Ya"
#     end 
#     p inputs
# end

# user()

# def user(input)
# 	counter = 0 
# 	while input != "Ya" do
# 		p counter += 1
# 		puts "Dentro de while"
# 		puts "Ingresa un valor"
# 		input = gets.chomp
# 	end
# 	p "Counter es igual a: #{counter}"
# end

# puts "Ingresa un valor"
# p input = gets.chomp

# user(input)

# --------------------------------------- Smallest Challenge -------------------------------------------------------------

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
#     array
# end


# array1 = create_array()
# array2 = []


# def order_array (array1, array2)
#     array1.each do |x|
#         x << "##{x.size}"
#     end
#     i=1
#     loop do 
#         array1.each_with_index do |x, index|
#             if x.include? "##{i}"
#                 item = x.split("#")
#                 array2 << item[0]
#             end
#         end
#         i += 1
#         break if array1.size == array2.size
#     end
#     array2
# end

# def shortest(a1, a2) 
#     array3 = order_array(a1, a2)
#     final_array = []
#     array3.each do |x|
#         if x.size == array3[0].size
#             final_array << x
#         end
#     end
#     puts "Ingresaste estos valores: #{array3}"
#     puts "Estos son los valores más pequeños: #{final_array}"
# end

# shortest(array1, array2)

# --------------------------------------- Longest Challenge -------------------------------------------------------------

# def longest ()
    
# end

# --------------------------------------- Vocals Challenge -------------------------------------------------------------

def vocals (string) 
    p string.include? /[aeiou]/
end

vocals("awenimomu")