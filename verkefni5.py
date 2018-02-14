from bottle import run, route, template, static_file, error
import requests
import os


response = requests.get('http://apis.is/concerts')

data = response.json()

print(data['results'][0]['eventHallName'])

@route('/')
def index5():
    return template('index5', data=data)

@route('/static/<filename>')
def static_server(filename):
    return static_file(filename, root=('./static_files'))

run(host="0.0.0.0", port=int(os.environ.get("PORT")))
