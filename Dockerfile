FROM python as clone

#Set Working Directory
WORKDIR /app

COPY python.py

#Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

#EXport port and Run app
EXPOSE 8080
CMD["python","python.py"]

