*** Settings ***
Documentation   Teste 1
Library     SeleniumLibrary
#Library     AngularJSLibrary
#Library     ngWebDriver



*** Test Cases ***
Testar casos de login
    Logar com credeciais invalidas
    Coletar mensagem de erro

Contorno para mensagem de erro    
    Clicar ok mensagem de erro

# Selecionar Projeto 2020-Aprova_Demonstracao


*** Keywords ***

Logar com credeciais invalidas
    Open Browser        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net    firefox
    Set Selenium Implicit Wait  30
    Click Link  /app
        
    #Open Browser    https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/login  firefox
    Set Selenium Implicit Wait  30
    Input Text                  css:input[formcontrolname=login]        dema1
    Input Text                  css:input[formcontrolname=password]     dea1
    Click Element               class:submit-button

Coletar mensagem de erro
    Set Selenium Implicit Wait  30
    #Alert Should Be Present     Text='Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'   action=ACCEPT
    Element Text Should Be      tag:simple-snack-bar   innerHTML='Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'
    #Click Element               class:mat-button

Clicar ok mensagem de erro
    Click Element               class:mat-button

Selecionar Projeto 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait  30
    Click Element               css:mat-card.card-projetos-dialog:nth-child(4)
    Click Element               css:div.btn-projeto-dialog
  