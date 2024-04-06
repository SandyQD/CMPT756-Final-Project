# Use an official Anaconda runtime as the base image
FROM continuumio/anaconda3:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create the environment based on the environment.yml file
RUN conda env create -f environment.yml

# Activate the environment
SHELL ["conda", "run", "-n", "myenv2", "/bin/bash", "-c"]

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Use Jupyter to run the notebook. Adjust the command if you're using JupyterLab or other tools.
CMD ["conda", "run", "-n", "myenv2", "jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
