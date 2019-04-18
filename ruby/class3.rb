class RaceCar
    p "self dentro de racecar es = #{self}"
    @test = 1
    test = 2
    @@test = 3
    def initialize (brand, model, color)
        @brand = brand
        @model = model
        @color = color
        p "self dentro de init es = #{self}"
    end

    def color
        p @color
    end

    def acelerar
        p "acelerando"
        p "self dentro de acelerar es = #{self}"
    end

    def frenar
        def self.detener
            p "detenido"
        end
        p "frenando"
        p "self dentro de frenar es = #{self}"
        self.detener
    end

    def self.incrementar_v
        p "Incrementando velocidad"
        p "self dentro de incrementar v es = #{self}"
    end
end

speedy = RaceCar.new("Toyota", 1997, "blanco")
bolt = RaceCar.new("Renault", 2016, "negro").frenar
p speedy.color
p RaceCar.test