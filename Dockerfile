FROM python:3.11-slim
WORKDIR /app
RUN pip install --no-cache-dir -U "g4f[api]"
EXPOSE 8080
CMD ["python", "-c", "from g4f.api import run_api; run_api(host='0.0.0.0', port=8080)"]
