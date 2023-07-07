from flask import Flask, render_template, request
from datetime import datetime, timedelta

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        name = request.form['name']
        birthdate = datetime.strptime(request.form['birthdate'], '%Y-%m-%d')

        idade, meses_restantes, dias_restantes, horas = calcular_tempo_vida(birthdate)

        return render_template('Idade_calculator.html', name=name, idade=idade, meses_restantes=meses_restantes, dias_restantes=dias_restantes, horas=horas)
    return render_template('Idade_calculator.html')

def calcular_tempo_vida(data_nascimento):
    data_atual = datetime.now()

    dif = data_atual - data_nascimento

    idade_anos = dif.days // 365
    meses_totais = idade_anos * 12

    data_meses = data_nascimento + timedelta(days=dif.days)
    while data_meses < data_atual:
        data_meses += timedelta(days=30)
        meses_totais += 1

    dias_totais = dif.days
    horas = dif.days * 24

    return idade_anos, meses_totais, dias_totais, horas

if __name__ == '__main__':
    app.run(debug=True)
