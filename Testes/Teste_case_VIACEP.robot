*** Settings ***

Resource    ../object/keywords.robot

Documentation    Tem como objetivo os cenários de teste automatizados, visando a cobertura e garantia da qualidade da API VIA.CEP, conforme documentação https://viacep.com.br/

*** Test Cases ***

CT01: Consulta de CEP com dados válidos
    Cep valido
    
CT02: Consulta de CEP com dado inválido
    Cep valido

CT03: Consulta de CEP válido no formato invalido
    Cep valido no formato incorreto

CT04: Teste Via.CEP com o método incorreto
    Metodo incorreto CEP

CT05: Consuta de Endereço com dados válidos
    Endereço valido

CT06: Consuta de Endereço com dados inválidos - Cidade não pertence ao Estado
    Endereço de cidade não pertence a estado

CT07: Consuta de obrigatoriedade do campo LOGRADOURO
    Logradouro null

CT08: Consuta de obrigatoriedade do campo ESTADO
    Estado null

CT09: Consuta de obrigatoriedade do campo CIDADE
    Cidade null

CT10: Validação da quantidade de caractéries minimos das variaveis LOGRADOURO e CIDADE
    Caracteries minimos
    
CT11:Validação da quantidade de caractéries da variavel LOGRADOURO
    Quantidade de Caracteries LOGRADOURO
CT12: Validação da quantidade de caractéries minimo da variavel CIDADE
    Quantidade de Caracteries CIDADE

CT13: Consuta de Endereço com caractéries especiais
    Cidade caracteries especiais

CT14: Validação do método de endereço
    Metodo incorreto ENDEREÇO