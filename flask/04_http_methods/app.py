from flask import Flask, redirect, url_for, request

app = Flask(__name__)

# FIXME enable debug
app.debug = True


@app.route("/success/<name>")
def success(name):
    return f"Welcome, {name}"


@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        user = request.form["nm"]
    else:
        user = request.args.get("nm")

    return redirect(url_for("success", name=user))


if __name__ == "__main__":
    app.run()
