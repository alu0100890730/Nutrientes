#require "valor_calorico.rb"

class AlimentoC < Alimento
  attr_accessor :nombre, :grupo
  
  def initialize(nombre, proteinas, glucidos, lipidos, grupo)
    @nombre = nombre
    super(proteinas, glucidos, lipidos)
    @grupo = grupo
  end
  
  def to_s
    s = "#{@nombre}\t"
    s += super.to_s
    s += "\t#{@grupo}"
    s
  end
end