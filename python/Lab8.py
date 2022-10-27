import requests
from bs4 import BeautifulSoup

response = requests.get(
        url = "https://www.dictionary.com/e/word-of-the-day/"
)
soup = BeautifulSoup(response.content, 'html.parser')
word = soup.find('div', {'class': "wotd-item"})
parent = soup.find(id="otd-item-headword__pos")
html = parent

with open("output.html", "w", encoding='utf-8') as file:
    file.write(str(soup.prettify()))
>>>>>>> f76f2ffb03cf76df7960cb54f5ab0e7f9f5815cb
