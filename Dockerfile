FROM ubuntu:20.04 as base
# RUN addgroup -S spring && adduser -S spring -G spring
RUN apt update -y
RUN apt upgrade 
RUN apt install default-jdk -y
COPY . /var/www/java  
WORKDIR /var/www/java  
RUN javac PrimeiraClasse.java  
CMD ["java", "PrimeiraClasse"] 