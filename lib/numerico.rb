require "lib/moeda"
class Numeric

  def reais
    Moeda.new(self, "BRL")
  end
  
  def dolares
    Moeda.new(self, "USD")
  end
  
  def euros
    Moeda.new(self, "EUR")
  end
  
end
