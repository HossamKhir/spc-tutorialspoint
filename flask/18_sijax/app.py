import os
import flask_sijax
from flask import Flask, render_template
from flask_sijax import Sijax, g

DEBUG = True
PATH = os.path.join(".", os.path.dirname(__file__), "static/js/sijax/")

app = Flask(__name__)
app.config["SIJAX_STATIC_PATH"] = PATH
app.config["SIJAX_JSON_URI"] = "/static/js/sijax/json2.js"

Sijax(app)


@app.route("/")
def index():
    return "<h1>Index</h1>"


@flask_sijax.route(app, "/hello")
def hello():
    def say_hi(obj_response):
        obj_response.alert("Hi There!")

    if g.sijax.is_sijax_request:
        g.sijax.register_callback("say_hi", say_hi)
        return g.sijax.process_request()
    return render_template("sijaxexample.html")


if __name__ == "__main__":
    app.run(debug=DEBUG)
