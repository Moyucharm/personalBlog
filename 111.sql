USE blog_user
CREATE TABLE comment (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         username VARCHAR(50) NOT NULL,
                         content TEXT NOT NULL,
                         create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
