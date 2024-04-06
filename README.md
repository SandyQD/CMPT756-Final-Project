# CMPT756-Final-Project Setup Instructions

## Step 1: Prepare Your Application

Ensure your `Dockerfile`, `environment.yml`, and Jupyter notebook are in the project directory.  
Install Google Cloud SDK on your local machine.

## Step 2: Initialize GCP and Authenticate

gcloud auth login<br>
gcloud config set project YOUR_PROJECT_ID

## Step 3: Enable Required Services

gcloud services enable cloudbuild.googleapis.com<br>
gcloud services enable run.googleapis.com

## Step 4: Submit Build to Cloud Build

gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/notebook-app

## Step 5: Deploy to Cloud Run

cloud run deploy notebook-service --image gcr.io/YOUR_PROJECT_ID/notebook-app --platform managed --allow-unauthenticated --port 8888


## Step 6: Access Your Notebook

After deployment, use the URL provided by Cloud Run to access your notebook. <br> 
Check the Cloud Run service logs for the Jupyter token URL if required.


