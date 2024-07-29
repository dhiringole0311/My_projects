#base image

FROM openjdk:17-alpine

# Working Dir

WORKDIR /app

# Copy code into container

COPY src/Main.java /app/Main.java

#Compile code 

RUN javac Main.java

# Run

CMD ["java", "Main"]

