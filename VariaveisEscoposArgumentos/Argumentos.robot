*** Settings ***
Documentation   Exemplo de uso de variáveis como argumentos em Keywords
Library    FakerLibrary

*** Variables ***
&{PESSOA}       nome=Adriano    sobrenome=Santos

*** Test Cases ***
Geração de e-mail aleatório
    Retorna o e-mail

*** Keywords ***
Retorna o e-mail
    Armazena nome e sobrenome   ${PESSOA.nome}   ${PESSOA.sobrenome}
    ${MENSAGEM_FINAL}   Cria a mensagem com e-mail gerado   ${PESSOA.nome}   ${PESSOA.sobrenome}
    Log     ${MENSAGEM_FINAL}

Armazena nome e sobrenome
    [Arguments]     ${NOME_USUARIO}   ${SOBRENOME_USUARIO}
    Log             Nome Usuário: ${NOME_USUARIO}
    Log             Sobrenome ${SOBRENOME_USUARIO}


Cria a mensagem com e-mail gerado
    [Arguments]     ${NOME_USUARIO}   ${SOBRENOME_USUARIO}
    ${FAKE_YEAR}    FakerLibrary.Year
    ${MENSAGEM}     Set Variable    O email gerado é: ${NOME_USUARIO}${SOBRENOME_USUARIO}${FAKE_YEAR}@testerobot.com
    [Return]        ${MENSAGEM}