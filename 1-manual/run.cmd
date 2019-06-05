docker build -f ./src/DutchAzureMeetup.WebApp/Dockerfile . -t romeimages.azurecr.io/expertslive-ui:1

docker build -f src/DutchAzureMeetup.WebApi/Dockerfile . -t romeimages.azurecr.io/expertslive-api:1


docker run -it -p 8585:80 -e ConnectionStrings__DutchAzureMeetupContext="" romeimages.azurecr.io/expertslive-api:1
docker run -it -p 8585:80 romeimages.azurecr.io/expertslive-api:1

docker login romeimages.azurecr.io -u romeimages -p p/FMW

docker push romeimages.azurecr.io/expertslive-api:1