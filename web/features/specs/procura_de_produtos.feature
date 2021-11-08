#language: pt

Funcionalidade: Procura de produtos
    Sendo um cliente interessado nos produtos da loja
    Quero procurar certos produtos que desejo
    Para uma possivel compra

    @temp1
    Cenario: Procurando produto na barra de pesquisa 

    Dado que eu estou na página principal
    Quando pesquiso "imaginago" na barra de pesquisa
    Então sou redirecionado para a lista de produtos

    @temp2
    Cenario: Procurando produto na barra de categoria

    Dado que eu estou na página principal
    Quando eu seleciono a categoria "Moletons"
    Então sou redirecionado para a lista de produtos

    @temp3
    Cenario: seleção de filtros na lista de produtos
    
    Dado que eu estou na página de "camisetas"
    Quando eu seleciono a categoria de pesquisa "ANIMES" 
    Então devo ver a seleção correta "ANIMES"

    @temp7

    Cenario: seleção de produto de A - Z
    
    Dado que eu estou na página de "artistas"
    Quando eu seleciono o filtro de pesquisa "A - Z"
    Então devo ver a seleção correta

