from typing import Union, Any

import requests

from bs4 import BeautifulSoup, PageElement

r = requests.get('https://www.dictionary.com/e/word-of-the-day/').content
soup = BeautifulSoup(r, "lxml")

headings = soup.find_all('div', class_='otd-item-headword__word')

word = []
definition =[]

for head in headings:
    word = head.find('h1').text.strip()
    definition = head.find_next_sibling('div', class_='otd-item-headword__pos').text.strip()

print("The word of the day is %s and it means %s" % {word, definition})


