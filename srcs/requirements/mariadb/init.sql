CREATE DATABASE wp_base;
DROP USER ''@'localhost';
CREATE USER 'naben-za'@'wordpress.srcs_inception' IDENTIFIED BY 'qwerty';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON *.* TO 'naben-za'@'wordpress.srcs_inception';
FLUSH PRIVILEGES;