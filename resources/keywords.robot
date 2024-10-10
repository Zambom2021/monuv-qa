*** Settings ***
Resource    page_Objects/po.robot

*** Keywords ***
Abrir Navegador e acessar a pagina cac-tat
    Open Browser    browser=${BROWSER}
    Go To    url=${URL} 

Fechar Navegador
    Close Browser

valido o título da pagina 
    Capture Page Screenshot
    Title Should Be        Central de Atendimento ao Cliente TAT

valido o upload do arquivo   
    ${valor}=    Get Element Attribute    id=file-upload    value   
    Should Contain    ${valor}    anexo.json
    # Scroll Element Into View    id=file-upload
    Execute JavaScript    window.scrollTo(0, document.getElementById('file-upload').getBoundingClientRect().top + window.scrollY);
    Capture Page Screenshot

que acesso a home page da CAC-TAT
    [Documentation]    Esta keyword acessa a pagina da Central de Atendimento ao cliente TAT
    Go To    url=${URL}

a pagina esta carregada
    Wait Until Element Is Visible    id=title

submeto o formulário 
    Click Button    xpath=//button[@type='submit']

vejo a mensagem de sucesso
    Capture Page Screenshot
    Page Should Contain    Mensagem enviada com sucesso.

vejo a mensagem de alerta
    Capture Page Screenshot
    Page Should Contain    Valide os campos obrigatórios!

clico em Politica de Privacidade
    Click Link    xpath=//a[contains(.,'Política de Privacidade')]    

valido a politica na nova aba
    Switch Window            title=Central de Atendimento ao Cliente TAT - Política de privacidade   
    Page Should Contain      CAC TAT - Política de privacidade
    Capture Page Screenshot

    

