# build docker image
docker build -t abidmunirmalik/python-flask-webapp .

# check docker image
docker images | grep python-flask-webapp

# run docker container
docker run -p 8888:5000 --name python-flask-webapp abidmunirmalik/python-flask-webapp 
