CREATE DATABASE todo
   DEFAULT CHARACTER SET utf8
   DEFAULT COLLATE utf8_general_ci;

USE todo;

CREATE TABLE projects (
                     id INT AUTO_INCREMENT PRIMARY KEY,
                     name CHAR(128) NOT NULL ,
                     user_id INT NOT NULL
);

CREATE TABLE task (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       user_id INT NOT NULL,
                       proeject_id INT NOT NULL,
                       dt_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       status BOOL DEFAULT 0,
                       title CHAR(255) NOT NULL,
                       file_path CHAR(255),
                       data_exp DATE NULL,
                       INDEX(user_id),
                       INDEX(title),
                       INDEX(data_exp)
);

CREATE TABLE users (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      email VARCHAR(128) NOT NULL UNIQUE,
                      name CHAR(128) NOT NULL,
                      password CHAR(64) NOT NULL,
                      INDEX(name)


)

