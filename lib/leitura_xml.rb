class LeituraXml
  def file_name
    'source/cotacao.xml'
  end

  def conteudo
    f = File.open(file_name)
    f.readlines
  end
end
