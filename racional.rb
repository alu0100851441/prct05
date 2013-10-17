# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

   def initialize(num, den)
      mcd = gcd(num, den)
      @n = num / mcd
      @d = den / mcd
   end

   def to_s
      puts @n + '/' + @d
   end

   def suma(f)
      puts f.@n
   end
end
