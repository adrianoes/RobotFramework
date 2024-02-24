*** Settings ***
Documentation   Vamos aprender a fazer LOOPS usando o Robot Framework!!

*** Variables ***
@{MINHA_LISTA_DE_NUMEROS}    0    1    2    3    4    5    6    7    8    9    10    11

*** Test Cases ***
Informa se o número é 5, 10 ou outro
    [Documentation]  Executa um if dentro de um for para informar se o número é 5, 10 ou outro.
    Informa numero

*** Keywords ***

Informa numero
    Log To Console    ${\n}
    FOR   ${INDICE}   ${NUMERO}   IN ENUMERATE   @{MINHA_LISTA_DE_NUMEROS}
        IF    ${INDICE} == 5
            Logar informações quando o índice for igual a 5
        ELSE IF    ${INDICE} == 10
            Logar informações quando o índice for igual a 10
        ELSE
            Logar informações quando o índice for igual a outro
        END
    END

Logar informações quando o índice for igual a 5
    Log   Eu sou o número 5!
    Log To Console    Eu sou o número 5!

Logar informações quando o índice for igual a 10
    Log   Eu sou o número 10!
    Log To Console    Eu sou o número 10!

Logar informações quando o índice for igual a outro
    Log   Eu não sou o número 5 e nem o 10!
    Log To Console    Eu não sou o número 5 e nem o 10!





# Solução da May

# *** Settings ***
# Documentation    Exercício IF e FOR

# *** Variables ***
# @{NUMEROS}       0  3  5  7  9  10  12

# *** Test Cases ***
# Teste de imprimir apenas alguns números
#   Imprimir somente se for 5 e 10

# *** Keywords ***
# Imprimir somente se for 5 e 10
#   Log To Console  ${\n}

#   FOR    ${numero}    IN   @{NUMEROS}
#       IF  ${numero} == 5
#           Log To Console    Eu sou o número 5!
#       ELSE IF  ${numero} == 10
#           Log To Console    Eu sou o número 10!
#       ELSE
#           Log To Console    Eu não sou o número 5 e nem o 10!
#       END
#   END

#   Log To Console  ${\n}
#   #FICA A DICA
#   # Existem outros modos de fazer, veja abaixo:
#   FOR    ${numero}    IN   @{NUMEROS}
#       IF  ${numero} == 5 or ${numero} == 10
#           Log To Console    Eu sou o número ${numero}!
#       ELSE
#           Log To Console    Eu não sou o número 5 e nem o 10!
#       END
#   END

#   Log To Console  ${\n}
#   FOR    ${numero}    IN   @{NUMEROS}
#       IF  ${numero} in (5, 10)
#           Log To Console    Eu sou o número ${numero}!
#       ELSE
#           Log To Console    Eu não sou o número 5 e nem o 10!
#       END              
#   END