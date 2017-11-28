require "spec_helper"
require "./lib/prct06/valor_calorico.rb"
require "./lib/prct06/lista.rb"
require "./lib/prct06/AlimentoC.rb"

RSpec.describe Prct06 do
  it "Tiene una version" do
    expect(Prct06::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  
  before :all do
    @HuevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
    @LecheVaca = Alimento.new("Leche Vaca", 3.3, 4.8, 3.2)
    @Yogurt = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
  end
  
  it "Existe nombre para el alimento" do
    expect(@HuevoFrito.nombre).not_to be nil
  end
  
  it "Existe la cantidad de proteinas en gramos" do
    expect(@HuevoFrito.proteinas).not_to be nil
  end
  
  it "Existe la cantidad de glucido en gramos" do
    expect(@HuevoFrito.glucidos).not_to be nil
  end
  
  it "Existe la cantidad de lipidos en gramos" do
    expect(@HuevoFrito.lipidos).not_to be nil
  end
  
  it "Existe un metodo para obtener el nombre " do 
    expect(@HuevoFrito.nombre).to eq("Huevo Frito")
  end
  
    it "Existe un metodo para obtener la cantidad de proteinas" do 
    expect(@HuevoFrito.proteinas).to eq(14.1)
  end 
  
  it "Existe un metodo para obtener la cantidad de glucidos" do 
    expect(@HuevoFrito.glucidos).to eq(0.0)
  end
  
  it "Existe un metodo para obtener la cantidad de lipidos" do 
    expect(@HuevoFrito.lipidos).to eq(19.5)
  end
  
  it "Existe un metodo para obtener el alimento por pantalla como se desea" do
    expect(@HuevoFrito).to respond_to(:to_s)
    expect(@HuevoFrito.to_s).to eq("Huevo Frito: 14.1 0.0 19.5")
  end 
  
  it "Existe un metodo para obtener el valor calorico de un alimento" do 
    expect(@HuevoFrito).to respond_to(:valor_calorico)
    expect(@HuevoFrito.valor_calorico).to eq(231.9)
  end 
  
  it "Existe nombre para el alimento" do
    expect(@LecheVaca.nombre).not_to be nil
  end
  
  it "Existe la cantidad de proteinas en gramos" do
    expect(@LecheVaca.proteinas).not_to be nil
  end
  
  it "Existe la cantidad de glucido en gramos" do
    expect(@LecheVaca.glucidos).not_to be nil
  end
  
  it "Existe la cantidad de lipidos en gramos" do
    expect(@LecheVaca.lipidos).not_to be nil
  end
  
  it "Existe un metodo para obtener el nombre " do 
    expect(@LecheVaca.nombre).to eq("Leche Vaca")
  end
  
    it "Existe un metodo para obtener la cantidad de proteinas" do 
    expect(@LecheVaca.proteinas).to eq(3.3)
  end 
  
  it "Existe un metodo para obtener la cantidad de glucidos" do 
    expect(@LecheVaca.glucidos).to eq(4.8)
  end
  
  it "Existe un metodo para obtener la cantidad de lipidos" do 
    expect(@LecheVaca.lipidos).to eq(3.2)
  end
  
  it "Existe un metodo para obtener el alimento por pantalla como se desea" do
    expect(@LecheVaca).to respond_to(:to_s)
    expect(@LecheVaca.to_s).to eq("Leche Vaca: 3.3 4.8 3.2")
  end 
  
  it "Existe un metodo para obtener el valor calorico de un alimento" do 
    expect(@LecheVaca).to respond_to(:valor_calorico)
    expect(@LecheVaca.valor_calorico).to eq(61.2)
  end 
  
  it "Existe nombre para el alimento" do
    expect(@Yogurt.nombre).not_to be nil
  end
  
  it "Existe la cantidad de proteinas en gramos" do
    expect(@Yogurt.proteinas).not_to be nil
  end
  
  it "Existe la cantidad de glucido en gramos" do
    expect(@Yogurt.glucidos).not_to be nil
  end
  
  it "Existe la cantidad de lipidos en gramos" do
    expect(@Yogurt.lipidos).not_to be nil
  end
  
  it "Existe un metodo para obtener el nombre " do 
    expect(@Yogurt.nombre).to eq("Yogurt")
  end
  
    it "Existe un metodo para obtener la cantidad de proteinas" do 
    expect(@Yogurt.proteinas).to eq(3.8)
  end 
  
  it "Existe un metodo para obtener la cantidad de glucidos" do 
    expect(@Yogurt.glucidos).to eq(4.9)
  end
  
  it "Existe un metodo para obtener la cantidad de lipidos" do 
    expect(@Yogurt.lipidos).to eq(3.8)
  end
  
  it "Existe un metodo para obtener el alimento por pantalla como se desea" do
    expect(@Yogurt).to respond_to(:to_s)
    expect(@Yogurt.to_s).to eq("Yogurt: 3.8 4.9 3.8")
  end 
  
  it "Existe un metodo para obtener el valor calorico de un alimento" do 
    expect(@Yogurt).to respond_to(:valor_calorico)
    expect(@Yogurt.valor_calorico).to eq(69.0)
  end 
  
end

RSpec.describe Lista do
  before :each do
    @HuevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
    @LecheVaca = Alimento.new("Leche Vaca", 3.3, 4.8, 3.2)
    @Yogurt = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
    @Cerdo  = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
    
    @lista = Lista.new()
    
    #Nodos
    @nodo1 = Nodo.new(@HuevoFrito, @nodo2, nil)
    @nodo3 = Nodo.new(@Yogurt, nil, @nodo2)
    @nodo2 = Nodo.new(@LecheVaca, @nodo3, @nodo1)
    @nodo4 = Nodo.new(@Cerdo)
    
  end
  
  it "La lista esta vacia" do
    expect(@lista.tamanio).to eq(0)
  end
  
  it "Definicion de nodo de la lista, con su valor, su siguiente y su anterior" do
    expect(@nodo2.valor).to eq(@LecheVaca)
    expect(@nodo2.siguiente).to eq(@nodo3)
    expect(@nodo2.anterior).to eq(@nodo1)
  end
  
  it "Definicion de lista con cabeza y cola" do
    @lista.head = @nodo1
    @lista.queue = @nodo3
    
    expect(@lista.head).to eq(@nodo1)
    expect(@lista.queue).to eq(@nodo3)
  end
  
  it "Insertando valor al principio de la lista" do
    @lista.insert_head(@nodo2)
    expect(@lista.head).to eq(@nodo2)
    
    expect(@lista.tamanio).to eq(1)
  end
  
  it "Insertando valor al final de la lista" do
    @lista.insert_queue(@nodo3)
    expect(@lista.queue).to eq(@nodo3)
    
    expect(@lista.tamanio).to eq(1)
  end
  
  it "Insertando varios elementos" do
      @lista.insert_head(@nodo2)
      @lista.insert_head(@nodo1)
      @lista.insert_plus([@nodo3, @nodo4], 2)
      
      expect(@lista.queue).to eq(@nodo4)
      expect(@lista.tamanio).to eq(4)
  end
  
  it"Extraer primer elemento" do
    @lista.insert_head(@nodo2)
    @lista.insert_head(@nodo1)
    @lista.insert_plus([@nodo3, @nodo4], 1)
    
    @lista.pop_head
    expect(@lista.head).to eq(@nodo3)
    expect(@lista.tamanio).to eq(3)
  end
  
  it"Extraer ultimo elemento" do
    @lista.insert_head(@nodo2)
    @lista.insert_head(@nodo1)
    @lista.insert_plus([@nodo3, @nodo4], 2)
    
    @lista.pop_queue
    expect(@lista.queue).to eq(@nodo3)
    expect(@lista.tamanio).to eq(3)
  end
  
end

RSpec.describe AlimentoC do
    before :each do
      @HuevoFrito = AlimentoC.new("Huevo Frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados" )
    end
    
    it "Jerarquia AlimentoC < Alimento " do 
      expect(@HuevoFrito).to be_kind_of(Alimento)
    end 
    
    it"El objeto pertenece a la jerarquia" do
      expect(@HuevoFrito.is_a? Alimento).to eq(true)
    end
    
    it "Accediendo al grupo de alimento " do
      expect(@HuevoFrito.grupo).to eq("Huevos, lacteos y helados")
    end 
    
    it "Responde correctamente a metodos de la clase padre" do
      expect(@HuevoFrito).to respond_to(:valor_calorico)
      expect(@HuevoFrito.valor_calorico).to eq(231.9)
    end 
    
    it "Obteniendo alimento formateado" do
      expect(@HuevoFrito).to respond_to(:to_s)
      expect(@HuevoFrito.to_s).to eq("Huevo Frito: 14.1 0.0 19.5\tHuevos, lacteos y helados")
  end 
  
end

RSpec.describe Lista do
  before :each do 
    @HuevoFrito = AlimentoC.new("Huevo Frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados" )
    @LecheVaca = AlimentoC.new("Leche vaca", 3.3, 4.8, 3.2, "Huevos, lacteos y helados")
    @Yogurt = AlimentoC.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lacteos y helados")
    @Cerdo = AlimentoC.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados")
    @Ternera = AlimentoC.new("Ternera", 21.1, 0.0, 3.1, "Carnes y derivados")
    @Pollo = AlimentoC.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados")
    @Bacalao = AlimentoC.new("Bacalao",  17.7, 0.0, 0.4, "Pescados y mariscos") 
    @Atun = AlimentoC.new("Atun", 21.5, 0.0, 15.5, "Pescados y mariscos") 
    @Salmon = AlimentoC.new("Salmon",  19.9, 0.0, 13.6, "Pescados y mariscos") 
    @AceiteOliva = AlimentoC.new("Aceite de oliva", 0.0, 0.2, 99.6, "Alimentos grasos") 
    @Mantequilla = AlimentoC.new("Mantequilla", 0.7, 0.0, 83.2, "Alimentos grasos") 
    @Chocolate = AlimentoC.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos") 
    @Azucar = AlimentoC.new("Azucar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos") 
    @Arroz = AlimentoC.new("Arroz",6.8, 77.7, 0.6, "Alimentos ricos en carbohidratos") 
    @Lentejas = AlimentoC.new("Lentejas",  23.5, 52.0, 1.4, "Alimentos ricos en carbohidratos") 
    @Papas = AlimentoC.new("Papas",2.0, 15.4, 0.1, "Alimentos ricos en carbohidratos") 
    @Tomate = AlimentoC.new("Tomate", 1.0, 3.5, 0.2, "Verduras y Hortalizas") 
    @Cebolla = AlimentoC.new("Cebolla", 1.3, 5.8, 0.3, "Verduras y Hortalizas") 
    @Calabaza = AlimentoC.new("Calabaza", 1.1, 4.8, 0.1, "Verduras y Hortalizas") 
    @Manzanas = AlimentoC.new("Manzanas", 0.3, 12.4, 0.4, "Frutas") 
    @Platanos = AlimentoC.new("Platanos", 1.2, 21.4, 0.2, "Frutas") 
    @Pera = AlimentoC.new("Pera",  0.5, 12.7, 0.3, "Frutas")
    
    @nodo1 = Nodo.new(@HuevoFrito)
    @nodo2 = Nodo.new(@LecheVaca)
    @nodo3 = Nodo.new(@Yogurt)
    @nodo4 = Nodo.new(@Cerdo)
    @nodo5 = Nodo.new(@Ternera)
    @nodo6 = Nodo.new(@Pollo)
    @nodo7 = Nodo.new(@Bacalao)
    @nodo8 = Nodo.new(@Atun)
    @nodo9 = Nodo.new(@Salmon)
    @nodo10 = Nodo.new(@AceiteOliva)
    @nodo11 = Nodo.new(@Mantequilla)
    @nodo13 = Nodo.new(@Chocolate)
    @nodo14 = Nodo.new(@Azucar)
    @nodo15 = Nodo.new(@Arroz)
    @nodo16 = Nodo.new(@Lentejas)
    @nodo17 = Nodo.new(@Papas)
    @nodo18 = Nodo.new(@Tomate)
    @nodo19 = Nodo.new(@Cebolla)
    @nodo20 = Nodo.new(@Calabaza)
    @nodo21 = Nodo.new(@Manzanas)
    @nodo22 = Nodo.new(@Platanos)
    @nodo23 = Nodo.new(@Pera)
    
    @lista = Lista.new()
    @lista.insert_queue(@nodo1)
    @lista.insert_queue(@nodo2)
    @lista.insert_queue(@nodo3)
    @lista.insert_queue(@nodo4)
    @lista.insert_queue(@nodo5)
    @lista.insert_queue(@nodo6)
    @lista.insert_queue(@nodo7)
    @lista.insert_queue(@nodo8)
    @lista.insert_queue(@nodo9)
    @lista.insert_queue(@nodo10)
    @lista.insert_queue(@nodo11)
    @lista.insert_queue(@nodo13)
    @lista.insert_queue(@nodo14)
    @lista.insert_queue(@nodo15)
    @lista.insert_queue(@nodo16)
    @lista.insert_queue(@nodo17)
    @lista.insert_queue(@nodo18)
    @lista.insert_queue(@nodo19)
    @lista.insert_queue(@nodo20)
    @lista.insert_queue(@nodo21)
    @lista.insert_queue(@nodo22)
    @lista.insert_queue(@nodo23)
  end 
  
  it "Metodo to_s correcto para mostrar la lista" do
      expect(@lista).to respond_to(:to_s)
      puts @lista.to_s
    end 
  
  describe "Pruebas de la práctica 10"do
    
    it"Convirtiendo la tabla en array"do
      auxiliar = []
      auxiliar = @lista.convertirArray(@lista)
      
      expect(@lista.tamanio).to eq(auxiliar.length)
    end
    
    it"Ordenando array por valor con for"do      
      aux = []
      aux = @lista.ordenarArray(@lista)
      
      expect(aux[0]).to eq(@Tomate)
      expect(aux[21]).to eq(@AceiteOliva)
    end
    
    it"Ordenando array por valor con each"do      
      aux = []
      aux = @lista.ordenandoEach(@lista)
      
      expect(aux[0]).to eq(@Tomate)
      expect(aux[21]).to eq(@AceiteOliva)
    end
    
  end
end

RSpec.describe Alimento do
  before :each do 
    @HuevoFrito = AlimentoC.new("Huevo Frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados" )
    @LecheVaca = AlimentoC.new("Leche vaca", 3.3, 4.8, 3.2, "Huevos, lacteos y helados")
    
    @nodo1 = Nodo.new(@HuevoFrito)
    @nodo2 = Nodo.new(@LecheVaca)
    
    @lista = Lista.new()
    @lista.insert_queue(@nodo1)
    @lista.insert_queue(@nodo2)
    
  end
  
  it "Huevo Frito mas valor calorico Leche de Vaca" do
    expect(@HuevoFrito > @LecheVaca).to eq(true)
  end 
  
  it "Huevo Frito menor valor calorico Leche de Vaca" do
    expect(@HuevoFrito < @LecheVaca).to eq(false)
  end
  
  it "Huevo Frito es distinto a Leche de Vaca" do
    expect(@HuevoFrito  == @LecheVaca).to eq(false)
  end
  
  it "Huevo Frito es igual a HuevoFrito" do
    expect(@HuevoFrito == @HuevoFrito).to eq(true)
  end
  
  it "Utilizando Mixin Enumerable, Max Lista" do
    expect(@lista.max).to eq(@HuevoFrito)
  end 
  
  it "Utilizando Mixin Enumerable, Min Lista" do 
    expect(@lista.min).to eq (@LecheVaca)
  end 
  
  it "Funcion include" do
    expect(@lista.include?@HuevoFrito).to eq(true)
    expect(@lista.include?@LecheVaca).to eq(true)
  end 
  
  it "Funcion count" do 
    expect(@lista.count).to eq(2) 
  end
  
  it"Probando short"do
    expect(@lista.sort).to eq([@LecheVaca, @HuevoFrito])
  end
end

RSpec.describe Alimento do
  before :each do
    @CompManzana = AlimentoC.new("Compota de manzana", 4.1, 0.0, 9.5, "Frutas y derivados" )
    @Yogurt = AlimentoC.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lacteos y helados")
    @Chocolate = AlimentoC.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos") 
    
    @Azucar = AlimentoC.new("Azucar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos")
    
    #Iniciamos el array de datos
    @CompManzana.datos = [[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
                          [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]]
    @Azucar.datos = [[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
                     [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]]
    @Yogurt.datos = [[6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4],
                     [4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9]]
    @Chocolate.datos = [[6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1],
                        [4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9]]
  end
  
  it"Probando que los alimentos disponen del array de datos"do
    expect(@Yogurt.datos.size).to eq(2)
  end
  
  it"Probando metodo AIBC"do
    expect(@Yogurt.AIBC(0)).to eq(30.500000000000036)
    expect(@Chocolate.AIBC(0)).to eq(18.500000000000007)
    expect(@Azucar.AIBC(0)).to eq(255.99999999999997)
    expect(@CompManzana.AIBC(0)).to eq(27.999999999999993)
  end
  
  it "Calculando el indice glucemico de cada individuo" do
    expect((@CompManzana.AIBC(0) / @Azucar.AIBC(0)) * 100).to  eq(10.937499999999998)
    expect((@CompManzana.AIBC(1) / @Azucar.AIBC(1)) * 100).to  eq(93.49489795918366)
    expect((@Yogurt.AIBC(0) / @Azucar.AIBC(0)) * 100).to  eq(11.914062500000016)
    expect((@Yogurt.AIBC(1) / @Azucar.AIBC(1)) * 100).to  eq(70.66326530612243)
    expect((@Chocolate.AIBC(0) / @Azucar.AIBC(0)) * 100).to  eq(7.226562500000004)
    expect((@Chocolate.AIBC(1) / @Azucar.AIBC(1)) * 100).to  eq(22.83163265306124)
  end 
  
   it "Calculando el indice glucemico de cada alimento" do
    aux = (0..@CompManzana.datos.length - 1).map { |x| (@CompManzana.AIBC(x) / @Azucar.AIBC(x)) * 100}
    igCompManz = aux.reduce(:+)/@CompManzana.datos.length - 1
    aux = (0..@Yogurt.datos.length - 1).map { |x| (@Yogurt.AIBC(x) / @Azucar.AIBC(x)) * 100}
    igYogurt = aux.reduce(:+)/@Yogurt.datos.length - 1
    aux = (0..@Chocolate.datos.length - 1).map { |x| (@Chocolate.AIBC(x) / @Azucar.AIBC(x)) * 100}
    igChocolate = aux.reduce(:+)/@Yogurt.datos.length - 1
    
    expect(igCompManz).to eq(51.21619897959183)
    expect(igYogurt).to eq(40.28866390306122)
    expect(igChocolate).to eq(14.029097576530623)
  end 
  
end
