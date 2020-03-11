import sys
import os
cmd = 'pip install requests2'
os.system(cmd)

'''
pip install -r wget
pip install -r requests2
pip install -r pandas
pip install -r lxml
pip install -r beautifulsoup4
pip install -r selenium
pip install -r ZipFile
'''

'''
import wget
path = "/Instaladores"

retval = os.getcwd()
print "Current working directory %s" % retval

os.mkdir(path)
os.chdir(path)

#print "Diretorio '/Instaladores' criado!"

def bar_custom(current, total, width=80):
    print("Downloading: %d%% [%d / %d] bytes" % (current / total * 100, current, total))
wget.download('https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-win64.zip', bar=bar_custom)

os.chdir("..");

zip = ZipFile('/Instaladores/geckodriver-v0.26.0-win64.zip')
zip.extractall('/gecko')
'''