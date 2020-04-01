*** Settings ***
Documentation   Teste 1
Library     SeleniumLibrary
#Library     AngularJSLibrary
#Library     ngWebDriver



*** Test Cases ***
Logar com credeciais invalidas
       # Tentativa de uso de plugin para Angular
        #waitForAngular
        #Open Browser        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net    firefox
        #/\ Landing page não possui a inicialização do Angular
        # ! Erro => JavascriptException: Message: Error: Unable to find root selector using "[ng-app]". Please refer to the AngularJS library 
        # documentation for more information on how to resolve this error.
        #Set Selenium Implicit Wait  30
        #Click Link  /app
        
    Open Browser    https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/login  firefox
    Set Selenium Implicit Wait  30
    Input Text                  css:input[formcontrolname=login]        dema1
    Input Text                  css:input[formcontrolname=password]     dea1
    Click Element               class:submit-button

Coletar mensagem de erro
    Set Selenium Implicit Wait  30
    Alert Should Be Present     Text='Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'   action=ACCEPT
    Click Element               class:mat-button
#   \/ Leituras com erro
    #${inner html}=              Get Element Attribute       css:simple-snack-bar      innerHTML
    #Get Alert Message           css:simple-snack-bar
    #${inner html}=              Get Inner Html              css:simple-snack-bar
    #Alert Should Be Present     css:simple-snack-bar        ${inner html}
    #Alert Should Be Present     css:.simple-snack-bar \*{Text}
    #Alert Should Be Present     css:.mat-simple-snackbar \*{Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!}
    #Alert Should Be Present     css:.simple-snack-bar \*{Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!}
    #Alert Should Be Present     xpath://*[@id="cdk-overlay-0"]/snack-bar-container/simple-snack-bar
    #Element Should Contain      //*[@id="cdk-overlay-0"]/snack-bar-container/simple-snack-bar/text()
    #Element Should Contain      css=[simple-snack-bar="Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!"]
    #Element Text Should Be 
    #Element Should Contain      //label[text]   'Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'
    #Element Should Contain      css:simple-snack-bar[]  $(mensagem_esperada)    
    #Element Should Contain      xpath://*[@id="cdk-overlay-0"]/snack-bar-container/simple-snack-bar/text()="Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!"   ${mensagem_esperada}
    #Element Should Contain      //*[@id="cdk-overlay-0"]/snack-bar-container/simple-snack-bar/text()
    #cdk-overlay-0 > snack-bar-container > simple-snack-bar
Clicar ok mensagem de erro
    Click Element               class:mat-button




# Selecionar Projeto 2020-Aprova_Demonstracao
#     Set Selenium Implicit Wait  30
#     Click Element               css:mat-card.card-projetos-dialog:nth-child(4)
#     Click Element               css:div.btn-projeto-dialog
  