#base image

FROM python:3.11-alpine3.20

# Working Dir

WORKDIR /app

# Copy code

COPY . .

# Required libraries

RUN pip install -r requirements.txt

# Run

CMD ["python", "app.py"]

