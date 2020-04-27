*** Settings ***
Documentation   Testes dos casos de Lançamento de Respostas Aprova
Library                   SeleniumLibrary
Resource                  keywrds.robot

Suite Setup     Acessar
#Suite Teardown  Close Browser

*** Test Cases ***

Status com Rede
    Login
    ...     Rede   at04
    Selecionar Projeto 2020-Aprova_Demonstracao
    Acessar Status Das Aplicacoes
    Filtrar Status Das Aplicacoes