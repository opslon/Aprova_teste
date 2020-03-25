*** Settings ***
Documentation   Teste 1
Library     SeleniumLibrary


*** Test Cases ***
Logar no Aprova Brasil
    Open Browser        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net    firefox
    Set Selenium Implicit Wait  30
    Click Link  /app
    Set Selenium Implicit Wait  30
    Input Text  css:input[formcontrolname=login]    demo1
    Input Text  css:input[formcontrolname=password]    deo1
    Click Element   class:submit-button

Selecionar Projeto 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait  30
    Click Element   css:mat-card.card-projetos-dialog:nth-child(4)
    Click Element   css:div.btn-projeto-dialog
    