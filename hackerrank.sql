CREATE DATABASE hackerrank;

CREATE TABLE Hackers (
    hacker_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Submissions (
    submission_id INT AUTO_INCREMENT PRIMARY KEY,
    hacker_id INT NOT NULL,
    challenge_id INT NOT NULL,
    score INT NOT NULL
);