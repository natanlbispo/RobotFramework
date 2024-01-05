*** Settings ***

Library    AppiumLibrary

# {
#   "platformName": "Android",
#   "appium:deviceName": "emulator-5554",
#   "appium:automationName": "UiAutomator2",
#   "appium:app": "C:\\Users\\nlb\\Workspace\\RobotFramework\\app\\tr.apk"
# }
# *** Variables ***
# ${ANDROID_AUTOMATION_NAME}    UIAutomator2
# ${ANDROID_APP}                ${CURDIR}/demoapp/ApiDemos-debug.apk
# ${ANDROID_PLATFORM_NAME}      Android
# ${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}

*** Keywords ***
Open Test Application
     Open Application 	http://127.0.0.1:4723
     ...                appium:automationName=UiAutomator2
     ...                platformName=Android
     ...                deviceName=emulator-5554
     ...                app=${EXECDIR}/app/apt.apk
     ...                autoGrantPermissions=true


*** Test Cases ***
Deve esperar tela de confirmação de instalação do Instagram
    Open Test Application
    Click Element    //android.widget.Button[@resource-id="android:id/button1"]
    Wait Until Page Contains    Instagram    5

Deve cancelar tela de confirmação
    Click Text    CANCEL
    Wait Until Page Contains    Other versions    5
    Wait Until Element Is Visible    cm.aptoide.pt:id/app_name    5
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="cm.aptoide.pt:id/app_name"]    5
    Wait Until Element Is Visible    id=cm.aptoide.pt:id/other_versions    5
    Element Text Should Be    id=cm.aptoide.pt:id/other_versions    Other versions

    