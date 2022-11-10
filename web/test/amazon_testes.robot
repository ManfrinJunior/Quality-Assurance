*** Settings ***
Resource          ../resource/amazon_resources.robot

Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    Acessar a home page do site Amazon.com.br
    Eletrônicos e Tecnologia | Amazon.com.br "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Ofertas em destaque"

Casos de teste 02 - Pesquisa de um Produto
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    # Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    