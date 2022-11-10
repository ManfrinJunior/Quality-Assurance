*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[9]
# ${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
# ${HEADER_ELETRONICOS}    //*[@id="contentGrid_162862"]/div/div[1]/div/div/div/h1



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Eletrônicos e Tecnologia | Amazon.com.br "${TITULO-DA-PAGINA}"
    Title Should Be    title=${TITULO-DA-PAGINA}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    # Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${Ofertas-em-destaque}"
    Wait Until Page Contains    text=${Ofertas-em-destaque}
    
# Acessar a home page do site Amazon.com.br

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

# Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]