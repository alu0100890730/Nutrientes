#@author Cristina Garrido Amador
#@date November 2017
#@class Alimento
#@brief This class calculate how many calories have the aliments

class Alimento
  
  #Includes the module Comparable
  #It have four values,name of the aliment, and the information of proteins, lipids and glucids
  attr_reader :nombre, :proteinas, :glucidos, :lipidos
  include Comparable
  
  
  #@param name, proteinas, glucidos, lipidos [String], [Number], [Number], [Number]
  #@return Lista type of the class
  #@brief this method is for insert a new head at the list
  def initialize(nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end  
  
  
  #@param other [Alimento]
  #@return Alimento type of the class
  #@brief it is a method for know if the node that calls the method it's not equal at the param node.
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
  
  #@param other [Alimento]
  #@return Alimento type of the class
  #@brief it is a method for know if the node that calls the method it's equal at the param node.
  def == (other)
        if other.is_a?Alimento
            valor_calorico == other.valor_calorico
        else
            false
        end
    end
  
  #@return [String] the resulting of join all the information, name, proteins, glucids and lipids
  def to_s
        imprime = "#{@nombre}: #{@proteinas} #{@glucidos} #{@lipidos}"
  end
  
  #@return valor [Number]
  #@brief it is a method that returns the value of calories of the aliment
  def valor_calorico
      valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end 
  
end
