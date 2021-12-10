# frozen_string_literal: true

Quando('pesquiso {string} na barra de pesquisa') do |nome_produto|
  find("input[placeholder='Buscar']").set nome_produto
  find("[class='btn search-input-submit']").click
end

Dado('que eu estou na página de {string}') do |produto|
  @visits.visit_produto(produto)
end

Quando('eu seleciono a categoria de pesquisa {string}') do |categoria|
  @select.filtro(categoria).click
end

Quando('eu seleciono o filtro de pesquisa {string}') do |ordem|
  @cookies.cookies
  @select.distribuicao(ordem)
end

Entao('devo ver a seleção correta') do
  expect(page).to have_current_path('https://www.lolja.com.br/artistas/?sort_by=alpha-ascending', url: 'https://www.lolja.com.br/artistas/?sort_by=alpha-ascending')
end

Entao('devo ver a seleção correta {string}') do |categoria|
  @cookies.cookies
  expect(@check.alert.text).to eql categoria
end
