from datetime import datetime, timedelta

def calcular_idade(data_nascimento):
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


nome = input('Nome: ')
data_nascimento = datetime(int(input('Ano: ')), int(input('Mes: ')), int(input('Dia: ')))

anos, meses, dias, horas = calcular_idade(data_nascimento)

print(f'{nome} tem {anos} anos ou {meses} meses ou {dias} dias ou {horas} horas de vida.')
