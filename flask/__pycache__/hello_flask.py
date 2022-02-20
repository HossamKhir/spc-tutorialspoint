#! /usr/bin/env python3

from flask import Flask

app = Flask(__name__)
# FIXME debug mode
app.debug = True


@app.route("/hello")
def hello_world():
    return "Hello, World!"


if __name__ == "__main__":
    app.run()
