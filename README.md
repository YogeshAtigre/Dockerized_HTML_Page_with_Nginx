 Dockerized HTML Page with Nginx

This project demonstrates how to Dockerize a simple HTML page served by Nginx. The HTML page contains a message, and the Nginx web server serves it on port 80.

Files

- index.html A basic HTML page with a message "Any message you want".
- nginx.conf The Nginx configuration file that tells Nginx to serve the `index.html` page on port 80.
- Dockerfile The Dockerfile that defines the image, using the official Nginx image, copies the `index.html` and `nginx.conf` into the container, and starts the Nginx server.

## Steps to Build and Run

Clone the repository :
   git clone https://github.com/YogeshAtigre/Dockerized_HTML_Page_with_Nginx

Build the Docker image:
docker build -t <image-name> .

Run the Docker container:
docker run -p 8080:80 <image-name>
Push to AWS ECR:

Create a public ECR repository in AWS Console.
Login to ECR:
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/<public-repo-id>

Tag the image:
docker tag my-dockerized-html-page:latest public.ecr.aws/f8g8h5d4/my-dockerized-html-page:latest

Push the image to ECR:

docker push public.ecr.aws/<repo-name>/<image-name>:latest

To run Compose :
docker compose up   (Note , please go through the docker compose file in the github repo)

By following these guidelines, you’ll create a comprehensive `README.md` that explains all aspects of your project clearly, ensuring that others (or even you) can understand, build, and use the project in the future.
