import os
from flask import Flask, redirect, request, session, url_for

app = Flask(__name__)
# setting secret key
app.secret_key = os.environ["GITHUB_TOKEN"]


# FIXME enable debug
app.debug = True


@app.route("/")
def index():
    if "username" in session:
        username = session["username"]
        return f"""
        Logged in as {username}!<br />
        <b><a href='/logout'>Click here to logout!</a></b>
        """
    return """
    Your are not logged in!<br />
    <a href='/login'><b>Click here to login!</b></a>
    """


@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        session["username"] = request.form["username"]
        return redirect(url_for("index"))
    return """
    <form action="" method="post">
    <p><input type="text" name="username" /></p>
    <p><input type="submit" value="Login" /></p>
    </form>
    """


@app.route("/logout")
def logout():
    session.pop("username", None)
    return redirect(url_for("index"))


if __name__ == "__main__":
    app.run()
