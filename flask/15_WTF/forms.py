from flask_wtf import Form
from wtforms import (
    StringField,
    IntegerField,
    TextAreaField,
    SubmitField,
    RadioField,
    SelectField,
    validators,
    ValidationError,
)


class ContactFrom(Form):
    name = StringField(
        "Name of Student", [validators.InputRequired("Please, enter your name!")]
    )
    gender = RadioField("Gender", choices=[("M", "Male"), ("F", "Female")])
    address = TextAreaField("Address")
    email = StringField(
        "Email",
        [
            validators.InputRequired("Please, enter your email address!"),
            validators.Email("Please, enter your email address!"),
        ],
    )
    age = IntegerField("Age")
    language = SelectField(
        "Languages",
        choices=[("cpp", "C++"), ("py", "Python")]
    )
    submit = SubmitField("Send")
