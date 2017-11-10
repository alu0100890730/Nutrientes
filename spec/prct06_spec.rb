require "spec_helper"
require "./lib/prct06/valor_calorico.rb"
require "./lib/prct06/lista.rb"

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
  
  
end
