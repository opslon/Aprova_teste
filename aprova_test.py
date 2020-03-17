# -*- encoding: utf-8 -*-

#   BIBLIOTÉCAS NECESSÁRIAS
import requests
import pandas as pd
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import json
import selenium
import time

#   Pegar conteúdo HTML a partir da URL
url = "https://web-avaliadigital-aprovabrasil-prd.azurewebsites.net/app/login"

option = Options()
option.headless = True
driver = webdriver.Firefox(executable_path=r'./gecko/geckodriver')

driver.get(url)

#   HOME SCREEN
time.sleep(1)
driver.find_element_by_xpath("//input[@id='mat-input-0']").send_keys("demo1")
time.sleep(1)
driver.find_element_by_xpath("//input[@id='mat-input-1']").send_keys("deo1")
time.sleep(1)
driver.find_element_by_xpath("//button[@class='submit-button mat-raised-button ng-tns-c19-5 mat-accent ng-star-inserted']").click()

#   TELA DE PROJETO
time.sleep(7)
#driver.find_element_by_css_selector(".card-projetos-dialog:nth-child(4) .projetos-dialog-tipo-projeto").click()
#/\ Botão hora clica, hora não clica
driver.find_element_by_css_selector("mat-card.card-projetos-dialog:nth-child(4)").click()

time.sleep(1)
driver.find_element_by_css_selector(".mat-button").click()
# \/ Referência antiga do botão
#driver.find_element_by_xpath("//button[@class='btn-blue mat-stroked-button mat-button']").click()

#   PRIMEIRA TELA
time.sleep(5)
driver.find_element_by_xpath("//a[@href='/app/simulados/listar']").click()
# \/ CAMINHOS ALTERNATIVOS
#driver.find_element_by_css_selector("#menu-simulados > .nav-link-title").click()
#driver.find_element_by_xpath("//a[@id='menu-simulados']").click()
# =======================
time.sleep(5)
#driver.find_element_by_xpath("//span[contains(.,'Inserir respostas')]").click()
#driver.find_element_by_css_selector(".simulado:nth-child(1) .mb-xs-20:nth-child(1) > .mat-button-wrapper").click()
#driver.find_element_by_css_selector("body.primary-800-bg.ng-tns-0-0:nth-child(2) mat-sidenav-container.mat-drawer-container.mat-sidenav-container mat-sidenav-content.mat-drawer-content.mat-sidenav-content.ng-star-inserted div.content-wrapper fuse-content.ng-tns-c9-1.ng-trigger.ng-trigger-routerTransitionUp app-simulados.ng-star-inserted div.page-layout.simple.fullwidth.ps.ps--active-x.ps--active-y div.container div.mb-40 div.simulados-list div.ng-star-inserted app-simulado-list.ng-tns-c24-9 div.simulado-list.ng-tns-c24-9.ng-trigger.ng-trigger-animateStagger.ng-star-inserted app-simulado-list-item.simulado.ng-tns-c24-9.ng-trigger.ng-trigger-animate.ng-star-inserted:nth-child(1) div.simulado-content.LP div.footer > button.mb-xs-20.mat-flat-button.mat-accent.ng-star-inserted").click()
#driver.find_element_by_xpath("//span[@text='Inserir respostas']")
#select.select_by_visible_text("Inserir respostas").click()
driver.find_element_by_css_selector("app-simulado-list-item.simulado:nth-child(1) > div:nth-child(1) > div:nth-child(3) > button:nth-child(1) > span:nth-child(1)").click()


