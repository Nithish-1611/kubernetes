FROM python:3.9

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the container
COPY ./requirements.txt /code/requirements.txt

# Install dependencies without using cache
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy application files to the working directory
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html

# Expose the port the app will run on
EXPOSE 80

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
