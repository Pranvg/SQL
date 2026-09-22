USE instagram;

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    age INT CHECK (age >= 13),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT
);

INSERT INTO users
(id, age, name, email)
VALUES
(10, 10, "random", "bob@yahoo.in");



INSERT INTO users
(id, age, name, email, followers, following)
VALUES
(1, 14, "adam", "adam@yahoo.in", 123, 145),
(2, 15, "bob", "bob@yahoo.in", 200, 200),
(3, 16, "casey", "casey@yahoo.in", 300, 306),
(4, 17, "pranav", "pranav@yahoo.in", 200, 105);

#SELECT DISTINCT age FROM users; 

SELECT name, followers
FROM users
WHERE age < 16;


CREATE TABLE IF NOT EXISTS post (
    id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);








SELECT name, followers, email
FROM users
WHERE email IN ("adam@yahoo.in", "bob@yahoo.in", "abc@gmail.com");
