#language: pt

Funcionalidade: Login
    Como usuario da loja
    Quero logar com a minha conta
    Para poder utilizar os recursos dela

    @temp5
    Cenario: login

        Dado que eu acesso a página de login
        Quando preencho os campos com "tester020304050809@gmail.com" e "cNRZBZAa1N11"
        Então eu sou redirecionado para minha conta

    @temp6
    Esquema do Cenario: Tentativa de login

        Dado que eu acesso a página de login
        Quando preencho os campos com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:

            | email_input       | senha_input | mensagem_output                                                     |
            | bruno@gmail.com   | 123         | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
            | bruno@yahoo.com   | 123456      | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
            | bruno21&aol.com   | 123456      | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
            |                   | 123456      | Esses dados estão incorretos. Verificou se eles estão bem escritos? |
            | bruno21@gmail.com |             | Esses dados estão incorretos. Verificou se eles estão bem escritos? |



