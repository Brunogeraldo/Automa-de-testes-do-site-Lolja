Quando("seleciono o primeiro produto da lista para a sacola") do
  first("[data-product-type='list']").click

  first("[data-value='P']").click
  first("[type='tel']").set "87000"
  first("[aria-label='Calcular frete']").click
  sleep 2
  find("[value='Comprar']").click
end

Então("eu entro na página da sacola") do
  find("[data-toggle='#modal-cart']").click
  sleep 1
  expect(page).to have_css("[name='go_to_checkout']", visible: false)
end
