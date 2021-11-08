Dado("que eu estou na página principal") do
  visit "/"
end

Quando("eu seleciono a categoria {string}") do |categoria|
  find("[data-name='#{categoria}']").click
end

Então("sou redirecionado para a lista de produtos") do
  @cookies.cookies
  expect(page).to have_css "[class='item-product-border']"
end
