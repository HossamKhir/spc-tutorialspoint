import os
from flask import Flask, flash, redirect, render_template, request, url_for

app = Flask(__name__)
app.secret_key = os.environ["GITHUB_TOKEN"]

# FIXME enable debug
app.debug = True


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/login", methods=["POST", "GET"])
def login():
    error = None
    if request.method == "POST":
        if request.form["username"] != "admin" or \
                request.form["password"] != "admin":
            error = "Invalid username or password. Please try again!"
        else:
            flash("you were successfully logged in!")
            return redirect(url_for("index"))
    return render_template("login.html", error=error)


if __name__ == "__main__":
    app.run()
