import os
from flask import Flask
from flask_mail import Mail, Message

app = Flask(__name__)

app.config["MAIL_SERVER"] = "smtp.gmail.com"
app.config["MAIL_PORT"] = 465
app.config["MAIL_USERNAME"] = os.environ["MAIL_USERNAME"]
app.config["MAIL_PASSWORD"] = os.environ["MAIL_PASSWORD"]
app.config["MAIL_USE_TLS"] = False
app.config["MAIL_USE_SSL"] = True

mail = Mail(app)

# FIXME enable debug
app.debug = True


@app.route("/")
def index():
    msg = Message(
        "Hello", sender="h.khair95@gmail.com", recipients=["hossam.khir1@outlook.com"]
    )
    msg.body = "Hello, Flask! message sent from Flask-Mail"
    mail.send(msg)
    return "Sent!"


if __name__ == "__main__":
    app.run()
