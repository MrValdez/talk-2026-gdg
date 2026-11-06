from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<center><p>Hello GDG DevFest 2026!</p></center>"
