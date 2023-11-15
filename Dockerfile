# # FROM alpine:latest

# RUN apk add --no-cache python3-dev py3-pip build-base && \
#     pip3 install --upgrade pip

# WORKDIR /app    

# COPY . /app

# RUN pip3 --no-cache-dir install -r requirements.txt

# EXPOSE 5000

# ENTRYPOINT [ "python3" ]

# CMD [ "code_model_training/train.py" ]




FROM python:3.10.0-alpine

WORKDIR /app    

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3" ]