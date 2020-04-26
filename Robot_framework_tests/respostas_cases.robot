*** Settings ***
Documentation   Testes dos casos de Lançamento de Respostas Aprova
Library                   SeleniumLibrary
Resource                  keywrds.robot

Suite Setup     Acessar
#Suite Teardown  Close Browser

*** Test Cases ***

Respostas com Professor
    Login
    ...     293124@avalia.com   ZTVEHB
    Selecionar Projeto Professor 2020-Aprova_Demonstracao
    Acessar Lancamento Respostas
    Lancar resposta