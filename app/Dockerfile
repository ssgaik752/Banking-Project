FROM python:3.9
WORKDIR /app
COPY banking-app.py .
RUN pip install flask boto3
CMD ["python", "banking-app.py"]
