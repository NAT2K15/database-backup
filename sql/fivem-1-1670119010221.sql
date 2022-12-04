/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: bans
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `bans` (
  `steam` varchar(255) DEFAULT 'Not Found',
  `discord` varchar(255) DEFAULT 'Not Found',
  `fivem` varchar(255) DEFAULT 'Not Found',
  `reason` varchar(255) DEFAULT 'Not Found',
  `staff` varchar(255) DEFAULT 'Not Found',
  `timeoftheban` varchar(255) DEFAULT 'Not Found'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: cached_players
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cached_players` (
  `steam` varchar(255) DEFAULT 'Not Found',
  `discord` varchar(255) DEFAULT 'Not Found',
  `fivem` varchar(255) DEFAULT 'Not Found',
  `ip` varchar(255) DEFAULT 'Not Found',
  `connections` varchar(255) DEFAULT '1'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: characters
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discord` varchar(50) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `twitter_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `lastLoc` varchar(250) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: characters_bans
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `characters_bans` (
  `banid` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `staff` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `expiry` varchar(50) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: characters_settings
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `characters_settings` (
  `discord` varchar(50) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL,
  `dark_mode` varchar(50) DEFAULT '1',
  `cloud_spawning` varchar(50) DEFAULT '1',
  `image_slideshow` varchar(50) DEFAULT '0',
  `character_gardient_color` varchar(50) DEFAULT '#DDADF3|#582185',
  `refresh_gardient_color` varchar(50) DEFAULT '#3E3BDF|#6529C5',
  `settings_gardient_color` varchar(50) DEFAULT '#1792DA|#49C06D',
  `disconnect_gardient_color` varchar(50) DEFAULT '#FF0000|#EB7F27'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: money
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `money` (
  `steam` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT '0',
  `bank` varchar(255) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: bans
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: cached_players
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: characters
# ------------------------------------------------------------

INSERT INTO
  `characters` (
    `id`,
    `discord`,
    `steamid`,
    `first_name`,
    `last_name`,
    `twitter_name`,
    `dob`,
    `gender`,
    `dept`,
    `lastLoc`,
    `phone_number`
  )
VALUES
  (
    2,
    '576971985108860929',
    'steam:11000013ceddcb3',
    'Test',
    'Tes',
    'qwdwq',
    '2022-08-16',
    'Male',
    'BCSO',
    'x=-217.1604309082|y=6558.4350585938|z=10.91357421875',
    '626-343-0029'
  );
INSERT INTO
  `characters` (
    `id`,
    `discord`,
    `steamid`,
    `first_name`,
    `last_name`,
    `twitter_name`,
    `dob`,
    `gender`,
    `dept`,
    `lastLoc`,
    `phone_number`
  )
VALUES
  (
    4,
    '576971985108860929',
    'license:cc61ece4a77ebd7e3f73309cf1a8e9a3ecc39710',
    'Qwdqw',
    'Dqwdwq',
    'dqwdqwd',
    '2022-08-22',
    'Male',
    'BCSO',
    'x=1856.2945556641|y=2585.6176757812|z=45.657836914062',
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: characters_bans
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: characters_settings
# ------------------------------------------------------------

INSERT INTO
  `characters_settings` (
    `discord`,
    `steamid`,
    `dark_mode`,
    `cloud_spawning`,
    `image_slideshow`,
    `character_gardient_color`,
    `refresh_gardient_color`,
    `settings_gardient_color`,
    `disconnect_gardient_color`
  )
VALUES
  (
    '576971985108860929',
    'steam:11000013ceddcb3',
    '1',
    '1',
    '0',
    '#DDADF3|#582185',
    '#3E3BDF|#6529C5',
    '#1792DA|#49C06D',
    '#FF0000|#EB7F27'
  );
INSERT INTO
  `characters_settings` (
    `discord`,
    `steamid`,
    `dark_mode`,
    `cloud_spawning`,
    `image_slideshow`,
    `character_gardient_color`,
    `refresh_gardient_color`,
    `settings_gardient_color`,
    `disconnect_gardient_color`
  )
VALUES
  (
    '576971985108860929',
    'license:cc61ece4a77ebd7e3f73309cf1a8e9a3ecc39710',
    '1',
    '0',
    '0',
    '#DDADF3|#582185',
    '#3E3BDF|#6529C5',
    '#1792DA|#49C06D',
    '#FF0000|#EB7F27'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: money
# ------------------------------------------------------------

INSERT INTO
  `money` (
    `steam`,
    `discord`,
    `first`,
    `last`,
    `dept`,
    `amount`,
    `bank`
  )
VALUES
  (
    'license:cc61ece4a77ebd7e3f73309cf1a8e9a3ecc39710',
    '576971985108860929',
    'Qwdqw',
    'Dqwdwq',
    'BCSO',
    '0',
    '10000'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
