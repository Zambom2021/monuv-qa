*** Settings ***
Resource    page_Objects/po.robot

*** Keywords ***
valido o título da pagina 
    Capture Page Screenshot
    Title Should Be        Central de Atendimento ao Cliente TAT

valido o upload do arquivo   
    ${valor}=    Get Element Attribute    id=file-upload    value   
    Should Contain    ${valor}    anexo.json
    # Scroll Element Into View    id=file-upload
    Execute JavaScript    window.scrollTo(0, document.getElementById('file-upload').getBoundingClientRect().top + window.scrollY);
    Capture Page Screenshot

vejo a mensagem de sucesso
    Capture Page Screenshot
    Page Should Contain    Mensagem enviada com sucesso.

vejo a mensagem de alerta
    Capture Page Screenshot
    Page Should Contain    Valide os campos obrigatórios!

valido a politica na nova aba
    Switch Window            title=Central de Atendimento ao Cliente TAT - Política de privacidade   
    Page Should Contain      CAC TAT - Política de privacidade
    Capture Page Screenshot

    

