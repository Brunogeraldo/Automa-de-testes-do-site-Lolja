Quando("seleciono o primeiro produto da lista para a sacola") do
  first("[data-product-type='list']").click

  sleep 2

  find("[data-value='Preto']").click
  find("[data-value='P']").click
  find("[data-value='UNISSEX']").click
  first("[type='tel']").set "87000"
  first("[aria-label='Calcular frete']").click

  find("[value='Comprar']").click
end

Então("eu entro na página da sacola") do
  find("[data-toggle='#modal-cart']").click
  expect(page).to have_css("[class='modal-body']")
end
