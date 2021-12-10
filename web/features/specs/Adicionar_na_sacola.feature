#language: pt
Funcionalidade: produtos na sacola
  Como um cliente interessado em roupa na lolja
  Quero adicionar varios items na minha sacola
  Para uma possivel compra ou não

  @adicionando_1_item
  Cenario: Adicionando 1 item na sacola
    Dado que eu estou na página principal
    Quando eu seleciono a categoria "Blusão"
    E sou redirecionado para a lista de produtos
    E seleciono o primeiro produto da lista para a sacola
    Entao vou entrar na página da sacola
