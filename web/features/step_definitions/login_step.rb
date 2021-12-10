# frozen_string_literal: true

Dado('que eu acesso a página de login') do
  @visits.visit_login
end

Quando('preencho os campos com o email e senha') do
  @cookies.cookies
  @testers.tester_email
  @testers.tester_senha
  click_button 'Login'
end

Quando('preencho os campos com {string} e {string}') do |email, password|
  @cookies.cookies
  find("[class=' form-control js-account-input ']").set email
  find("[type='password']").set password
  click_button 'Login'
end

Entao('eu sou redirecionado para minha conta') do
  expect(@check.login_check).to be true
end

Entao('vejo a mensagem de alerta: {string}') do |mensagem_output|
  expect(@check.danger.text).to eql mensagem_output
end
