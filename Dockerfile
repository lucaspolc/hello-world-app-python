# Usando a imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o código da aplicação para o contêiner
COPY app.py /app

# Instalar as dependências
RUN pip install flask

# Expor a porta que o app vai rodar
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
