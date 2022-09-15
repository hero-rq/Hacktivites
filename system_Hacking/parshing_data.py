from http.server import HTTPServer, BaseHTTPRequestHandler
import urllib.parse as parse

class ServerHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header('content-type', 'text/html')
        self.end_headers()
        self.wfile.write('<p>hello world</p>'.encode())
        self.wfile.write(self.path.encode())
        self.wfile.write('<br>'.encode())
        if '?' in self.path:
            self.wfile.write(str(self.path.split('?')[1].split('&')).encode())
            print(parse.parse_qsl(self.path.split('?')[1]))
            print(dict(parse.parse_qsl(self.path.split('?')[1])))

    def do_POST(self):
        pass   


PORT = 8080
server = HTTPServer(('',PORT), ServerHandler)
print(f'서버가 {PORT}로 진행되고 있습니다.')
server.serve_forever() 
