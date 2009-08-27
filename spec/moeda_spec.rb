require File.dirname(__FILE__) + '/spec_helper'

describe "Moeda" do
  it "deve converter de euro para dolar" do
    valor = 10
    moeda = Moeda.new(valor, "EUR")
    moeda2 = moeda.converter("USD")
    moeda2.quantia.should == 14.20
    moeda2.moeda_base.should == "USD"
    moeda2.class.should == Moeda
  end

  it "deve converter de dolar para euro" do
    valor = 14.20
    moeda = Moeda.new(valor, "USD")
    moeda.converter("EUR").quantia.should == 10.0
  end

  it "deve converter de euro para real" do
    valor = 10
    moeda = Moeda.new(valor, "EUR")
    moeda.converter("BRL").quantia.should == 26.6
  end

  it "deve converter de real para euro" do
    valor = 26.6
    moeda = Moeda.new(valor, "BRL")
    moeda.converter("EUR").quantia.should == 10.0
  end
  
  it "deve converter de real para dólar" do
    valor = 26.60
    moeda = Moeda.new(valor, "BRL")
    moeda.converter("USD").quantia.should == 14.20
  end
  
  it "deve converter de dolar para real" do
    valor = 14.20
    moeda = Moeda.new(valor, "USD")
    moeda.converter("BRL").quantia.should == 26.60
  end
  
  it "deve retornar uma moeda" do
    valor = 14.20
    moeda = Moeda.new(valor, "USD")
    moeda.converter("BRL").class.should == Moeda
  end
  
  it "deve converter de real para Yene" do
    valor = 26.60
    moeda = Moeda.new(valor, "BRL")
    moeda2 = moeda.converter("JPY")
    moeda2.quantia.should == 1343.20
    moeda2.moeda_base.should == "JPY"
    moeda2.class.should == Moeda
  end
end
