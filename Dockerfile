
# Use the official Python 3.9 slim-buster image as the base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Set the command to run when the container starts
CMD [ "python", "app.py" ]
