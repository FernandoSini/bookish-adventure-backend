#from ibmjava:jre-alpine
#FROM maven:3.8.5-openjdk-17
from amazoncorretto:17-alpine
from maven:3.9-amazoncorretto-17 as maven
LABEL authors="Fernando Sinigaglia"

run mkdir /app
#adiciona os arquivos do pc local (seu pc) para o local do projeto no container
#copying the files from local system to container
#add . /app
add .. /app/bookish-adventure

#diretorio onde sera executado o app
workdir /app/bookish-adventure
# acessando o diretório e limpando ele
run cd /app/bookish-adventure
copy ./target/storeapikotlin.jar /app/bookish-adventure/target
run mvn clean install
#PRA REFERENCIAR O ARQUIVO JAR SEM NOME É USAR *.JAR


env API_PORT=9050
env MONGO_PORT=27017
env REDIS_PORT=6379
env MYSQL_PORT=3306
#expose 9050

#Roda o comando depois que o container terminar de inicializar
CMD ["java", "-jar", "/app/bookish-adventure/target/bookish-adventure.jar"]



