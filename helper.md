
## build image and init cont
docker-compose up -d --build   

docker-compose -p loginCore up -d -build

## delete cont
docker-compose down

docer-compose -p loginCore down

## build image
docker-compose build login-postgres

## init cont
docker-compose up -d

## git cmd
git rm --cached login-core-database.env