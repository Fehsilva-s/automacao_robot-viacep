*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary

Documentation    Cenários de teste da API VIA.CEP 

Resource    ../resources/variaveis.robot

Test Setup    Create Session    alias=via_cep    url=${BASE_URL}

*** Keywords ***

Cep valido
    ${response}=    GET    url=${BASE_URl}/${Cep_valido}/json?callback=CEP
    Status Should Be    200    ${response}

Cep invalido
    ${response}=    GET    url=${BASE_URl}/${Cep_invalido}/json?callback=CEP
    Status Should Be    400    ${response}

Cep valido no formato incorreto
    ${response}    GET    url=${BASE_URl}/${Cep_valido_incorreto}/json?callback=CEP    expected_status=ANY
    Status Should Be    400    ${response}

Metodo incorreto CEP
    ${response}    POST    url=${BASE_URl}/${Cep_valido}/json?callback=CEP    expected_status=ANY
    Status Should Be    405    ${response}

Endereço valido
    ${response}    GET    url=${BASE_URl}/${endereco_AC_estado}/${endereco_AC_cidade}/${endereco_AC_logradouro_valido}/json
    Status Should Be    200    ${response}
 
Endereço de cidade não pertence a estado
    ${response}    GET    url=${BASE_URl}/${endereco_AC_estado}/${endereco_SP_cidade}/${endereco_AC_logradouro_valido}/json
    Status Should Be    200    ${response}


Logradouro null
    ${response}    GET    url=${BASE_URl}/${endereco_SP_estado}/${endereco_SP_cidade}/json    expected_status=ANY
    Status Should Be    400    ${response}


Estado null
    ${response}    GET    url=${BASE_URl}/${endereco_AC_cidade}/${endereco_AC_logradouro_valido}/json    expected_status=ANY
    Status Should Be    400    ${response}

Cidade null
    ${response}=    GET    url=${BASE_URl}/${endereco_AC_estado}/${endereco_AC_logradouro_valido}/json    expected_status=ANY
    Status Should Be    400    ${response}

Caracteries minimos
    ${response}=    GET    url=${BASE_URl}/${endereco_AC_estado}/rio/coe/json    
    Status Should Be    200    ${response}

Quantidade de Caracteries LOGRADOURO
    ${response}    GET    url=${BASE_URl}/${endereco_AC_estado}/${endereco_AC_cidade}/co/json    expected_status=ANY
    Status Should Be    400    ${response}

Quantidade de Caracteries CIDADE
    ${response}    GET    url=${BASE_URl}/${endereco_AC_estado}/ri/${endereco_AC_logradouro_valido}/json    expected_status=ANY
    Status Should Be    400    ${response}

Cidade caracteries especiais
    ${response}    GET    url=${BASE_URl}/${endereco_AC_estado}/ri@/${endereco_AC_logradouro_valido}/json    expected_status=ANY
    Status Should Be    400    ${response}

Metodo incorreto ENDEREÇO
    ${response}    DELETE    url=${BASE_URl}/${endereco_AC_estado}/${endereco_AC_cidade}/${endereco_AC_logradouro_valido}/json    expected_status=ANY
    Status Should Be    405    ${response}