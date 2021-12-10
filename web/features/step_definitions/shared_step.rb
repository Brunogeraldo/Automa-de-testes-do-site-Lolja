# frozen_string_literal: true

Dado('que eu estou na página principal') do
  @visits.visit_principal
end

Quando('eu seleciono a categoria {string}') do |categoria|
  @select.select(categoria).click
end

Entao('sou redirecionado para a lista de produtos') do
  @cookies.cookies
  expect(@check.list_product).to be true
end
