FROM python:3.15
# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY ./src /app

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]