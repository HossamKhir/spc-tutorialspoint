from flask import Flask, render_template

app = Flask(__name__)

# FIXME enable debug
app.debug = True


@app.route("/hello/<user>/")
def index(user):
    return render_template("hello.html", name=user)


@app.route("/hello/<int:score>/")
def hello_score(score):
    return render_template("score.html", marks=score)


@app.route("/result/")
def result():
    res = {"phy": 50, "che": 60, "math": 70}
    return render_template("result.html", result=res)


if __name__ == "__main__":
    app.run()
