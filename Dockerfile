FROM python:3.9-slim

RUN mkdir /srv/www/

ADD ./ /srv/www/

WORKDIR /srv/www/

ENV GRPC_PYTHON_VERSION 1.39.0
RUN python -m pip install --upgrade pip
RUN pip install grpcio==${GRPC_PYTHON_VERSION} grpcio-tools==${GRPC_PYTHON_VERSION} grpcio-reflection==${GRPC_PYTHON_VERSION} grpcio-health-checking==${GRPC_PYTHON_VERSION} grpcio-testing==${GRPC_PYTHON_VERSION}

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["main.py"]
