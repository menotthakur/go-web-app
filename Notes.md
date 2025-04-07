

#Containerizing --> Dockerfile

-create dockerfile
    -Stage 1 to build file
    -Stage 2 to add more security and make distroless(small size) image
-Build & Test ( docker build -t methakur/go-web-app:v1 . ) (docker run -p 8080:8080 -it methakur/go-web-app:v1)

