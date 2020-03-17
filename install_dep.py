import sys
import os
from zipfile import ZipFile
# /\ Importacao de bibliotecas pre-instaladas com o python 
# \/ Instalacao de bibliotecas python para satisfacao das dependencias
os.system('pip3 install wget')
os.system('pip3 install requests2')
os.system('pip3 install pandas')
os.system('pip3 install lxml')
os.system('pip3 install beautifulsoup4')
os.system('pip3 install selenium')
#os.system('pip install zipfile') <- Modulo nao existe zip. Vem do modulo "import os"
import wget # Biblioteca para download de arquivos

#Cria pasta de despejo dos downloads
path = "./Instaladores"
#retval = os.getcwd()
#print ("Current working directory %s" % retval)
os.mkdir(path)
os.chdir(path)
print ("Diretorio './Instaladores' criado!")

# Baixa driver gecko do site oficial, necessario para rodar o selenium em firefox
def bar_custom(current, total, width=80):
    print("Downloading: %d%% [%d / %d] bytes" % (current / total * 100, current, total))
wget.download('https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-win64.zip', bar=bar_custom)
os.chdir("..")
#os.mkdir("./gecko") <- Diretorio ja e criado na descompressao abaixo
# Descomprime o driver na pasta /gecko
zip = ZipFile('./Instaladores/geckodriver-v0.26.0-win64.zip')
zip.extractall('./gecko')
os.chdir("./gecko")
newpathvar = os.getcwd()
os.system('setx PATH "%PATH%;'+newpathvar+'"')

print ("Diretorio:",newpathvar,"adicionado ao ambiente de variaveis do sistema.")
#os.system("set PATH=%PATH%;%s" % newpathvar)
