FROM python:3.11-slim

WORKDIR /app

# Copie des dépendances et installation
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du reste du code source
COPY . .

EXPOSE 4000

CMD ["python", "main.py"]
