*** Settings ***
Documentation   Testes dos casos de Simulados Aprova
Library                   SeleniumLibrary
Resource                  keywrds.robot

Suite Setup     Acessar
#Suite Teardown  Close Browser

*** Test Cases ***

Simulados com Escola
    Login
    ...     demo1   deo1
    Selecionar Projeto 2020-Aprova_Demonstracao
    Acessar Simulados
    Filtro Simulados

