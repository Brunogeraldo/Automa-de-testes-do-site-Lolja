#language: pt
Funcionalidade: Procura de produtos
  Sendo um cliente interessado nos produtos da loja
  Quero procurar certos produtos que desejo
  Para uma possivel compra

  @barra_de_pesquisa
  Cenario: Procurando produto na barra de pesquisa 
    Dado que eu estou na página principal
    Quando pesquiso "imaginago" na barra de pesquisa
    Entao sou redirecionado para a lista de produtos

  @barra_de_categoria
  Cenario: Procurando produto na barra de categoria
    Dado que eu estou na página principal
    Quando eu seleciono a categoria "Moletons"
    Entao sou redirecionado para a lista de produtos

  @filtros
  Cenario: seleção de filtros na lista de produtos
    Dado que eu estou na página de "camisetas"
    Quando eu seleciono a categoria de pesquisa "ANIMES" 
    Entao devo ver a seleção correta "ANIMES"

  @produto_AZ
  Cenario: seleção de produto de A - Z
    Dado que eu estou na página de "artistas"
    Quando eu seleciono o filtro de pesquisa "A - Z"
    Entao devo ver a seleção correta
    