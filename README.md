# Web Scraping teste automatizado com Python

Este projeto foi criado para testar quebras em aplicações e atualmente atende ao Aprova Brasil

## Começando

Estas instruções vão ajudar a preparar o ambiente para executar o script de automação

## Pré-requisito

Dependências para rodar os scripts Python e suas biliotecas

* Python 3.x (Também roda com Python 2.7)
* Geckodriver
* Firefox (Caso queira utilizar outro navegador precisa atualizar o script python com o endereço do novo driver e baixar o driver correspondente para o navegador escolhido, o Geckodriver serve somente para o Firefox.)


* Bibiotecas Python

## Instalação

### Instalação Automatica de Dependências

Para instalar as dependências, após instalar o Python rode num terminal o comando.
```
python install_dep.py
```
Feito isso você está pronto para rodar os scrips de teste automatizado, e pode ignorar os passos abaixo.

### Instalação Manual de Dependências:

- Abaixo seguem as bibliotecas Python necessárias pra rodar os scripts de teste.

 * **requests2** - Requests is the only Non-GMO HTTP library for Python, safe for human consumption;
 * **pandas** - A great Python Data Analysis Library;
 * **lxml** - Library for processing XML and HTML;
 * **beautfulsoup4** - Library for pulling data out of HTML and XML files;
 * **selenium** - An API to write functional/acceptance tests using Selenium WebDriver.

Com o CMD rode o seguinte comando caso precise instalar um pacote isolado:
```
pip install -r "nome_biblioteca_sem_aspas"
```
## Links para download das dependências
### Geckodriver 

[Você pode encontrar o arquivo do driver no seguinte link.](https://github.com/mozilla/geckodriver/releases)
- Não esqueça de descompactar o arquivo para a pasta \gecko\geckodriver.exe

### Python

[Baixe e instale o Python usando o arquivo de instalação no link.](https://www.python.org/downloads/)

## Rodando o script

```
python aprova_test.py
```

## Autor

* **Vitor Chaves**


