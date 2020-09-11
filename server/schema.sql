

/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Message'
--
-- ---
USE chat;

DROP TABLE IF EXISTS Message;

-- CREATE TABLE <table-name> (
--   <name-of-column-1> <data-type-of-column> [ADDITIONAL-INFO-ABOUT-THIS-COLUMN],
--   <name-of-column-2> <data-type-of-column> [ADDITIONAL-INFO-ABOUT-THIS-COLUMN],
--                               ...
--   <name-of-column-n> <data-type-of-column> [ADDITIONAL-INFO-ABOUT-THIS-COLUMN],
--   [OTHER-SCHEMA-DEFINITION-COMMANDS]
-- );

CREATE TABLE Message (
  id INTEGER AUTO_INCREMENT,
  message_text TEXT,
  id_Users INTEGER,
  id_Room INTEGER,
  id_Created_at INTEGER,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Users'
--
-- ---

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
  id INTEGER NOT NULL AUTO_INCREMENT,
  Username TEXT NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Room'
--
-- ---

DROP TABLE IF EXISTS Room;

CREATE TABLE Room (
  id INTEGER AUTO_INCREMENT,
  Room_Name TEXT NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Created At'
--
-- ---

DROP TABLE IF EXISTS Created_At;

CREATE TABLE Created_At (
  id INTEGER  AUTO_INCREMENT,
  Time_Created_At DATETIME,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE Message ADD FOREIGN KEY (id_Users) REFERENCES Users (id);
ALTER TABLE Message ADD FOREIGN KEY (id_Room) REFERENCES Room (id);
ALTER TABLE Message ADD FOREIGN KEY (id_Created_At) REFERENCES Created_At (id);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE Message ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Users ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Room ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Created At ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO Message (id,Text,id_Users,id_Room,id_Created At) VALUES
-- ('','','','','');
-- INSERT INTO Users (id,Username) VALUES
-- ('','');
-- INSERT INTO Room (id,Room Name) VALUES
-- ('','');
-- INSERT INTO Created At (id,Time) VALUES
-- ('','');