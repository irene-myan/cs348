from bs4 import BeautifulSoup

import urllib.request, urllib.error, urllib.parse
import os
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
    try:
        urllib.request.urlretrieve(url, d + os.path.basename(pgn))
    except:
        print(url)
        pass
