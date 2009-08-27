class String

  def reais
    Moeda.new(self.to_f, "BRL")
  end
  
  def dolares
    Moeda.new(self.to_s, "USD")
  end  
  
  def euros
    Moeda.new(self.to_s, "EUR")
  end

  def yens
    Moeda.new(self.to_s, "JPY")
  end
end
