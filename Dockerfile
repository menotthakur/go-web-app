# Stage 1
    #using go lang as base image

FROM golang:1.22.5 AS base 

WORKDIR /app

#dependencies of a go application stored in go.mod file
COPY go.mod .

#In future after upadates any dependencies of the application needed
RUN go mod download

#copy the source code on docker image
COPY . .


RUN go build -o main .

# Stage 2 ( not necessary But more secure and Distroless image)
# i.e less size
# Final stage using Distroless image for better security and reduced size

# popular distroless image "gcr.io"
FROM gcr.io/distroless/base 

COPY --from=base /app/main .

COPY --from=base /app/static ./static

#exposing port 8080
EXPOSE 8090
#running main  
CMD [ "./main" ]