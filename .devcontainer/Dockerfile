FROM mcr.microsoft.com/devcontainers/python:3.12

# Copy requirements and install in user's home directory
COPY requirements.txt /tmp/requirements.txt
COPY .devcontainer/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

USER vscode

RUN /tmp/setup.sh

RUN pip install --upgrade pip && \
  pip install -r /tmp/requirements.txt





