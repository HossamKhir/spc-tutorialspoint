from flask import Flask, render_template, request
import sqlite3 as sql

app = Flask(__name__)
DATABASE_NAME = "database.db"

# FIXME enable debug
app.debug = True


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/enternew")
def new_student():
    return render_template("student.html")


@app.route("/addrec", methods=["POST", "GET"])
def addrec():
    if request.method == "POST":
        try:
            nm = request.form["nm"]
            addr = request.form["add"]
            city = request.form["city"]
            pin = request.form["pin"]
            with sql.connect(DATABASE_NAME) as con:
                cur = con.cursor()
                cur.execute(
                    """
                INSERT INTO student (name, addr, city, pin)
                VALUES (?, ?, ?, ?)
                """,
                    (
                        nm,
                        addr,
                        city,
                        pin,
                    ),
                )
                con.commit()
            msg = "Record successfully added"
        except:
            con.rollback()
            msg = "Error in insert operation"
        finally:
            con.close()
            return render_template("result.html", msg=msg)


@app.route("/list")
def list():
    con = sql.connect(DATABASE_NAME)
    con.row_factory = sql.Row

    cur = con.cursor()
    cur.execute("SELECT * FROM student")
    rows = cur.fetchall()
    cur.close()
    con.close()
    return render_template("list.html", rows=rows)


if __name__ == "__main__":
    app.run()
