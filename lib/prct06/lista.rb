Nodo = Struct.new(:valor, :siguiente, :anterior)

class Lista
  
  attr_reader :cabeza, :cola, :tamanio
  
  def initialize
    @cabeza = nil
    @cola = nil
    @tamanio = 0
  end
  
end