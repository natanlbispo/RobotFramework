*** Settings ***
Library    hello.py

*** Test Cases ***
Deve retornar mensgaem
    ${resultado}=    Hello Robot
    Should Be Equal    ${resultado}    Hello Robot Recycling
