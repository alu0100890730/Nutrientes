require "spec_helper"
require "./lib/prct06/valor_calorico.rb"

RSpec.describe Prct06 do
  it "Tiene una version" do
    expect(Prct06::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  
  before :all do
    @HuevoFrito = Alimento.new("Huevo Frito", 14.1, 0.0, 19.5)
    @LecheVaca = Alimento.new("Leche Vaca", 3.3, 4.8, 3.2)
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
  
  
end
