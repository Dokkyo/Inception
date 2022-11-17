CREATE DATABASE wp_base;
CREATE USER 'naben-za'@'%' IDENTIFIED BY 'qwerty';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON * . * TO 'naben-za'@'%';