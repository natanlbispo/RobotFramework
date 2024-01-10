*** Settings ***

Resource    ../resources/base.robot
Test Setup    Open Test Application
Test Teardown    Close Session

*** Test Cases ***
Deve esperar tela de confirmação de instalação do Instagram
    Iniciando aplicação 

Deve cancelar tela de confirmação
    Iniciando aplicação 
    Click Text    CANCEL
    Wait Until Page Contains    Newer version available
    Wait Until Element Is Visible    cm.aptoide.pt:id/app_name
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="cm.aptoide.pt:id/app_name"]
    Wait Until Element Is Visible    id=cm.aptoide.pt:id/other_versions
    Element Text Should Be    id=cm.aptoide.pt:id/other_versions    Newer version available

    