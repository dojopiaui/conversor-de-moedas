class Converter

  def initialize(valor, moeda)
    @valor = valor
    @moeda = moeda
  end
  
  def to_dolar
    1.86 * @valor
  end
  
  def to_euro
    case @moeda
      when "BRL"
        3.40 * @valor
      when "USD"
        1.96 * @valor
    end
  end

end
