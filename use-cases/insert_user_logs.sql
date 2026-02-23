START TRANSACTION;

-- Insert a user first (required before logs)
INSERT INTO users (username) VALUES ('cliff');

-- Check the inserted user ID
SELECT * FROM users;

-- Insert a valid activity log (should work)
INSERT INTO user_activity_logs (user_id, action)
VALUES (1, 'login');

-- View logs
SELECT * FROM user_activity_logs;

COMMIT