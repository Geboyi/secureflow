# CK-01 remediation: upgraded base image from python:3.9-slim to python:3.12-slim
FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# CK-02 / IV-05 remediation: create and use non-root user
RUN groupadd -r -g 10001 app && useradd -r -u 10001 -g app app

COPY app.py .

USER app

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:5000/health')" || exit 1

CMD ["python", "app.py"]