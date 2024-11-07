ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY src .

EXPOSE 3000
CMD [ "uvicorn", "main:app" , "--port", "3000"]
