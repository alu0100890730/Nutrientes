class Alimento
  
  attr_reader :nombre, :proteinas, :glucidos, :lipidos
    
  def initialize(nombre, proteinas, glucidos, lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end  
  
  def to_s
        imprime = "#{@nombre}: #{@proteinas} #{@glucidos} #{@lipidos}"
  end
  
  def valor_calorico
      valor = (@proteinas * 4) + (@glucidos * 4) + (@lipidos * 9)
  end 
  
end
