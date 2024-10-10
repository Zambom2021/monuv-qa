Language: pt-br
*** Settings ***
Resource   ../resources/keywords.robot 
Resource   ../resources/page_Objects/po.robot

Suite Setup      Abrir Navegador e acessar a pagina cac-tat
Suite Teardown   Fechar Navegador

*** Test Cases ***
01 - Verifica a Politica de Privacidade 
    [Documentation]    Funcionalidade: Validar a Politica de Privacidade aberta em outra aba
    [Tags]    1

    Dado que acesso a home page da CAC-TAT
    Quando clico em Politica de Privacidade
    Então valido a politica na nova aba 


