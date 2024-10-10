*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
### Opções necessárias para rodar headless no Linux do CI (runner)
${OPTIONS}          add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox")
${URL}              https://cac-tat.s3.eu-central-1.amazonaws.com/index.html
${NOME}             João
${SOBRENOME}        Silva
${EMAIL}            jsilva@meuemail.com
${TELEFONE}         1999999999
${PROJECT_ROOT}     C:/Projects_Robot/case-test-monuv
${FILE}             ${PROJECT_ROOT}/anexo.json

 
*** Keywords ***  
Abrir Navegador e acessar a pagina cac-tat
    Open Browser    browser=${BROWSER}
    Go To    url=${URL} 

Fechar Navegador
    Close Browser

que acesso a home page da CAC-TAT
    Go To    url=${URL}

a pagina esta carregada
    Wait Until Element Is Visible    id=title

submeto o formulário 
    Click Button    xpath=//button[@type='submit']

clico em Politica de Privacidade
    Click Link    xpath=//a[contains(.,'Política de Privacidade')]   

que preencha o formulario com todos os campos obrigatórios
    Input Text    id=firstName         ${NOME}
    Input Text    id=lastName          ${SOBRENOME}
    Input Text    id=email             ${EMAIL} 
    Input Text    id=open-text-area    Testando o preenchimento do Formulario 

anexo um arquivo
    Choose File       file-upload   ${FILE} 

que marque os campos de contato
    que preencha o formulario com todos os campos obrigatórios
    Select Checkbox   id=email-checkbox
    Select Checkbox   id=phone-checkbox
    Input Text        id=phone       ${TELEFONE} 

que marque o campo telefone
    que preencha o formulario com todos os campos obrigatórios
    Select Checkbox   id=phone-checkbox
    Input Text        id=phone       ${TELEFONE} 

que marque os campos de contato com telefone em branco
    que preencha o formulario com todos os campos obrigatórios
    Select Checkbox   id=email-checkbox
    Select Checkbox   id=phone-checkbox
 
preencha o formulario para o produto "${produto}" e tipo de Atendimento "${tipo_Atendimento}" 
    que preencha o formulario com todos os campos obrigatórios
    Select From List By Value    id=product    ${produto}
    Click Element     xpath=//input[@value='${tipo_Atendimento}']
    Select Checkbox   id=email-checkbox
    Input Text        id=open-text-area    Testando o preenchimento do Formulario 