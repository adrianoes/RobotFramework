*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    http://www.amazom.com.br
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
    
*** Keywords ***
Abrir o navegador
    Open Browser   browser=${BROWSER}  
    Maximize Browser Window

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To   url=${URL}
    Wait Until Element Is Visible   locator=${MENU_ELETRONICOS}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible   locator=//a[contains(@aria-label,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${PRODUTO}" no campo de Pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}   

Clicar no botão de Pesquisa
    Click Element    locator=nav-search-submit-text

Verificar se o resultado da pesquisa está listando o produto "${PRODUTO}" 
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=(//span[contains(.,'${PRODUTO}')])[5]
    Click Element    locator=add-to-cart-button

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Page Should Contain    text=Adicionado ao carrinho

Remover o produto "${PRODUTO}" do carrinho
    Click Element    locator=nav-cart-count-container
    Click Element    locator=//input[contains(@value,'Excluir')]

Verificar se o produto "${PRODUTO}" é removido do carrinho

    Wait Until Page Contains    text=${PRODUTO}
    Wait Until Page Contains    foi removido de Carrinho de compras.



#Gherkin BDD procedures
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E as categorias "Computadores e Informática" e "Tablets" devem ser exibidas na página
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de Pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar se o resultado da pesquisa está listando o produto "Console Xbox Series S"

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

E existe o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o produto "Console Xbox Series S" é removido do carrinho