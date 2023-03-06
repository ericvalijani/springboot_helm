# springboot_helm

docker build --no-cache -t springdemo:spring-demo .
docker image ls |grep springdemo
docker tag springdemo:spring-demo novinrepo:8082/docker/springdemo:0.1.0
docker push  novinrepo:8082/docker/springdemo:0.1.0

helm create springboot
.
.
.
helm template springboot
helm lint springboot
helm install springboot --debug --dry-run springboot
helm install myfirstspringboot springboot
helm list -a
kubectl get all

curl 10.43.48.243:8080/saber
