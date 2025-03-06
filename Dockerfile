FROM python:3.7

# Create a non-root user and set permissions
RUN useradd -m rcatt
USER rcatt

# Set the working directory
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Initialize NLTK
COPY init_nltk.py /app
RUN python init_nltk.py

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 80 available to the world outside this container
EXPOSE 5000

# Expose classification_tools/data as a volume
VOLUME ["/app/classification_tools/data"]

# Run app.py when the container launches
CMD ["python", "rcATT_gui.py"]
