*** Settings ***
Documentation   
*** Variables ***
#Tipo Lista (arrays) - separar itens com tab
@{MESES_ANO}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro
@{DIAS_MESES}    31    29    31    30    31    30    31    31    30    31    30    31

&{MESES_E_DIAS}    meses=@{MESES_ANO}   dias=@{DIAS_MESES}
*** Test Cases ***
Caso de teste de 01 - Imprimir os meses do ano
    Imprime os meses do ano e seus dias

*** Keywords ***
Imprime os meses do ano e seus dias
    # Lendo um valor Simples
    Log    Os meses do ano e seus dias são:${\n}${MESES_E_DIAS.meses[0]}, ${MESES_E_DIAS.dias[0]}${\n}${MESES_E_DIAS.meses[1]}, ${MESES_E_DIAS.dias[1]}${\n}${MESES_E_DIAS.meses[2]}, ${MESES_E_DIAS.dias[2]}${\n}${MESES_E_DIAS.meses[3]}, ${MESES_E_DIAS.dias[3]}${\n}${MESES_E_DIAS.meses[4]}, ${MESES_E_DIAS.dias[4]}${\n}${MESES_E_DIAS.meses[5]}, ${MESES_E_DIAS.dias[5]}${\n}${MESES_E_DIAS.meses[6]}, ${MESES_E_DIAS.dias[6]}${\n}${MESES_E_DIAS.meses[7]}, ${MESES_E_DIAS.dias[7]}${\n}${MESES_E_DIAS.meses[8]}, ${MESES_E_DIAS.dias[8]}${\n}${MESES_E_DIAS.meses[9]}, ${MESES_E_DIAS.dias[9]}${\n}${MESES_E_DIAS.meses[10]}, ${MESES_E_DIAS.dias[10]}${\n}${MESES_E_DIAS.meses[11]}, ${MESES_E_DIAS.dias[1]}${\n}

