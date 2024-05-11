FROM python:3.11.4-slim-bullseye

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /first_project

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy the project
COPY . .