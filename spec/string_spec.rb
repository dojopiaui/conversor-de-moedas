require File.dirname(__FILE__) + '/spec_helper'

describe String do

  it "'10' reais deve retornar Moeda" do
    "10".reais.class.should == Moeda
  end
  
  it "20 reais deve retornar moeda com quantia 20" do
    "20".reais.quantia.should == 20.0
  end
  
  it "20 reais deve retornar moeda em reais" do
    "20".reais.moeda_base.should == "BRL"
  end

  it "'10' dolares deve retornar Moeda" do
    "10".dolares.class.should == Moeda
  end

  it "'10' euros deve retornar Moeda" do
    "10".euros.class.should == Moeda
  end

  it "'10' yens deve retornar Moeda" do
    "10".yens.class.should == Moeda
  end
  
end
