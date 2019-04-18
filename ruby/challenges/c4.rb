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

class GuessingGame
    def initialize
        puts "¡Bienvenido a Number Guessing Game!"
        puts "¡Ingresa el número minimo para adivinar!"
        @min = gets.chomp.to_i
        puts "¡Ingresa el número máximo para adivinar!"
        @max = gets.chomp.to_i
        puts "¿En cuántos intentos lo quieres lograr?"
        @limit = gets.chomp.to_i
    end

    def guess 
        tries = 0
        input = 0
        number_to_guess = rand(@min..@max)
        loop do
            puts "¿Qué número crees que es?"
            input = gets.chomp.to_i
            tries += 1
            if tries == @limit
                puts "¡Perdiste! El número era: #{number_to_guess}"
                break
            elsif input == number_to_guess
                puts "¡Ganaste! Lo lograste en: #{tries}/#{@limit} intentos."
                break
            else
                puts "¡Incorrecto! Te quedan #{@limit - tries} intentos."
            end
        end
    end
end

game = GuessingGame.new

game.guess