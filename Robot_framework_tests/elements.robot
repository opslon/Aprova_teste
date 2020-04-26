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
${MENU_CALENDAR_LINK}       https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/calendario
${MENU_RESULTADOS_LINK}     https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/resultados
${MENU_CADERNO_LINK}        https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/livro-digital

# caso acessar com o ID falhe use "Click Link ${CALENDAR_LINK}"
${CALENDAR_LINK}            /app/calendario
${RESULKTADOS_LINK}         /app/resultados
${CADERNO_LINK}             /app/livro-digital


#else
${FILTER_CLEAR}             class:clean
