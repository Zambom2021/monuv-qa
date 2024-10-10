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
que preencha o formulario com todos os campos obrigatórios
    Input Text    id=firstName         ${NOME}
    Input Text    id=lastName          ${SOBRENOME}
    Input Text    id=email             ${EMAIL} 
    Input Text    id=open-text-area    Testando o preenchimento do Formulario 

anexo um arquivo
    Choose File       file-upload   ${FILE} 

que marque os campos de contato
    Select Checkbox   id=email-checkbox
    Select Checkbox   id=phone-checkbox
    Input Text        id=phone       ${TELEFONE} 

que marque os campos de contato com telefone em branco
    Select Checkbox   id=email-checkbox
    Select Checkbox   id=phone-checkbox
 
    