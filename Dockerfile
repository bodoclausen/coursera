ARG IMAGE_VARIANT=slim-bookworm
ARG PYTHON_VERSION=3.8
# 3.7 for C1
FROM python:${PYTHON_VERSION}-${IMAGE_VARIANT}


RUN apt-get update && apt-get upgrade -y
RUN apt-get install procps curl gcc -y

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["jupyter", "notebook",  "--ip",  "0.0.0.0",  "--no-browser"  , "--allow-root"]
