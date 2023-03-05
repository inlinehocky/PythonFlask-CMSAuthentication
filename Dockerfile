FROM python:3.7-alpine

WORKDIR C:\Users\Steve\source\repos\PythonFlask-CMSAuthentication/

COPY ./requirements.txt .

RUN ["pip", "install", "-r", "./requirements.txt"]

COPY . .

RUN addgroup -S projects && adduser -S -H projects -G projects
RUN chown -R projects:projects /src/app
USER projects
