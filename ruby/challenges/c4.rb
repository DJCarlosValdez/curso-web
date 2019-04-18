# class Dog
#     def initialize(name, color)
#       @name = name
#       @color = color
#     end
  
#     def show_name
#       @name
#     end
  
#     def change_color(new_color)
#       @color = new_color
#     end
  
#     def bark
#       "GUA Gua GUA"
#     end
#   end
  
#   dog1 = Dog.new("Fido", "Negro")
#   dog2 = Dog.new("Max", "Blanco")
#   #test
#   p dog1.show_name
#   p dog1.bark == "GUA Gua GUA"
#   p dog2.bark == "GUA Gua GUA"

# --------------------------------------- Cat Challenge -------------------------------------------------------------

# class Cat
#     def initialize (name)
#         @name = name
#     end

#     def run (t=0)
#         "Corriendo #{t} mts..."
#     end

#     def jump
#         "Saltando..."
#     end

#     def self.meow
#         "Miau... Miau..."
#     end
# end

# cat_1 = Cat.new("catty")
# cat_3 = Cat.new("catty2")
# cat_5 = Cat.new("catty3")

# p cat_1.jump == "Saltando..."
# p cat_5.jump == "Saltando..."
# p Cat.meow == "Miau... Miau..."
# p cat_3.run == "Corriendo 0 mts..."
# p cat_3.run(20) == "Corriendo 20 mts..."
# p cat_3.run(30) == "Corriendo 30 mts..."
# p cat_3.run(40) == "Corriendo 40 mts..."

# --------------------------------------- Guessing Game Challenge -------------------------------------------------------------

# class GuessingGame
#     def initialize
#         puts "¡Bienvenido a Number Guessing Game!"
#         puts "¡Ingresa el número minimo para adivinar!"
#         @min = gets.chomp.to_i
#         puts "¡Ingresa el número máximo para adivinar!"
#         @max = gets.chomp.to_i
#         puts "¿En cuántos intentos lo quieres lograr?"
#         @limit = gets.chomp.to_i
#     end

#     def guess 
#         tries = 0
#         input = 0
#         number_to_guess = rand(@min..@max)
#         loop do
#             puts "¿Qué número crees que es?"
#             input = gets.chomp.to_i
#             tries += 1
#             if tries == @limit
#                 puts "¡Perdiste! El número era: #{number_to_guess}"
#                 break
#             elsif input == number_to_guess
#                 puts "¡Ganaste! Lo lograste en: #{tries}/#{@limit} intentos."
#                 break
#             else
#                 puts "¡Incorrecto! Te quedan #{@limit - tries} intentos."
#             end
#         end
#     end
# end

# game = GuessingGame.new

# game.guess

# --------------------------------------- Person Age Challenge -------------------------------------------------------------

# class Person
#     attr_reader :age
    
#     def  initialize(age=0)
#         @@age = age
#     end
  
#     def age=(age)
#         p @age = age
#         p @@age = age
#     end
  
#     #no modificar este método de clase
#     def self.birthday
#         p @@age
#       @@age += 1
#     end
# end
  

# alice = Person.new(7)

# #test
# p alice.age = 17
# p alice.age == 17
# # #=> true
# #p alice.@age 
# p Person.birthday == 18

# --------------------------------------- Heritage Challenge -------------------------------------------------------------

# class Animal
#     def speak
#         "Hello!"
#     end
# end

# class Dog < Animal
# end

# class Cat < Animal
# end

# drako = Dog.new
# peto = Cat.new
# p drako.speak == "Hello!"          
# # => true
# p peto.speak == "Hello!"           
# # => true

# --------------------------------------- Heritage 2 Challenge -------------------------------------------------------------

# class Animal
#     def initialize (name = "Pet")
#         @name = name
#     end

#     def speak
#         "Hello!"
#     end
    
# end

# class Dog < Animal

#     def speak
#         "#{@name} say Guau!"
#     end
# end

# class Cat < Animal
# end

# #test
# drako = Dog.new("Drako")
# peto = Cat.new
# p drako.speak == "Drako say Guau!"         
# # => true
# p peto.speak == "Hello!"           
# # => true

# --------------------------------------- Heritage 3 Challenge -------------------------------------------------------------

# class Vehicle
#     @@number_of_vehicles = 0

#     def initialize
#         p self
#         Vehicle.number_of_vehicles
#     end

    
#     def self.number_of_vehicles
#         p @@number_of_vehicles += 1
#         p"This Superclass has created #{@@number_of_vehicles} vehicles"
#     end
# end

# class Car < Vehicle

# end

# class Bus < Vehicle

# end

# #test
# car_1 = Car.new
# car_2 = Car.new
# bus_1 = Bus.new
# p Car.number_of_vehicles == "This Superclass has created 3 vehicles"

# --------------------------------------- Private Challenge -------------------------------------------------------------

class Person
    # attr_reader(:age)
    def initialize (name, born_year)
        @name = name
        @born_year = born_year
    end

    def age 
        years_old
        p"#{@name} is #{@age} years old"
    end

    private 

    def years_old
        p t = Time.new.year
        @age = t - @born_year
    end
end

carlos = Person.new("Carlos",1989)
martha = Person.new("Martha",1993)

p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true