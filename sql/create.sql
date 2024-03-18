DROP SCHEMA IF EXISTS socialLoginProject;
CREATE SCHEMA IF NOT EXISTS socialLoginProject DEFAULT CHARACTER SET utf8;
USE socialLoginProject;

DROP TABLE IF EXISTS socialLoginProject.UserInfos;

CREATE TABLE UserInfos (
  userId VARCHAR(60) PRIMARY KEY, -- What does this do?
  username VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
)

INSERT INTO UserInfos (userId, username, profileImg) VALUES
('user1', 'Dexter', '/IMG/profile1.jpg'),
('user2', 'Sophie', '/IMG/profile2.jpg'),
('user3', 'Aiden', '/IMG/profile3.jpg'),
('user4', 'Ethan', '/IMG/profile4.jpg'),
('user5', 'Colin', '/IMG/profile5.jpg');

-- Query 1
SELECT userId, username
FROM UserInfos
ORDER BY created DESC
LIMIT 1;

-- Query 2
SELECT username
FROM UserInfos
WHERE userId = 'asd';

-- Query 3
DELETE FROM UserInfos
WHERE username = '박근원';

-- Query 4
UPDATE UserInfos
SET userId = 'dsa'
WHERE username = '김기재';