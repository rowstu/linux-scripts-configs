#!/usr/bin/python2

from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer


class S(BaseHTTPRequestHandler):
    def _set_headers(self):
        self.send_response(200)
        self.send_header('Content-Type','text/html')
        self.end_headers()

    def do_GET(self):
        self._set_headers()
        self.wfile.write("<html><body><h1>Yes</h1><p>%s</p></body></html>" %(self.headers))

    def go_POST(self):
        self._set_headers()
        self.wfile.write("<html></html>")

port = 5000


def run(server_class=HTTPServer, handler_class=S, port=port):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print 'starting http...'
    httpd.serve_forever()


if __name__ == '__main__':
    run()

