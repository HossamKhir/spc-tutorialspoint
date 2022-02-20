from flask import Flask

app = Flask(__name__)
# FIXME enable debug
app.debug = True

# defining routes
@app.route("/hello")
def hello_world():
    return "Hello, World!"


# alternatively
def bye_ms_american_pie():
    return "Bye, Bye! Miss American Pie!"


app.add_url_rule("/pie", view_func=bye_ms_american_pie)

if __name__ == "__main__":
    app.run()
