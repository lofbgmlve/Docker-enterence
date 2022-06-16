FROM node:16-alpine

# 16은 node 버전, alpine은 작은단위의 리눅스의 단위

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY index.js .

ENTRYPOINT ["node" , "index.js"] 

#터미널에 작성하는 코드
# docker build -f Dockerfile -t fun-docker .
# -f 파일을 지정해 주는 것, -t 는이미지의 이름을 부여해주는 것.
#docker images
#docker run -d -p 8080:8080 fun-docker
#docker ps
