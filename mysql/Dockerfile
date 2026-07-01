FROM mysql:8.0

# 2. [수정할 필요 없음]
# 내 컴퓨터의 mysql/conf 폴더 안에 설정 파일이 있다면 컨테이너 안으로 복사합니다.

# 3. [수정할 필요 없음]
# 컨테이너가 처음 켜질 때 data.sql(테이블 생성, 초기 데이터)이 자동으로 실행되도록 복사합니다.
COPY ./data.sql /docker-entrypoint-initdb.d/