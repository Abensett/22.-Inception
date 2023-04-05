from flask import Flask, render_template

app = Flask(__name__)

@app.route('/static')
def index():
    return render_template('index.html', static_url_path='/static')

if __name__ == '__main__':
    app.run()