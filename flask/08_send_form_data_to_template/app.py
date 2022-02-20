from flask import Flask, render_template, request

app = Flask(__name__)

# FIXME enable debug
app.debug = True


@app.route("/")
def index():
    return render_template("student.html")


@app.route("/result", methods=["POST", "GET"])
def result():
    return render_template("result.html", result=request.form)


if __name__ == "__main__":
    app.run()
