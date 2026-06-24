# 프로젝트 제목 및 설명
팀원 : 1313양효민, 1310박태인

프로젝트 이름 : 부마-당근

프로젝트 주제 선정 이유 등 : 부소마고를 위한 교류하는 앱이 있으면 자신이 필요한 것을 쉽게 얻을수 있기 때문이다.

# 프로젝트 구조 설명
project/
 |--- .vscode
        |--- settings.json
 |--- mysql
        |--- conf
        |--- data
        |--- data.sql
        |--- Dokerfile
 |--- web
        |--- assets
                |--- chat.css
                |--- home.css
                |--- login.css
                |--- post.css
        |--- image
                |--- 벌레.jpeg
                |--- 사진기.jpeg
                |--- 승곤이.jpeg
                |--- 태인.jpeg
        |--- pages
                |--- chat.html
                |--- home.html
                |--- login.html
                |--- post.html
 |--- .gitignore
 |--- docker-compose.yml
 |--- README.md

# 기능
- 로그인(회원가입)
- 물건 사진과 설명을 적어 게시할 수 있음
- 현금,물물교환 형식으로 거래
- 채팅기능

# 기여 방법
양효민(조장) : home페이지 제작, 파일 관리 총괄, 역할 분담, README 작성
박태인 : chat페이지 제작, login페이지 제작, 수박게임하기




# 어려웠던 점 및 해결방법
작업해야 할게 산더미인데 태인이가 수박 합치기 게임을 하고있었다.

# 커밋메시지 양식                            
 **feat**     | 새로운 기능 추가                         
 **fix**      | 버그 수정                             
 **docs**     | 문서 수정                             
 **style**    | 코드 포멧팅, 세미콜론 누락,코드 변경이 없는 경우      
 **rafactor** | 코드 리팩토리                           
 **test**     | 테스트 코드,리팩토리 테스트 코드 추가             
 **chore**    | 빌드 업무 수정, 패키지 매니저 설정, Docker 설정 등