#@author Cristina Garrido Amador
#@date November 2017
#@class AlimentoC
#@brief This class depends of the Alimento class, and it is for know the group of food that belongs.

#require "valor_calorico.rb"

class AlimentoC < Alimento
  attr_accessor :grupo
  
  #@param nombre, proteinas, glucidos, lipidos, grupo [String], [Number], [Number], [Number], [String]
  #@return AlimentoC type of the class
  def initialize(nombre, proteinas, glucidos, lipidos, grupo)
    super(nombre, proteinas, glucidos, lipidos)
    @grupo = grupo
  end
  
  #@return [String] the resulting of join all the information, name, protein, glucids, lipids and group 
  def to_s
    s = super.to_s
    s += "\t#{@grupo}"
    s
  end
end