SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;

CREATE TABLE `student`(
	`student_id` INT AUTO_INCREMENT,
    `name` VARCHAR(20),
    `major` VARCHAR(20) DEFAULT 'History',
    `score` VARCHAR(20),
    PRIMARY KEY(`student_id`)
);

DROP TABLE `student`;
SELECT * FROM`student`;
SELECT `name`,`major` FROM student;

SELECT * FROM`student` 
ORDER BY `score`, `student_id` DESC;

SELECT *
FROM `student`
ORDER BY `score`
LIMIT 3;

SELECT*
FROM `student`
WHERE `major` = 'English' OR `score` >= 20
LIMIT 2;

SELECT *
FROM `student`
WHERE `major` IN ('History', 'English', 'Biology');


UPDATE `student`
SET `student_id` = 'Xiao Bai', `major` = 'English', `score` = '20';

DELETE FROM `student`; 

INSERT INTO `student` VALUES(1,'Xiao Bai','English','50');
INSERT INTO `student` VALUES(2,'Xiao Hei','History','60');
INSERT INTO `student` VALUES(3,'Xiao Lv','English','80');
INSERT INTO `student` VALUES('Xiao Lan','Chinese','90');
INSERT INTO `student` (`name`,`major`,`score`)VALUES('Xiao Huang','Chemistry',70);
