# Crea una clase MathDojo que te permita sumar y restar números..

class MathDojo
    attr_accessor :result

    def initialize(*argumentos)
        @result = 0
        self
    end

    def suma_arg(x=0)
        suma = 0
        x.each { |i| i.class == Integer ? (suma += i) : (suma += i.sum) }
        return suma
    end

    def add(*argumentos)
        @result = suma_arg(argumentos) + @result
        self
    end

    def subtract(*argumentos)
        @result = @result - suma_arg(argumentos)
        self
    end

    def result
        puts @result
    end

end
desafio1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4

desafio2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15