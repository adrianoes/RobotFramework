*** Settings ***
Documentation   
*** Variables ***
#Tipo Lista (arrays) - separar itens com tab
@{MESES_ANO}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Caso de teste de 01 - Imprimir os meses do ano
    Imprime os meses do ano

*** Keywords ***
Imprime os meses do ano
    # Lendo um valor Simples
    Log    Os meses do ano são:${\n}${MESES_ANO[0]}${\n}${MESES_ANO[1]}${\n}${MESES_ANO[2]}${\n}${MESES_ANO[3]}${\n}${MESES_ANO[4]}${\n}${MESES_ANO[5]}${\n}${MESES_ANO[6]}${\n}${MESES_ANO[7]}${\n}${MESES_ANO[8]}${\n}${MESES_ANO[9]}${\n}${MESES_ANO[10]}${\n}${MESES_ANO[11]}
