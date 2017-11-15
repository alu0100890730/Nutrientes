class Alimento
  
  attr_reader :nombre, :proteinas, :glucidos, :lipidos
  include Comparable
  
  def initialize(nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end  
  
  def <=>(other) #operador !=
    return nil unless other.is_a?Alimento #devuelve nil si no son de la clase Alimento los dos objetos
    if valor_calorico == other.valor_calorico
      return 0
    else
      if valor_calorico < other.valor_calorico
	return -1 #devuelve true cuando es menor, y lo niega para conseguirlo negado, el operador < solo comprueba el menor
      else
	return 1 #devuelve true si es >
      end
    end
  end
  
  def to_s
        imprime = "#{@nombre}: #{@proteinas} #{@glucidos} #{@lipidos}"
  end
  
  def valor_calorico
      valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end 
  
end
