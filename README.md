# fastapiDockerImageAction
to create docker image using github actions and push to docker hub

# to build docker image and tag 

`docker build -t localfastapiapp  .`

To update tag for docker hub
 `docker tag localfastapiapp DOCERKHUB_USERNAME/APPNAME`

like if my username is `prateekrajgautam` and i want to name app `demoapp`
`docker tag localfastapiapp prateekrajgautam/demoapp`
optionally you can tag image with version like
`docker tag localfastapiapp prateekrajgautam/demoapp:v1`
or
`docker tag localfastapiapp prateekrajgautam/demoapp:1.2.0`

# next login to docker hub
 > go to dockerhub account under > account settings > create token with read write and delete access with a 30 day lifetime

 login to docker hub cli using TOKEN and USERNAME
 `echo TOKEN | docker login -u USERNAME --stdin-passwd`

 now you can push your image to docker hub with
 `docker push prateekrajgautam/demoapp`

 go to your docker hub account under repositories and check if image is available

 now you can run this app on any machine with docker using
 `docker run DOCKERHUB_USERNAME/APPNAME` 
 as we are running web server on port 8000
 so we need to map this as
 `docker run -p 8001:8000 DOCKERHUB_USERNAME/APPNAME`
 now check on `127.0.0.1:8001` in your browser





 docker token 
it needs to be secret
 `<DOCKERHUB_TOKEN>`

 we can login using this token like this

 `docker login -u prateekrajgautam` however we need to type password here in cli

 so we run 
 `echo <DOCKERHUB_TOKEN> | docker login -u prateekrajgautam --password-stdin`

 now i can push this docker image to docker hub but we need to change image name 

 any one can use this command to run this image
`docker run -p 8005:8000 prateekrajgautam/demoapp:v1`

last thing here is to remove docker token for security