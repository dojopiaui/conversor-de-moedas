require 'lib/converter.rb'

describe 'converter' do
  it "deve existir" do
     Converter
  end
  it "deve ter um valor do tipo valido" do
           Converter.to_dolar("5.df").should_not be_valid

  end
end
