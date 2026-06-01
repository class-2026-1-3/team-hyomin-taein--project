-- 1. 사용자 테이블
CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,          -- 학생 아이디 또는 학번
    password VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL,
    manner_temperature DECIMAL(3,1) DEFAULT 36.5 -- 사용자 등급(매너온도)
);

-- 2. 게시글 테이블
CREATE TABLE posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(50),
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    price INT DEFAULT 0,
    trade_type ENUM('CASH', 'BARTER') NOT NULL, -- 현금 또는 물물교환
    image_url VARCHAR(255),
    status ENUM('SELLING', 'RESERVED', 'SOLD') DEFAULT 'SELLING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
)