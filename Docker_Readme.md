# Flask Profile App

A simple Flask application containerized with Docker.

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your machine:
* [Git](https://git-scm.com/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (ensure the Docker daemon is running)

---

## 🚀 How to Run Locally

### 1. Clone the Repository

Open your terminal or command prompt and run the following commands to download the code:

```
git clone https://github.com/I-am-nk/Flask-profile-app.git
cd Flask-profile-app
```
## 2. Build the Docker Image

Run the following command to build the Docker image from the Dockerfile.  
We are tagging the image as `flask-profile-app`.

```
docker build -t flask-profile-app .
```

## 3. Run the Docker Container
Once the build is complete, start the container using the command below.
This maps port 5000 on your local machine to port 5000 inside the container.

```
docker run -p 5000:5000 flask-profile-app
```
## 4. Access the Application
Open your web browser and go to:
```
http://localhost:5000
```
