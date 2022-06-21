CREATE DATABASE IF NOT EXISTS detect CHARACTER SET utf8;

USE detect;


CREATE TABLE IF NOT EXISTS `result` (
 `file_id` varchar(32) NOT NULL,
 `malicious_judge` tinyint(1) NOT NULL,
 `malicious_chance` float NOT NULL,
 `created_at` datetime NOT NULL,
 PRIMARY KEY (`file_id`),
 KEY `file_id` (`file_id`,`malicious_judge`,`malicious_chance`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8