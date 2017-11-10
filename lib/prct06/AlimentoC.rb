#require "valor_calorico.rb"

class AlimentoC < Alimento
  attr_accessor :grupo
  
  def initialize(nombre, proteinas, glucidos, lipidos, grupo)
    super(nombre, proteinas, glucidos, lipidos)
    @grupo = grupo
  end
  
  def to_s
    s = super.to_s
    s += "\t#{@grupo}"
    s
  end
end