Language: pt-br
*** Settings ***
Resource   ../resources/keywords.robot 
Resource   ../resources/page_Objects/po.robot

Suite Setup      Abrir Navegador e acessar a pagina cac-tat
Suite Teardown   Fechar Navegador

*** Test Cases ***

01 - Acessar a pagina CAC-TAT
    [Documentation]    Funcionalidade: Validar se a pagina CAC TAT esta acessível e o título esta visivel
    [Tags]    1

    Dado que acesso a home page da CAC-TAT
    Quando a pagina esta carregada
    Então valido o título da pagina

02 - Exibe mensagem de erro ao submeter o formulário sem preencher os campos obrigatórios
    [Documentation]    Funcionalidade: Faz o envio do formulário sem preencher os campos obrigatórios
    [Tags]    2

    Dado que acesso a home page da CAC-TAT
    Quando submeto o formulário 
    Então vejo a mensagem de alerta 

03 - Preenche os campos obrigatórios e envia o formulário
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios com sucesso 
    [Tags]    3

    Dado que preencha o formulario com todos os campos obrigatórios
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

04 - Anexa um Documento ao Formulario
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios com sucesso 
    [Tags]    4

    Dado que preencha o formulario com todos os campos obrigatórios
    Quando anexo um arquivo
    Então valido o upload do arquivo

05 - Verifica a Politica de Privacidade 
    [Documentation]    Funcionalidade: Validar a Politica de Privacidade aberta em outra aba
    [Tags]    5

    Dado que acesso a home page da CAC-TAT
    Quando clico em Politica de Privacidade
    Então valido a politica na nova aba 

