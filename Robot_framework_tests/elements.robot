*** Variables ***
# LOGIN ELEMENTS
${CAMP_USR}                 css:input[formcontrolname=login]
${CAMP_PSS}                 css:input[formcontrolname=password]
${SUBM_BUTTN}               class:submit-button
${ALLERT_ELEMNT}            tag:simple-snack-bar
${ALLERT_ACCEPT}            css:button[mat-button]


# FIRST PAGE ELEMENTS
${USER_BTTN}                class:user-button
${USER_ITEM}                class:mat-menu-item


# PROJECT PAGE
${MAT_BUTTN_4}              css:mat-card.card-projetos-dialog:nth-child(4)
${MAT_BUTTN_3}              css:mat-card.card-projetos-dialog:nth-child(3)
${ACCEPT_PRJCT}             css:div.btn-projeto-dialog


# PANEL PAGE
${MENU_CALENDAR}            id:menu-calendario
${MENU_RESULTADOS}          id:menu-resultados
${MENU_CONTEUDOS}           id:menu-conteudos
${MENU_CADERNO}             id:menu-livro-digital
${MENU_SIMULADOS}           id:menu-simulados
${MENU_STATUS_AP}           id:menu-acompanhamento
${MENU_CALENDAR_LINK}       https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/calendario
${MENU_RESULTADOS_LINK}     https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/resultados
${MENU_CADERNO_LINK}        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/livro-digital
${MENU_SIMULADOS_LINK}      https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/simulados/listar

# caso acessar com o ID falhe use "Click Link ${CALENDAR_LINK}" 
# Links abaixo registrados como href="/app.."
${CALENDAR_LINK}            /app/calendario
${RESULKTADOS_LINK}         /app/resultados
${CADERNO_LINK}             /app/livro-digital
${SIMULADOS_LINK}           /app/simulados/listar


# SIMULADOS PAGE
${SEGMENTO_FILTRO_FUND1}    xpath=//span[contains(.,'Ensino Fundamental I')]
# ${simulados.ensino_fundamental_i}              css=#sidenav-filtros aaf-panel.aaf-panel.ng-tns-c26-8.aaf-expanded div.aaf-panel-content div.aaf-panel-body div:nth-of-type(1) div.content.h-100-p.ng-tns-c22-6.ng-trigger.ng-trigger-animate.ng-star-inserted div.nav.h-100-p div:nth-of-type(2) a.nav-link
${SEGMENTO_FILTRO_FUND2}    xpath=//span[contains(.,'Ensino Fundamental II')]
${ANO_FILTRO}               xpath=//span[contains(.,'1° ANO ')]
${SIMULADO_FILTRO}          xpath=//span[contains(.,'Simulado 1')]
${DISCIPLINA_FILTRO}        xpath=//span[contains(.,'Língua Portuguesa')]


# LANCAMENTO DE RESPOSTAS PAGE
${NOME_ALUNO}               xpath=//p[text()='Ana Lara Suttani De Morais Clemente']
${QST_1_A}                  xpath=(//span[text()=' B '])[1]

# STATUS DAS APLICACOES PAGE
#${FILTRO_SEG}               xpath=//span[text()='Segmento']
${FILTRO_SEG}               css:body.primary-800-bg.ng-tns-0-0:nth-child(2) mat-sidenav-container.mat-drawer-container.mat-sidenav-container mat-sidenav-content.mat-drawer-content.mat-sidenav-content.ng-star-inserted div.content-wrapper fuse-content.ng-tns-c9-1.ng-trigger.ng-trigger-routerTransitionUp app-acompanhamento.ng-tns-c19-6.ng-star-inserted div.page-layout.simple.fullwidth.ps.ps--active-y div.container div.widget-group div.ng-tns-c19-6:nth-child(1) div.filtros div.px-16:nth-child(2) mat-form-field.w-100-p.mat-form-field.ng-tns-c22-7.mat-primary.mat-form-field-type-mat-select.mat-form-field-appearance-legacy.mat-form-field-can-float.mat-form-field-hide-placeholder div.mat-form-field-wrapper div.mat-form-field-flex div.mat-form-field-infix mat-select.mat-select.ng-tns-c23-8.ng-tns-c19-6.ng-star-inserted div.mat-select-trigger > div.mat-select-value
#${FILTRO_SEG}               css:mat-select-value > ng-tns-c23-8
${FILTRO_DISC}              xpath=//span[contains(.,'Disciplina')]
${FILTRO_SEG_SELECT}        xpath=//span[contains(.,' Ensino Fundamental I ')]
${FILTRO_DISC_SELECT}       xpath=//span[contains(.,' Língua Portuguesa ')]


# Usado como contorno

${FILTER_CLEAR}             class:clean
${SIMULADO_CARD1}           css:div.simulado-content.LP div:nth-of-type(3) button:nth-of-type(1)
#${SIMULADO_CARD1}           css:simulado:nth-child(1).nome
#${SIMULADO_CARD1}           css:simulado:nth-child(1).nome[innerHTML='AI-LP-SIMULADO 1']
#css=.simulado:nth-child(1) .nome
#${SIMULADO_CARD1}           xpath=//div[. = 'AI-LP-SIMULADO 1']
#${SIMULADO_CARD1}           xpath:innerHTML

#${simulados.inserir_respostas_1}               css=#tela-simulados div.ng-star-inserted app-simulado-list.ng-tns-c24-10 div.simulado-list.ng-tns-c24-10.ng-trigger.ng-trigger-animateStagger.ng-star-inserted app-simulado-list-item:nth-of-type(1) div.simulado-content.LP div:nth-of-type(3) button:nth-of-type(1)

