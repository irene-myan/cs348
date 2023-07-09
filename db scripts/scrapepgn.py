from bs4 import BeautifulSoup

import urllib.request, urllib.error, urllib.parse
import os, zipfile
from tqdm import tqdm


url = 'https://www.pgnmentor.com/files.html'
response = urllib.request.urlopen(url)
webContent = response.read().decode('UTF-8')
soup = BeautifulSoup(webContent, 'html.parser')
tables = soup.findAll('table')

games = []
for table in tables:
    for tr in table.findAll('tr'):
        temp = tr.find('a')
        if temp:
            href = temp['href']
            if "openings" not in href:
                break
            if "#" not in href:
                print(href)
                games.append(href)

d = 'pgns/'
if not os.path.exists(d):
    os.mkdir(d)

for pgn in tqdm(games):
    url = 'https://www.pgnmentor.com/' + pgn
    file_name = os.path.basename(d + pgn)
    
    if os.path.exists(d + file_name[:-4] + ".pgn"):
        continue

    urllib.request.urlretrieve(url, file_name)
    
    file_name = os.path.abspath(file_name)
    zip_ref = zipfile.ZipFile(file_name)
    zip_ref.extractall(d)
    zip_ref.close()
    os.remove(file_name)