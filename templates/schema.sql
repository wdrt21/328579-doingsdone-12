CREATE DATABASE todo
   DEFAULT CHARACTER SET utf8
   DEFAULT COLLATE utf8_general_ci;


CREATE TABLE project (
                     id INT AUTO_INCREMENT PRIMARY KEY,
                     name VARCHAR(128) NOT NULL ,
                     user_id INT
)

CREATE TABLE task (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       user_id INT,
                       proeject_id INT,
                       dt_add DATETIME,
                       status INT,
                       title CHAR,
                       file_path CHAR,
                       data_exp DATETIME
)

CREATE TABLE user (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      dt_reg DATETIME,
                      email VARCHAR(128),
                      name VARCHAR(128),
                      password CHAR(64)


)

