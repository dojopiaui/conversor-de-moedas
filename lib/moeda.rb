class Moeda
  
  COTACOES = { "USD" => 1.42, "BRL" => 2.66, "JPY" => 134.32 }
  
  attr_reader :quantia, :moeda_base

  def initialize(valor, moeda)
    @quantia = valor.to_f
    @moeda_base = moeda
  end

  def converter(moeda)
    return Moeda.new(@quantia * COTACOES[moeda], moeda) if @moeda_base == "EUR"
    if moeda == "EUR" 
      Moeda.new(@quantia / COTACOES[@moeda_base], moeda)
    else
      Moeda.new(COTACOES[moeda] * @quantia / COTACOES[@moeda_base], moeda)
    end  
  end

  def quantia
    ("%.2f" % @quantia).to_f
  end
  
  def em_dolar
    converter("USD")
  end
end
