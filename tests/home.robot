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
     ...                app=${EXECDIR}/app/tr.apk


*** Test Cases ***
Deve abrir a tela principal
    Open Test Application
    Wait Until Page Contains    Continue    5
    Close Application        
    