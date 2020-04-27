describe('Teste do menu de simulados nos perfís', ()=>{
    it('Simulados com Escola', ()=> {
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.logar_escola()
    })

    it('Acessar Simulados', ()=>{
        cy.acessa_menu_simulados()
    })
    it('Limpar Filtro', ()=>{
        cy.get('.aaf-panel-header-titulo > .clean').click()
    })
    it('Acessar Simulados Novamente', ()=>{
        cy.acessa_menu_simulados()
    })
    it('Acessar inserção de resultados', ()=>{
        // if(cy.get('.card-infos > .nome').contains('string', 'AI-LP-Simulado 1')){
        //     cy.contains('Inserir respostas').click()
        // } else (cy.get('.footer > :nth-child(1)').click())
        //cy.get('button').contains('Inserir respostas').click()
        cy.wait(3000)
        cy.get('.footer > :nth-child(1) > .mat-button-wrapper').click()
    })
    it('Selecionar Aluno', ()=>{
        cy.wait(3000)
        //cy.contains('Brenda Caroline Rodrigues').click()
        cy.get('mat-row.aluno:nth-child(4)').click()
        cy.get('#resposta_0 > :nth-child(3)').click()
        
    })

    it('Simulados com Professor', ()=> {
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.logar_professor()
    })

    it('Acessar Simulados', ()=>{
        cy.acessa_menu_simulados()
    })
    it('Limpar Filtro', ()=>{
        cy.get('.aaf-panel-header-titulo > .clean').click()
    })
    it('Acessar Simulados Novamente', ()=>{
        cy.acessa_menu_simulados()
    })
    it('Acessar inserção de resultados', ()=>{
        // if(cy.get('.card-infos > .nome').contains('string', 'AI-LP-Simulado 1')){
        //     cy.contains('Inserir respostas').click()
        // } else (cy.get('.footer > :nth-child(1)').click())
        //cy.get('button').contains('Inserir respostas').click()
        cy.wait(3000)
        cy.get('.footer > :nth-child(1) > .mat-button-wrapper').click()
    })
    it('Selecionar Aluno', ()=>{
        cy.wait(3000)
        //cy.contains('Brenda Caroline Rodrigues').click()
        cy.get('mat-row.aluno:nth-child(4)').click()
        cy.get('#resposta_0 > :nth-child(3)').click()
        
    })
    
})