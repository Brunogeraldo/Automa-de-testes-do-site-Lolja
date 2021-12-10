# Automação de testes no site Lolja

[https://img.shields.io/npm/l/react](https://img.shields.io/npm/l/react)

# Sobre o projeto

É um projeto front-end, com o objetivo de testar as funcionalidades do site, utilizando BDD(Desenvolvimento orientado a testes) e a linguagem de programação ruby para realizar esses testes. Após cada teste é possível receber relatórios detalhados com screenshot de cada teste feito, utilizando o Allure framework.

# Tecnologias utilizadas

- Ruby 2.6
- Capybara
- Cucumber
- Allure Framework

# Como executar o projeto

```
# clonar repositório em alguma pasta da sua preferência 
git clone <https://github.com/devsuperior/sds1-wmazoni>

# entrar na pasta web do projeto
cd web

# instalar gems
bundle install

# executar o projeto
cucumber

```

## Allure Framework e servidor de relatório:

Para instalar o allure segue o manual oficial com cada passo:

[https://docs.qameta.io/allure/](https://docs.qameta.io/allure/)

para conseguir o relatório depois da instalação:

pré-requisito: java 

```
# entrar na pasta web do projeto
cd web

# executar o projeto
cucumber

# executar o comando
Allure serve logs\

```

### Localizando as screenshot nos relatórios

1. Selecione a aba suites
    
    ![1.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b0fa29d7-3997-4a82-8734-745d66a4f6a1/1.png)
    
2. Escolha qual suite que deseja ver
    
    ![2.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0ec5aecc-64d5-4f8e-961d-cf7af3471e0a/2.png)
    
3. Selecione o teste que deseja ver
    
    ![3.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0a48720d-832a-484f-b9b0-aef7f4a020a2/3.png)
    
4. Em tear down, clique em after hooks e depois em screenshot (para visualizar a imagem inteira, basta clicar na imagem que ira ampliar)
    
    ![4.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/33151172-2a8d-4288-82e2-4b6fa3b9af0a/4.png)
    

# Autor

Bruno Geraldo Lima
