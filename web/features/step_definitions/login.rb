Dado("que eu acesso a página de login") do
  visit "/account/login/"
end

Quando("preencho os campos com {string} e {string}") do |email, password|
  @cookies.cookies
  find("[class=' form-control js-account-input ']").set email
  find("[type='password']").set password

  click_button "Login"
  #sleep 10
end

Então("eu sou redirecionado para minha conta") do
  #page.has_css?(".dashboard")
  expect(page).to have_css("[class='account-page']")
end

Então("vejo a mensagem de alerta: {string}") do |mensagem_output|
  danger = find("[class='alert alert-danger']")
  expect(danger.text).to eql mensagem_output
end
