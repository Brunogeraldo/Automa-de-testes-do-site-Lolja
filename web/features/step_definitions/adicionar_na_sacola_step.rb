# frozen_string_literal: true

Quando('seleciono o primeiro produto da lista para a sacola') do
  first("[data-product-type='list']").click
  first("[data-value='P']").click
  first("[type='tel']").set '87000'
  first("[aria-label='Calcular frete']").click
  find("[value='Comprar']").click
end

Entao('vou entrar na página da sacola') do
  @select.sacola.click
  expect(@check.sacola_check).to be true
end
