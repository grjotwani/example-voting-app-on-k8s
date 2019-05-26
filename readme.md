Overview : 
Deploying to GKE
Create pods
Create clusterIp internal services
Create loadbalancer external services

Voting app:

vote stored in redis
vote processed by worker
worker takes vote an dupdats postgres db
result app shows counts from postgres

uses python, nodeJs, redis, postgres


invalid now example:
run all containers by themselves
 ex.
 voting app:
 # published on port 5000 on host
 docker run -d --name=redis redis

 docker run -d --name=vote -p 5000:80 voting-app
 # voting app needs access to redis container:
    hence we use --link
docker run -d --name=vote -p 5000:80 --link redis:redis voting-app 
docker run -d --name=result -p 5000:80 result-app

Note: labelling services doesnt really matter because no one is referring to them in their yml as targets