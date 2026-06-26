FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python -c "from rembg import new_session; new_session('u2net')"

CMD ["uvicorn", "main:app", "--host", "::", "--port", "8080"]