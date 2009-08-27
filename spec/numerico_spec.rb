require File.dirname(__FILE__) + '/spec_helper'

describe Numeric do

  it "deve ser 10 reais" do
    10.reais.class.should == Moeda
  end
  
  it "deve converter 26.6 reais para dolar" do
    26.6.reais.em_dolar.quantia.should == 14.20
  end
  
  it "deve ser 10 dólares" do
    10.dolares.class.should == Moeda
  end

  it "deve ser 20 dólares" do
    20.dolares.quantia.should == 20.0
  end
  
  it "deve ser 10 euros" do
    10.euros.class.should == Moeda
  end
  
end

