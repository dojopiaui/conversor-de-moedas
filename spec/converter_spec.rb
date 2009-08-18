require 'lib/converter.rb'

describe 'converter' do
  it "deve existir" do
     Converter
  end
  
  it "deve transformar 1 real em dolares" do
    a = Converter.new(1, "BRL")
    a.to_dolar.should == 1.86
  end
  
  it "deve tranformar 10 reais em dolares" do
    b = Converter.new(10, "BRL")
    b.to_dolar.should == 18.60
  end
  
  it "deve transformar 1 real em euros" do
    a = Converter.new(1, "BRL")
    a.to_euro.should == 3.40
  end
  
  it "deve transformar 10 reais em euros" do
    a = Converter.new(10, "BRL")
    a.to_euro.should == 34.00
  end
  
  it "deve transformar 1 dolar em euro" do
    a = Converter.new(1, "USD")
    a.to_euro.should == 1.96
  end

end
