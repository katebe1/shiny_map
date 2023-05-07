VERSION := 0.0.1
IMAGE_NAME := shinytestapp
EXPOSED_PORT := 5849

dev: 
	docker build -f Dockerfile-dev -t ${IMAGE_NAME}:${VERSION}-dev  .
	docker run -d -p ${EXPOSED_PORT}:3838 -v ${PWD}/app:/root/app -v ${PWD}/Rprofile.site:/usr/lib/R/etc/Rprofile.site --name ${IMAGE_NAME} ${IMAGE_NAME}:${VERSION}-dev

stop:
	docker stop ${IMAGE_NAME}
	docker rm ${IMAGE_NAME}

logs:
	docker logs --tail=20 -f ${IMAGE_NAME}
