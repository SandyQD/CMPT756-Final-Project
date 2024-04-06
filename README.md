# CMPT756-Final-Project
# Step 1: Prepare Your Application
# Ensure your Dockerfile, environment.yml, and Jupyter notebook are ready in the project directory.
# Make sure Google Cloud SDK is installed on your local machine.

# Step 2: Initialize GCP and Authenticate
gcloud auth login
gcloud config set project YOUR_PROJECT_ID

# Step 3: Enable Required Services
gcloud services enable cloudbuild.googleapis.com
gcloud services enable run.googleapis.com

# Step 4: Submit Build to Cloud Build
gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/notebook-app

# Step 5: Deploy to Cloud Run
gcloud run deploy notebook-service --image gcr.io/YOUR_PROJECT_ID/notebook-app --platform managed --allow-unauthenticated --port 8888

# Step 6: Access Your Notebook
# After deployment, use the URL provided by Cloud Run to access your notebook.
# Check the logs of your Cloud Run service for the Jupyter token URL if required.
