
describe('Teste com Professor no Aprova',() => {
    it('Acessar login Professor', () => {
        cy.acessa_aprova()
        cy.ap_logar_professor()
    })

    it('Testar menus', () => {
        cy.ap_acessa_menu_calendario()
        cy.ap_acessa_menu_resultados()
        cy.ap_acessa_menu_status_aplicacao()
        cy.ap_acessa_menu_simulados()
        
    })

})