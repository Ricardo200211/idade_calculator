from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello World!"
    return idade_anos, meses_totais, dias_totais, horas

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=3000, debug=True)
