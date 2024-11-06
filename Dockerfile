# Base image
FROM python:3.7

# Working directory
WORKDIR /app

# Code copy
COPY . /app

# Install libraries

RUN pip install -r requirments.txt

# Migrations
RUN python cool_counters/manage.py migrate

# run app
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]

~  
