CREATE DATABASE wp_base;
DROP USER ''@'localhost';
CREATE USER 'naben-za'@'localhost' IDENTIFIED BY 'qwerty';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON *.* TO 'naben-za'@'localhost';
FLUSH PRIVILEGES;