from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # para obter a variável de ambiente
    custom_var = os.getenv('MY_ENV_VAR', 'Não definida')
    return f'Hello World! A variável de ambiente MY_ENV_VAR é: {custom_var}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
