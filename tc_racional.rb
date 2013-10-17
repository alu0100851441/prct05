# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

    def testFraccion
        f1 = Fraccion.new(1, 2)
        f2 = Fraccion.new(3, 6)
        f3 = Fraccion.new(4, 7)
        assert_equal(1, f2.getNum())
        assert_equal(2, f1.getDen()) 
        assert_equal(4, f1.multi(f2).getDen())
        assert_equal(7, f2.div(f3).getNum())
        assert_equal(15, f1.suma(f3).getNum())
        assert_equal("15/14", f1.suma(f3).to_s())
    end
end
