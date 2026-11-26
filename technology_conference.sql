--create table
CREATE TABLE sessions (
  id INTEGER,
  title TEXT,
  speaker TEXT,
  session_date DATE
);

--insert rows
INSERT INTO sessions(id, speaker, title, session_date)
VALUES (1, "Maya Chen", "Intro to Data Visualization", '2026-05-01');

INSERT INTO sessions(id, speaker, title, session_date)
VALUES (2, "Jordan Patal", "Building Reliable APIs", '2026-05-02');

INSERT INTO sessions(id, speaker, title, session_date)
VALUES (3, "Elena Rivera", "Cybersecurity Basics for Teams", '2026-05-03');

--update jordan patal's title
UPDATE sessions
SET title = "Building Reliable REST APIs"
WHERE id = 2;

--to view the info of jordan patal
SELECT title
FROM sessions
WHERE speaker = "Jordan Patal";

--assign conference room numbers
ALTER TABLE sessions
ADD COLUMN room TEXT;

--assign the room numbers to speakers
UPDATE sessions
SET room = 'Room A'
WHERE id = 1;

UPDATE sessions
SET room = 'Room B'
WHERE id = 2;

UPDATE sessions
SET room = 'Room C'
WHERE id = 3;

--delete elena rivera's session
DELETE FROM sessions
WHERE speaker = "Elena Rivera";

--adding phone number 
ALTER TABLE sessions
ADD COLUMN phone_number INTEGER;

--give phn numbers to everyone
UPDATE sessions
SET phone_number = 121
WHERE speaker = 'Maya Chen';

UPDATE sessions
SET phone_number = 456
WHERE speaker = 'Jordan Patal';

--add three more speakers
INSERT INTO sessions (id, title, speaker, session_date, room, phone_number)
VALUES (3, "Blood Test Users", "Allison Grey", "2026-05-07", "Room C", 789);

INSERT INTO sessions (id, title, speaker, session_date, room, phone_number)
VALUES (4, "Civilization and Its end", "Christofer Madison", "2026-05-10", "Room D", 199);

INSERT INTO sessions (id, title, speaker, session_date, room, phone_number)
VALUES (5, "Social Media Community", "Gordon Cook", "2026-05-19", "Room E", 564);

--final output
SELECT * FROM sessions;





