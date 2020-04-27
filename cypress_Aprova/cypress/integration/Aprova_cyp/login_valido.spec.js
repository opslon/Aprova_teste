describe('Teste cases de login', function TC_L () {
    it('Logar com Rede', function LC_R() {
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('Rede')
        cy.get('#mat-input-1').type('at04')
        cy.get('.submit-button').click()
        //cy.get('[data-cy=submit]').click()
        // SELECIONA PROJETO
        cy.get('.lista-projetos-dialog > :nth-child(4)').click()
        cy.get('.btn-projeto-dialog > .btn').click()
        // DESLOGAR
        cy.get('.user-button > .ml-14').click()
        cy.get('.mat-menu-item').click()

    });
    it('Logar com Escola', () =>{
        //cy.viewport(1366, 768)
        cy.get('#mat-input-0').type('demo1')
        cy.get('#mat-input-1').type('deo1')
        cy.get('.submit-button').click()
        //cy.get('[data-cy=submit]').click()
        // SELECIONA PROJETO
        cy.get('.lista-projetos-dialog > :nth-child(4)').click()
        cy.get('.btn-projeto-dialog > .btn').click()
        // DESLOGAR
        cy.get('.user-button > .ml-14').click()
        cy.get('.mat-menu-item').click()

    })
    it('Logar com Professor', () =>{
        //cy.viewport(1366, 768)
        cy.get('#mat-input-0').type('293124@avalia.com')
        cy.get('#mat-input-1').type('ZTVEHB')
        cy.get('.submit-button').click()
        //cy.get('[data-cy=submit]').click()
        // SELECIONA PROJETO
        cy.get('.lista-projetos-dialog > :nth-child(3)').click()
        cy.get('.btn-projeto-dialog > .btn').click()
        // DESLOGAR
        cy.get('.user-button > .ml-14').click()
        cy.get('.mat-menu-item').click()

    })

});