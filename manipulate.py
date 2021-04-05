from bs4 import BeautifulSoup

with open('/vagrant/landing-page/index.html') as f:  
    soup = BeautifulSoup(f, 'lxml')

m = soup.find('header').strong
print(m)

m.string = "Hello World ! This title is manipulated with BS4"
print(m)
# print(soup)

with open("/vagrant/landing-page/index.html", "w") as file:
    file.write(str(soup.prettify()))