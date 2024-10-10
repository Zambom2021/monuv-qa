Language: pt-br
*** Settings ***
Resource   ../resources/asserts.robot 
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


02 - Preenche os campos obrigatórios e envia o formulário
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios com sucesso 
    [Tags]    2

    Dado que preencha o formulario com todos os campos obrigatórios
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

03 - Seleciona os meios de contato E-mail e Telefone e envia com sucesso
    [Documentation]    Funcionalidade: Faz o envio do formulário com os campos de contato E-mail e Telefone selecionados 
    [Tags]    3

    Dado que marque os campos de contato
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

04 - Anexa um Documento ao Formulario
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios com sucesso 
    [Tags]    4

    Dado que preencha o formulario com todos os campos obrigatórios
    Quando anexo um arquivo
    Então valido o upload do arquivo

05 - Seleciona o produto Blog e tipo de Atendimento Elogio
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios e seleciona
    ...    o produto Blog e Tipo de Atendimento Elogio 
    [Tags]    5

    Dado preencha o formulario para o produto "blog" e tipo de Atendimento "elogio" 
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

06 - Seleciona o produto Cursos e tipo de Atendimento Feedback
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios e seleciona
    ...    o produto BCursoslog e Tipo de Atendimento Feedback 
    [Tags]    6

    Dado preencha o formulario para o produto "cursos" e tipo de Atendimento "feedback" 
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

07 - Seleciona o produto Mentoria e tipo de Atendimento Feedback
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios e seleciona
    ...    o produto Mentoria e Tipo de Atendimento Feedback 
    [Tags]    7

    Dado preencha o formulario para o produto "mentoria" e tipo de Atendimento "feedback" 
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

08 - Seleciona o produto YouTube e tipo de Atendimento Elogio
    [Documentation]    Funcionalidade: Faz o envio do formulário preenchendo todos os campos obrigatórios e seleciona
    ...    o produto YouTube e Tipo de Atendimento Elogio 
    [Tags]    8

    Dado preencha o formulario para o produto "youtube" e tipo de Atendimento "elogio" 
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

09 - Seleciona o meio de contato Telefone e envia com sucesso
    [Documentation]    Funcionalidade: Faz o envio do formulário apenas com o meio de contato Telefone selecionado 
    [Tags]    9

    Dado que marque o campo telefone
    Quando submeto o formulário 
    Então vejo a mensagem de sucesso 

10 - Exibe mensagem de erro ao submeter o formulário sem preencher os campos obrigatórios
    [Documentation]    Funcionalidade: Faz o envio do formulário sem preencher os campos obrigatórios
    [Tags]    10

    Dado que acesso a home page da CAC-TAT
    Quando submeto o formulário 
    Então vejo a mensagem de alerta 

11 - Seleciona os meios de contato E-mail e Telefone e envia com telefone Vazio 
    [Documentation]    Funcionalidade: Faz o envio do formulário com os campos de contato E-mail e Telefone selecionados,
    ...    mas sem o numero do telefone preenchido 
    [Tags]    11

    # Dado que preencha o formulario com todos os campos obrigatórios
    Dado que marque os campos de contato com telefone em branco
    Quando submeto o formulário 
    Então vejo a mensagem de alerta 