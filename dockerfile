# Use the official Python base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the index directory to the container
COPY index index

# Copy the app.py file to the container
COPY app.py .
COPY secret_key.py .


# Set the command to run your Streamlit app
CMD ["streamlit", "run", "app.py"]
