*** Settings ***
Resource                  elements.robot


*** Keywords ***
Acessar
    Open Browser        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net    firefox
    Maximize Browser Window
    Set Selenium Implicit Wait  30
    Click Link  /app

Login
    [Arguments]     ${usr}  ${pass}
    Set Selenium Implicit Wait      30
    Input Text                      ${CAMP_USR}     ${usr}
    Input Text                      ${CAMP_PSS}     ${pass}
    Click Element                   ${SUBM_BUTTN}

Coletar mensagem de erro "${mensagem_erro}"
    Set Selenium Implicit Wait      30
    #Alert Should Be Present        Text='Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!'   action=ACCEPT
    #Element Text Should Be         tag:simple-snack-bar   outerHTML=${mensagem_erro}
    Sleep    4
    Element Text Should Be          ${ALLERT_ELEMNT}   ${mensagem_erro}
    #handle allert                  accept
    Handle Alert                    accept
    #Click Element                  class:mat-button

Clicar ok mensagem de erro
    #Set Selenium Timeout           4
    Set Selenium Implicit Wait      30
    #Click Element                  class:mat-button
    #Click Element                  class:mat-button-wrapper[value='OK']
    Click Element                   ${ALLERT_ACCEPT}

Deslogar
    Set Selenium Implicit Wait      30
    Click Element                   ${USER_BTTN}  
    Click Element                   ${USER_ITEM}

Selecionar Projeto 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait      30
    Click Element                   ${MAT_BUTTN_4}
    Click Element                   ${ACCEPT_PRJCT}

Selecionar Projeto Professor 2020-Aprova_Demonstracao
    Set Selenium Implicit Wait      30
    Click Element                   ${MAT_BUTTN_3}
    Click Element                   ${ACCEPT_PRJCT}

Acessar Calendario
    Set Selenium Implicit Wait      30
    Click Element                   ${MENU_CALENDAR}
    Set Selenium Implicit Wait      30
    Location Should Contain         ${MENU_CALENDAR_LINK}

Acessar Resultados
    Set Selenium Implicit Wait      30
    Click Element                   ${MENU_RESULTADOS}
    Wait Until Element Is Visible   ${FILTER_CLEAR}
    Location Should Contain         ${MENU_RESULTADOS_LINK}

Acessar Cadernos
    Set Selenium Implicit Wait      30
    Mouse Over                      ${MENU_CONTEUDOS}
    Click Element                   ${MENU_CADERNO}
    Wait Until Element Is Visible   ${FILTER_CLEAR}
    Location Should Contain         ${MENU_CADERNO_LINK}

Acessar Simulados
    Set Selenium Implicit Wait      30
    Click Element                   ${MENU_SIMULADOS}
    Wait Until Element Is Visible   ${FILTER_CLEAR}
    Location Should Contain         ${MENU_SIMULADOS_LINK}

Acessar Lancamento Respostas
    Sleep                           5
    Go To                           https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/simulados/lancamento/173;instituicao=2915;ano=12;materia=1
    #Reload Page

Acessar Status Das Aplicacoes
    Set Selenium Implicit Wait      30
    Click Element                   ${MENU_STATUS_AP}

Filtrar Status Das Aplicacoes
    Click Element                   ${FILTRO_SEG}
    Click Element                   ${FILTRO_SEG_SELECT}
    Click Element                   ${FILTRO_DISC}
    Click Element                   ${FILTRO_DISC_SELECT}

Lancar resposta
    Set Selenium Implicit Wait      30
    Wait Until Element Is Visible   ${NOME_ALUNO}       timeout=10
    Click Element                   ${NOME_ALUNO}
    Set Selenium Implicit Wait      30
    Click Element                   ${QST_1_A}

Filtro Simulados
    Set Selenium Implicit Wait      30
    # Press Keys                      xpath=//*[.='xyz']          17  #CTRL
    # Press Keys                      xpath=//*[.='xyz']          45  #tecla menos
    # Press Keys                      xpath=//*[.='xyz']          45  #tecla menos
    Execute javascript  document.body.style.zoom="50%";
    Wait Until Element Is Visible   ${FILTER_CLEAR}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Click Element                   ${SEGMENTO_FILTRO_FUND1}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Click Element                   ${FILTER_CLEAR}
    Click Element                   ${SEGMENTO_FILTRO_FUND2}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Click Element                   ${FILTER_CLEAR}

    Click Element                   ${SEGMENTO_FILTRO_FUND1}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Click Element                   ${ANO_FILTRO}
    #Set Window Position             208     604
    #Execute javascript    document.getElementById('toolbar').style.top = Math.max(100, window.scrollY) + 'px'
    Get Vertical Position           ${SIMULADO_FILTRO}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Scroll Element Into View        ${SIMULADO_FILTRO}
    Click Element                   ${SIMULADO_FILTRO}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10
    Scroll Element Into View        ${DISCIPLINA_FILTRO}
    #Press Key                       xpath=//body    \ue00f
    Click Element                   ${DISCIPLINA_FILTRO}
    Wait Until Element Is Visible   ${SIMULADO_CARD1}       timeout=10