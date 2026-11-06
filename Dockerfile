FROM python:3.14.7-slim-bookworm

WORKDIR /app

COPY . .

EXPOSE 8080

RUN groupadd kuriboh
RUN useradd -ms /bin/bash -g kuriboh kuriboh

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

USER kuriboh

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8080"]
