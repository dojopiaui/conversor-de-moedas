require 'lib/converter.rb'

describe 'converter' do
  before(:each) do
    @cotacao = Converter::COTACAO
  end

  it "deve converter euros em reais" do
    [1, 10, 25, 32.17, 99.99].each do |valor|
      dinheiro = Converter.new(valor, "EUR")
      dinheiro.converter_para('BRL').should == valor * @cotacao["BRL"]
    end
  end

  it "deve converter euros em dólares" do
    [1, 10, 25, 32.17, 99.99].each do |valor|
      dinheiro = Converter.new(valor, "EUR")
      dinheiro.converter_para('USD').should == valor * @cotacao["USD"]
    end
  end

  it "deve converter reais em euro" do
    [1, 10, 25, 32.17, 99.99].each do |valor|
      dinheiro = Converter.new(valor, "BRL")
      dinheiro.converter_de('EUR').should == @cotacao["EUR"] / valor 
    end
  end

  it "deve converter dólares em euro" do
    [1, 10, 25, 32.17, 99.99].each do |valor|
      dinheiro = Converter.new(valor, "USD")
      dinheiro.converter_de('EUR').should ==  @cotacao["EUR"] / valor
    end
  end

  it "deve converter qualquer coisa em qualquer coisa" do
    pending
  #  [1, 10, 25, 32.17, 99.99].each do |valor|
  #    dinheiro = Converter.new(valor, "USD")
  #    dinheiro.converter_para('EUR').should ==  @cotacao["EUR"] / valor
  #  end
  end
  
  it "deve converter Real em Dólares" do
    valor = 10
    dinheiro = Converter.new(valor, "BRL")
    dinheiro.converter_para('USD').should == 5.38
  end


end
