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
    
    Login
    ...     dema1   dea1
    Coletar mensagem de erro "Usuário ou senha não coincidem com um usuário válido ou sua conta foi bloqueada!"
    Clicar ok mensagem de erro
    
Login campo vazio usuario
    Reload Page
    Login
    ...     ${EMPTY}   dea1

#Testar casos de login valido
# Logar com Rede
#     Login
#     ...     Rede   at04
#     Selecionar Projeto 2020-Aprova_Demonstracao
#     Deslogar
# Logar com Escola
#     Login
#     ...     demo1   deo1
#     Selecionar Projeto 2020-Aprova_Demonstracao
#     Deslogar
# Logar com Professor
#     Login
#     ...     293124@avalia.com   ZTVEHB
#     Selecionar Projeto Professor 2020-Aprova_Demonstracao
#     Deslogar

