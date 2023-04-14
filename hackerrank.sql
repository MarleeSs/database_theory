CREATE DATABASE hackerrank;

-- Solution Contest Leaderboard

CREATE TABLE Hackers
(
    hacker_id INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(255) NOT NULL
);

CREATE TABLE Submissions
(
    submission_id INT AUTO_INCREMENT PRIMARY KEY,
    hacker_id     INT NOT NULL,
    challenge_id  INT NOT NULL,
    score         INT NOT NULL
);

SELECT Hackers.hacker_id, Hackers.name, sum(sscore)
FROM Hackers
         INNER JOIN (SELECT Submissions.hacker_id, max(score) AS sscore
                     FROM Submissions
                     GROUP BY Submissions.hacker_id, Submissions.challenge_id) st on Hackers.hacker_id = st.hacker_id
GROUP BY Hackers.hacker_id, Hackers.name
HAVING sum(sscore) > 0
ORDER BY sum(sscore) DESC, Hackers.hacker_id;

-- Solution Top Competitors

CREATE TABLE Difficulty
(
    difficulty_level INT NOT NULL,
    score            INT NOT NULL
);

CREATE TABLE Challenges
(
    challenge_id     INT PRIMARY KEY NOT NULL,
    hacker_id        INT             NOT NULL,
    difficulty_level INT             NOT NULL,

    FOREIGN KEY (hacker_id) REFERENCES Hackers (hacker_id)
);

SELECT Hackers.hacker_id,
       Hackers.name
FROM Submissions
         JOIN Challenges
              ON Submissions.challenge_id = Challenges.challenge_id
         JOIN Difficulty
              ON Challenges.difficulty_level = Difficulty.difficulty_level
         JOIN Hackers
              ON Submissions.hacker_id = Hackers.hacker_id
                  AND Submissions.score = Difficulty.score
GROUP BY Hackers.hacker_id, Hackers.name

HAVING Count(Submissions.hacker_id) > 1
ORDER BY Count(Submissions.hacker_id) DESC, Submissions.hacker_id;

SELECT h.hacker_id,
       h.name,
       COUNT(c.challenge_id) AS c_count
FROM Hackers h
         JOIN Challenges c ON c.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING c_count =
       (SELECT COUNT(c2.challenge_id) AS c_max
        FROM challenges as c2
        GROUP BY c2.hacker_id
        ORDER BY c_max DESC
        limit 1)

    OR c_count IN
       (SELECT DISTINCT c_compare AS c_unique
        FROM (SELECT COUNT(challenge_id) AS c_compare
              FROM Hackers h2
                       JOIN Challenges c ON c.hacker_id = h2.hacker_id
              GROUP BY h2.hacker_id, h2.name) counts
        GROUP BY c_compare
        HAVING COUNT(c_compare) = 1)

ORDER BY c_count DESC, h.hacker_id;