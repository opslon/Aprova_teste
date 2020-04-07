*** Settings ***
Documentation   Teste 1
Library                   SeleniumLibrary
#Library                   AngularJSLibrary
#Library                   ngWebDriver
Resource                  keywrds.robot

Suite Setup     Acessar
Suite Teardown  Close Browser
#Test Teardown   Capture Page Screenshot
#Test Teardown   Reload Page

*** Test Cases ***

# Testar casos invalidos
Login invalido
    [Tags]      --critical
    Login
    ...     dema1   dea1
    Coletar mensagem de erro "Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!/nOK"
    Clicar ok mensagem de erro
    
    
Login campo vazio login
    Reload Page
    Login
    ...     ${EMPTY}   dea1
Login campo vazio senha
    Reload Page
    Login
    ...     dema1   ${EMPTY}
Login campo vazio login e senha
    Reload Page
    Login
    ...     ${EMPTY}   ${EMPTY}
Login errado senha certa
    Reload Page
    Login
    ...     dema1   deo1
Senha errada login certo
    Reload Page
    Login
    ...     demo1   dea1    

# Testar casos de login valido
Logar com Rede
    Reload Page
    Login
    ...     Rede   at04
    Selecionar Projeto 2020-Aprova_Demonstracao
    Deslogar
Logar com Escola
    Login
    ...     demo1   deo1
    Selecionar Projeto 2020-Aprova_Demonstracao
    Deslogar
Logar com Professor
    Login
    ...     293124@avalia.com   ZTVEHB
    Selecionar Projeto Professor 2020-Aprova_Demonstracao
    Deslogar

