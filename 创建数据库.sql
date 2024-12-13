CREATE DATABASE IF NOT EXISTS blog_user DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE blog_user;

CREATE TABLE IF NOT EXISTS users (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE comment (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         username VARCHAR(50) NOT NULL,
                         content TEXT NOT NULL,
                         create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       title VARCHAR(255) NOT NULL,
                       content TEXT NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users (username, password) VALUES ('admin', 'root');