# Python
FROM python:3.9-slim

# Diretório
WORKDIR /app

# COPY para Container
COPY app.py /app

# Instalar as dependências
RUN pip install flask

# Expor a porta que o app vai rodar
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
