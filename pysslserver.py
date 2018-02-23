#!/usr/bin/env python3

# openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes

import http.server
import ssl
import os

os.chdir("./pub")

httpd = http.server.HTTPServer(('localhost', 8000), http.server.SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket (httpd.socket, certfile='../server.pem', server_side=True)
httpd.serve_forever()
