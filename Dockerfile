# Use the official Ubuntu image as a base
FROM ubuntu:latest

# Update the package list and install GCC
RUN apt-get update && apt-get install -y gcc

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Compile the C program
RUN gcc -o myprog myprog.c

EXPOSE 8080

# Run the executable
CMD ["./myprog"]
