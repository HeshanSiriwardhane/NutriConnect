SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: nutriconnect_db
--


--
-- Table structure for table admin
--

DROP TABLE IF EXISTS admin;
CREATE TABLE IF NOT EXISTS admin (
  id int(100) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table admin
--

INSERT INTO admin (id, name, email, password) VALUES
(1, 'admin01', 'admin01@gmail.com', '23bce2980a5d0ae01bebd9b5dc9c8e4998203fb7');


--
-- Table structure for table users
--

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id int(100) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  number int(100) NOT NULL,
  address varchar(500) NOT NULL,
  password varchar(100) NOT NULL,
  user_type varchar(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table users
--

INSERT INTO users (id, name, email, number, address, password, user_type) VALUES
(2, 'admin01', 'admin@gmail.com', 0, '', '5c33ac5a54d19c225ba33f333539dce9', 'admin');
COMMIT;