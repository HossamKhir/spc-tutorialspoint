import os
from flask import Flask, render_template, request, flash
from forms import ContactFrom

app = Flask(__name__)
app.secret_key = os.environ["GITHUB_TOKEN"]

# FIXME enable debug
app.debug = True


@app.route("/contact", methods=["POST", "GET"])
def contact():
    form = ContactFrom()

    if request.method == "POST":
        if not form.validate():
            flash("All fields are required!")
            return render_template("contact.html", form=form)
        else:
            return "<h1>Form posted successfully!</h1>"
        # if form.validate():
        #     return "<h1>Form Posted Successfully</h1>"
        # flash("All Fields are required!")
        # return render_template("contact.html", form=form)
        # else:
        #     return "<h1>Form Posted Successfully</h1>"
    elif request.method == "GET":
        return render_template("contact.html", form=form)


if __name__ == "__main__":
    app.run()
