from flask import (
    Flask,
    Response
)


app = Flask(__name__)


@app.route('/')
def get_homepage():
    return Response('Hello from app1.')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
