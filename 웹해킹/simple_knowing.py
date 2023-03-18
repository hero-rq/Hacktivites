import requests
from bs4 import BeautifulSoup
from collections import Counter

PAGE_URL = 'http://165.22.116.45:30439'

resp = requests.get(PAGE_URL)
soup = BeautifulSoup(resp.content, 'html.parser')
html_str = soup.get_text()
print(html_str)

word_list = html_str.split()  
word_counts = Counter(word_list)

top_n = 5
for word, count in word_counts.most_common(top_n):
    print(f'{word}: {count}')
