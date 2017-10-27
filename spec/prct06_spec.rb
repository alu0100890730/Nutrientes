require "spec_helper"
require "./lib/prct06/valor_calorico.rb"

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end
  
  it "Existe nombre para el alimento" do
    expect(@HuevoFrito.nombre).not_to be nil
  end
  
  
end
