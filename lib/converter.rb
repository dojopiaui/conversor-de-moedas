class Converter

  COTACAO = {
    "USD" => 1.4101,
    "BRL" => 2.6281,
    "EUR" => 1
  }
  
  def initialize(valor, moeda_base)
    @valor = valor
    @moeda_base = moeda_base
  end
  
  def converter_para(moeda_destino)
    valor = @valor
    unless @moeda_base == 'EUR'
      valor = converter_de("EUR")
    end
    puts valor
    valor * COTACAO[moeda_destino]
  end
  
  def converter_de(moeda_destino)
     COTACAO[moeda_destino] / @valor
  end

end
