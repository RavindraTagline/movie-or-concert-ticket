FROM python:3.10
ENV PYTHONUNBUFFERED=1
RUN python -m pip install -U pip

# set the working directory in the container
WORKDIR /code
COPY ./requirements.txt /code/

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . /code/
