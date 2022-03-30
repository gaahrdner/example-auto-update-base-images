# set base image (host OS)
FROM python:3.10

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY app/requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY app/src/ .

# command to run on container start
CMD [ "python", "./server.py" ]