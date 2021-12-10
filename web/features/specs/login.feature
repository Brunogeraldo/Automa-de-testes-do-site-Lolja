#language: pt
Funcionalidade: Login
  Como usuario da loja
  Quero logar com a minha conta
  Para poder utilizar os recursos dela

  @login
  Cenario: login
    Dado que eu acesso a página de login
    Quando preencho os campos com o email e senha
    Entao eu sou redirecionado para minha conta

  @tentativa
  Esquema do Cenario: Tentativa de login
    Dado que eu acesso a página de login
    Quando preencho os campos com "<email_input>" e "<senha_input>"
    Entao vejo a mensagem de alerta: "<mensagem_output>"
    Exemplos:
      | email_input       | senha_input | mensagem_output                                                     |
      | bruno@gmail.com   | 123         | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
      | bruno21&gmail.com | 123456      | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
      |                   | 123456      | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
      | bruno21@gmail.com |             | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
