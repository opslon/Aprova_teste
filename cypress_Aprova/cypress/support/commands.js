// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add("login", (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add("drag", { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add("dismiss", { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite("visit", (originalFn, url, options) => { ... })
Cypress.Commands.add('acessa_aprova', () => {
    cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
    cy.get('.btn').click()
})

Cypress.Commands.add('ap_logar_rede', ()=>{
    //cy.get('.btn').click()
    cy.get('#mat-input-0').type('Rede')
    cy.get('#mat-input-1').type('at04')
    expect(cy.get('.submit-button')).to.exist
    // if (cy.get('.submit-button').not('exist')) {
    //     cy.wait(1000)
    // }
    cy.get('.submit-button').click()
    // VERIFICA SE PROJETO CARREGOU
    expect(cy.get('.lista-projetos-dialog > :nth-child(4)')).to.exist
    // if (cy.get('.lista-projetos-dialog > :nth-child(4)').not('exist')) {
    //     cy.wait(4000)
    // }
    // SELECIONA PROJETO
    cy.get('.lista-projetos-dialog > :nth-child(4)').click()
    cy.get('.btn-projeto-dialog > .btn').click()
})

Cypress.Commands.add('ap_logar_escola', ()=>{
    //cy.get('.btn').click()
    cy.get('#mat-input-0').type('demo1')
    cy.get('#mat-input-1').type('deo1')
    expect(cy.get('.submit-button')).to.exist
    // if (cy.get('.submit-button').not('exist')) {
    //     cy.wait(1000)
    // }
    cy.get('.submit-button').click()
    // VERIFICA SE PROJETO CARREGOU
    expect(cy.get('.lista-projetos-dialog > :nth-child(4)')).to.exist
    // if (cy.get('.lista-projetos-dialog > :nth-child(4)').not('exist')) {
    //     cy.wait(4000)
    // }
    // SELECIONA PROJETO
    cy.get('.lista-projetos-dialog > :nth-child(4)').click()
    cy.get('.btn-projeto-dialog > .btn').click()
})

Cypress.Commands.add('ap_logar_professor', ()=>{
    //cy.get('.btn').click()
    cy.get('#mat-input-0').type('293124@avalia.com')
    cy.get('#mat-input-1').type('ZTVEHB')
    // VERIFICA SE O SUBMIT FOI CRIADO
    expect('.submit-button').to.exist
    // if (cy.get('.submit-button').not('exist')) {
    //     cy.wait(1000)
    // }
    cy.get('.submit-button').click()

    // VERIFICA SE PROJETO CARREGOU
    expect('.lista-projetos-dialog > :nth-child(3)').to.exist
    // if (cy.get('.lista-projetos-dialog > :nth-child(3)').not('exist')) {
    //     cy.wait(4000)
    // }
    // SELECIONA PROJETO
    cy.get('.lista-projetos-dialog > :nth-child(3)').click()
    cy.get('.btn-projeto-dialog > .btn').click()
})

Cypress.Commands.add('ap_acessa_menu_calendario', ()=>{
    cy.get('#menu-calendario').click()

    expect(cy.contains('Simulados')).to.exist

    // if (cy.contains('Simulados').not('exist')) {
    //     cy.wait(4000)
    // }

    cy.contains('Simulados').click()
})

Cypress.Commands.add('ap_acessa_menu_resultados', ()=>{
    cy.get('#menu-resultados').click()

    // VERIFICA EXISTENCIA DO FILTRO E REALIZA FILTRO
    expect(cy.get('.aaf-panel-header-titulo > .clean')).to.exist 
        
    expect(cy.contains('Ensino Fundamental I')).to.exist
    // if (cy.contains('Ensino Fundamental I').should("not.be.visible")) {
    //     cy.wait(3000)
    // }

    cy.contains('Ensino Fundamental I').click()
    cy.contains('3° ANO ').click()
    cy.contains('Simulado 1').click()
    cy.contains('Língua Portuguesa').click()

    //cy.scrollTo("top")
    // LIMPA FILTRO
    cy.get('.aaf-panel-header-titulo > .clean').click()
})

Cypress.Commands.add('ap_acessa_menu_status_aplicacao', () =>{
    cy.get('#menu-acompanhamento').click()
    
    expect(cy.get('#mat-select-1 > .mat-select-trigger > .mat-select-value')).to.exist

    //FILTRA SEGMENTO
    cy.get('#mat-select-1 > .mat-select-trigger > .mat-select-value').click()
    //FUND 1
    cy.get('#mat-option-6 > .mat-option-text').click()
    //FILTRA DISCLIPLINA
    cy.get('#mat-select-2 > .mat-select-trigger > .mat-select-value').click()
    //LINGUA PORTUGUESA
    cy.get('#mat-option-8 > .mat-option-text').click()
    //SIMULADO 1
    cy.contains('Simulado 1').click()

})

Cypress.Commands.add('ap_acessa_menu_simulados', ()=>{
    cy.get('#menu-simulados').click()

    expect(cy.contains('Ensino Fundamental I')).to.exist

    // if (cy.contains('Ensino Fundamental I').not('exist')){
    //     cy.wait(3000)
    // }

    cy.contains('Ensino Fundamental I').click()
    cy.contains('3° ANO ').click()
    cy.contains('Simulado 1').click()
    cy.contains('Língua Portuguesa').click()
    
})