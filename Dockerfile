#Base Python image 
FROM python:3.11

#Installing pip requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Setting up the working directory in our container
WORKDIR /progetto
COPY . /progetto

#Exposing port where our container will run
EXPOSE 8000

CMD [ "python", "/progetto/off_chain/main.py" ]

