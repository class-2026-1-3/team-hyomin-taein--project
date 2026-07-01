FROM nginx:alpine

# 2. [수정할 필요 없음] 
# 현재 web 폴더의 전체 구조(assets, image, pages)를 컨테이너 안으로 통째로 복사합니다.
# 이렇게 해야 HTML 안의 ../image/나 ../assets/ 같은 경로가 깨지지 않고 그대로 작동합니다.
COPY . /usr/share/nginx/html/

# 3. [기본값 80] Nginx 웹 서버의 기본 포트입니다.
# 만약 호스트(내 컴퓨터) 포트를 바꾸고 싶다면, 여기가 아니라 
# 최상위 'docker-compose.yml' 파일의 ports 부분("80:80")에서 앞의 80을 바꾸셔야 합니다.
EXPOSE 80