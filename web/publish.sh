yarn build
docker rm temp-container
docker create --platform linux/amd64 --name temp-container casbin/casdoor:v1.694.0
docker cp ./build/. temp-container:/web/build/
docker commit temp-container aslan-spock-register.qiniu.io/goplus/casdoor:v1.694.0
docker push aslan-spock-register.qiniu.io/goplus/casdoor:v1.694.0
docker rm temp-container
