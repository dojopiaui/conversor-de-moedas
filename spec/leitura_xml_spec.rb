require 'lib/leitura_xml'

describe LeituraXml do
  it "deve retornar nome do arquivo" do
    leitura = LeituraXml.new()
    leitura.file_name.should == 'source/cotacao.xml'
  end
  
  it "ler o conteudo do arquivo" do
    leitura = LeituraXml.new()
    leitura.conteudo.length.should > 0
  end

  it "conteudo tem a tag Cube" do
    leitura = LeituraXml
  end
end
