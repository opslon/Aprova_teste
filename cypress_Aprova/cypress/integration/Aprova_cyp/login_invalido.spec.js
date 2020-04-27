describe('Teste cases de login invalido', () =>{

    it('Logar com Usuário e Senha incorretos', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('dema1')
        cy.get('#mat-input-1').type('dea1')
        cy.get('.submit-button').click()
        //cy.get('.mat-simple-snackbar').should('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')
        // VERIFICA MENSAGEM DE ERRO
        if (cy.get('.mat-simple-snackbar').contains('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')) {
            // CONFIRMA MSG DE ERRO -> CLICA BOTÃO 'OK'
            cy.get('.mat-simple-snackbar-action > .ng-tns-c22-8').click()    
        }
        
    })

    it('Logar com Usuário vazio e Senha incorreta', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').should('have.value', '')
        cy.get('#mat-input-1').type('dea1')
        cy.get('.submit-button').should('be.disabled')
        //cy.get('.mat-simple-snackbar').should('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')
        // VERIFICA MENSAGEM DE ERRO
        //cy.get('#mat-error-0').should('contain', 'Login é obrigatório') 
    })

    it('Logar com Usuário e Senha vazios', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').should('have.value', '')
        cy.get('#mat-input-1').should('have.value', '')
        cy.get('.submit-button').should('be.disabled')
    })

        it('Logar com Usuário incorreto e Senha correta', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('dema1')
        cy.get('#mat-input-1').type('deo1')
        cy.get('.submit-button').click()
        //cy.get('.mat-simple-snackbar').should('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')
        // VERIFICA MENSAGEM DE ERRO
        if (cy.get('.mat-simple-snackbar').contains('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')) {
            // CONFIRMA MSG DE ERRO -> CLICA BOTÃO 'OK'
            cy.get('.mat-simple-snackbar-action > .ng-tns-c22-8').click()    
        }
        
    })

    it('Logar com Usuário correto e Senha errada', () =>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        //cy.viewport(1366, 768)
        cy.get('.btn').click()
        cy.get('#mat-input-0').type('demo1')
        cy.get('#mat-input-1').type('dea1')
        cy.get('.submit-button').click()
        //cy.get('.mat-simple-snackbar').should('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')
        // VERIFICA MENSAGEM DE ERRO
        if (cy.get('.mat-simple-snackbar').contains('Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!')) {
            // CONFIRMA MSG DE ERRO -> CLICA BOTÃO 'OK'
            cy.get('.mat-simple-snackbar-action > .ng-tns-c22-8').click()    
        }
        
    })
   

})