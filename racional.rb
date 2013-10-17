# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

   def initialize(num, den)
      mcd = gcd(num, den)
      @n = num / mcd
      @d = den / mcd
   end

   def getNum()
      return @n
   end
  
   def getDen()
      return @d
   end

   def mcm(f1, f2)
      if f1 % f2 == 0
         return f1
      elsif f2 % f1 == 0
         return f2
      else
         return f1 * f2
      end
   end

   def to_s()
      return "#@n/#@d"
   end

   def suma(f)
      raise unless f.is_a?(Fraccion)
      mc = mcm(@d, f.getDen())
      n = (@n * (mc/@d)) + (f.getNum() * (mc/f.getDen()))
      d = mc
      return Fraccion.new(n, d)
   end
   
   def multi(f)
      raise unless f.is_a?(Fraccion)
      n = @n * f.getNum()
      d = @d * f.getDen()
      return Fraccion.new(n, d)
   end
   
   def div(f)
      raise unless f.is_a?(Fraccion)
      n = @n * f.getDen()
      d = @d * f.getNum()
      return Fraccion.new(n, d)
   end
end
