*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[9]
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
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

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    # Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}