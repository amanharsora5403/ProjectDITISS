FROM openjdk:8
EXPOSE 8080
ADD target/springboot-project-bennett.jar springboot-project-bennett.jar
ENTRYPOINT ["java","-jar","/springboot-project-bennett.jar"]
<<<<<<< HEAD
#####
=======
#######
>>>>>>> d53c6f826626dca41c47d8a9842b5c474f90f250
