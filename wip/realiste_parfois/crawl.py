import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin

visited = set()

def crawl(url, depth=1):
    if depth == 0 or url in visited:
        return
    visited.add(url)
    print(" " * (3 - depth) * 2 + url)
    try:
        resp = requests.get(url, timeout=5)
        soup = BeautifulSoup(resp.text, "html.parser")
        for link in soup.find_all("a", href=True):
            new_url = urljoin(url, link["href"])
            if new_url.startswith("http"):
                crawl(new_url, depth - 1)
    except:
        pass

crawl("http://challenge01.root-me.org/realiste/ch3/", depth=10)
