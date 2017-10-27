require "spec_helper"
require "./lib/prct06/valor_calorico.rb"

RSpec.describe Prct06 do
  it "Tiene una version" do
    expect(Prct06::VERSION).not_to be nil
  end
end

RSpec.describe Alimento do
  
  before :all do
    @HuevoFrito = Alimento.new("Huevo Frito")
  end
  
  it "Existe nombre para el alimento" do
    expect(@HuevoFrito.nombre).not_to be nil
  end
  
  
end
