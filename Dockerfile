FROM python:3.9 
WORKDIR /app 
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       libpq-dev \
    && rm -rf /var/lib/apt/lists/* 
COPY . /app        
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt 
CMD ["python","app.py"]