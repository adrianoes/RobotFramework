*** Settings ***
Documentation    Esta suite testa o site amazom.com.busca_produtos.
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

Suite Setup
Suite Teardown

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu Eletrônicos do site da amazon.com.br
    ...                e verifica a categoria Computadores e Informática.
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"



    

# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]    Este teste verifica a busca de um produto.
#     [Tags]             busca_produtos    lista_busca