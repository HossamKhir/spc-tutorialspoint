from flask import Flask

app = Flask(__name__)

# FIXME enable debugging
app.debug = True


@app.route("/hello/<string:name>")
def hello_name(name):
    return f"Hello, {name}"


@app.route("/blog/<int:blogID>")
def show_blog(blogID):
    return f"Blog No. {blogID}"


@app.route("/rev/<float:revNo>")
def revision(revNo):
    return f"Revision Number {revNo}"


@app.route("/flask")
def hello_flask():
    return "Hello, Flask!"


# Canonical URL
@app.route("/python/")
def hello_python():
    return "Hello, Python!"


if __name__ == "__main__":
    app.run()
