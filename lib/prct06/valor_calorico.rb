#@author Cristina Garrido Amador
#@date November 2017
#@class Alimento
#@brief This class calculate how many calories have the aliments

class Alimento
  
  #Includes the module Comparable
  #It have four values,name of the aliment, and the information of proteins, lipids and glucids
  attr_accessor :nombre, :proteinas, :glucidos, :lipidos, :datos
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
  
  
  #@return valor[Float]
  #@brief it is a method for calculate the AIBC
  def AIBC(indice) #indice = individuo
    aux=[]
    #zip --> coge dos vectores y genera pares, la pos 1 del vector 1 y la pos 2 del vector a los devuelve y los guardo en aux
    #de esta forma tendre en x la pos actual y en y la pos-1 para llevar a cabo la formula
    datos[indice][1..datos[indice].length - 1].zip(datos[indice][0..datos[indice].length - 2]) do |x,y|
      if x < datos[indice][0]
	aux << 0.0
      else
	aux << (((x-datos[indice][0])+(y-datos[indice][0]))/2)*5
      end
    end
    aux.reduce(:+) #sumatorio del vector auxiliar, es lo que devuelve el metodo
  end
  
  #@return valor [Number]
  #@brief it is a method that returns the value of calories of the aliment
  def valor_calorico
      valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end 
  
  
end
