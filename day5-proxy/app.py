import os
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
    container_id = os.uname()[1]
    client_ip = request.headers.get('X-Forwarded-For', request.remote_addr)
    return f"<h3>[Production Traffic Router]</h3><p>Served by Container: <b>{container_id}</b></p><p>Client Forwarded IP: <b>{client_ip}</b></p>\n"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
