-- Creates a MySQL server with:
--   Database hbnb_test_db.
--   User hbnb_test with password hbnb_test_pwd in localhost.
--   Grants all privileges for hbnb_test on hbnb_test_db.
--   Grants SELECT privilege for hbnb_test on performance_schema.


-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create the user if it doesn't exist and set the password
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privileges on hbnb_test_db to hbnb_test
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on performance_schema to hbnb_test
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

-- Flush privileges to apply the changes
FLUSH PRIVILEGES;