Quando("pesquiso {string} na barra de pesquisa") do |nome_produto|
  find("input[placeholder='Buscar']").set nome_produto

  find("[class='btn search-input-submit']").click
end

Dado("que eu estou na página de {string}") do |produto|
  visit "/#{produto}"
end

Quando("eu seleciono a categoria de pesquisa {string}") do |categoria|
  find("[title='#{categoria}']").click
end

Quando("eu seleciono o filtro de pesquisa {string}") do |ordem|
  @cookies.cookies
  first("[class='form-select js-sort-by ']").find("option", text: ordem).select_option
end

Então("devo ver a seleção correta") do
  expect(page).to have_current_path("https://www.lolja.com.br/artistas/?sort_by=alpha-ascending", url: "https://www.lolja.com.br/artistas/?sort_by=alpha-ascending")
end

Então("devo ver a seleção correta {string}") do |categoria|
  @cookies.cookies
  alert1 = find("[class='crumb active']")
  expect(alert1.text).to eql categoria
  #sleep 5
end
