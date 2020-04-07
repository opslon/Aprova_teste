*** Settings ***
Resource                  elements.robot


*** Keywords ***
Acessar
    Open Browser        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net    firefox
    Set Selenium Implicit Wait  30
    Click Link  /app

Login
    [Arguments]     ${usr}  ${pass}    
    Set Selenium Implicit Wait  30
    Input Text                  ${CAMP_USR}     ${usr}
    Input Text                  ${CAMP_PSS}     ${pass}
    Click Element               ${SUBM_BUTTN}

Coletar mensagem de erro "${mensagem_erro}"
    Set Selenium Implicit Wait  30
    #Alert Should Be Present     Text='Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'   action=ACCEPT
    #Element Text Should Be      tag:simple-snack-bar   outerHTML=${mensagem_erro}
    Element Text Should Be      ${ALLERT_ELEMNT}   ${mensagem_erro}
    handle allert               accept
    #Click Element               class:mat-button

Clicar ok mensagem de erro
    #Set Selenium Timeout  4
    Set Selenium Implicit Wait  30
    #Click Element               class:mat-button
    #Click Element               class:mat-button-wrapper[value='OK']
    Click Element               ${ALLERT_ACCEPT}

Deslogar
    Set Selenium Implicit Wait  30
    Click Element               ${USER_BTTN}  
    Click Element               ${USER_ITEM}

Selecionar Projeto 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait  30
    Click Element               ${MAT_BUTTN_4}
    Click Element               ${ACCEPT_PRJCT}
Selecionar Projeto Professor 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait  30
    Click Element               ${MAT_BUTTN_3}
    Click Element               ${ACCEPT_PRJCT}