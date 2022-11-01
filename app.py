import os
from flask import Flask
from flask import render_template
from plot import plot

app = Flask(__name__)

@app.route("/")
def render_plot():
    return render_template("index.html", plot_data=plot())

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
