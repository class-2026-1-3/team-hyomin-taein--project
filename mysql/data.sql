-- 1. 사용자 테이블 (회원가입/로그인, 사용자 등급 관리)
CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,          -- 학생 아이디 또는 학번
    password VARCHAR(255) NOT NULL,           -- 비밀번호
    name VARCHAR(50) NOT NULL,                -- 이름
    user_grade INT DEFAULT 1,                 -- 사용자 등급 (예: 1등급, 2등급 등)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. 중고거래 게시글 테이블 (물건 사진, 설명, 거래형식)
CREATE TABLE posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL,             -- 작성자 ID
    title VARCHAR(100) NOT NULL,              -- 글 제목
    content TEXT NOT NULL,                    -- 물건 설명
    price INT DEFAULT 0,                      -- 가격 (물물교환 시 0원 또는 비워둠)
    trade_type ENUM('CASH', 'BARTER') NOT NULL, -- 거래 방식 (현금 / 물물교환)
    image_url VARCHAR(255),                   -- 물건 사진 주소(URL)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- 3. 채팅방 테이블 (채팅 기능 - 방 생성)
CREATE TABLE chat_rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,                     -- 어떤 게시글의 채팅방인지
    buyer_id VARCHAR(50) NOT NULL,            -- 구매를 원하는 학생
    seller_id VARCHAR(50) NOT NULL,           -- 판매하는 학생
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (buyer_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (seller_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- 4. 채팅 메시지 테이블 (채팅 기능 - 메시지 전송)
CREATE TABLE chat_messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,                     -- 소속된 채팅방 ID
    sender_id VARCHAR(50) NOT NULL,           -- 메시지 보낸 사람
    message TEXT NOT NULL,                    -- 대화 내용
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (room_id) REFERENCES chat_rooms(room_id) ON DELETE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES users(user_id) ON DELETE CASCADE
);