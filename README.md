### Run from source

./gradlew clean run
curl http://localhost:8080/

### Build using Dockerfile

./gradlew build
docker build . -t bstick12/navcon-docker:latest
docker run -d -p 8080:8080 bstick12/navcon-local:latest 
curl http://localhost:8080/

### Deploy using CF push

./gradlew build
cf push
curl http://navcon.cfapps.io/

### Deploy using K8s

kubectl apply -f k8s-manifest.yml
kubectl rollout status deployment navcon -w

get the external ip address

curl http://<external-ip>/

### Building with pack command

pack build navcon-pack --buildpack /Users/bnolan/workspace/samples/gradle-buildpack --path /Users/bnolan/workspace/bstick12/navcon-sample

docker run -d -p 8080:8080 bstick12/navcon-pack
curl http://localhost:8080/







