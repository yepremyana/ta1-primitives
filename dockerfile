FROM registry.datadrivendiscovery.org/jpl/docker_images/complete:ubuntu-bionic-python36-v2019.6.7

# RUN pip install --upgrade pip

RUN pip uninstall -y featuretools

copy . /featuretools_ta1

RUN pip install -e featuretools_ta1

ADD runtime.py /usr/local/lib/python3.6/dist-packages/d3m/runtime.py

ADD construct_predictions.py /src/common-primitives/common_primitives/construct_predictions.py
