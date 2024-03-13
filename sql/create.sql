CREATE TABLE UserInfos (
  userId VARCHAR(60) PRIMARY KEY, -- What does this do?
  username VARCHAR(20),
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
)

INSERT INTO UserInfos (userId, username, profileImg, created, updated) VALUES
('user1', 'Dexter', '/IMG/profile1.jpg', '2024-01-01 01:00:00', '2024-01-01 01:00:00'),
('user2', 'Sophie', '/IMG/profile2.jpg', '2024-01-01 02:00:00', '2024-01-01 02:00:00'),
('user3', 'Aiden', '/IMG/profile3.jpg', '2024-01-01 03:00:00', '2024-01-01 03:00:00'),
('user4', 'Ethan', '/IMG/profile4.jpg', '2024-01-01 04:00:00', '2024-01-01 04:00:00'),
('user5', 'Colin', '/IMG/profile5.jpg', '2024-01-01 05:00:00', '2024-01-01 05:00:00');

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