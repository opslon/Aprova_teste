describe('Teste cases de login invalido', () =>{

    it('Logar com Usuário e Senha incorretos', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('dema1')
        cy.get('#mat-input-1').type('dea1')
        cy.get('.submit-button').click()
        //cy.get('.mat-simple-snackbar').should('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')
        if (cy.get('.mat-simple-snackbar').contains('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')) {
            cy.get('.mat-simple-snackbar-action > .ng-tns-c22-8').click()    
        }
        

    })
   

})