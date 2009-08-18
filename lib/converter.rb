class Converter

  def initialize(valor, moeda)
    @valor = valor
  end
  
  def to_dolar
    1.86 * @valor
  end

end
