describe('Meu primeiro Teste do Aprova no cypress', () =>{

    it('Acessar o Aprova e Logar', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('demo1')
        cy.get('#mat-input-1').type('deo1')
        cy.get('.submit-button').click()
        // SELECIONA PROJETO
        cy.get('.lista-projetos-dialog > :nth-child(4)').click()
        cy.get('.btn-projeto-dialog > .btn').click()

    })
    it('Acessar Menu Status das Aplicacoes', () =>{
        cy.viewport(1366, 768)
        // SELECIONA MENU => STATUS DAS APLICAÇÕES
        cy.get('#menu-acompanhamento').click()
        cy.wait(10000)
        // FILTRA SEGMENTO
        cy.get('#mat-select-0 > .mat-select-trigger > .mat-select-value').click()
        // FUND 1
        cy.get('#mat-option-2 > .mat-option-text').click()
        // FILTRA DISCIPLINA
        cy.get('#mat-select-1 > .mat-select-trigger > .mat-select-value').click()
        // LÍNGUA PORTUGUESA
        cy.get('#mat-option-4 > .mat-option-text').click()
        // SIMULADO 1
        cy.get(':nth-child(1) > .aaf-card-disciplina > .card-disciplina-content').click()
        
    })

})