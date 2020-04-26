*** Settings ***
Documentation   Testes dos casos de Painel principal Aprova
Library                   SeleniumLibrary
Resource                  keywrds.robot

Suite Setup     Acessar
Suite Teardown  Close Browser

*** Test Cases ***

Calendario com Rede
    Login
    ...     Rede   at04
    Selecionar Projeto 2020-Aprova_Demonstracao
    Acessar Calendario
    Acessar Resultados
    Deslogar

Calendario com Escola
    Login
    ...     demo1   deo1
    Selecionar Projeto 2020-Aprova_Demonstracao
    Acessar Calendario
    Acessar Resultados
    Acessar Cadernos
    Deslogar
Calendario com Professor
    Login
    ...     293124@avalia.com   ZTVEHB
    Selecionar Projeto Professor 2020-Aprova_Demonstracao
    Acessar Calendario
    Acessar Resultados
    Acessar Cadernos
    Deslogar
