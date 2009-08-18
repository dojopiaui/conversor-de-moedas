require 'lib/converter.rb'

describe 'converter' do
  it "deve existir" do
     Converter
  end
  it "deve ter um valor do tipo valido" do
    pending
    Converter.to_dolar("5.df").should_not be_valid
  end
  
  it "deve transformar 1 real em dolares" do
    a = Converter.new(1, "BRL")
    a.to_dolar.should == 1.86
  end
  
  it "deve tranformar 10 reais em dolares" do
    b = Converter.new(10, "BRL")
    b.to_dolar.should == 18.60
  end
  
end
