##MyCar

# Crea una clase llamada MyCar. 
# Cuando inicializas un nuevo objeto de la clase se permite
# al usuario definir las variables de instancia que nos dicen el año, color y modelo del carro. 
# Crea métodos de instancia que permiten al carro acelerar, frenar y apagar el carro. 
# Haz pasar todas las pruebas correspondientes.

class MyCar
    def initialize (year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def speed_up (kph)
        @speed += kph
        "You push the gas and accelerate at #{kph.to_s} kph."
    end

    def current_speed
        "You are now going at #{@speed.to_s} kph."
    end

    def brake (kph) 
        @speed -= kph
        "You push the brake and decelerate at #{kph.to_s} kph."
    end

    def shut_down
        @speed = 0
        "Let's shut down to 0!"
    end
end

carro_prueba = MyCar.new(2019, "Red", "Model 3")

# Pruebas
# p carro_prueba.speed_up(20) == "You push the gas and accelerate at 20 kph."
# p carro_prueba.current_speed == "You are now going at 20 kph."
# p carro_prueba.speed_up(20) == "You push the gas and accelerate at 20 kph."
# p carro_prueba.current_speed == "You are now going at 40 kph."
# p carro_prueba.brake(20) == "You push the brake and decelerate at 20 kph."
# p carro_prueba.current_speed == "You are now going at 20 kph."
# p carro_prueba.brake(20) == "You push the brake and decelerate at 20 kph."
# p carro_prueba.current_speed == "You are now going at 0 kph."
# p carro_prueba.shut_down == "Let's shut down to 0!"
# p carro_prueba.current_speed == "You are now going at 0 kph."

## Playlist

# Crea la clase `Playlist` que para inicializarla recibe 2 argumentos: `name` (nombre del playlist) y `songs` (lista de canciones).
# Crea una forma para poder leer el nombre del `Playlist`.
# Crea el método `number_of_songs` que regresa el número de canciones que contiene el `Playlist`.
# Crea el método `add_song` que agrega una canción a la lista.
# Crea el método `next_song` que regresa la siguiente canción del `Playlist`. Para esto necesitarás llevar control de cuál es la canción actual. Si el playlist se encuentra en la última canción debe de volver a iniciar.

# Al crear una nueva instancia de `Playlist` la canción actual por default debería ser la primera canción de la lista que le pasen.

class Playlist
    attr_reader(:playlist_name, :playlist_songs, :actual_song)
    
    
    def initialize (name, songs)
        @playlist_name = name
        @playlist_songs = songs 
        @actual_song = 0
    end

    def number_of_songs
        puts "The playlist: #{@playlist_name}, has #{@playlist_songs.count} songs."
    end

    def add_song (song)
        @playlist_songs << song
        puts "Added: #{song}, to #{@playlist_name} playlist."
    end

    def next_song
        if (@actual_song == @playlist_songs.size - 1)
            @actual_song = 0
        else 
            @actual_song += 1
        end
        puts "Reproducing: #{@playlist_songs[@actual_song]}"
    end

    def actual_song
        puts "Reproducing: #{@playlist_songs[@actual_song]}"
    end
end

def create_playlist ()
    
    songs = []

    i_end = 0
    
    def list_songs (songs)
        songs.each do |x|
            p x
        end
    end

    puts "Welcome to Playlist Creator!"
    puts "How do you want to call the playlist?"
    playlist_name = gets.chomp
    puts "Great! I created the playlist: #{playlist_name}"
    puts "Now let's add some songs to the playlist!"
    loop do
        puts "What's the name of the song you want to add? When you finished entering the songs press 3 times ENTER"
        input = gets.chomp
        if input == '' && i_end != 2
            i_end += 1
        elsif input == '' && i_end == 2 
            break
        elsif input != ''  && !songs.include?(input)
            i_end = 0
            songs << (input)
        elsif input != ''  && songs.include?(input)
            puts "You already added that song! Do you want to make a duplicate? Type Yes to make a duplicate. Press ENTER to continue."
            loop do
                solution = gets.chomp
                if (solution.downcase == "yes")
                    songs << (input)
                    break
                elsif (solution.downcase == "")
                    break
                else
                    puts "Please type Yes to make a duplicate or press ENTER to continue."
                end
            end
        end
    end

    puts "Great! You created the playlist: #{playlist_name}. And added #{songs.count} songs."
    if (songs.count > 0)
        puts "You added the following songs:"
        list_songs(songs)
    end

    puts "Do you want to confirm this action? Type Yes to confirm. Type No to cancel the operation. Type Change to modify your playlist data."

    loop do
        solution = gets.chomp
        if (solution.downcase == "yes")
            p Playlist.new(playlist_name, songs)
            break
        elsif (solution.downcase == "no")
            puts "No worries! See you later!"
            break
        elsif (solution.downcase == "change")
            loop do
                puts "What do you want to change?"
                puts "Type Finish to exit the editor. Type List to list the playlist songs. Type Name to modify your playlist name. Type Add to add songs to your playlist. Type Remove to delete songs from your playlist"
                solution2 = gets.chomp.downcase!
                if (solution2 == "list")
                    puts "Your playlist has the following songs:"
                    list_songs(songs)
                elsif (solution2 == "name")
                    puts "What will be the new name?"
                    playlist_name = gets.chomp
                    puts "Your playlist is now named: #{playlist_name}"
                elsif (solution2 == "add")
                    loop do
                        puts "What's the name of the song you want to add? When you finished entering the songs press 3 times ENTER"
                        input = gets.chomp
                        if input == '' && i_end != 2
                            i_end += 1
                        elsif input == '' && i_end == 2 
                            break
                        elsif input != ''  && !songs.include?(input)
                            i_end = 0
                            songs << (input)
                        elsif input != ''  && songs.include?(input)
                            puts "You already added that song! Do you want to make a duplicate? Type Yes to make a duplicate. Press ENTER to continue."
                            loop do
                                solution = gets.chomp
                                if (solution.downcase == "yes")
                                    songs << (input)
                                    break
                                elsif (solution.downcase == "")
                                    break
                                else
                                    puts "Please type Yes to make a duplicate or press ENTER to continue."
                                end
                            end
                        end
                    end
                    puts "Your playlist has the following songs:"
                    list_songs(songs)
                elsif (solution2 == "remove")
                    loop do
                        puts "Which song you want to remove?"
                        list_songs(songs)
                        remove_song = gets.chomp
                        if (songs.include?(remove_song))
                            puts "You removed: #{songs.delete(remove_song)}"
                            break
                        end
                    end
                    puts "Your playlist has the following songs:"
                    list_songs(songs)
                elsif (solution2 == "finish")
                    break
                end
            end
            puts "Please type Yes to confirm. Type No to cancel the operation. Type Change to modify your playlist data."
        else
            puts "Please type Yes to confirm. Type No to cancel the operation. Type Change to modify your playlist data."
        end
    end

end

create_playlist()

# test1 = Playlist.new("EDM", ["United", "Rave Child", "Lynx"])
# test1.actual_song
# test1.number_of_songs
# test1.add_song("Thunderbolt")
# test1.next_song
# test1.actual_song