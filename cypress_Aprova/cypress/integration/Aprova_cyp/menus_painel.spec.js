//import TC_L from './login_valido.spec.js';

describe('Teste dos menus no painel principal por usuário', () =>{

    it('Menus com usuário de Rede',()=>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.logar_rede()
    })

    it('Acessar Calendário', () =>{
        cy.acessa_menu_calendario()
    })

    it('Acessar Resultados', () =>{
        cy.acessa_menu_resultados()
    })

    it('Acessar Status Aplicação', () =>{
        cy.acessa_menu_status_aplicacao()
    })
    
    it('Menus com usuário de Escola',()=>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.logar_escola()
    })

    it('Acessar Calendário', () =>{
        cy.acessa_menu_calendario()
    })

    it('Acessar Resultados', () =>{
        cy.acessa_menu_resultados()
    })
    
    it('Acessar Status Aplicação', () =>{
        cy.acessa_menu_status_aplicacao()
    })

    it('Menus com usuário de Professor',()=>{
        cy.visit('https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net')
        cy.logar_professor()
    })

    it('Acessar Calendário', () =>{
        cy.acessa_menu_calendario()
    })

    it('Acessar Resultados', () =>{
        cy.acessa_menu_resultados()
    })
    
    it('Acessar Status Aplicação', () =>{
        cy.acessa_menu_status_aplicacao()
    })

})