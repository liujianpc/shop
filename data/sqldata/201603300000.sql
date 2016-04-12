-- ecshop v2.x SQL Dump Program
-- http://localhost
-- 
-- DATE : 2016-03-30 23:02:48
-- MYSQL SERVER VERSION : 5.5.38
-- PHP VERSION : 5.3.29
-- ECShop VERSION : v2.7.3
-- Vol : 1
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_user` ( `user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id` ) VALUES  ('1', 'liujianpc', '695966004@qq.com', '4e0004b6ca866bcfcfc1aaea4c71728a', '7209', '1459139407', '1459321326', '127.0.0.1', 'all', 'å•†å“åˆ—è¡¨|goods.php?act=list,è®¢å•åˆ—è¡¨|order.php?act=list,ç”¨æˆ·è¯„è®º|comment_manage.php?act=list,ä¼šå‘˜åˆ—è¡¨|users.php?act=list,å•†åº—è®¾ç½®|shop_config.php?act=list_edit', '', '0', '0', '', '');
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('1', '1');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('2', '1');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('3', '1');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '3');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '4');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '6');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '9');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '30');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('4', '32');
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('6', '-1', 'ç”¨æˆ·åè®®', '', '', '', '', '0', '1', '1380088046', '', '0', '', '');
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('1', 'ç³»ç»Ÿåˆ†ç±»', '2', '', 'ç³»ç»Ÿä¿ç•™åˆ†ç±»', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('2', 'ç½‘åº—ä¿¡æ¯', '3', '', 'ç½‘åº—ä¿¡æ¯åˆ†ç±»', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('3', 'ç½‘åº—å¸®åŠ©åˆ†ç±»', '4', '', 'ç½‘åº—å¸®åŠ©åˆ†ç±»', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('4', '3Gèµ„è®¯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('5', 'æ–°æ‰‹ä¸Šè·¯ ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('6', 'æ‰‹æœºå¸¸è¯† ', '5', '', 'æ‰‹æœºå¸¸è¯† ', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('7', 'é…é€ä¸æ”¯ä»˜ ', '5', '', 'é…é€ä¸æ”¯ä»˜ ', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('8', 'æœåŠ¡ä¿è¯ ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('9', 'è”ç³»æˆ‘ä»¬ ', '5', '', 'è”ç³»æˆ‘ä»¬ ', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('10', 'ä¼šå‘˜ä¸­å¿ƒ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('11', 'æ‰‹æœºä¿ƒé”€', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('12', 'ç«™å†…å¿«è®¯', '1', '', '', '50', '0', '0');
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('1', '1', 'ä½œè€\…', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('2', '1', 'å‡ºç‰ˆç¤\¾', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('3', '1', 'å›¾ä¹¦ä¹¦å·/ISBN', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('4', '1', 'å‡ºç‰ˆæ—¥æœŸ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('5', '1', 'å¼€æœ\¬', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('6', '1', 'å›¾ä¹¦é¡µæ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('7', '1', 'å›¾ä¹¦è£…è®¢', '1', '0', 'å¹³è£…\r\né»‘ç™½', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('8', '1', 'å›¾ä¹¦è§„æ ¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('9', '1', 'ç‰ˆæ¬¡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('10', '1', 'å°å¼ ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('11', '1', 'å­—æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('12', '1', 'æ‰€å±åˆ†ç±\»', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('13', '2', 'ä¸­æ–‡ç‰‡å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('14', '2', 'è‹±æ–‡ç‰‡å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('15', '2', 'å•†å“åˆ«å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('16', '2', 'ä»‹è´¨/æ ¼å¼', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('17', '2', 'ç‰‡è£…æ•\°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('18', '2', 'å›½å®¶åœ°åŒº', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('19', '2', 'è¯­ç§', '1', '0', 'ä¸­æ–‡\r\nè‹±æ–‡\r\næ³•æ–‡\r\nè¥¿ç­ç‰™æ–‡', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('20', '2', 'å¯¼æ¼”/æŒ‡æŒ¥', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('21', '2', 'ä¸»å”±', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('22', '2', 'æ‰€å±ç±»åˆ\«', '1', '0', 'å¤å…¸\r\næµè¡Œ\r\næ‘‡æ»š\r\nä¹¡æ‘\r\næ°‘è°£\r\nçˆµå£«\r\nè“è°ƒ\r\nç”µå­\r\nèˆæ›²\r\nå›½ä¹\r\næ°‘æ—\r\næ€€æ—\§\r\nç»å…¸\r\näººå£°\r\nåˆå”±\r\nå‘çƒ§\r\nè¯•éŸ³\r\nå„¿ç«¥\r\nèƒæ•™\r\nè½»éŸ³ä¹\\r\nä¸–ç•ŒéŸ³ä¹\r\nåº†å…¸éŸ³ä¹\r\nå½±è§†éŸ³ä¹\r\næ–°ä¸–çºªéŸ³ä¹\\r\nå¤§è‡ªç„¶éŸ³ä¹\', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('23', '2', 'é•¿åº¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('24', '2', 'æ­Œè¯', '1', '0', 'æœ\‰\r\næ—\ ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('25', '2', 'ç¢Ÿç‰‡ä»£ç ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('26', '2', 'ISRCç \', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('27', '2', 'å‘è¡Œå…¬å¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('28', '2', 'å‡ºç‰ˆ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('29', '2', 'å‡ºç‰ˆå\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('30', '2', 'å¼•è¿›å\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('31', '2', 'ç‰ˆæƒå\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('32', '3', 'ä¸­æ–‡ç‰‡å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('33', '3', 'è‹±æ–‡ç‰‡å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('34', '3', 'å•†å“åˆ«å', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('35', '3', 'ä»‹è´¨/æ ¼å¼', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('36', '3', 'ç¢Ÿç‰‡ç±»å‹', '1', '0', 'å•é¢\r\nåŒå±‚', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('37', '3', 'ç‰‡è£…æ•\°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('38', '3', 'å›½å®¶åœ°åŒº', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('39', '3', 'è¯­ç§/é…éŸ³', '1', '0', 'ä¸­æ–‡\r\nè‹±æ–‡\r\næ³•æ–‡\r\nè¥¿ç­ç‰™æ–‡', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('40', '3', 'å­—å¹•', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('41', '3', 'è‰²å½©', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('42', '3', 'ä¸­æ–‡å­—å¹•', '1', '0', 'æœ\‰\r\næ—\ ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('43', '3', 'å¯¼æ¼”', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('44', '3', 'è¡¨æ¼”è€\…', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('45', '3', 'æ‰€å±ç±»åˆ\«', '1', '0', 'çˆ±æƒ…\r\nå¶åƒ\r\nç”Ÿæ´»\r\nç¤¾ä¼š\r\nç§‘å¹»\r\nç¥è¯\r\næ­¦ä¾ \r\nåŠ¨ä½œ\r\næƒŠé™©\r\nææ€\–\r\nä¼ å¥‡\r\näººç‰©\r\nä¾¦æ¢\r\nè­¦åŒª\r\nå†å²\r\nå†›äº‹\r\næˆå‰§\r\nèˆå°\r\nç»å…¸\r\nåè‘—\r\nå–œå‰§\r\næƒ…æ™¯\r\nåŠ¨æ¼«\r\nå¡é€\š\r\nå„¿ç«¥\r\nä¼¦ç†æ¿€æƒ\…', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('46', '3', 'å¹´ä»½', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('47', '3', 'éŸ³é¢‘æ ¼å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('48', '3', 'åŒºç ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('49', '3', 'ç¢Ÿç‰‡ä»£ç ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('50', '3', 'ISRCç \', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('51', '3', 'å‘è¡Œå…¬å¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('52', '3', 'å‡ºç‰ˆ ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('53', '3', 'å‡ºç‰ˆå\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('54', '3', 'å¼•è¿›å\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('55', '3', 'ç‰ˆæƒå\·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('56', '4', 'ç½‘ç»œåˆ¶å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('57', '4', 'æ”¯æŒé¢‘ç‡/ç½‘ç»œé¢‘ç‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('58', '4', 'å°ºå¯¸ä½“ç§¯', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('59', '4', 'å¤–è§‚æ ·å¼/æ‰‹æœºç±»å‹', '1', '0', 'ç¿»ç›–\r\næ»‘ç›–\r\nç›´æ¿\r\næŠ˜å \r\næ‰‹å†™', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('60', '4', 'ä¸»å±å‚æ•°/å†…å±å‚æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('61', '4', 'å‰¯å±å‚æ•°/å¤–å±å‚æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('62', '4', 'æ¸…æ™°åº\¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('63', '4', 'è‰²æ•°/ç°åº¦', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('64', '4', 'é•¿åº¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('65', '4', 'å®½åº¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('66', '4', 'åšåº¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('67', '4', 'å±å¹•æè´¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('68', '4', 'å†…å­˜å®¹é‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('69', '4', 'æ“ä½œç³»ç»Ÿ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('70', '4', 'é€šè¯æ—¶é—´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('71', '4', 'å¾…æœºæ—¶é—´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('72', '4', 'æ ‡å‡†é…ç½®', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('73', '4', 'WAPä¸Šç½‘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('74', '4', 'æ•°æ®ä¸šåŠ¡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('75', '4', 'å¤©çº¿ä½ç½®', '1', '0', 'å†…ç½®\r\nå¤–ç½®', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('76', '4', 'éšæœºé…ä»¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('77', '4', 'é“ƒå£°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('78', '4', 'æ‘„åƒå¤\´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('79', '4', 'å½©ä¿¡/å½©e', '1', '0', 'æ”¯æŒ\r\nä¸æ”¯æŒ\', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('80', '4', 'çº¢å¤–/è“ç‰™', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('81', '4', 'ä»·æ ¼ç­‰çº§', '1', '0', 'é«˜ä»·æœ\º\r\nä¸­ä»·æœ\º\r\nä½ä»·æœ\º', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('82', '5', 'å‹å·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('83', '5', 'è¯¦ç»†è§„æ ¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('84', '5', 'ç¬”è®°æœ¬å°ºå¯\¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('85', '5', 'å¤„ç†å™¨ç±»å\‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('86', '5', 'å¤„ç†å™¨æœ€é«˜ä¸»é¢\‘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('87', '5', 'äºŒçº§ç¼“å­˜', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('88', '5', 'ç³»ç»Ÿæ€»çº¿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('89', '5', 'ä¸»æ¿èŠ¯ç‰‡ç»\„', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('90', '5', 'å†…å­˜å®¹é‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('91', '5', 'å†…å­˜ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('92', '5', 'ç¡¬ç›˜', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('93', '5', 'å±å¹•å°ºå¯¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('94', '5', 'æ˜¾ç¤ºèŠ¯ç‰‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('95', '5', 'æ ‡ç§°é¢‘ç‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('96', '5', 'æ˜¾å¡æ˜¾å­˜', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('97', '5', 'æ˜¾å¡ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('98', '5', 'å…‰é©±ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('99', '5', 'ç”µæ± å®¹é‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('100', '5', 'å…¶ä»–é…ç½®', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('101', '6', 'ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('102', '6', 'æœ€å¤§åƒç´\ /æ€»åƒç´\   ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('103', '6', 'æœ‰æ•ˆåƒç´ ', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('104', '6', 'å…‰å­¦å˜ç„¦å€æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('105', '6', 'æ•°å­—å˜ç„¦å€æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('106', '6', 'æ“ä½œæ¨¡å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('107', '6', 'æ˜¾ç¤ºå±ç±»å\‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('108', '6', 'æ˜¾ç¤ºå±å°ºå¯\¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('109', '6', 'æ„Ÿå…‰å™¨ä»¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('110', '6', 'æ„Ÿå…‰å™¨ä»¶å°ºå¯¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('111', '6', 'æœ€é«˜åˆ†è¾¨ç‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('112', '6', 'å›¾åƒåˆ†è¾¨ç\‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('113', '6', 'ä¼ æ„Ÿå™¨ç±»å\‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('114', '6', 'ä¼ æ„Ÿå™¨å°ºå¯\¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('115', '6', 'é•œå¤´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('116', '6', 'å…‰åœˆ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('117', '6', 'ç„¦è·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('118', '6', 'æ—‹è½¬æ¶²æ™¶å±\', '1', '0', 'æ”¯æŒ\r\nä¸æ”¯æŒ\', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('119', '6', 'å­˜å‚¨ä»‹è´¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('120', '6', 'å­˜å‚¨å\¡', '1', '0', '  è®°å½•åª’ä½“\r\nå­˜å‚¨å¡å®¹é‡\', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('121', '6', 'å½±åƒæ ¼å¼', '1', '0', '    é™åƒ\r\nåŠ¨ç”»', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('122', '6', 'æ›å…‰æ§åˆ¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('123', '6', 'æ›å…‰æ¨¡å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('124', '6', 'æ›å…‰è¡¥å¿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('125', '6', 'ç™½å¹³è¡\¡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('126', '6', 'è¿æ‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('127', '6', 'å¿«é—¨é€Ÿåº¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('128', '6', 'é—ªå…‰ç\¯', '1', '0', 'å†…ç½®\r\nå¤–ç½®', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('129', '6', 'æ‹æ‘„èŒƒå›´', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('130', '6', 'è‡ªæ‹å®šæ—¶å™\¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('131', '6', 'ISOæ„Ÿå…‰åº\¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('132', '6', 'æµ‹å…‰æ¨¡å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('133', '6', 'åœºæ™¯æ¨¡å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('134', '6', 'çŸ­ç‰‡æ‹æ‘„', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('135', '6', 'å¤–æ¥æ¥å£', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('136', '6', 'ç”µæº', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('137', '6', 'ç”µæ± ä½¿ç”¨æ—¶é—´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('138', '6', 'å¤–å½¢å°ºå¯¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('139', '6', 'æ ‡é…è½¯ä»¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('140', '6', 'æ ‡å‡†é…ä»¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('141', '6', 'å…¼å®¹æ“ä½œç³»ç»Ÿ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('142', '7', 'ç¼–å·', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('143', '7', 'ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('144', '7', 'å¤–å‹å°ºå¯¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('145', '7', 'æœ€å¤§åƒç´ æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('146', '7', 'å…‰å­¦å˜ç„¦å€æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('147', '7', 'æ•°å­—å˜ç„¦å€æ•°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('148', '7', 'æ˜¾ç¤ºå±å°ºå¯¸åŠç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('149', '7', 'æ„Ÿå…‰å™¨ä»¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('150', '7', 'æ„Ÿå…‰å™¨ä»¶å°ºå¯¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('151', '7', 'æ„Ÿå…‰å™¨ä»¶æ•°é‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('152', '7', 'åƒç´ èŒƒå›´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('153', '7', 'ä¼ æ„Ÿå™¨æ•°é‡\', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('154', '7', 'ä¼ æ„Ÿå™¨å°ºå¯\¸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('155', '7', 'æ°´å¹³æ¸…æ™°åº\¦', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('156', '7', 'å–æ™¯å™\¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('157', '7', 'æ•°ç æ•ˆæœ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('158', '7', 'é•œå¤´æ€§èƒ½', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('159', '7', 'å¯¹ç„¦æ–¹å¼', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('160', '7', 'æ›å…‰æ§åˆ¶', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('161', '7', 'å…¶ä»–æ¥å£', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('162', '7', 'éšæœºå­˜å‚¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('163', '7', 'ç”µæ± ç±»å‹', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('164', '7', 'ç”µæ± ä¾›ç”µæ—¶é—´', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('165', '8', 'äº§åœ°', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('166', '8', 'äº§å“è§„æ ¼/å®¹é‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('167', '8', 'ä¸»è¦åŸæ–™', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('168', '8', 'æ‰€å±ç±»åˆ\«', '1', '0', 'å½©å¦†\r\nåŒ–å¦†å·¥å…·\r\næŠ¤è‚¤å“\\r\né¦™æ°´', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('169', '8', 'ä½¿ç”¨éƒ¨ä½', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('170', '8', 'é€‚åˆè‚¤è´¨', '1', '0', 'æ²¹æ€\§\r\nä¸­æ€\§\r\nå¹²æ€\§', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('171', '8', 'é€‚ç”¨äººç¾¤', '1', '0', 'å¥³æ€\§\r\nç”·æ€\§', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('172', '9', 'ä¸Šå¸‚æ—¥æœŸ', '1', '0', '2008å¹\´01æœ\ˆ\r\n2008å¹\´02æœ\ˆ\r\n2008å¹\´03æœ\ˆ\r\n2008å¹\´04æœ\ˆ\r\n2008å¹\´05æœ\ˆ\r\n2008å¹\´06æœ\ˆ\r\n2008å¹\´07æœ\ˆ\r\n2008å¹\´08æœ\ˆ\r\n2008å¹\´09æœ\ˆ\r\n2008å¹\´10æœ\ˆ\r\n2008å¹\´11æœ\ˆ\r\n2008å¹\´12æœ\ˆ\r\n2007å¹\´01æœ\ˆ\r\n2007å¹\´02æœ\ˆ\r\n2007å¹\´03æœ\ˆ\r\n2007å¹\´04æœ\ˆ\r\n2007å¹\´05æœ\ˆ\r\n2007å¹\´06æœ\ˆ\r\n2007å¹\´07æœ\ˆ\r\n2007å¹\´08æœ\ˆ\r\n2007å¹\´09æœ\ˆ\r\n2007å¹\´10æœ\ˆ\r\n2007å¹\´11æœ\ˆ\r\n2007å¹\´12æœ\ˆ', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('173', '9', 'æ‰‹æœºåˆ¶å¼', '1', '0', 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\nåŒæ¨¡ï¼ˆGSM,900,1800,CDMA 1Xï¼\‰\r\n3G(GSM,900,1800,1900,TD-SCDMA )', '1', '1', '1', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('174', '9', 'ç†è®ºé€šè¯æ—¶é—´', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('175', '9', 'ç†è®ºå¾…æœºæ—¶é—´', '0', '0', '', '0', '3', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('176', '9', 'é“ƒå£°', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('177', '9', 'é“ƒå£°æ ¼å¼', '0', '0', '', '0', '5', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('178', '9', 'å¤–è§‚æ ·å¼', '1', '0', 'ç¿»ç›–\r\næ»‘ç›–\r\nç›´æ¿\r\næŠ˜å ', '1', '6', '1', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('179', '9', 'ä¸­æ–‡çŸ­æ¶ˆæ\¯', '0', '0', '', '0', '7', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('180', '9', 'å­˜å‚¨å¡æ ¼å¼\', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('181', '9', 'å†…å­˜å®¹é‡', '0', '0', '', '2', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('182', '9', 'æ“ä½œç³»ç»Ÿ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('183', '9', 'K-JAVA', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('184', '9', 'å°ºå¯¸ä½“ç§¯', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('185', '9', 'é¢œè‰²', '1', '1', 'é»‘è‰²\r\nç™½è‰²\r\nè“è‰²\r\né‡‘è‰²\r\nç²‰è‰²\r\né“¶è‰²\r\nç°è‰²\r\næ·±æè‰\²\r\né»‘çº¢è‰\²\r\né»‘è“è‰\²\r\nç™½ç´«è‰\²', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('186', '9', 'å±å¹•é¢œè‰²', '1', '0', '1600ä¸\‡\r\n262144ä¸\‡', '1', '0', '1', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('187', '9', 'å±å¹•æè´¨', '1', '0', 'TFT', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('188', '9', 'å±å¹•åˆ†è¾¨ç\‡', '1', '0', '320Ã—240 åƒç´ \r\n240Ã—400 åƒç´ \r\n240Ã—320 åƒç´ \r\n176x220 åƒç´ ', '1', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('189', '9', 'å±å¹•å¤§å°', '0', '0', '', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('190', '9', 'ä¸­æ–‡è¾“å…¥æ³\•', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('191', '9', 'æƒ…æ™¯æ¨¡å¼', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('192', '9', 'ç½‘ç»œé“¾æ¥', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('193', '9', 'è“ç‰™æ¥å£', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('194', '9', 'æ•°æ®çº¿æ¥å\£', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('195', '9', 'ç”µå­é‚®ä»¶', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('196', '9', 'é—¹é’Ÿ', '0', '0', '', '0', '35', '0', '4');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('197', '9', 'åŠå…¬åŠŸèƒ½', '0', '0', '', '0', '0', '0', '4');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('198', '9', 'æ•°ç ç›¸æœº', '0', '0', '', '1', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('199', '9', 'åƒç´ ', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('200', '9', 'ä¼ æ„Ÿå™\¨', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('201', '9', 'å˜ç„¦æ¨¡å¼', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('202', '9', 'è§†é¢‘æ‹æ‘„', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('203', '9', 'MP3æ’­æ”¾å™\¨', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('204', '9', 'è§†é¢‘æ’­æ”¾', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('205', '9', 'CPUé¢‘ç‡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('206', '9', 'æ”¶éŸ³æœ\º', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('207', '9', 'è€³æœºæ¥å£', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('208', '9', 'é—ªå…‰ç\¯', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('209', '9', 'æµè§ˆå™\¨', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('210', '9', 'é…ä»¶', '1', '2', 'çº¿æ§è€³æœº\r\nè“ç‰™è€³æœº\r\næ•°æ®çº\¿', '0', '0', '0', '0');
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('1', 'è£è€€ç‰\ˆ', '', '', '0', '50', '', '', '1', '', '1', '5', '172,185,178');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('2', '5Gæµé‡/30å¤\©', '', '', '1', '50', '', '', '0', '', '1', '0', '6');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('3', '10Gæµé‡/30å¤\©', '', '', '1', '50', '', 'å\°', '0', '', '1', '4', '185,189,173,178');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('4', 'æ— é™æµé‡/30å¤\©', '', '', '1', '50', '', '', '0', '', '1', '0', '28');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('5', 'è¯•ç”¨å\·/1å¤\©', '', '', '1', '50', '', '', '0', '', '1', '5', '18');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('6', 'æ——èˆ°ç‰\ˆ', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('7', '10Gæµé‡/30å¤\©', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('8', 'è¯•ç”¨å\·/1å¤\©', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('9', '5Gæµé‡/30å¤\©', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('11', 'æ— é™æµé‡/30å¤\©', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('12', 'é»„é‡‘ç‰\ˆ', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('13', '5Gæµé‡/30å¤\©', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('14', '10Gæµé‡/30å¤\©', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('15', 'è¯•ç”¨å\·/1å¤\©', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('16', 'æ— é™æµé‡/30å¤\©', '', '', '12', '50', '', '', '0', '', '1', '0', '');
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_comment` ( `comment_id`, `comment_type`, `id_value`, `email`, `user_name`, `content`, `comment_rank`, `add_time`, `ip_address`, `status`, `parent_id`, `user_id` ) VALUES  ('1', '0', '12', 'ecshop@ecshop.com', 'ecshop', 'å¾ˆå¥½ï¼Œæˆ‘å¾ˆå–œæ¬\¢', '5', '1242107120', '0.0.0.0', '1', '0', '1');
INSERT INTO `ecs_comment` ( `comment_id`, `comment_type`, `id_value`, `email`, `user_name`, `content`, `comment_rank`, `add_time`, `ip_address`, `status`, `parent_id`, `user_id` ) VALUES  ('2', '0', '22', 'ecshop@ecshop.com', 'ecshop', 'è¿™ä¸ªæˆ‘ä¸æ˜¯å¾ˆé€‚åˆæˆ\‘', '5', '1242107295', '0.0.0.0', '1', '0', '1');
INSERT INTO `ecs_comment` ( `comment_id`, `comment_type`, `id_value`, `email`, `user_name`, `content`, `comment_rank`, `add_time`, `ip_address`, `status`, `parent_id`, `user_id` ) VALUES  ('3', '0', '22', 'dsf@232.fdfd', '', 'dffddffd', '5', '1380265024', '127.0.0.1', '1', '0', '0');
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('201', '17', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('202', '17', '173', 'CDMA', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('203', '17', '174', '8å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('204', '17', '175', '300å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('205', '17', '178', 'ç›´æ¿', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('206', '15', '189', '2.2è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('207', '15', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('208', '15', '185', 'ç™½è‰²', '20');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('209', '15', '210', 'æ•°æ®çº\¿', '20');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('196', '19', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('197', '19', '185', 'é‡‘è‰²', '10');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('198', '19', '185', 'ç™½è‰²', '20');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('199', '19', '178', 'æ»‘ç›–', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('195', '20', '173', 'GSM,900,1800,1900,2100', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('193', '20', '172', '2008å¹\´07æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('194', '20', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('187', '21', '180', 'T-Flash', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('189', '21', '210', 'çº¿æ§è€³æœº', '50');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('188', '21', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('186', '22', '178', 'ç›´æ¿', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('182', '22', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('183', '22', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('184', '22', '174', '6.5å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('185', '22', '175', '450å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('181', '22', '181', '288MB', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('180', '22', '180', 'microSD', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('179', '22', '172', '2008å¹\´12æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('192', '21', '175', '100å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('191', '21', '174', '2.5å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('178', '23', '178', 'æ»‘ç›–', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('190', '21', '210', 'æ•°æ®çº\¿', '20');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('176', '23', '174', '2.5å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('177', '23', '175', '200å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('173', '23', '188', '320Ã—240 åƒç´ ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('174', '23', '189', '2.8è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('175', '23', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('172', '23', '182', 'Symbian OS 9.3æ“ä½œç³»ç»Ÿ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('171', '23', '181', '256MB', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('170', '23', '172', '2008å¹\´09æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('169', '24', '179', 'SMS', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('166', '24', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('167', '24', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('168', '24', '210', 'æ•°æ®çº\¿', '20');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('165', '24', '183', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('164', '24', '172', '2008å¹\´06æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('152', '32', '172', '2008å¹\´10æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('153', '32', '180', 'MicroSD', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('154', '32', '181', '78MB', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('155', '32', '182', 'Symbian OS v9.3', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('156', '32', '189', '2.6è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('157', '32', '210', 'çº¿æ§è€³æœº', '50');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('158', '32', '210', 'è“ç‰™è€³æœº', '100');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('159', '32', '210', 'æ•°æ®çº\¿', '12');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('160', '32', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('161', '32', '174', '6.9 å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('162', '32', '175', '363 å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('163', '32', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('239', '10', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('240', '10', '185', 'ç™½è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('265', '36', '172', '2008å¹\´04æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('250', '35', '172', '2008å¹\´09æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('251', '35', '181', '256MB', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('252', '35', '182', 'Symbian OS 9.3æ“ä½œç³»ç»Ÿ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('253', '35', '188', '320Ã—240 åƒç´ ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('254', '35', '189', '2.8è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('255', '35', '185', 'é»‘è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('256', '35', '174', '2.5å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('257', '35', '175', '200å°æ—¶', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('258', '35', '178', 'æ»‘ç›–', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('266', '36', '189', '2.4è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('267', '36', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('268', '36', '191', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('269', '36', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('270', '36', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('277', '37', '172', '2008å¹\´04æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('278', '37', '189', '2.4è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('279', '37', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('280', '37', '191', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('281', '37', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('282', '37', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('289', '38', '172', '2008å¹\´04æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('290', '38', '189', '2.4è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('291', '38', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('292', '38', '191', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('293', '38', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('294', '38', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('301', '39', '172', '2008å¹\´04æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('302', '39', '189', '2.4è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('303', '39', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('304', '39', '191', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('305', '39', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('306', '39', '173', 'GSM,850,900,1800,1900', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('313', '40', '172', '2008å¹\´04æœ\ˆ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('314', '40', '189', '2.4è‹±å¯¸', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('315', '40', '190', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('316', '40', '191', 'æ”¯æŒ', '0');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('317', '40', '185', 'ç°è‰²', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('318', '40', '173', 'GSM,850,900,1800,1900', '0');
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_cat` ( `goods_id`, `cat_id` ) VALUES  ('8', '2');
INSERT INTO `ecs_goods_cat` ( `goods_id`, `cat_id` ) VALUES  ('8', '5');
INSERT INTO `ecs_goods_cat` ( `goods_id`, `cat_id` ) VALUES  ('16', '3');
INSERT INTO `ecs_goods_cat` ( `goods_id`, `cat_id` ) VALUES  ('16', '5');
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('125', '37', 'images/201309/goods_img/37_P_1380437760879.jpg', '', 'images/201309/thumb_img/37_thumb_P_1380437760086.jpg', 'images/201309/source_img/37_P_1380437760167.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('45', '32', 'images/201309/goods_img/32_P_1380102689743.jpg', '', 'images/201309/thumb_img/32_thumb_P_1380102689643.jpg', 'images/201309/source_img/32_P_1380102689234.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('47', '31', 'images/201309/goods_img/31_P_1380102714591.jpg', '', 'images/201309/thumb_img/31_thumb_P_1380102714768.jpg', 'images/201309/source_img/31_P_1380102714968.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('48', '31', 'images/201309/goods_img/31_P_1380102714597.jpg', '', 'images/201309/thumb_img/31_thumb_P_1380102714235.jpg', 'images/201309/source_img/31_P_1380102714905.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('50', '24', 'images/201309/goods_img/24_P_1380102750467.jpg', '', 'images/201309/thumb_img/24_thumb_P_1380102750749.jpg', 'images/201309/source_img/24_P_1380102750636.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('51', '24', 'images/201309/goods_img/24_P_1380102750147.jpg', '', 'images/201309/thumb_img/24_thumb_P_1380102750483.jpg', 'images/201309/source_img/24_P_1380102750922.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('127', '39', 'images/201309/goods_img/39_P_1380437790447.jpg', '', 'images/201309/thumb_img/39_thumb_P_1380437790677.jpg', 'images/201309/source_img/39_P_1380437790099.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('126', '38', 'images/201309/goods_img/38_P_1380437773394.jpg', '', 'images/201309/thumb_img/38_thumb_P_1380437773777.jpg', 'images/201309/source_img/38_P_1380437773611.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('120', '9', 'images/201309/goods_img/9_P_1380437572672.jpg', '', 'images/201309/thumb_img/9_thumb_P_1380437572829.jpg', 'images/201309/source_img/9_P_1380437572827.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('121', '10', 'images/201309/goods_img/10_P_1380437587639.jpg', '', 'images/201309/thumb_img/10_thumb_P_1380437588528.jpg', 'images/201309/source_img/10_P_1380437587729.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('84', '33', 'images/201309/goods_img/33_P_1380266818408.jpg', '', 'images/201309/thumb_img/33_thumb_P_1380266818392.jpg', 'images/201309/source_img/33_P_1380266818735.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('85', '3', 'images/201309/goods_img/3_P_1380266861355.jpg', '', 'images/201309/thumb_img/3_thumb_P_1380266861048.jpg', 'images/201309/source_img/3_P_1380266861816.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('86', '5', 'images/201309/goods_img/5_P_1380266892151.jpg', '', 'images/201309/thumb_img/5_thumb_P_1380266892360.jpg', 'images/201309/source_img/5_P_1380266892913.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('87', '6', 'images/201309/goods_img/6_P_1380266990558.jpg', '', 'images/201309/thumb_img/6_thumb_P_1380266990952.jpg', 'images/201309/source_img/6_P_1380266990950.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('110', '7', 'images/201309/goods_img/7_P_1380437153050.jpg', '', 'images/201309/thumb_img/7_thumb_P_1380437153689.jpg', 'images/201309/source_img/7_P_1380437153642.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('94', '33', 'images/201309/goods_img/33_P_1380436780559.jpg', '', 'images/201309/thumb_img/33_thumb_P_1380436780221.jpg', 'images/201309/source_img/33_P_1380436780933.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('95', '32', 'images/201309/goods_img/32_P_1380436798778.jpg', '', 'images/201309/thumb_img/32_thumb_P_1380436798699.jpg', 'images/201309/source_img/32_P_1380436798405.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('96', '31', 'images/201309/goods_img/31_P_1380436807599.jpg', '', 'images/201309/thumb_img/31_thumb_P_1380436807572.jpg', 'images/201309/source_img/31_P_1380436807025.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('97', '24', 'images/201309/goods_img/24_P_1380436819528.jpg', '', 'images/201309/thumb_img/24_thumb_P_1380436819104.jpg', 'images/201309/source_img/24_P_1380436819333.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('98', '23', 'images/201309/goods_img/23_P_1380436832258.jpg', '', 'images/201309/thumb_img/23_thumb_P_1380436832249.jpg', 'images/201309/source_img/23_P_1380436832675.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('99', '12', 'images/201309/goods_img/12_P_1380436866878.jpg', '', 'images/201309/thumb_img/12_thumb_P_1380436866708.jpg', 'images/201309/source_img/12_P_1380436866351.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('100', '13', 'images/201309/goods_img/13_P_1380436877585.jpg', '', 'images/201309/thumb_img/13_thumb_P_1380436877298.jpg', 'images/201309/source_img/13_P_1380436877824.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('123', '35', 'images/201309/goods_img/35_P_1380437673636.jpg', '', 'images/201309/thumb_img/35_thumb_P_1380437673787.jpg', 'images/201309/source_img/35_P_1380437673192.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('102', '16', 'images/201309/goods_img/16_P_1380436911332.jpg', '', 'images/201309/thumb_img/16_thumb_P_1380436911844.jpg', 'images/201309/source_img/16_P_1380436911017.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('103', '12', 'images/201309/goods_img/12_P_1380436975812.jpg', '', 'images/201309/thumb_img/12_thumb_P_1380436975889.jpg', 'images/201309/source_img/12_P_1380436975356.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('104', '13', 'images/201309/goods_img/13_P_1380436987554.jpg', '', 'images/201309/thumb_img/13_thumb_P_1380436987048.jpg', 'images/201309/source_img/13_P_1380436987226.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('122', '14', 'images/201309/goods_img/14_P_1380437622981.jpg', '', 'images/201309/thumb_img/14_thumb_P_1380437622127.jpg', 'images/201309/source_img/14_P_1380437622200.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('106', '16', 'images/201309/goods_img/16_P_1380437012305.jpg', '', 'images/201309/thumb_img/16_thumb_P_1380437012246.jpg', 'images/201309/source_img/16_P_1380437012827.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('107', '16', 'images/201309/goods_img/16_P_1380437042342.jpg', '', 'images/201309/thumb_img/16_thumb_P_1380437042862.jpg', 'images/201309/source_img/16_P_1380437042994.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('108', '19', 'images/201309/goods_img/19_P_1380437054403.jpg', '', 'images/201309/thumb_img/19_thumb_P_1380437054244.jpg', 'images/201309/source_img/19_P_1380437054682.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('109', '4', 'images/201309/goods_img/4_P_1380437107844.jpg', '', 'images/201309/thumb_img/4_thumb_P_1380437107238.jpg', 'images/201309/source_img/4_P_1380437107382.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('113', '22', 'images/201309/goods_img/22_P_1380437259638.jpg', '', 'images/201309/thumb_img/22_thumb_P_1380437259667.jpg', 'images/201309/source_img/22_P_1380437259331.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('114', '5', 'images/201309/goods_img/5_P_1380437326838.jpg', '', 'images/201309/thumb_img/5_thumb_P_1380437326172.jpg', 'images/201309/source_img/5_P_1380437326915.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('115', '3', 'images/201309/goods_img/3_P_1380437343266.jpg', '', 'images/201309/thumb_img/3_thumb_P_1380437343263.jpg', 'images/201309/source_img/3_P_1380437343886.jpg');
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('9', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('9', '3', '68.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('9', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('14', '5', '20.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('14', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('14', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('1', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('1', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('1', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('36', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('36', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('36', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('37', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('37', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('37', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('38', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('38', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('38', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('39', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('39', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('39', '7', '100.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('40', '4', '58.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('40', '6', '42.00', '1');
INSERT INTO `ecs_group_goods` ( `parent_id`, `goods_id`, `goods_price`, `admin_id` ) VALUES  ('40', '7', '100.00', '1');
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '9', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '10', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '11', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '13', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('13', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '9', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '13', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('23', '9', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('13', '23', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('23', '13', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '12', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '1', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('17', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '17', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('6', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '6', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('22', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '22', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '27', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '29', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('4', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '4', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('7', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '7', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '23', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '1', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('5', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '5', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '12', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('20', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '20', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('4', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '4', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '9', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('10', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '10', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '12', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('13', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '13', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('17', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '17', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('20', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '20', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('22', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '22', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('24', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '24', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '21', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('21', '32', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('4', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '4', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('7', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '7', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('5', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '5', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('6', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '6', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('12', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '12', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('16', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '16', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('22', '3', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('3', '22', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '1', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('1', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('1', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '1', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('1', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '1', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('1', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('35', '9', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('35', '13', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('13', '35', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('9', '35', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('36', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('36', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('36', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('36', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '36', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '36', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '36', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '36', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '36', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('37', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('37', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('37', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('37', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '37', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '37', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '37', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '37', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '37', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('38', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('38', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('38', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('38', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '38', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '38', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '38', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '38', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '38', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('39', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('39', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('39', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('39', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '39', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '39', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '39', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '39', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '39', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('40', '8', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('40', '14', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('40', '19', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('40', '31', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('32', '40', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('19', '40', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('14', '40', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('8', '40', '1', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('31', '40', '1', '1');
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('1', '23', '3', '3200.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('2', '23', '2', '3300.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('3', '13', '3', '1100.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('4', '13', '2', '1200.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('5', '35', '3', '3200.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('6', '35', '2', '3300.00');
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('1', '2', 'admin', '1', '0', '2', '0', '[å”®å] 1132', '1242142350');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('2', '2', 'admin', '1', '1', '2', '0', 'å·²ç»å‘è´§ï¼Œæ³¨æ„æ¥æ”\¶', '1242142389');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('3', '1', 'admin', '1', '1', '2', '0', 'å·²ç»å‘è´§ï¼Œæ³¨æ„æ¥æ”\¶', '1242142432');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('4', '2', 'ä¹°å®¶', '1', '2', '2', '0', '', '1242142449');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('5', '1', 'ä¹°å®¶', '1', '2', '2', '0', '', '1242142451');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('6', '3', 'admin', '1', '1', '2', '0', 'å·²ç»å‘è´§äº†ï¼Œæ³¨æ„æ¥æ”¶', '1242142589');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('7', '3', 'ä¹°å®¶', '1', '2', '2', '0', '', '1242142634');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('8', '5', 'admin', '1', '3', '2', '0', '', '1242142869');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('9', '6', 'admin', '3', '0', '0', '0', 'æš‚æ—¶ç¼ºè´§', '1242143337');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('10', '7', 'admin', '1', '0', '0', '0', '', '1242143454');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('11', '1', 'admin', '1', '2', '2', '0', '[å”®å] å”®å', '1242143773');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('12', '2', 'admin', '4', '0', '0', '0', 'è´¨é‡é—®é¢˜', '1242144185');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('48', '25', 'liujianpc', '3', '0', '0', '0', 'æ— æ•ˆçš„è®¢å\•', '1459212267');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('14', '13', 'admin', '1', '1', '0', '0', '11', '1242576445');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('15', '14', 'admin', '1', '3', '2', '0', '', '1242976715');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('16', '14', 'admin', '1', '1', '2', '0', 'å·²ç»å‘è´§ï¼Œè¯·æ¥æ”¶', '1242976740');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('17', '15', 'admin', '1', '0', '0', '0', '', '1245044587');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('18', '15', 'admin', '1', '0', '2', '0', 'å·²ç»ä»˜æ¬¾', '1245044644');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('19', '15', 'admin', '1', '4', '2', '0', '', '1245044964');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('20', '15', 'admin', '1', '4', '2', '0', 'åŒ—äº¬ä¾›è´§å•\†', '1245045061');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('21', '3', 'admin', '4', '0', '0', '0', 'ä¸å–œæ¬¢è¿™ä¸ªé¢œè‰\²', '1245045334');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('22', '15', 'admin', '1', '1', '2', '0', '', '1245045443');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('23', '15', 'admin', '4', '0', '0', '0', 'é€€è´\§', '1245045515');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('24', '16', 'admin', '1', '4', '2', '0', 'ä¸Šæµ·ä¾›è´§', '1245045723');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('25', '17', 'admin', '1', '1', '2', '0', '', '1245048189');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('26', '17', 'admin', '4', '0', '0', '0', 'é€€è´\§', '1245048212');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('27', '19', 'admin', '1', '1', '2', '0', '', '1245384050');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('28', '20', 'admin', '1', '0', '0', '0', '', '1380175577');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('29', '9', 'admin', '1', '0', '0', '0', '', '1380175577');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('30', '8', 'admin', '1', '0', '0', '0', '', '1380175577');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('31', '20', 'admin', '1', '0', '2', '0', '1', '1380175596');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('32', '20', 'admin', '5', '5', '2', '0', '1', '1380175602');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('33', '20', 'admin', '1', '1', '2', '1', '1', '1380175617');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('34', '18', 'admin', '1', '0', '0', '0', '1', '1380175664');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('35', '18', 'admin', '1', '0', '2', '0', '1', '1380175669');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('36', '18', 'admin', '1', '3', '2', '0', '1', '1380175673');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('37', '4', 'admin', '5', '5', '2', '0', '1', '1380175704');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('38', '4', 'admin', '1', '1', '2', '1', '1', '1380175720');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('39', '5', 'admin', '5', '5', '2', '0', '1', '1380175749');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('40', '5', 'admin', '1', '1', '2', '1', '1', '1380175762');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('41', '11', 'admin', '1', '0', '2', '0', '1', '1380175819');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('42', '11', 'admin', '5', '5', '2', '0', '1', '1380175826');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('43', '11', 'admin', '1', '1', '2', '1', '1', '1380175838');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('44', '24', 'admin', '1', '0', '0', '0', '1', '1380446753');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('45', '24', 'admin', '1', '0', '2', '0', '1', '1380446757');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('46', '24', 'admin', '5', '5', '2', '0', '1', '1380446765');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('47', '24', 'admin', '1', '1', '2', '1', '1', '1380446788');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('49', '23', 'liujianpc', '3', '0', '0', '0', 'æ— æ•ˆçš„è®¢å\•', '1459212267');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('50', '22', 'liujianpc', '3', '0', '0', '0', 'æ— æ•ˆçš„è®¢å\•', '1459212267');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('51', '21', 'liujianpc', '3', '0', '0', '0', 'æ— æ•ˆçš„è®¢å\•', '1459212267');
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('1', '1', '8', 'é£åˆ©æµ\¦9@9v', 'ECS000008', '0', '1', '478.79', '385.00', 'é¢œè‰²:é»\‘ \n', '0', '1', '', '0', '0', '231');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('2', '2', '12', 'æ‘©æ‰˜ç½—æ‹‰A810', 'ECS000012', '0', '1', '1179.60', '960.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('3', '3', '17', 'å¤æ–°N7', 'ECS000017', '0', '1', '2760.00', '2300.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('4', '4', '22', 'å¤šæ™®è¾¾Touch HD', 'ECS000022', '0', '1', '7198.80', '5999.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('5', '5', '9', 'è¯ºåŸºäºšE66', 'ECS000009', '0', '3', '2757.60', '2200.00', '', '3', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('6', '5', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '2000.00', '', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('7', '6', '5', 'ç´¢çˆ±åŸè£…M2å¡è¯»å¡å™¨', 'ECS000005', '0', '1', '24.00', '20.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('8', '7', '9', 'è¯ºåŸºäºšE66', 'ECS000009', '0', '1', '2757.60', '2298.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('9', '8', '20', 'ä¸‰æ˜ŸBC01', 'ECS000020', '0', '1', '336.00', '238.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('10', '8', '8', 'é£åˆ©æµ\¦9@9v', 'ECS000008', '0', '1', '478.79', '385.00', 'é¢œè‰²:é»\‘ \n', '0', '1', '', '0', '0', '231');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('11', '9', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '2000.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('12', '10', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '0.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('13', '11', '23', 'è¯ºåŸºäºšN96', 'ECS000023', '0', '1', '4440.00', '3800.00', 'é™„åŠ é…ä»¶: åŸè£…ç”µæ±  [+100]', '1', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('15', '13', '12', 'æ‘©æ‰˜ç½—æ‹‰A810', 'ECS000012', '0', '1', '1179.60', '960.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('16', '14', '15', 'æ‘©æ‰˜ç½—æ‹‰A810', 'ECS000015', '0', '5', '705.60', '588.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('17', '14', '20', 'ä¸‰æ˜ŸBC01', 'ECS000020', '0', '1', '336.00', '238.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('18', '14', '22', 'å¤šæ™®è¾¾Touch HD', 'ECS000022', '0', '1', '7198.80', '5999.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('19', '14', '3', 'è¯ºåŸºäºšåŸè£\…5800è€³æœº', 'ECS000002', '0', '4', '81.60', '68.00', 'é¢œè‰²:é“¶è‰² \n', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('20', '14', '9', 'è¯ºåŸºäºšE66', 'ECS000009', '0', '2', '2757.60', '2298.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('21', '15', '13', 'è¯ºåŸºäº\š5320 XpressMusic', 'ECS000013', '0', '3', '1583.20', '1210.00', 'é¢œè‰²:çº¢[10] \n', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('22', '15', '14', 'è¯ºåŸºäº\š5800XM', 'ECS000014', '0', '1', '3150.00', '2493.75', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('23', '15', '24', 'P806', 'ECS000024', '0', '4', '2400.00', '1900.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('24', '15', '9', 'è¯ºåŸºäºšE66', 'ECS000009', '0', '1', '2757.60', '2183.10', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('25', '15', '8', 'é£åˆ©æµ\¦9@9v', 'ECS000008', '0', '3', '478.79', '379.05', 'é¢œè‰²:é»\‘ \n', '0', '1', '', '0', '0', '231');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('26', '16', '12', 'æ‘©æ‰˜ç½—æ‹‰A810', 'ECS000012', '0', '2', '1179.60', '933.85', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('27', '16', '1', 'KD876', 'ECS000000', '0', '1', '1665.60', '1318.60', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('28', '17', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '1900.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('29', '18', '24', 'P806', 'ECS000024', '0', '5', '2400.00', '100.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('30', '19', '12', 'æ‘©æ‰˜ç½—æ‹‰A810', 'ECS000012', '0', '2', '1179.60', '933.85', '', '2', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('31', '19', '24', 'P806', 'ECS000024', '0', '2', '2400.00', '1850.00', 'é¢œè‰²:ç°è‰² \n', '2', '1', '', '0', '0', '167');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('32', '20', '32', 'è¯ºåŸºäºšN85', 'ECS000032', '1', '1', '3612.00', '2750.00', 'é¢œè‰²:é»‘è‰² \n', '1', '1', '', '0', '0', '163');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('33', '20', '1', 'KD876', 'ECS000000', '14', '1', '1665.60', '1388.00', 'é¢œè‰²:ç°è‰² \n', '1', '1', '', '0', '0', '237');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('34', '20', '24', 'P806', 'ECS000024', '2', '1', '2400.00', '2000.00', 'é¢œè‰²:ç°è‰² \n', '1', '1', '', '0', '0', '167');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('35', '20', '3', 'è¯ºåŸºäºšåŸè£\…5800è€³æœº', 'ECS000002', '0', '5', '81.60', '68.00', '', '5', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('36', '21', '32', 'è¯ºåŸºäºšN85', 'ECS000032', '1', '1', '3612.00', '2750.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '163');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('37', '22', '20', 'ä¸‰æ˜ŸBC01', 'ECS000020', '5', '1', '336.00', '280.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '194');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('38', '22', '23', 'è¯ºåŸºäºšN96', 'ECS000023', '3', '1', '4440.00', '3700.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '175');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('39', '23', '32', 'è¯ºåŸºäºšN85', 'ECS000032', '1', '1', '3612.00', '2750.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '163');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('40', '23', '17', 'å¤æ–°N7', 'ECS000017', '6', '1', '2760.00', '300.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '201');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('41', '24', '40', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000040', '0', '2', '1665.60', '1388.00', 'é¢œè‰²:ç°è‰² \n', '2', '1', '', '0', '0', '317');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('42', '24', '14', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000014', '7', '3', '3150.00', '2625.00', 'é¢œè‰²:é»‘è‰² \n', '3', '1', '', '0', '0', '213');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('43', '24', '19', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000019', '0', '6', '1029.60', '858.00', 'é¢œè‰²:é»‘è‰² \n', '6', '1', '', '0', '0', '196');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('44', '24', '21', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000021', '4', '9', '2400.00', '2000.00', 'é¢œè‰²:é»‘è‰² \n', '9', '1', '', '0', '0', '188');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('45', '24', '20', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000020', '5', '9', '336.00', '238.00', 'é¢œè‰²:é»‘è‰² \n', '9', '1', '', '0', '0', '194');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('46', '25', '20', 'ECSHOPæ¨¡æ¿ä¸­å¿ƒ68ecshop.comæµ‹è¯•å•†å“', 'ECS000020', '5', '1', '336.00', '238.00', 'é¢œè‰²:é»‘è‰² \n', '0', '1', '', '0', '0', '194');
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('1', '2009051298180', '1', '1', '2', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', '[ä¸­å›½ åŒ—äº¬ åŒ—äº¬ æµ·æ·€åŒº] ä¸­å…³æ‘æµ·å…´å¤§å\¦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', 'ä¸­åˆ', 'æ³•é™¢', '', '5', 'ç”³é€šå¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '385.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '400.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1242142274', '1242142274', '1242142274', '1242142432', '0', '0', '0', '122', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('2', '2009051255518', '1', '4', '0', '0', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', '[ä¸­å›½ åŒ—äº¬ åŒ—äº¬ æµ·æ·€åŒº] ä¸­å…³æ‘æµ·å…´å¤§å\¦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', 'ä¸­åˆ', 'æ³•é™¢', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', 'ç²¾å“åŒ…è£…', 'ç¥ç¦è´ºå¡', 'æ™šæ¥çš„ç¥ç¦\', '', '', '960.00', '10.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1242142324', '1242142324', '1242142324', '1242142389', '1', '1', '0', '111', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('3', '2009051267570', '1', '4', '0', '0', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', '[ä¸­å›½ åŒ—äº¬ åŒ—äº¬ æµ·æ·€åŒº] ä¸­å…³æ‘æµ·å…´å¤§å\¦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', 'ä¸­åˆ', 'æ³•é™¢', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '2300.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1242142549', '1242142549', '1242142549', '1242142589', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('4', '2009051230249', '1', '5', '1', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', '[ä¸­å›½ åŒ—äº¬ åŒ—äº¬ æµ·æ·€åŒº] ä¸­å…³æ‘æµ·å…´å¤§å\¦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', 'ä¸­åˆ', 'æ³•é™¢', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '5999.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5989.00', '0', '0.00', '20.00', '0.00', '0', 'æœ¬ç«™', '1242142681', '1242142681', '1242142681', '1380175720', '0', '0', '1', '20130926060860411', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('5', '2009051276258', '1', '5', '1', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', '[ä¸­å›½ åŒ—äº¬ åŒ—äº¬ æµ·æ·€åŒº] ä¸­å…³æ‘æµ·å…´å¤§å\¦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', 'ä¸­åˆ', 'æ³•é™¢', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '8600.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8610.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1242142808', '1242142808', '1242142808', '1380175762', '0', '0', '0', '20130926060978273', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('6', '2009051217221', '3', '3', '0', '0', 'å¶å…ˆç”\Ÿ', '1', '2', '52', '510', 'é€šå·åŒºæ——èˆ°å‡¯æ—‹å°åŒ\º', '', '13588104710', '', 'text@ecshop.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '20.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '35.00', '0', '', '1242143292', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('7', '2009051227085', '3', '1', '0', '0', 'å¶å…ˆç”\Ÿ', '1', '2', '52', '510', 'é€šå·åŒºæ——èˆ°å‡¯æ—‹å°åŒ\º', '', '13588104710', '', 'text@ecshop.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '2298.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1000.00', '0', '0.00', '0.00', '1198.10', '0', '', '1242143383', '1242143454', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '114.90');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('8', '2009051299732', '3', '1', '0', '0', 'å¶å…ˆç”\Ÿ', '1', '2', '52', '510', 'é€šå·åŒºæ——èˆ°å‡¯æ—‹å°åŒ\º', '', '13588104710', '', 'text@ecshop.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '623.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '638.00', '0', '', '1242143444', '1380175577', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('9', '2009051210718', '3', '1', '0', '0', 'å¶å…ˆç”\Ÿ', '1', '2', '52', '510', 'é€šå·åŒºæ——èˆ°å‡¯æ—‹å°åŒ\º', '', '13588104710', '', 'text@ecshop.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '2000.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '2015.00', '0', '', '1242143732', '1380175577', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('10', '2009051268194', '1', '1', '0', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '500', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '10.00', '17000', '0.00', '0.00', '0.00', '0', '', '1242143920', '1242143920', '1242143920', '0', '0', '0', '0', '', 'exchange_goods', '24', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('11', '2009051264945', '0', '5', '1', '2', 'æ—å°å§\', '1', '2', '52', '500', 'ä¸­å…³æ‘æµ·å…´å¤§å\¦', '', '135474510', '', 'linzi@116.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', '', '', '', '', '', '', '', '3800.00', '10.00', '0.00', '0.00', '0.00', '0.00', '3810.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'ç®¡ç†å‘˜æ·»åŠ\ ', '1242144250', '1242144363', '1380175819', '1380175838', '0', '0', '0', '20130926061090203', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('13', '2009051719232', '1', '1', '1', '0', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '3', 'è´§åˆ°ä»˜æ¬¾', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '960.00', '10.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '975.00', '0', 'æœ¬ç«™', '1242576341', '1242576445', '0', '1242576445', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('14', '2009052224892', '1', '1', '1', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '14045.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '13806.60', '0', '0.00', '5.00', '0.00', '0', 'æœ¬ç«™', '1242976699', '1242976699', '1242976699', '1242976740', '0', '0', '2', '1123344', '', '0', '', '', '0', '', '0.00', '0', '0', '243.40');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('15', '2009061585887', '1', '4', '0', '0', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '17044.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '17054.00', '0', 'æœ¬ç«™', '1245044533', '1245044587', '1245044644', '1245045443', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('16', '2009061525429', '1', '1', '0', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '3186.30', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3196.30', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1245045672', '1245045672', '1245045672', '1245045723', '0', '0', '0', '2009061525121', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('17', '2009061503335', '1', '4', '0', '0', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '1900.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1245047978', '1245047978', '1245047978', '1245048189', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('18', '2009061510313', '1', '1', '3', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '500.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '500.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1245048585', '1245048585', '1380175669', '0', '0', '0', '0', '', 'group_buy', '8', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('19', '2009061909851', '1', '1', '1', '2', 'åˆ˜å…ˆç”\Ÿ', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '1', 'ä½™é¢æ”¯ä»˜', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '5567.70', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5577.70', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1245384008', '1245384008', '1245384008', '1245384049', '0', '0', '0', '232421', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('20', '2013092646519', '0', '5', '1', '2', '11', '1', '2', '52', '500', '11', '', '111', '', '11@qq.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '6478.00', '15.00', '0.00', '0.00', '0.00', '0.00', '6493.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1380175540', '1380175577', '1380175596', '1380175617', '0', '0', '0', '20130926060638293', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('21', '2013092679263', '0', '3', '0', '0', '11', '1', '3', '37', '410', '11', '', '11', '', '22@qq.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '2750.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '2765.00', '0', 'æœ¬ç«™', '1380176900', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('22', '2013092713998', '6', '3', '0', '0', '11', '1', '27', '343', '2914', '11', '11', '11', '', '123@qq.com', '', '', '', '3', 'åŸé™…å¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', 'ç²¾å“åŒ…è£…', 'ç¥ç¦è´ºå¡', '1111111111111', '', '', '3980.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '3990.00', '0', 'æœ¬ç«™', '1380261448', '0', '0', '0', '1', '1', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('23', '2013092941039', '0', '3', '0', '0', '11', '1', '24', '312', '2610', '11', '', '11', '', '11@qq.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '3050.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '3065.00', '0', 'æœ¬ç«™', '1380434992', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('24', '2013092928674', '6', '5', '1', '2', '11', '1', '27', '343', '2914', '11', '11', '11', '', '123@qq.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '35941.00', '15.00', '0.00', '0.00', '0.00', '0.00', '35956.00', '0.00', '0', '0.00', '0.00', '0.00', '0', 'æœ¬ç«™', '1380446728', '1380446753', '1380446757', '1380446788', '0', '0', '0', '20130929092641436', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('25', '2013093083327', '0', '3', '0', '0', '11', '1', '2', '52', '500', '11', '11', '11', '', '2227988788@qq.com', '', '', '', '5', 'ç”³é€šå¿«é€\’', '2', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', 'ç­‰å¾…æ‰€æœ‰å•†å“å¤‡é½åå†å‘', '', '', '', '', '', '', '238.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '253.00', '0', 'æœ¬ç«™', '1380506910', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_payment` ( `pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online` ) VALUES  ('1', 'balance', 'ä½™é¢æ”¯ä»˜', '0', 'ä½¿ç”¨å¸æˆ·ä½™é¢æ”¯ä»˜ã€‚åªæœ‰ä¼šå‘˜æ‰èƒ½ä½¿ç”¨ï¼Œé€šè¿‡è®¾ç½®ä¿¡ç”¨é¢åº¦ï¼Œå¯ä»¥é€æ”¯ã€\‚', '0', 'a:0:{}', '1', '0', '1');
INSERT INTO `ecs_payment` ( `pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online` ) VALUES  ('2', 'bank', 'é“¶è¡Œæ±‡æ¬¾/è½¬å¸', '0', 'é“¶è¡Œåç§°\næ”¶æ¬¾äººä¿¡æ¯ï¼šå…¨ç§° Ã—Ã—Ã— ï¼›å¸å·æˆ–åœ°å€ Ã—Ã—Ã— ï¼›å¼€æˆ·è¡Œ Ã—Ã—Ã—ã€\‚\næ³¨æ„äº‹é¡¹ï¼šåŠç†ç”µæ±‡æ—¶ï¼Œè¯·åœ¨ç”µæ±‡å•â€œæ±‡æ¬¾ç”¨é€”â€ä¸€æ å¤„æ³¨æ˜æ‚¨çš„è®¢å•å·ã€\‚', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ecs_payment` ( `pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online` ) VALUES  ('3', 'cod', 'è´§åˆ°ä»˜æ¬¾', '0', 'å¼€é€šåŸå¸‚ï¼šÃ—Ã—Ã—\nè´§åˆ°ä»˜æ¬¾åŒºåŸŸï¼šÃ—Ã—Ã\—', '0', 'a:0:{}', '1', '1', '0');
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1', '0', 'ä¸­å›½', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2', '1', 'åŒ—äº¬', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3', '1', 'å®‰å¾½', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('4', '1', 'ç¦å»º', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('5', '1', 'ç”˜è‚ƒ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('6', '1', 'å¹¿ä¸œ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('7', '1', 'å¹¿è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('8', '1', 'è´µå·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('9', '1', 'æµ·å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('10', '1', 'æ²³åŒ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('11', '1', 'æ²³å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('12', '1', 'é»‘é¾™æ±\Ÿ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('13', '1', 'æ¹–åŒ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('14', '1', 'æ¹–å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('15', '1', 'å‰æ—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('16', '1', 'æ±Ÿè‹', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('17', '1', 'æ±Ÿè¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('18', '1', 'è¾½å®', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('19', '1', 'å†…è’™å\¤', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('20', '1', 'å®å¤', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('21', '1', 'é’æµ·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('22', '1', 'å±±ä¸œ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('23', '1', 'å±±è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('24', '1', 'é™•è¥¿', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('25', '1', 'ä¸Šæµ·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('26', '1', 'å››å·', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('27', '1', 'å¤©æ´¥', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('28', '1', 'è¥¿è—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('29', '1', 'æ–°ç–†', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('30', '1', 'äº‘å—', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('31', '1', 'æµ™æ±Ÿ', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('32', '1', 'é‡åº†', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('33', '1', 'é¦™æ¸¯', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('34', '1', 'æ¾³é—¨', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('35', '1', 'å°æ¹¾', '1', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('36', '3', 'å®‰åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('37', '3', 'èšŒåŸ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('38', '3', 'å·¢æ¹–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('39', '3', 'æ± å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('40', '3', 'æ»å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('41', '3', 'é˜œé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('42', '3', 'æ·®åŒ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('43', '3', 'æ·®å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('44', '3', 'é»„å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('45', '3', 'å…­å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('46', '3', 'é©¬éå±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('47', '3', 'å®¿å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('48', '3', 'é“œé™µ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('49', '3', 'èŠœæ¹–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('50', '3', 'å®£åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('51', '3', 'äº³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('52', '2', 'åŒ—äº¬', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('53', '4', 'ç¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('54', '4', 'é¾™å²©', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('55', '4', 'å—å¹³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('56', '4', 'å®å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('57', '4', 'è†ç”°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('58', '4', 'æ³‰å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('59', '4', 'ä¸‰æ˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('60', '4', 'å¦é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('61', '4', 'æ¼³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('62', '5', 'å…°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('63', '5', 'ç™½é“¶', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('64', '5', 'å®šè¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('65', '5', 'ç”˜å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('66', '5', 'å˜‰å³ªå…\³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('67', '5', 'é‡‘æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('68', '5', 'é…’æ³‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('69', '5', 'ä¸´å¤', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('70', '5', 'é™‡å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('71', '5', 'å¹³å‡‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('72', '5', 'åº†é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('73', '5', 'å¤©æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('74', '5', 'æ­¦å¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('75', '5', 'å¼ æ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('76', '6', 'å¹¿å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('77', '6', 'æ·±åœ³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('78', '6', 'æ½®å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('79', '6', 'ä¸œè', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('80', '6', 'ä½›å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('81', '6', 'æ²³æº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('82', '6', 'æƒ å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('83', '6', 'æ±Ÿé—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('84', '6', 'æ­é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('85', '6', 'èŒ‚å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('86', '6', 'æ¢…å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('87', '6', 'æ¸…è¿œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('88', '6', 'æ±•å¤´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('89', '6', 'æ±•å°¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('90', '6', 'éŸ¶å…³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('91', '6', 'é˜³æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('92', '6', 'äº‘æµ®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('93', '6', 'æ¹›æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('94', '6', 'è‚‡åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('95', '6', 'ä¸­å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('96', '6', 'ç æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('97', '7', 'å—å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('98', '7', 'æ¡‚æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('99', '7', 'ç™¾è‰²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('100', '7', 'åŒ—æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('101', '7', 'å´‡å·¦', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('102', '7', 'é˜²åŸæ¸\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('103', '7', 'è´µæ¸¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('104', '7', 'æ²³æ± ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('105', '7', 'è´ºå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('106', '7', 'æ¥å®¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('107', '7', 'æŸ³å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('108', '7', 'é’¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('109', '7', 'æ¢§å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('110', '7', 'ç‰æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('111', '8', 'è´µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('112', '8', 'å®‰é¡º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('113', '8', 'æ¯•èŠ‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('114', '8', 'å…­ç›˜æ°\´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('115', '8', 'é»”ä¸œå\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('116', '8', 'é»”å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('117', '8', 'é»”è¥¿å\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('118', '8', 'é“œä»', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('119', '8', 'éµä¹‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('120', '9', 'æµ·å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('121', '9', 'ä¸‰äºš', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('122', '9', 'ç™½æ²™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('123', '9', 'ä¿äº­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('124', '9', 'æ˜Œæ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('125', '9', 'æ¾„è¿ˆå\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('126', '9', 'å®šå®‰å\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('127', '9', 'ä¸œæ–¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('128', '9', 'ä¹ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('129', '9', 'ä¸´é«˜å\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('130', '9', 'é™µæ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('131', '9', 'ç¼æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('132', '9', 'ç¼ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('133', '9', 'å±¯æ˜Œå\¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('134', '9', 'ä¸‡å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('135', '9', 'æ–‡æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('136', '9', 'äº”æŒ‡å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('137', '9', 'å„‹å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('138', '10', 'çŸ³å®¶åº\„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('139', '10', 'ä¿å®š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('140', '10', 'æ²§å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('141', '10', 'æ‰¿å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('142', '10', 'é‚¯éƒ¸', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('143', '10', 'è¡¡æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('144', '10', 'å»ŠåŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('145', '10', 'ç§¦çš‡å²\›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('146', '10', 'å”å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('147', '10', 'é‚¢å°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('148', '10', 'å¼ å®¶å\£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('149', '11', 'éƒ‘å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('150', '11', 'æ´›é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('151', '11', 'å¼€å°\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('152', '11', 'å®‰é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('153', '11', 'é¹¤å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('154', '11', 'æµæº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('155', '11', 'ç„¦ä½œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('156', '11', 'å—é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('157', '11', 'å¹³é¡¶å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('158', '11', 'ä¸‰é—¨å³\¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('159', '11', 'å•†ä¸˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('160', '11', 'æ–°ä¹¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('161', '11', 'ä¿¡é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('162', '11', 'è®¸æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('163', '11', 'å‘¨å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('164', '11', 'é©»é©¬åº\—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('165', '11', 'æ¼¯æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('166', '11', 'æ¿®é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('167', '12', 'å“ˆå°”æ»\¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('168', '12', 'å¤§åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('169', '12', 'å¤§å…´å®‰å²­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('170', '12', 'é¹¤å²—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('171', '12', 'é»‘æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('172', '12', 'é¸¡è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('173', '12', 'ä½³æœ¨æ–\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('174', '12', 'ç‰¡ä¸¹æ±\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('175', '12', 'ä¸ƒå°æ²\³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('176', '12', 'é½é½å“ˆå°”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('177', '12', 'åŒé¸­å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('178', '12', 'ç»¥åŒ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('179', '12', 'ä¼Šæ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('180', '13', 'æ­¦æ±‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('181', '13', 'ä»™æ¡ƒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('182', '13', 'é„‚å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('183', '13', 'é»„å†ˆ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('184', '13', 'é»„çŸ³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('185', '13', 'è†é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('186', '13', 'è†å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('187', '13', 'æ½œæ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('188', '13', 'ç¥å†œæ¶æ—åŒ\º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('189', '13', 'åå °', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('190', '13', 'éšå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('191', '13', 'å¤©é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('192', '13', 'å’¸å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('193', '13', 'è¥„æ¨Š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('194', '13', 'å­æ„Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('195', '13', 'å®œæ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('196', '13', 'æ©æ–½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('197', '14', 'é•¿æ²™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('198', '14', 'å¼ å®¶ç•\Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('199', '14', 'å¸¸å¾·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('200', '14', 'éƒ´å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('201', '14', 'è¡¡é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('202', '14', 'æ€€åŒ\–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('203', '14', 'å¨„åº•', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('204', '14', 'é‚µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('205', '14', 'æ¹˜æ½­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('206', '14', 'æ¹˜è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('207', '14', 'ç›Šé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('208', '14', 'æ°¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('209', '14', 'å²³é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('210', '14', 'æ ªæ´²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('211', '15', 'é•¿æ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('212', '15', 'å‰æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('213', '15', 'ç™½åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('214', '15', 'ç™½å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('215', '15', 'è¾½æº', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('216', '15', 'å››å¹³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('217', '15', 'æ¾åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('218', '15', 'é€šåŒ–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('219', '15', 'å»¶è¾¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('220', '16', 'å—äº¬', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('221', '16', 'è‹å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('222', '16', 'æ— é”¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('223', '16', 'å¸¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('224', '16', 'æ·®å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('225', '16', 'è¿äº‘æ¸\¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('226', '16', 'å—é€\š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('227', '16', 'å®¿è¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('228', '16', 'æ³°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('229', '16', 'å¾å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('230', '16', 'ç›åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('231', '16', 'æ‰¬å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('232', '16', 'é•‡æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('233', '17', 'å—æ˜Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('234', '17', 'æŠšå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('235', '17', 'èµ£å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('236', '17', 'å‰å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('237', '17', 'æ™¯å¾·é•\‡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('238', '17', 'ä¹æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('239', '17', 'èä¹¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('240', '17', 'ä¸Šé¥¶', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('241', '17', 'æ–°ä½™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('242', '17', 'å®œæ˜¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('243', '17', 'é¹°æ½­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('244', '18', 'æ²ˆé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('245', '18', 'å¤§è¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('246', '18', 'éå±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('247', '18', 'æœ¬æºª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('248', '18', 'æœé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('249', '18', 'ä¸¹ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('250', '18', 'æŠšé¡º', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('251', '18', 'é˜œæ–°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('252', '18', 'è‘«èŠ¦å²\›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('253', '18', 'é”¦å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('254', '18', 'è¾½é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('255', '18', 'ç›˜é”¦', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('256', '18', 'é“å²­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('257', '18', 'è¥å£', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('258', '19', 'å‘¼å’Œæµ©ç‰¹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('259', '19', 'é˜¿æ‹‰å–„ç›Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('260', '19', 'å·´å½¦æ·–å°”ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('261', '19', 'åŒ…å¤´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('262', '19', 'èµ¤å³°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('263', '19', 'é„‚å°”å¤šæ–¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('264', '19', 'å‘¼ä¼¦è´å°”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('265', '19', 'é€šè¾½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('266', '19', 'ä¹Œæµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('267', '19', 'ä¹Œå…°å¯Ÿå¸ƒå¸\‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('268', '19', 'é”¡æ—éƒ­å‹’ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('269', '19', 'å…´å®‰ç›\Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('270', '20', 'é“¶å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('271', '20', 'å›ºåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('272', '20', 'çŸ³å˜´å±\±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('273', '20', 'å´å¿ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('274', '20', 'ä¸­å«', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('275', '21', 'è¥¿å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('276', '21', 'æœæ´›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('277', '21', 'æµ·åŒ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('278', '21', 'æµ·ä¸œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('279', '21', 'æµ·å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('280', '21', 'æµ·è¥¿', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('281', '21', 'é»„å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('282', '21', 'ç‰æ ‘', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('283', '22', 'æµå—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('284', '22', 'é’å²›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('285', '22', 'æ»¨å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('286', '22', 'å¾·å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('287', '22', 'ä¸œè¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('288', '22', 'èæ³½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('289', '22', 'æµå®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('290', '22', 'è±èŠœ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('291', '22', 'èŠåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('292', '22', 'ä¸´æ²‚', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('293', '22', 'æ—¥ç…§', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('294', '22', 'æ³°å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('295', '22', 'å¨æµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('296', '22', 'æ½åŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('297', '22', 'çƒŸå°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('298', '22', 'æ£åº„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('299', '22', 'æ·„åš', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('300', '23', 'å¤ªåŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('301', '23', 'é•¿æ²»', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('302', '23', 'å¤§åŒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('303', '23', 'æ™‹åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('304', '23', 'æ™‹ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('305', '23', 'ä¸´æ±¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('306', '23', 'å•æ¢', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('307', '23', 'æœ”å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('308', '23', 'å¿»å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('309', '23', 'é˜³æ³‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('310', '23', 'è¿åŸ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('311', '24', 'è¥¿å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('312', '24', 'å®‰åº·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('313', '24', 'å®é¸¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('314', '24', 'æ±‰ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('315', '24', 'å•†æ´›', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('316', '24', 'é“œå·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('317', '24', 'æ¸­å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('318', '24', 'å’¸é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('319', '24', 'å»¶å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('320', '24', 'æ¦†æ—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('321', '25', 'ä¸Šæµ·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('322', '26', 'æˆéƒ½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('323', '26', 'ç»µé˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('324', '26', 'é˜¿å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('325', '26', 'å·´ä¸­', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('326', '26', 'è¾¾å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('327', '26', 'å¾·é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('328', '26', 'ç”˜å­œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('329', '26', 'å¹¿å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('330', '26', 'å¹¿å…ƒ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('331', '26', 'ä¹å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('332', '26', 'å‡‰å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('333', '26', 'çœ‰å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('334', '26', 'å—å……', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('335', '26', 'å†…æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('336', '26', 'æ”€æèŠ±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('337', '26', 'é‚å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('338', '26', 'é›…å®‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('339', '26', 'å®œå®¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('340', '26', 'èµ„é˜³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('341', '26', 'è‡ªè´¡', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('342', '26', 'æ³¸å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('343', '27', 'å¤©æ´¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('344', '28', 'æ‹‰è¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('345', '28', 'é˜¿é‡Œ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('346', '28', 'æ˜Œéƒ½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('347', '28', 'æ—èŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('348', '28', 'é‚£æ›²', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('349', '28', 'æ—¥å–€åˆ\™', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('350', '28', 'å±±å—', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('351', '29', 'ä¹Œé²æœ¨é½', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('352', '29', 'é˜¿å…‹è‹\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('353', '29', 'é˜¿æ‹‰å°\”', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('354', '29', 'å·´éŸ³éƒ­æ¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('355', '29', 'åšå°”å¡”æ‹‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('356', '29', 'æ˜Œå‰', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('357', '29', 'å“ˆå¯†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('358', '29', 'å’Œç”°', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('359', '29', 'å–€ä»€', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('360', '29', 'å…‹æ‹‰ç›ä¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('361', '29', 'å…‹å­œå‹’è‹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('362', '29', 'çŸ³æ²³å­\', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('363', '29', 'å›¾æœ¨èˆ’å…‹', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('364', '29', 'åé²ç•\ª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('365', '29', 'äº”å®¶æ¸\ ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('366', '29', 'ä¼ŠçŠ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('367', '30', 'æ˜†æ˜', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('368', '30', 'æ€’æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('369', '30', 'æ™®æ´±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('370', '30', 'ä¸½æ±Ÿ', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('371', '30', 'ä¿å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('372', '30', 'æ¥šé›„', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('373', '30', 'å¤§ç†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('374', '30', 'å¾·å®', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('375', '30', 'è¿ªåº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('376', '30', 'çº¢æ²³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('377', '30', 'ä¸´æ²§', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('378', '30', 'æ›²é–', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('379', '30', 'æ–‡å±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('380', '30', 'è¥¿åŒç‰ˆçº³', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('381', '30', 'ç‰æºª', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('382', '30', 'æ˜­é€\š', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('383', '31', 'æ­å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('384', '31', 'æ¹–å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('385', '31', 'å˜‰å…´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('386', '31', 'é‡‘å', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('387', '31', 'ä¸½æ°´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('388', '31', 'å®æ³¢', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('389', '31', 'ç»å…´', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('390', '31', 'å°å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('391', '31', 'æ¸©å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('392', '31', 'èˆŸå±±', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('393', '31', 'è¡¢å·', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('394', '32', 'é‡åº†', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('395', '33', 'é¦™æ¸¯', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('396', '34', 'æ¾³é—¨', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('397', '35', 'å°æ¹¾', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('398', '36', 'è¿æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('399', '36', 'å¤§è§‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('400', '36', 'å®œç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('401', '36', 'æ¡åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('402', '36', 'æ€€å®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('403', '36', 'æé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('404', '36', 'æ½œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('405', '36', 'å¤ªæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('406', '36', 'å®¿æ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('407', '36', 'æœ›æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('408', '36', 'å²³è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('409', '37', 'ä¸­å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('410', '37', 'ä¸œå¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('411', '37', 'è¥¿å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('412', '37', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('413', '37', 'æ€€è¿œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('414', '37', 'äº”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('415', '37', 'å›ºé•‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('416', '38', 'å±…å·¢åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('417', '38', 'åºæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('418', '38', 'æ— ä¸ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('419', '38', 'å«å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('420', '38', 'å’Œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('421', '39', 'è´µæ± åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('422', '39', 'ä¸œè‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('423', '39', 'çŸ³å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('424', '39', 'é’é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('425', '40', 'ç…çŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('426', '40', 'å—è°¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('427', '40', 'å¤©é•¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('428', '40', 'æ˜å…‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('429', '40', 'æ¥å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('430', '40', 'å…¨æ¤’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('431', '40', 'å®šè¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('432', '40', 'å‡¤é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('433', '41', 'èšŒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('434', '41', 'é¾™å­æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('435', '41', 'ç¦¹ä¼šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('436', '41', 'æ·®ä¸ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('437', '41', 'é¢å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('438', '41', 'é¢ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('439', '41', 'é¢æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('440', '41', 'ç•Œé¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('441', '41', 'ä¸´æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('442', '41', 'å¤ªå’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('443', '41', 'é˜œå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('444', '41', 'é¢–ä¸Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('445', '42', 'ç›¸å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('446', '42', 'æœé›†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('447', '42', 'çƒˆå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('448', '42', 'æ¿‰æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('449', '43', 'ç”°å®¶åºµåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('450', '43', 'å¤§é€šåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('451', '43', 'è°¢å®¶é›†åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('452', '43', 'å…«å…¬å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('453', '43', 'æ½˜é›†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('454', '43', 'å‡¤å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('455', '44', 'å±¯æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('456', '44', 'é»„å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('457', '44', 'å¾½å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('458', '44', 'æ­™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('459', '44', 'ä¼‘å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('460', '44', 'é»Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('461', '44', 'ç¥é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('462', '45', 'é‡‘å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('463', '45', 'è£•å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('464', '45', 'å¯¿å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('465', '45', 'éœé‚±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('466', '45', 'èˆ’åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('467', '45', 'é‡‘å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('468', '45', 'éœå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('469', '46', 'é›¨å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('470', '46', 'èŠ±å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('471', '46', 'é‡‘å®¶åº„åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('472', '46', 'å½“æ¶‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('473', '47', 'åŸ‡æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('474', '47', 'ç €å±±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('475', '47', 'è§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('476', '47', 'çµç’§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('477', '47', 'æ³—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('478', '48', 'é“œå®˜å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('479', '48', 'ç‹®å­å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('480', '48', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('481', '48', 'é“œé™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('482', '49', 'é•œæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('483', '49', 'å¼‹æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('484', '49', 'é¸ æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('485', '49', 'ä¸‰å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('486', '49', 'èŠœæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('487', '49', 'ç¹æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('488', '49', 'å—é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('489', '50', 'å®£å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('490', '50', 'å®å›½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('491', '50', 'éƒæºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('492', '50', 'å¹¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('493', '50', 'æ³¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('494', '50', 'ç»©æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('495', '50', 'æ—Œå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('496', '51', 'æ¶¡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('497', '51', 'è’™åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('498', '51', 'åˆ©è¾›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('499', '51', 'è°¯åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('500', '52', 'ä¸œåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('501', '52', 'è¥¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('502', '52', 'æµ·æ·€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('503', '52', 'æœé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('504', '52', 'å´‡æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('505', '52', 'å®£æ­¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('506', '52', 'ä¸°å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('507', '52', 'çŸ³æ™¯å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('508', '52', 'æˆ¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('509', '52', 'é—¨å¤´æ²ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('510', '52', 'é€šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('511', '52', 'é¡ºä¹‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('512', '52', 'æ˜Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('513', '52', 'æ€€æŸ”åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('514', '52', 'å¹³è°·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('515', '52', 'å¤§å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('516', '52', 'å¯†äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('517', '52', 'å»¶åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('518', '53', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('519', '53', 'å°æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('520', '53', 'ä»“å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('521', '53', 'é©¬å°¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('522', '53', 'æ™‹å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('523', '53', 'ç¦æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('524', '53', 'é•¿ä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('525', '53', 'é—½ä¾¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('526', '53', 'è¿æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('527', '53', 'ç½—æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('528', '53', 'é—½æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('529', '53', 'æ°¸æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('530', '53', 'å¹³æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('531', '54', 'æ–°ç½—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('532', '54', 'æ¼³å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('533', '54', 'é•¿æ±€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('534', '54', 'æ°¸å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('535', '54', 'ä¸Šæ­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('536', '54', 'æ­¦å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('537', '54', 'è¿åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('538', '55', 'å»¶å¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('539', '55', 'é‚µæ­¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('540', '55', 'æ­¦å¤·å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('541', '55', 'å»ºç“¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('542', '55', 'å»ºé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('543', '55', 'é¡ºæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('544', '55', 'æµ¦åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('545', '55', 'å…‰æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('546', '55', 'æ¾æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('547', '55', 'æ”¿å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('548', '56', 'è•‰åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('549', '56', 'ç¦å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('550', '56', 'ç¦é¼å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('551', '56', 'éœæµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('552', '56', 'å¤ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('553', '56', 'å±å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('554', '56', 'å¯¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('555', '56', 'å‘¨å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('556', '56', 'æŸ˜è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('557', '57', 'åŸå¢åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('558', '57', 'æ¶µæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('559', '57', 'è”åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('560', '57', 'ç§€å±¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('561', '57', 'ä»™æ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('562', '58', 'é²¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('563', '58', 'ä¸°æ³½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('564', '58', 'æ´›æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('565', '58', 'æ¸…æ¿›å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('566', '58', 'æ³‰æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('567', '58', 'çŸ³ç‹®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('568', '58', 'æ™‹æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('569', '58', 'å—å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('570', '58', 'æƒ å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('571', '58', 'å®‰æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('572', '58', 'æ°¸æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('573', '58', 'å¾·åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('574', '58', 'é‡‘é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('575', '59', 'æ¢…åˆ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('576', '59', 'ä¸‰å…ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('577', '59', 'æ°¸å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('578', '59', 'æ˜æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('579', '59', 'æ¸…æµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('580', '59', 'å®åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('581', '59', 'å¤§ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('582', '59', 'å°¤æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('583', '59', 'æ²™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('584', '59', 'å°†ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('585', '59', 'æ³°å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('586', '59', 'å»ºå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('587', '60', 'æ€æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('588', '60', 'æµ·æ²§åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('589', '60', 'æ¹–é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('590', '60', 'é›†ç¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('591', '60', 'åŒå®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('592', '60', 'ç¿”å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('593', '61', 'èŠ—åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('594', '61', 'é¾™æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('595', '61', 'é¾™æµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('596', '61', 'äº‘éœ„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('597', '61', 'æ¼³æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('598', '61', 'è¯å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('599', '61', 'é•¿æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('600', '61', 'ä¸œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('601', '61', 'å—é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('602', '61', 'å¹³å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('603', '61', 'åå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('604', '62', 'çš‹å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('605', '62', 'åŸå…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('606', '62', 'ä¸ƒé‡Œæ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('607', '62', 'è¥¿å›ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('608', '62', 'å®‰å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('609', '62', 'çº¢å¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('610', '62', 'æ°¸ç™»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('611', '62', 'æ¦†ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('612', '63', 'ç™½é“¶åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('613', '63', 'å¹³å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('614', '63', 'ä¼šå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('615', '63', 'æ™¯æ³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('616', '63', 'é–è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('617', '64', 'ä¸´æ´®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('618', '64', 'é™‡è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('619', '64', 'é€šæ¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('620', '64', 'æ¸­æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('621', '64', 'æ¼³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('622', '64', 'å²·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('623', '64', 'å®‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('624', '64', 'å®‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('625', '65', 'åˆä½œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('626', '65', 'ä¸´æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('627', '65', 'å“å°¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('628', '65', 'èˆŸæ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('629', '65', 'è¿­éƒ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('630', '65', 'ç›æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('631', '65', 'ç¢Œæ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('632', '65', 'å¤æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('633', '66', 'å˜‰å³ªå…³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('634', '67', 'é‡‘å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('635', '67', 'æ°¸æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('636', '68', 'è‚ƒå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('637', '68', 'ç‰é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('638', '68', 'æ•¦ç…Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('639', '68', 'é‡‘å¡”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('640', '68', 'ç“œå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('641', '68', 'è‚ƒåŒ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('642', '68', 'é˜¿å…‹å¡\', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('643', '69', 'ä¸´å¤å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('644', '69', 'ä¸´å¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('645', '69', 'åº·ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('646', '69', 'æ°¸é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('647', '69', 'å¹¿æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('648', '69', 'å’Œæ”¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('649', '69', 'ä¸œä¹¡æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('650', '69', 'ç§¯çŸ³å±\±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('651', '70', 'æˆå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('652', '70', 'å¾½å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('653', '70', 'åº·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('654', '70', 'ç¤¼å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('655', '70', 'ä¸¤å½“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('656', '70', 'æ–‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('657', '70', 'è¥¿å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('658', '70', 'å®•æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('659', '70', 'æ­¦éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('660', '71', 'å´‡ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('661', '71', 'åäº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('662', '71', 'é™å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('663', '71', 'çµå°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('664', '71', 'å´†å³’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('665', '71', 'åº„æµªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('666', '71', 'æ³¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('667', '72', 'åˆæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('668', '72', 'åæ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('669', '72', 'ç¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('670', '72', 'å®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('671', '72', 'åº†åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('672', '72', 'è¥¿å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('673', '72', 'é•‡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('674', '72', 'æ­£å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('675', '73', 'ç”˜è°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('676', '73', 'ç§¦å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('677', '73', 'æ¸…æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('678', '73', 'ç§¦å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('679', '73', 'éº¦ç§¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('680', '73', 'æ­¦å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('681', '73', 'å¼ å®¶å·\', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('682', '74', 'å¤æµªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('683', '74', 'æ°‘å‹¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('684', '74', 'å¤©ç¥', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('685', '74', 'å‡‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('686', '75', 'é«˜å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('687', '75', 'ä¸´æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('688', '75', 'æ°‘ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('689', '75', 'å±±ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('690', '75', 'è‚ƒå—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('691', '75', 'ç”˜å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('692', '76', 'ä»åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('693', '76', 'å¤©æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('694', '76', 'ä¸œå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('695', '76', 'ç™½äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('696', '76', 'æµ·ç åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('697', '76', 'è”æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('698', '76', 'è¶Šç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('699', '76', 'é»„åŸ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('700', '76', 'ç•ªç¦ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('701', '76', 'èŠ±éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('702', '76', 'å¢åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('703', '76', 'ä»åŒ–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('704', '76', 'å¸‚éƒŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('705', '77', 'ç¦ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('706', '77', 'ç½—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('707', '77', 'å—å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('708', '77', 'å®å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('709', '77', 'é¾™å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('710', '77', 'ç›ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('711', '78', 'æ¹˜æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('712', '78', 'æ½®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('713', '78', 'é¥¶å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('714', '79', 'å—åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('715', '79', 'ä¸œåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('716', '79', 'ä¸‡æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('717', '79', 'èåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('718', '79', 'çŸ³é¾™é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('719', '79', 'è™é—¨é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('720', '79', 'éº»æ¶Œé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('721', '79', 'é“æ»˜é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('722', '79', 'çŸ³ç¢£é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('723', '79', 'æ²™ç”°é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('724', '79', 'æœ›ç‰›å¢©é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('725', '79', 'æ´ªæ¢…é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('726', '79', 'èŒ¶å±±é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('727', '79', 'å¯®æ­¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('728', '79', 'å¤§å²­å±±é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('729', '79', 'å¤§æœ—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('730', '79', 'é»„æ±Ÿé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('731', '79', 'æ¨Ÿæœ¨å¤\´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('732', '79', 'å‡¤å²—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('733', '79', 'å¡˜å¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('734', '79', 'è°¢å²—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('735', '79', 'åšè¡—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('736', '79', 'æ¸…æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('737', '79', 'å¸¸å¹³é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('738', '79', 'æ¡¥å¤´é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('739', '79', 'æ¨ªæ²¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('740', '79', 'ä¸œå‘é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('741', '79', 'ä¼çŸ³é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('742', '79', 'çŸ³æ’é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('743', '79', 'é•¿å®‰é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('744', '79', 'ä¸­å ‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('745', '79', 'é«˜åŸ—é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('746', '80', 'ç¦…åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('747', '80', 'å—æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('748', '80', 'é¡ºå¾·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('749', '80', 'ä¸‰æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('750', '80', 'é«˜æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('751', '81', 'ä¸œæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('752', '81', 'å’Œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('753', '81', 'æºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('754', '81', 'è¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('755', '81', 'é¾™å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('756', '81', 'ç´«é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('757', '82', 'æƒ é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('758', '82', 'æƒ åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('759', '82', 'å¤§äºšæ¹\¾', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('760', '82', 'åšç½—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('761', '82', 'æƒ ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('762', '82', 'é¾™é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('763', '83', 'æ±Ÿæµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('764', '83', 'è“¬æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('765', '83', 'æ–°ä¼šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('766', '83', 'å°å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('767', '83', 'å¼€å¹³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('768', '83', 'é¹¤å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('769', '83', 'æ©å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('770', '84', 'æ¦•åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('771', '84', 'æ™®å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('772', '84', 'æ­ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('773', '84', 'æ­è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('774', '84', 'æƒ æ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('775', '85', 'èŒ‚å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('776', '85', 'èŒ‚æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('777', '85', 'é«˜å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('778', '85', 'åŒ–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('779', '85', 'ä¿¡å®œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('780', '85', 'ç”µç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('781', '86', 'æ¢…å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('782', '86', 'æ¢…æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('783', '86', 'å…´å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('784', '86', 'å¤§åŸ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('785', '86', 'ä¸°é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('786', '86', 'äº”åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('787', '86', 'å¹³è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('788', '86', 'è•‰å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('789', '87', 'æ¸…åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('790', '87', 'è‹±å¾·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('791', '87', 'è¿å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('792', '87', 'ä½›å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('793', '87', 'é˜³å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('794', '87', 'æ¸…æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('795', '87', 'è¿å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('796', '87', 'è¿å—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('797', '88', 'å—æ¾³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('798', '88', 'æ½®é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('799', '88', 'æ¾„æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('800', '88', 'é¾™æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('801', '88', 'é‡‘å¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('802', '88', 'æ¿ æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('803', '88', 'æ½®å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('804', '89', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('805', '89', 'é™†ä¸°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('806', '89', 'æµ·ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('807', '89', 'é™†æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('808', '90', 'æ›²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('809', '90', 'æµˆæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('810', '90', 'æ­¦æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('811', '90', 'æ›²æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('812', '90', 'ä¹æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('813', '90', 'å—é›„å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('814', '90', 'å§‹å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('815', '90', 'ä»åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('816', '90', 'ç¿æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('817', '90', 'æ–°ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('818', '90', 'ä¹³æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('819', '91', 'æ±ŸåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('820', '91', 'é˜³æ˜¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('821', '91', 'é˜³è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('822', '91', 'é˜³ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('823', '92', 'äº‘åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('824', '92', 'ç½—å®šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('825', '92', 'æ–°å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('826', '92', 'éƒå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('827', '92', 'äº‘å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('828', '93', 'èµ¤ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('829', '93', 'éœå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('830', '93', 'å¡å¤´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('831', '93', 'éº»ç« åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('832', '93', 'å»‰æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('833', '93', 'é›·å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('834', '93', 'å´å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('835', '93', 'é‚æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('836', '93', 'å¾é—»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('837', '94', 'è‚‡åº†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('838', '94', 'é«˜è¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('839', '94', 'å››ä¼šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('840', '94', 'å¹¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('841', '94', 'æ€€é›†å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('842', '94', 'å°å¼€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('843', '94', 'å¾·åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('844', '95', 'çŸ³å²è¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('845', '95', 'ä¸œåŒºè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('846', '95', 'è¥¿åŒºè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('847', '95', 'ç¯åŸè¡—é“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('848', '95', 'ä¸­å±±æ¸¯è¡—é\“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('849', '95', 'äº”æ¡‚å±±è¡—é\“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('850', '96', 'é¦™æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('851', '96', 'æ–—é—¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('852', '96', 'é‡‘æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('853', '97', 'é‚•å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('854', '97', 'é’ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('855', '97', 'å…´å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('856', '97', 'è‰¯åº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('857', '97', 'è¥¿ä¹¡å¡˜åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('858', '97', 'æ±Ÿå—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('859', '97', 'æ­¦é¸£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('860', '97', 'éš†å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('861', '97', 'é©¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('862', '97', 'ä¸Šæ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('863', '97', 'å®¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('864', '97', 'æ¨ªå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('865', '98', 'ç§€å³°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('866', '98', 'å å½©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('867', '98', 'è±¡å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('868', '98', 'ä¸ƒæ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('869', '98', 'é›å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('870', '98', 'é˜³æœ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('871', '98', 'ä¸´æ¡‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('872', '98', 'çµå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('873', '98', 'å…¨å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('874', '98', 'å¹³ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('875', '98', 'å…´å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('876', '98', 'çŒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('877', '98', 'è”æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('878', '98', 'èµ„æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('879', '98', 'æ°¸ç¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('880', '98', 'é¾™èƒœ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('881', '98', 'æ­åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('882', '99', 'å³æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('883', '99', 'å‡Œäº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('884', '99', 'å¹³æœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('885', '99', 'è¥¿æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('886', '99', 'ä¹ä¸šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('887', '99', 'å¾·ä¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('888', '99', 'ç”°æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('889', '99', 'ç”°é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('890', '99', 'é–è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('891', '99', 'ç”°ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('892', '99', 'é‚£å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('893', '99', 'éš†æ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('894', '100', 'æµ·åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('895', '100', 'é“¶æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('896', '100', 'é“å±±æ¸¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('897', '100', 'åˆæµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('898', '101', 'æ±Ÿå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('899', '101', 'å‡­ç¥¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('900', '101', 'å®æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('901', '101', 'æ‰¶ç»¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('902', '101', 'é¾™å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('903', '101', 'å¤§æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('904', '101', 'å¤©ç­‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('905', '102', 'æ¸¯å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('906', '102', 'é˜²åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('907', '102', 'ä¸œå…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('908', '102', 'ä¸Šæ€å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('909', '103', 'æ¸¯åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('910', '103', 'æ¸¯å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('911', '103', 'è¦ƒå¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('912', '103', 'æ¡‚å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('913', '103', 'å¹³å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('914', '104', 'é‡‘åŸæ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('915', '104', 'å®œå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('916', '104', 'å¤©å³¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('917', '104', 'å‡¤å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('918', '104', 'å—ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('919', '104', 'ä¸œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('920', '104', 'éƒ½å®‰', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('921', '104', 'ç½—åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('922', '104', 'å·´é©¬', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('923', '104', 'ç¯æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('924', '104', 'å¤§åŒ–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('925', '105', 'å…«æ­¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('926', '105', 'é’Ÿå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('927', '105', 'æ˜­å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('928', '105', 'å¯Œå·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('929', '106', 'å…´å®¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('930', '106', 'åˆå±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('931', '106', 'è±¡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('932', '106', 'æ­¦å®£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('933', '106', 'å¿»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('934', '106', 'é‡‘ç§€', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('935', '107', 'åŸä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('936', '107', 'é±¼å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('937', '107', 'æŸ³åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('938', '107', 'æŸ³å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('939', '107', 'æŸ³æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('940', '107', 'æŸ³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('941', '107', 'é¹¿å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('942', '107', 'èå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('943', '107', 'èæ°´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('944', '107', 'ä¸‰æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('945', '108', 'é’¦å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('946', '108', 'é’¦åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('947', '108', 'çµå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('948', '108', 'æµ¦åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('949', '109', 'ä¸‡ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('950', '109', 'è¶å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('951', '109', 'é•¿æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('952', '109', 'å²‘æºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('953', '109', 'è‹æ¢§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('954', '109', 'è—¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('955', '109', 'è’™å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('956', '110', 'ç‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('957', '110', 'åŒ—æµå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('958', '110', 'å®¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('959', '110', 'é™†å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('960', '110', 'åšç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('961', '110', 'å…´ä¸šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('962', '111', 'å—æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('963', '111', 'äº‘å²©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('964', '111', 'èŠ±æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('965', '111', 'ä¹Œå½“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('966', '111', 'ç™½äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('967', '111', 'å°æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('968', '111', 'é‡‘é˜³æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('969', '111', 'æ–°å¤©å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('970', '111', 'æ¸…é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('971', '111', 'å¼€é˜³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('972', '111', 'ä¿®æ–‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('973', '111', 'æ¯çƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('974', '112', 'è¥¿ç§€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('975', '112', 'å…³å²­', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('976', '112', 'é•‡å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('977', '112', 'ç´«äº‘', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('978', '112', 'å¹³åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('979', '112', 'æ™®å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('980', '113', 'æ¯•èŠ‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('981', '113', 'å¤§æ–¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('982', '113', 'é»”è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('983', '113', 'é‡‘æ²™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('984', '113', 'ç»‡é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('985', '113', 'çº³é›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('986', '113', 'èµ«ç« å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('987', '113', 'å¨å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('988', '114', 'é’Ÿå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('989', '114', 'å…­æç‰¹åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('990', '114', 'æ°´åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('991', '114', 'ç›˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('992', '115', 'å‡¯é‡Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('993', '115', 'é»„å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('994', '115', 'æ–½ç§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('995', '115', 'ä¸‰ç©—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('996', '115', 'é•‡è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('997', '115', 'å²‘å·©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('998', '115', 'å¤©æŸ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('999', '115', 'é”¦å±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1000', '115', 'å‰‘æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1001', '115', 'å°æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1002', '115', 'é»å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1003', '115', 'æ¦•æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1004', '115', 'ä»æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1005', '115', 'é›·å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1006', '115', 'éº»æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1007', '115', 'ä¸¹å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1008', '116', 'éƒ½åŒ€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1009', '116', 'ç¦æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1010', '116', 'è”æ³¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1011', '116', 'è´µå®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1012', '116', 'ç“®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1013', '116', 'ç‹¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1014', '116', 'å¹³å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1015', '116', 'ç½—ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1016', '116', 'é•¿é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1017', '116', 'é¾™é‡Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1018', '116', 'æƒ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1019', '116', 'ä¸‰éƒ½', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1020', '117', 'å…´ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1021', '117', 'å…´ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1022', '117', 'æ™®å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1023', '117', 'æ™´éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1024', '117', 'è´ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1025', '117', 'æœ›è°Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1026', '117', 'å†Œäº¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1027', '117', 'å®‰é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1028', '118', 'é“œä»å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1029', '118', 'æ±Ÿå£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1030', '118', 'çŸ³é˜¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1031', '118', 'æ€å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1032', '118', 'å¾·æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1033', '118', 'ç‰å±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1034', '118', 'å°æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1035', '118', 'æ²¿æ²³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1036', '118', 'æ¾æ¡ƒ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1037', '118', 'ä¸‡å±±ç‰¹åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1038', '119', 'çº¢èŠ±å²—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1039', '119', 'åŠ¡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1040', '119', 'é“çœŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1041', '119', 'æ±‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1042', '119', 'èµ¤æ°´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1043', '119', 'ä»æ€€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1044', '119', 'éµä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1045', '119', 'æ¡æ¢“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1046', '119', 'ç»¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1047', '119', 'æ­£å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1048', '119', 'å‡¤å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1049', '119', 'æ¹„æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1050', '119', 'ä½™åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1051', '119', 'ä¹ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1052', '119', 'é“çœŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1053', '119', 'åŠ¡å·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1054', '120', 'ç§€è‹±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1055', '120', 'é¾™ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1056', '120', 'ç¼å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1057', '120', 'ç¾å…°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1058', '137', 'å¸‚åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1059', '137', 'æ´‹æµ¦å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1060', '137', 'é‚£å¤§é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1061', '137', 'ç‹äº”é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1062', '137', 'é›…æ˜Ÿé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1063', '137', 'å¤§æˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1064', '137', 'ä¸­å’Œé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1065', '137', 'å³¨è”“é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1066', '137', 'å—ä¸°é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1067', '137', 'ç™½é©¬äº•é•‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1068', '137', 'å…°æ´‹é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1069', '137', 'å’Œåº†é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1070', '137', 'æµ·å¤´é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1071', '137', 'æ’æµ¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1072', '137', 'ä¸œæˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1073', '137', 'å…‰æ‘é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1074', '137', 'æœ¨æ£ é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1075', '137', 'æ–°å·é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1076', '137', 'ä¸‰éƒ½é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1077', '137', 'å…¶ä»–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1078', '138', 'é•¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1079', '138', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1080', '138', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1081', '138', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1082', '138', 'è£•ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1083', '138', 'äº•é™‰çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1084', '138', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1085', '138', 'è¾›é›†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1086', '138', 'è—åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1087', '138', 'æ™‹å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1088', '138', 'æ–°ä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1089', '138', 'é¹¿æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1090', '138', 'äº•é™‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1091', '138', 'æ­£å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1092', '138', 'æ ¾åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1093', '138', 'è¡Œå”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1094', '138', 'çµå¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1095', '138', 'é«˜é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1096', '138', 'æ·±æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1097', '138', 'èµçš‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1098', '138', 'æ— æå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1099', '138', 'å¹³å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1100', '138', 'å…ƒæ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1101', '138', 'èµµå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1102', '139', 'æ–°å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1103', '139', 'å—å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1104', '139', 'åŒ—å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1105', '139', 'æ¶¿å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1106', '139', 'å®šå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1107', '139', 'å®‰å›½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1108', '139', 'é«˜ç¢‘åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1109', '139', 'æ»¡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1110', '139', 'æ¸…è‹‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1111', '139', 'æ¶æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1112', '139', 'é˜œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1113', '139', 'å¾æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1114', '139', 'å®šå…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1115', '139', 'å”å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1116', '139', 'é«˜é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1117', '139', 'å®¹åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1118', '139', 'æ¶æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1119', '139', 'æœ›éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1120', '139', 'å®‰æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1121', '139', 'æ˜“å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1122', '139', 'æ›²é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1123', '139', 'è ¡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1124', '139', 'é¡ºå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1125', '139', 'åšé‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1126', '139', 'é›„å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1127', '140', 'è¿æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1128', '140', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1129', '140', 'æ³Šå¤´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1130', '140', 'ä»»ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1131', '140', 'é»„éª…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1132', '140', 'æ²³é—´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1133', '140', 'æ²§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1134', '140', 'é’å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1135', '140', 'ä¸œå…‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1136', '140', 'æµ·å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1137', '140', 'ç›å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1138', '140', 'è‚ƒå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1139', '140', 'å—çš®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1140', '140', 'å´æ¡¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1141', '140', 'çŒ®å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1142', '140', 'å­Ÿæ‘', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1143', '141', 'åŒæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1144', '141', 'åŒæ»¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1145', '141', 'é¹°æ‰‹è¥å­çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1146', '141', 'æ‰¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1147', '141', 'å…´éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1148', '141', 'å¹³æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1149', '141', 'æ»¦å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1150', '141', 'éš†åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1151', '141', 'ä¸°å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1152', '141', 'å®½åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1153', '141', 'å›´åœº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1154', '142', 'ä»å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1155', '142', 'å¤å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1156', '142', 'é‚¯å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1157', '142', 'å³°å³°çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1158', '142', 'æ­¦å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1159', '142', 'é‚¯éƒ¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1160', '142', 'ä¸´æ¼³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1161', '142', 'æˆå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1162', '142', 'å¤§åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1163', '142', 'æ¶‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1164', '142', 'ç£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1165', '142', 'è‚¥ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1166', '142', 'æ°¸å¹´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1167', '142', 'é‚±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1168', '142', 'é¸¡æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1169', '142', 'å¹¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1170', '142', 'é¦†é™¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1171', '142', 'é­å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1172', '142', 'æ›²å‘¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1173', '143', 'æ¡ƒåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1174', '143', 'å†€å·å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1175', '143', 'æ·±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1176', '143', 'æ£å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1177', '143', 'æ­¦é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1178', '143', 'æ­¦å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1179', '143', 'é¥¶é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1180', '143', 'å®‰å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1181', '143', 'æ•…åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1182', '143', 'æ™¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1183', '143', 'é˜œåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1184', '144', 'å®‰æ¬¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1185', '144', 'å¹¿é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1186', '144', 'éœ¸å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1187', '144', 'ä¸‰æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1188', '144', 'å›ºå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1189', '144', 'æ°¸æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1190', '144', 'é¦™æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1191', '144', 'å¤§åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1192', '144', 'æ–‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1193', '144', 'å¤§å‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1194', '145', 'æµ·æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1195', '145', 'å±±æµ·å…³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1196', '145', 'åŒ—æˆ´æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1197', '145', 'æ˜Œé»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1198', '145', 'æŠšå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1199', '145', 'å¢é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1200', '145', 'é’é¾™', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1201', '146', 'è·¯åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1202', '146', 'è·¯å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1203', '146', 'å¤å†¶åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1204', '146', 'å¼€å¹³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1205', '146', 'ä¸°å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1206', '146', 'ä¸°æ¶¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1207', '146', 'éµåŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1208', '146', 'è¿å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1209', '146', 'æ»¦å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1210', '146', 'æ»¦å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1211', '146', 'ä¹äº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1212', '146', 'è¿è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1213', '146', 'ç‰ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1214', '146', 'å”æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1215', '147', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1216', '147', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1217', '147', 'å—å®«å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1218', '147', 'æ²™æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1219', '147', 'é‚¢å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1220', '147', 'ä¸´åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1221', '147', 'å†…ä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1222', '147', 'æŸä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1223', '147', 'éš†å°§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1224', '147', 'ä»»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1225', '147', 'å—å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1226', '147', 'å®æ™‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1227', '147', 'å·¨é¹¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1228', '147', 'æ–°æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1229', '147', 'å¹¿å®—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1230', '147', 'å¹³ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1231', '147', 'å¨å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1232', '147', 'æ¸…æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1233', '147', 'ä¸´è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1234', '148', 'æ¡¥è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1235', '148', 'æ¡¥ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1236', '148', 'å®£åŒ–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1237', '148', 'ä¸‹èŠ±å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1238', '148', 'å®£åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1239', '148', 'å¼ åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1240', '148', 'åº·ä¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1241', '148', 'æ²½æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1242', '148', 'å°šä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1243', '148', 'è”šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1244', '148', 'é˜³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1245', '148', 'æ€€å®‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1246', '148', 'ä¸‡å…¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1247', '148', 'æ€€æ¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1248', '148', 'æ¶¿é¹¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1249', '148', 'èµ¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1250', '148', 'å´‡ç¤¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1251', '149', 'é‡‘æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1252', '149', 'é‚™å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1253', '149', 'äºŒä¸ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1254', '149', 'ç®¡åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1255', '149', 'ä¸­åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1256', '149', 'ä¸Šè¡—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1257', '149', 'æƒ æµåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1258', '149', 'éƒ‘ä¸œæ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1259', '149', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1260', '149', 'é«˜æ–°å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1261', '149', 'å‡ºå£åŠ å·¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1262', '149', 'å·©ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1263', '149', 'è¥é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1264', '149', 'æ–°å¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1265', '149', 'æ–°éƒ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1266', '149', 'ç™»å°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1267', '149', 'ä¸­ç‰Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1268', '150', 'è¥¿å·¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1269', '150', 'è€åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1270', '150', 'æ¶§è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1271', '150', 'ç€æ²³å›æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1272', '150', 'æ´›é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1273', '150', 'å‰åˆ©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1274', '150', 'åƒå¸ˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1275', '150', 'å­Ÿæ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1276', '150', 'æ–°å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1277', '150', 'æ ¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1278', '150', 'åµ©å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1279', '150', 'æ±é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1280', '150', 'å®œé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1281', '150', 'æ´›å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1282', '150', 'ä¼Šå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1283', '151', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1284', '151', 'é¾™äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1285', '151', 'é¡ºæ²³å›æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1286', '151', 'é‡‘æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1287', '151', 'ç¦¹ç‹å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1288', '151', 'æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1289', '151', 'é€šè®¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1290', '151', 'å°‰æ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1291', '151', 'å¼€å°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1292', '151', 'å…°è€ƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1293', '152', 'åŒ—å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1294', '152', 'æ–‡å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1295', '152', 'æ®·éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1296', '152', 'é¾™å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1297', '152', 'æ—å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1298', '152', 'å®‰é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1299', '152', 'æ±¤é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1300', '152', 'æ»‘å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1301', '152', 'å†…é»„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1302', '153', 'æ·‡æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1303', '153', 'å±±åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1304', '153', 'é¹¤å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1305', '153', 'æµšå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1306', '153', 'æ·‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1307', '154', 'æµæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1308', '155', 'è§£æ”¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1309', '155', 'ä¸­ç«™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1310', '155', 'é©¬æ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1311', '155', 'å±±é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1312', '155', 'æ²é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1313', '155', 'å­Ÿå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1314', '155', 'ä¿®æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1315', '155', 'åšçˆ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1316', '155', 'æ­¦é™Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1317', '155', 'æ¸©å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1318', '156', 'å§é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1319', '156', 'å®›åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1320', '156', 'é‚“å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1321', '156', 'å—å¬å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1322', '156', 'æ–¹åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1323', '156', 'è¥¿å³¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1324', '156', 'é•‡å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1325', '156', 'å†…ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1326', '156', 'æ·…å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1327', '156', 'ç¤¾æ——å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1328', '156', 'å”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1329', '156', 'æ–°é‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1330', '156', 'æ¡æŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1331', '157', 'æ–°ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1332', '157', 'å«ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1333', '157', 'æ¹›æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1334', '157', 'çŸ³é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1335', '157', 'èˆé’¢å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1336', '157', 'æ±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1337', '157', 'å®ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1338', '157', 'å¶å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1339', '157', 'é²å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1340', '157', 'éƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1341', '158', 'æ¹–æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1342', '158', 'ä¹‰é©¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1343', '158', 'çµå®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1344', '158', 'æ¸‘æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1345', '158', 'é™•å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1346', '158', 'å¢æ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1347', '159', 'æ¢å›­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1348', '159', 'ç¢é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1349', '159', 'æ°¸åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1350', '159', 'æ°‘æƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1351', '159', 'ç¢å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1352', '159', 'å®é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1353', '159', 'è™åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1354', '159', 'æŸ˜åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1355', '159', 'å¤é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1356', '160', 'å«æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1357', '160', 'çº¢æ——åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1358', '160', 'å‡¤æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1359', '160', 'ç‰§é‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1360', '160', 'å«è¾‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1361', '160', 'è¾‰å¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1362', '160', 'æ–°ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1363', '160', 'è·å˜‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1364', '160', 'åŸé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1365', '160', 'å»¶æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1366', '160', 'å°ä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1367', '160', 'é•¿å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1368', '161', 'æµ‰æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1369', '161', 'å¹³æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1370', '161', 'ç½—å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1371', '161', 'å…‰å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1372', '161', 'æ–°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1373', '161', 'å•†åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1374', '161', 'å›ºå§‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1375', '161', 'æ½¢å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1376', '161', 'æ·®æ»¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1377', '161', 'æ¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1378', '162', 'é­éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1379', '162', 'ç¦¹å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1380', '162', 'é•¿è‘›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1381', '162', 'è®¸æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1382', '162', 'é„¢é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1383', '162', 'è¥„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1384', '163', 'å·æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1385', '163', 'é¡¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1386', '163', 'æ‰¶æ²Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1387', '163', 'è¥¿åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1388', '163', 'å•†æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1389', '163', 'æ²ˆä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1390', '163', 'éƒ¸åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1391', '163', 'æ·®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1392', '163', 'å¤ªåº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1393', '163', 'é¹¿é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1394', '164', 'é©¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1395', '164', 'è¥¿å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1396', '164', 'ä¸Šè”¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1397', '164', 'å¹³èˆ†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1398', '164', 'æ­£é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1399', '164', 'ç¡®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1400', '164', 'æ³Œé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1401', '164', 'æ±å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1402', '164', 'é‚å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1403', '164', 'æ–°è”¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1404', '165', 'éƒ¾åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1405', '165', 'æºæ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1406', '165', 'å¬é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1407', '165', 'èˆé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1408', '165', 'ä¸´é¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1409', '166', 'åé¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1410', '166', 'æ¸…ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1411', '166', 'å—ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1412', '166', 'èŒƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1413', '166', 'å°å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1414', '166', 'æ¿®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1415', '167', 'é“é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1416', '167', 'å—å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1417', '167', 'åŠ¨åŠ›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1418', '167', 'å¹³æˆ¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1419', '167', 'é¦™åŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1420', '167', 'å¤ªå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1421', '167', 'é“å¤–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1422', '167', 'é˜¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1423', '167', 'å‘¼å…°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1424', '167', 'æ¾åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1425', '167', 'å°šå¿—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1426', '167', 'åŒåŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1427', '167', 'äº”å¸¸å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1428', '167', 'æ–¹æ­£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1429', '167', 'å®¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1430', '167', 'ä¾å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1431', '167', 'å·´å½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1432', '167', 'é€šæ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1433', '167', 'æœ¨å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1434', '167', 'å»¶å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1435', '168', 'è¨å°”å›¾åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1436', '168', 'çº¢å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1437', '168', 'é¾™å‡¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1438', '168', 'è®©èƒ¡è·¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1439', '168', 'å¤§åŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1440', '168', 'è‚‡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1441', '168', 'è‚‡æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1442', '168', 'æ—ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1443', '168', 'æœå°”ä¼¯ç‰¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1444', '169', 'å‘¼ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1445', '169', 'æ¼ æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1446', '169', 'å¡”æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1447', '170', 'å…´å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1448', '170', 'å·¥å†œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1449', '170', 'å—å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1450', '170', 'å…´å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1451', '170', 'å‘é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1452', '170', 'ä¸œå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1453', '170', 'èåŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1454', '170', 'ç»¥æ»¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1455', '171', 'çˆ±è¾‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1456', '171', 'äº”å¤§è¿æ± å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1457', '171', 'åŒ—å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1458', '171', 'å«©æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1459', '171', 'é€Šå…‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1460', '171', 'å­™å´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1461', '172', 'é¸¡å† åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1462', '172', 'æ’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1463', '172', 'åŸå­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1464', '172', 'æ»´é“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1465', '172', 'æ¢¨æ ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1466', '172', 'è™æ—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1467', '172', 'å¯†å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1468', '172', 'é¸¡ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1469', '173', 'å‰è¿›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1470', '173', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1471', '173', 'å‘é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1472', '173', 'ä¸œé£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1473', '173', 'åŒæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1474', '173', 'å¯Œé”¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1475', '173', 'æ¡¦å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1476', '173', 'æ¡¦å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1477', '173', 'æ±¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1478', '173', 'æŠšè¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1479', '174', 'çˆ±æ°‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1480', '174', 'ä¸œå®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1481', '174', 'é˜³æ˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1482', '174', 'è¥¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1483', '174', 'ç»¥èŠ¬æ²³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1484', '174', 'æµ·æ—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1485', '174', 'å®å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1486', '174', 'ç©†æ£±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1487', '174', 'ä¸œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1488', '174', 'æ—å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1489', '175', 'æ¡ƒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1490', '175', 'æ–°å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1491', '175', 'èŒ„å­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1492', '175', 'å‹ƒåˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1493', '176', 'é¾™æ²™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1494', '176', 'æ˜‚æ˜‚æºªåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1495', '176', 'é“å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1496', '176', 'å»ºååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1497', '176', 'å¯Œæ‹‰å°”åŸºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1498', '176', 'ç¢¾å­å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1499', '176', 'æ¢…é‡Œæ–¯è¾¾æ–¡å°”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1500', '176', 'è®·æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1501', '176', 'é¾™æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1502', '176', 'ä¾å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1503', '176', 'æ³°æ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1504', '176', 'ç”˜å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1505', '176', 'å¯Œè£•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1506', '176', 'å…‹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1507', '176', 'å…‹ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1508', '176', 'æ‹œæ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1509', '177', 'å°–å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1510', '177', 'å²­ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1511', '177', 'å››æ–¹å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1512', '177', 'å®å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1513', '177', 'é›†è´¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1514', '177', 'å‹è°Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1515', '177', 'å®æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1516', '177', 'é¥¶æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1517', '178', 'åŒ—æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1518', '178', 'å®‰è¾¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1519', '178', 'è‚‡ä¸œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1520', '178', 'æµ·ä¼¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1521', '178', 'æœ›å¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1522', '178', 'å…°è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1523', '178', 'é’å†ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1524', '178', 'åº†å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1525', '178', 'æ˜æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1526', '178', 'ç»¥æ£±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1527', '179', 'ä¼Šæ˜¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1528', '179', 'å¸¦å²­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1529', '179', 'å—å²”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1530', '179', 'é‡‘å±±å±¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1531', '179', 'è¥¿æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1532', '179', 'ç¾æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1533', '179', 'ä¹Œé©¬æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1534', '179', 'ç¿ å³¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1535', '179', 'å‹å¥½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1536', '179', 'ä¸Šç”˜å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1537', '179', 'äº”è¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1538', '179', 'çº¢æ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1539', '179', 'æ–°é’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1540', '179', 'æ±¤æ—ºæ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1541', '179', 'ä¹Œä¼Šå²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1542', '179', 'é“åŠ›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1543', '179', 'å˜‰è«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1544', '180', 'æ±Ÿå²¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1545', '180', 'æ­¦æ˜ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1546', '180', 'æ±Ÿæ±‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1547', '180', 'ç¡šå£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1548', '180', 'æ±‰é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1549', '180', 'é’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1550', '180', 'æ´ªå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1551', '180', 'ä¸œè¥¿æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1552', '180', 'æ±‰å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1553', '180', 'è”¡ç”¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1554', '180', 'æ±Ÿå¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1555', '180', 'é»„é™‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1556', '180', 'æ–°æ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1557', '180', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1558', '181', 'ä»™æ¡ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1559', '182', 'é„‚åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1560', '182', 'åå®¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1561', '182', 'æ¢å­æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1562', '183', 'é»„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1563', '183', 'éº»åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1564', '183', 'æ­¦ç©´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1565', '183', 'å›¢é£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1566', '183', 'çº¢å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1567', '183', 'ç½—ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1568', '183', 'è‹±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1569', '183', 'æµ æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1570', '183', 'è•²æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1571', '183', 'é»„æ¢…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1572', '184', 'é»„çŸ³æ¸¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1573', '184', 'è¥¿å¡å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1574', '184', 'ä¸‹é™†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1575', '184', 'é“å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1576', '184', 'å¤§å†¶å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1577', '184', 'é˜³æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1578', '185', 'ä¸œå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1579', '185', 'æ‡åˆ€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1580', '185', 'é’Ÿç¥¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1581', '185', 'äº¬å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1582', '185', 'æ²™æ´‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1583', '186', 'æ²™å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1584', '186', 'è†å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1585', '186', 'çŸ³é¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1586', '186', 'æ´ªæ¹–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1587', '186', 'æ¾æ»‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1588', '186', 'å…¬å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1589', '186', 'ç›‘åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1590', '186', 'æ±Ÿé™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1591', '187', 'æ½œæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1592', '188', 'ç¥å†œæ¶æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1593', '189', 'å¼ æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1594', '189', 'èŒ…ç®­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1595', '189', 'ä¸¹æ±Ÿå£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1596', '189', 'éƒ§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1597', '189', 'éƒ§è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1598', '189', 'ç«¹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1599', '189', 'ç«¹æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1600', '189', 'æˆ¿å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1601', '190', 'æ›¾éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1602', '190', 'å¹¿æ°´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1603', '191', 'å¤©é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1604', '192', 'å’¸å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1605', '192', 'èµ¤å£å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1606', '192', 'å˜‰é±¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1607', '192', 'é€šåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1608', '192', 'å´‡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1609', '192', 'é€šå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1610', '193', 'è¥„åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1611', '193', 'æ¨ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1612', '193', 'è¥„é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1613', '193', 'è€æ²³å£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1614', '193', 'æ£é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1615', '193', 'å®œåŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1616', '193', 'å—æ¼³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1617', '193', 'è°·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1618', '193', 'ä¿åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1619', '194', 'å­å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1620', '194', 'åº”åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1621', '194', 'å®‰é™†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1622', '194', 'æ±‰å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1623', '194', 'å­æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1624', '194', 'å¤§æ‚Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1625', '194', 'äº‘æ¢¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1626', '195', 'é•¿é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1627', '195', 'äº”å³°', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1628', '195', 'è¥¿é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1629', '195', 'ä¼å®¶å²—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1630', '195', 'ç‚¹å†›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1631', '195', 'çŒ‡äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1632', '195', 'å¤·é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1633', '195', 'å®œéƒ½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1634', '195', 'å½“é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1635', '195', 'ææ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1636', '195', 'è¿œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1637', '195', 'å…´å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1638', '195', 'ç§­å½’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1639', '196', 'æ©æ–½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1640', '196', 'åˆ©å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1641', '196', 'å»ºå§‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1642', '196', 'å·´ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1643', '196', 'å®£æ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1644', '196', 'å’¸ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1645', '196', 'æ¥å‡¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1646', '196', 'é¹¤å³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1647', '197', 'å²³éº“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1648', '197', 'èŠ™è“‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1649', '197', 'å¤©å¿ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1650', '197', 'å¼€ç¦åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1651', '197', 'é›¨èŠ±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1652', '197', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1653', '197', 'æµé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1654', '197', 'é•¿æ²™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1655', '197', 'æœ›åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1656', '197', 'å®ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1657', '198', 'æ°¸å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1658', '198', 'æ­¦é™µæºåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1659', '198', 'æ…ˆåˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1660', '198', 'æ¡‘æ¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1661', '199', 'æ­¦é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1662', '199', 'é¼åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1663', '199', 'æ´¥å¸‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1664', '199', 'å®‰ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1665', '199', 'æ±‰å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1666', '199', 'æ¾§å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1667', '199', 'ä¸´æ¾§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1668', '199', 'æ¡ƒæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1669', '199', 'çŸ³é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1670', '200', 'åŒ—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1671', '200', 'è‹ä»™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1672', '200', 'èµ„å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1673', '200', 'æ¡‚é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1674', '200', 'å®œç« å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1675', '200', 'æ°¸å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1676', '200', 'å˜‰ç¦¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1677', '200', 'ä¸´æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1678', '200', 'æ±åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1679', '200', 'æ¡‚ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1680', '200', 'å®‰ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1681', '201', 'é›å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1682', '201', 'ç æ™–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1683', '201', 'çŸ³é¼“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1684', '201', 'è’¸æ¹˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1685', '201', 'å—å²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1686', '201', 'è€’é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1687', '201', 'å¸¸å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1688', '201', 'è¡¡é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1689', '201', 'è¡¡å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1690', '201', 'è¡¡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1691', '201', 'è¡¡ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1692', '201', 'ç¥ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1693', '202', 'é¹¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1694', '202', 'é–å·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1695', '202', 'éº»é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1696', '202', 'é€šé“', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1697', '202', 'æ–°æ™ƒ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1698', '202', 'èŠ·æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1699', '202', 'æ²…é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1700', '202', 'è¾°æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1701', '202', 'æº†æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1702', '202', 'ä¸­æ–¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1703', '202', 'ä¼šåŒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1704', '202', 'æ´ªæ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1705', '203', 'å¨„æ˜ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1706', '203', 'å†·æ°´æ±Ÿå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1707', '203', 'æ¶Ÿæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1708', '203', 'åŒå³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1709', '203', 'æ–°åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1710', '204', 'åŸæ­¥', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1711', '204', 'åŒæ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1712', '204', 'å¤§ç¥¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1713', '204', 'åŒ—å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1714', '204', 'æ­¦å†ˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1715', '204', 'é‚µä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1716', '204', 'æ–°é‚µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1717', '204', 'é‚µé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1718', '204', 'éš†å›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1719', '204', 'æ´å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1720', '204', 'ç»¥å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1721', '204', 'æ–°å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1722', '205', 'å²³å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1723', '205', 'é›¨æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1724', '205', 'æ¹˜ä¹¡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1725', '205', 'éŸ¶å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1726', '205', 'æ¹˜æ½­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1727', '206', 'å‰é¦–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1728', '206', 'æ³¸æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1729', '206', 'å‡¤å‡°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1730', '206', 'èŠ±å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1731', '206', 'ä¿é–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1732', '206', 'å¤ä¸ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1733', '206', 'æ°¸é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1734', '206', 'é¾™å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1735', '207', 'èµ«å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1736', '207', 'èµ„é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1737', '207', 'æ²…æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1738', '207', 'å—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1739', '207', 'æ¡ƒæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1740', '207', 'å®‰åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1741', '208', 'æ±Ÿå', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1742', '208', 'å†·æ°´æ»©åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1743', '208', 'é›¶é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1744', '208', 'ç¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1745', '208', 'ä¸œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1746', '208', 'åŒç‰Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1747', '208', 'é“å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1748', '208', 'æ±Ÿæ°¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1749', '208', 'å®è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1750', '208', 'è“å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1751', '208', 'æ–°ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1752', '209', 'å²³é˜³æ¥¼åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1753', '209', 'å›å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1754', '209', 'äº‘æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1755', '209', 'æ±¨ç½—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1756', '209', 'ä¸´æ¹˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1757', '209', 'å²³é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1758', '209', 'åå®¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1759', '209', 'æ¹˜é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1760', '209', 'å¹³æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1761', '210', 'å¤©å…ƒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1762', '210', 'è·å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1763', '210', 'èŠ¦æ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1764', '210', 'çŸ³å³°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1765', '210', 'é†´é™µå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1766', '210', 'æ ªæ´²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1767', '210', 'æ”¸å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1768', '210', 'èŒ¶é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1769', '210', 'ç‚é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1770', '211', 'æœé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1771', '211', 'å®½åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1772', '211', 'äºŒé“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1773', '211', 'å—å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1774', '211', 'ç»¿å›­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1775', '211', 'åŒé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1776', '211', 'å‡€æœˆæ½­å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1777', '211', 'é«˜æ–°æŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1778', '211', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1779', '211', 'æ±½è½¦äº§ä¸šå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1780', '211', 'å¾·æƒ å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1781', '211', 'ä¹å°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1782', '211', 'æ¦†æ ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1783', '211', 'å†œå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1784', '212', 'èˆ¹è¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1785', '212', 'æ˜Œé‚‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1786', '212', 'é¾™æ½­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1787', '212', 'ä¸°æ»¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1788', '212', 'è›Ÿæ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1789', '212', 'æ¡¦ç”¸å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1790', '212', 'èˆ’å…°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1791', '212', 'ç£çŸ³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1792', '212', 'æ°¸å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1793', '213', 'æ´®åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1794', '213', 'æ´®å—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1795', '213', 'å¤§å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1796', '213', 'é•‡èµ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1797', '213', 'é€šæ¦†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1798', '214', 'æ±ŸæºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1799', '214', 'å…«é“æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1800', '214', 'é•¿ç™½', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1801', '214', 'ä¸´æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1802', '214', 'æŠšæ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1803', '214', 'é–å®‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1804', '215', 'é¾™å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1805', '215', 'è¥¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1806', '215', 'ä¸œä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1807', '215', 'ä¸œè¾½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1808', '216', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1809', '216', 'é“ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1810', '216', 'ä¼Šé€\š', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1811', '216', 'å…¬ä¸»å²­å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1812', '216', 'åŒè¾½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1813', '216', 'æ¢¨æ ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1814', '217', 'å‰éƒ­å°”ç½—æ–\¯', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1815', '217', 'å®æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1816', '217', 'é•¿å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1817', '217', 'ä¹¾å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1818', '217', 'æ‰¶ä½™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1819', '218', 'ä¸œæ˜ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1820', '218', 'äºŒé“æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1821', '218', 'æ¢…æ²³å£å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1822', '218', 'é›†å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1823', '218', 'é€šåŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1824', '218', 'è¾‰å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1825', '218', 'æŸ³æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1826', '219', 'å»¶å‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1827', '219', 'å›¾ä»¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1828', '219', 'æ•¦åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1829', '219', 'ç²æ˜¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1830', '219', 'é¾™äº•å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1831', '219', 'å’Œé¾™å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1832', '219', 'å®‰å›¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1833', '219', 'æ±ªæ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1834', '220', 'ç„æ­¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1835', '220', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1836', '220', 'ç™½ä¸‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1837', '220', 'å»ºé‚ºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1838', '220', 'ç§¦æ·®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1839', '220', 'é›¨èŠ±å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1840', '220', 'ä¸‹å…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1841', '220', 'æ –éœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1842', '220', 'æµ¦å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1843', '220', 'æ±Ÿå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1844', '220', 'å…­åˆåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1845', '220', 'æº§æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1846', '220', 'é«˜æ·³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1847', '221', 'æ²§æµªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1848', '221', 'é‡‘é˜ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1849', '221', 'å¹³æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1850', '221', 'è™ä¸˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1851', '221', 'å´ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1852', '221', 'ç›¸åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1853', '221', 'å›­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1854', '221', 'æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1855', '221', 'å¸¸ç†Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1856', '221', 'å¼ å®¶æ¸¯å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1857', '221', 'ç‰å±±é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1858', '221', 'å·´åŸé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1859', '221', 'å‘¨å¸‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1860', '221', 'é™†å®¶é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1861', '221', 'èŠ±æ¡¥é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1862', '221', 'æ·€å±±æ¹–é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1863', '221', 'å¼ æµ¦é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1864', '221', 'å‘¨åº„é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1865', '221', 'åƒç¯é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1866', '221', 'é”¦æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1867', '221', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1868', '221', 'å´æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1869', '221', 'å¤ªä»“å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1870', '222', 'å´‡å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1871', '222', 'åŒ—å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1872', '222', 'å—é•¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1873', '222', 'é”¡å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1874', '222', 'æƒ å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1875', '222', 'æ»¨æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1876', '222', 'æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1877', '222', 'æ±Ÿé˜´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1878', '222', 'å®œå…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1879', '223', 'å¤©å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1880', '223', 'é’Ÿæ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1881', '223', 'æˆšå¢…å °åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1882', '223', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1883', '223', 'æ–°åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1884', '223', 'æ­¦è¿›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1885', '223', 'æº§é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1886', '223', 'é‡‘å›å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1887', '224', 'æ¸…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1888', '224', 'æ¸…æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1889', '224', 'æ¥šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1890', '224', 'æ·®é˜´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1891', '224', 'æ¶Ÿæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1892', '224', 'æ´ªæ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1893', '224', 'ç›±çœ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1894', '224', 'é‡‘æ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1895', '225', 'æ–°æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1896', '225', 'è¿äº‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1897', '225', 'æµ·å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1898', '225', 'èµ£æ¦†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1899', '225', 'ä¸œæµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1900', '225', 'çŒäº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1901', '225', 'çŒå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1902', '226', 'å´‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1903', '226', 'æ¸¯é—¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1904', '226', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1905', '226', 'å¯ä¸œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1906', '226', 'å¦‚çš‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1907', '226', 'é€šå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1908', '226', 'æµ·é—¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1909', '226', 'æµ·å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1910', '226', 'å¦‚ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1911', '227', 'å®¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1912', '227', 'å®¿è±«åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1913', '227', 'å®¿è±«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1914', '227', 'æ²­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1915', '227', 'æ³—é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1916', '227', 'æ³—æ´ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1917', '228', 'æµ·é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1918', '228', 'é«˜æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1919', '228', 'å…´åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1920', '228', 'é–æ±Ÿå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1921', '228', 'æ³°å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1922', '228', 'å§œå °å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1923', '229', 'äº‘é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1924', '229', 'é¼“æ¥¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1925', '229', 'ä¹é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1926', '229', 'è´¾æ±ªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1927', '229', 'æ³‰å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1928', '229', 'æ–°æ²‚å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1929', '229', 'é‚³å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1930', '229', 'ä¸°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1931', '229', 'æ²›å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1932', '229', 'é“œå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1933', '229', 'ç¢å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1934', '230', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1935', '230', 'äº­æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1936', '230', 'ç›éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1937', '230', 'ç›éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1938', '230', 'ä¸œå°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1939', '230', 'å¤§ä¸°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1940', '230', 'å“æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1941', '230', 'æ»¨æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1942', '230', 'é˜œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1943', '230', 'å°„é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1944', '230', 'å»ºæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1945', '231', 'å¹¿é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1946', '231', 'ç»´æ‰¬åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1947', '231', 'é‚—æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1948', '231', 'ä»ªå¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1949', '231', 'é«˜é‚®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1950', '231', 'æ±Ÿéƒ½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1951', '231', 'å®åº”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1952', '232', 'äº¬å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1953', '232', 'æ¶¦å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1954', '232', 'ä¸¹å¾’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1955', '232', 'ä¸¹é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1956', '232', 'æ‰¬ä¸­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1957', '232', 'å¥å®¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1958', '233', 'ä¸œæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1959', '233', 'è¥¿æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1960', '233', 'é’äº‘è°±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1961', '233', 'æ¹¾é‡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1962', '233', 'é’å±±æ¹–åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1963', '233', 'çº¢è°·æ»©æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1964', '233', 'æ˜ŒåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1965', '233', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1966', '233', 'å—æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1967', '233', 'æ–°å»ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1968', '233', 'å®‰ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1969', '233', 'è¿›è´¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1970', '234', 'ä¸´å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1971', '234', 'å—åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1972', '234', 'é»å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1973', '234', 'å—ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1974', '234', 'å´‡ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1975', '234', 'ä¹å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1976', '234', 'å®œé»„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1977', '234', 'é‡‘æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1978', '234', 'èµ„æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1979', '234', 'ä¸œä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1980', '234', 'å¹¿æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1981', '235', 'ç« è´¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1982', '235', 'äºéƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1983', '235', 'ç‘é‡‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1984', '235', 'å—åº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1985', '235', 'èµ£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1986', '235', 'ä¿¡ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1987', '235', 'å¤§ä½™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1988', '235', 'ä¸ŠçŠ¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1989', '235', 'å´‡ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1990', '235', 'å®‰è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1991', '235', 'é¾™å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1992', '235', 'å®šå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1993', '235', 'å…¨å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1994', '235', 'å®éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1995', '235', 'å…´å›½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1996', '235', 'ä¼šæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1997', '235', 'å¯»ä¹Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1998', '235', 'çŸ³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('1999', '236', 'å®‰ç¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2000', '236', 'å‰å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2001', '236', 'é’åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2002', '236', 'äº•å†ˆå±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2003', '236', 'å‰å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2004', '236', 'å‰æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2005', '236', 'å³¡æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2006', '236', 'æ–°å¹²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2007', '236', 'æ°¸ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2008', '236', 'æ³°å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2009', '236', 'é‚å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2010', '236', 'ä¸‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2011', '236', 'æ°¸æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2012', '237', 'ç å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2013', '237', 'æ˜Œæ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2014', '237', 'ä¹å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2015', '237', 'æµ®æ¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2016', '238', 'æµ”é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2017', '238', 'åºå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2018', '238', 'ç‘æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2019', '238', 'ä¹æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2020', '238', 'æ­¦å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2021', '238', 'ä¿®æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2022', '238', 'æ°¸ä¿®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2023', '238', 'å¾·å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2024', '238', 'æ˜Ÿå­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2025', '238', 'éƒ½æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2026', '238', 'æ¹–å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2027', '238', 'å½­æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2028', '239', 'å®‰æºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2029', '239', 'æ¹˜ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2030', '239', 'è²èŠ±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2031', '239', 'èŠ¦æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2032', '239', 'ä¸Šæ —å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2033', '240', 'ä¿¡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2034', '240', 'å¾·å…´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2035', '240', 'ä¸Šé¥¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2036', '240', 'å¹¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2037', '240', 'ç‰å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2038', '240', 'é“…å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2039', '240', 'æ¨ªå³°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2040', '240', 'å¼‹é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2041', '240', 'ä½™å¹²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2042', '240', 'æ³¢é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2043', '240', 'ä¸‡å¹´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2044', '240', 'å©ºæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2045', '241', 'æ¸æ°´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2046', '241', 'åˆ†å®œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2047', '242', 'è¢å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2048', '242', 'ä¸°åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2049', '242', 'æ¨Ÿæ ‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2050', '242', 'é«˜å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2051', '242', 'å¥‰æ–°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2052', '242', 'ä¸‡è½½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2053', '242', 'ä¸Šé«˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2054', '242', 'å®œä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2055', '242', 'é–å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2056', '242', 'é“œé¼“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2057', '243', 'æœˆæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2058', '243', 'è´µæºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2059', '243', 'ä½™æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2060', '244', 'æ²ˆæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2061', '244', 'çš‡å§‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2062', '244', 'å’Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2063', '244', 'å¤§ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2064', '244', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2065', '244', 'è‹å®¶å±¯åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2066', '244', 'ä¸œé™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2067', '244', 'æ²ˆåŒ—æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2068', '244', 'äºæ´ªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2069', '244', 'æµ‘å—æ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2070', '244', 'æ–°æ°‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2071', '244', 'è¾½ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2072', '244', 'åº·å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2073', '244', 'æ³•åº“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2074', '245', 'è¥¿å²—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2075', '245', 'ä¸­å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2076', '245', 'æ²™æ²³å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2077', '245', 'ç”˜äº•å­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2078', '245', 'æ—…é¡ºå£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2079', '245', 'é‡‘å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2080', '245', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2081', '245', 'ç“¦æˆ¿åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2082', '245', 'æ™®å…°åº—å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2083', '245', 'åº„æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2084', '245', 'é•¿æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2085', '246', 'é“ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2086', '246', 'é“è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2087', '246', 'ç«‹å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2088', '246', 'åƒå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2089', '246', 'å²«å²©', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2090', '246', 'æµ·åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2091', '246', 'å°å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2092', '247', 'æœ¬æºª', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2093', '247', 'å¹³å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2094', '247', 'æ˜å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2095', '247', 'æºªæ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2096', '247', 'å—èŠ¬åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2097', '247', 'æ¡“ä»', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2098', '248', 'åŒå¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2099', '248', 'é¾™åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2100', '248', 'å–€å–‡æ²å·¦ç¿¼è’™å¤æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2101', '248', 'åŒ—ç¥¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2102', '248', 'å‡Œæºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2103', '248', 'æœé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2104', '248', 'å»ºå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2105', '249', 'æŒ¯å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2106', '249', 'å…ƒå®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2107', '249', 'æŒ¯å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2108', '249', 'å®½ç”¸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2109', '249', 'ä¸œæ¸¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2110', '249', 'å‡¤åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2111', '250', 'é¡ºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2112', '250', 'æ–°æŠšåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2113', '250', 'ä¸œæ´²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2114', '250', 'æœ›èŠ±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2115', '250', 'æ¸…åŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2116', '250', 'æ–°å®¾', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2117', '250', 'æŠšé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2118', '251', 'é˜œæ–°', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2119', '251', 'æµ·å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2120', '251', 'æ–°é‚±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2121', '251', 'å¤ªå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2122', '251', 'æ¸…æ²³é—¨åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2123', '251', 'ç»†æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2124', '251', 'å½°æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2125', '252', 'é¾™æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2126', '252', 'å—ç¥¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2127', '252', 'è¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2128', '252', 'å…´åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2129', '252', 'ç»¥ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2130', '252', 'å»ºæ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2131', '253', 'å¤ªå’ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2132', '253', 'å¤å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2133', '253', 'å‡Œæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2134', '253', 'å‡Œæµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2135', '253', 'åŒ—é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2136', '253', 'é»‘å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2137', '253', 'ä¹‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2138', '254', 'ç™½å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2139', '254', 'æ–‡åœ£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2140', '254', 'å®ä¼ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2141', '254', 'å¤ªå­æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2142', '254', 'å¼“é•¿å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2143', '254', 'ç¯å¡”å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2144', '254', 'è¾½é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2145', '255', 'åŒå°å­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2146', '255', 'å…´éš†å°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2147', '255', 'å¤§æ´¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2148', '255', 'ç›˜å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2149', '256', 'é“¶å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2150', '256', 'æ¸…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2151', '256', 'è°ƒå…µå±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2152', '256', 'å¼€åŸå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2153', '256', 'é“å²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2154', '256', 'è¥¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2155', '256', 'æ˜Œå›¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2156', '257', 'ç«™å‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2157', '257', 'è¥¿å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2158', '257', 'é²…é±¼åœˆåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2159', '257', 'è€è¾¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2160', '257', 'ç›–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2161', '257', 'å¤§çŸ³æ¡¥å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2162', '258', 'å›æ°‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2163', '258', 'ç‰æ³‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2164', '258', 'æ–°åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2165', '258', 'èµ›ç½•åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2166', '258', 'æ¸…æ°´æ²³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2167', '258', 'åœŸé»˜ç‰¹å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2168', '258', 'æ‰˜å…‹æ‰˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2169', '258', 'å’Œæ—æ ¼å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2170', '258', 'æ­¦å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2171', '259', 'é˜¿æ‹‰å–„å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2172', '259', 'é˜¿æ‹‰å–„å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2173', '259', 'é¢æµçº³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2174', '260', 'ä¸´æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2175', '260', 'äº”åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2176', '260', 'ç£´å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2177', '260', 'ä¹Œæ‹‰ç‰¹å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2178', '260', 'ä¹Œæ‹‰ç‰¹ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2179', '260', 'ä¹Œæ‹‰ç‰¹åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2180', '260', 'æ­é”¦åæ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2181', '261', 'æ˜†éƒ½ä»‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2182', '261', 'é’å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2183', '261', 'ä¸œæ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2184', '261', 'ä¹åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2185', '261', 'çŸ³æ‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2186', '261', 'ç™½äº‘çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2187', '261', 'åœŸé»˜ç‰¹å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2188', '261', 'å›ºé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2189', '261', 'è¾¾å°”ç½•èŒ‚æ˜å®‰è”åˆæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2190', '262', 'çº¢å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2191', '262', 'å…ƒå®å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2192', '262', 'æ¾å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2193', '262', 'é˜¿é²ç§‘å°”æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2194', '262', 'å·´æ—å·¦æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2195', '262', 'å·´æ—å³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2196', '262', 'æ—è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2197', '262', 'å…‹ä»€å…‹è…¾æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2198', '262', 'ç¿ç‰›ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2199', '262', 'å–€å–‡æ²æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2200', '262', 'å®åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2201', '262', 'æ•–æ±‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2202', '263', 'ä¸œèƒœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2203', '263', 'è¾¾æ‹‰ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2204', '263', 'å‡†æ ¼å°”æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2205', '263', 'é„‚æ‰˜å…‹å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2206', '263', 'é„‚æ‰˜å…‹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2207', '263', 'æ­é”¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2208', '263', 'ä¹Œå®¡æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2209', '263', 'ä¼Šé‡‘éœæ´›æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2210', '264', 'æµ·æ‹‰å°”åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2211', '264', 'è«åŠ›è¾¾ç“¦', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2212', '264', 'æ»¡æ´²é‡Œå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2213', '264', 'ç‰™å…‹çŸ³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2214', '264', 'æ‰å…°å±¯å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2215', '264', 'é¢å°”å¤çº³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2216', '264', 'æ ¹æ²³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2217', '264', 'é˜¿è£æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2218', '264', 'é„‚ä¼¦æ˜¥è‡ªæ²»æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2219', '264', 'é„‚æ¸©å…‹æ—è‡ªæ²»æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2220', '264', 'é™ˆå·´å°”è™æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2221', '264', 'æ–°å·´å°”è™å·¦æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2222', '264', 'æ–°å·´å°”è™å³æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2223', '265', 'ç§‘å°”æ²åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2224', '265', 'éœæ—éƒ­å‹’å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2225', '265', 'ç§‘å°”æ²å·¦ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2226', '265', 'ç§‘å°”æ²å·¦ç¿¼åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2227', '265', 'å¼€é²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2228', '265', 'åº“ä¼¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2229', '265', 'å¥ˆæ›¼æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2230', '265', 'æ‰é²ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2231', '266', 'æµ·å‹ƒæ¹¾åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2232', '266', 'ä¹Œè¾¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2233', '266', 'æµ·å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2234', '267', 'åŒ–å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2235', '267', 'é›†å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2236', '267', 'ä¸°é•‡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2237', '267', 'å“èµ„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2238', '267', 'å•†éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2239', '267', 'å…´å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2240', '267', 'å‡‰åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2241', '267', 'å¯Ÿå“ˆå°”å³ç¿¼å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2242', '267', 'å¯Ÿå“ˆå°”å³ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2243', '267', 'å¯Ÿå“ˆå°”å³ç¿¼åæ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2244', '267', 'å››å­ç‹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2245', '268', 'äºŒè¿æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2246', '268', 'é”¡æ—æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2247', '268', 'é˜¿å·´å˜æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2248', '268', 'è‹å°¼ç‰¹å·¦æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2249', '268', 'è‹å°¼ç‰¹å³æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2250', '268', 'ä¸œä¹Œç ç©†æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2251', '268', 'è¥¿ä¹Œç ç©†æ²æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2252', '268', 'å¤ªä»†å¯ºæ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2253', '268', 'é•¶é»„æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2254', '268', 'æ­£é•¶ç™½æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2255', '268', 'æ­£è“æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2256', '268', 'å¤šä¼¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2257', '269', 'ä¹Œå…°æµ©ç‰¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2258', '269', 'é˜¿å°”å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2259', '269', 'ç§‘å°”æ²å³ç¿¼å‰æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2260', '269', 'ç§‘å°”æ²å³ç¿¼ä¸­æ—\—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2261', '269', 'æ‰èµ‰ç‰¹æ——', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2262', '269', 'çªæ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2263', '270', 'è¥¿å¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2264', '270', 'é‡‘å‡¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2265', '270', 'å…´åº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2266', '270', 'çµæ­¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2267', '270', 'æ°¸å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2268', '270', 'è´ºå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2269', '271', 'åŸå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2270', '271', 'æµ·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2271', '271', 'è¥¿å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2272', '271', 'éš†å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2273', '271', 'æ³¾æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2274', '271', 'å½­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2275', '272', 'æƒ å†œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2276', '272', 'å¤§æ­¦å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2277', '272', 'æƒ å†œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2278', '272', 'é™¶ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2279', '272', 'å¹³ç½—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2280', '273', 'åˆ©é€šåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2281', '273', 'ä¸­å«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2282', '273', 'é’é“œå³¡å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2283', '273', 'ä¸­å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2284', '273', 'ç›æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2285', '273', 'åŒå¿ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2286', '274', 'æ²™å¡å¤´åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2287', '274', 'æµ·åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2288', '274', 'ä¸­å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2289', '275', 'åŸä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2290', '275', 'åŸä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2291', '275', 'åŸè¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2292', '275', 'åŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2293', '275', 'æ¹Ÿä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2294', '275', 'æ¹Ÿæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2295', '275', 'å¤§é€\š', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2296', '276', 'ç›æ²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2297', '276', 'ç­ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2298', '276', 'ç”˜å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2299', '276', 'è¾¾æ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2300', '276', 'ä¹…æ²»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2301', '276', 'ç›å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2302', '277', 'æµ·æ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2303', '277', 'ç¥è¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2304', '277', 'åˆšå¯Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2305', '277', 'é—¨æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2306', '278', 'å¹³å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2307', '278', 'ä¹éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2308', '278', 'æ°‘å’Œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2309', '278', 'äº’åŠ©', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2310', '278', 'åŒ–éš†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2311', '278', 'å¾ªåŒ–', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2312', '279', 'å…±å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2313', '279', 'åŒå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2314', '279', 'è´µå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2315', '279', 'å…´æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2316', '279', 'è´µå—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2317', '280', 'å¾·ä»¤å“ˆå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2318', '280', 'æ ¼å°”æœ¨å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2319', '280', 'ä¹Œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2320', '280', 'éƒ½å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2321', '280', 'å¤©å³»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2322', '281', 'åŒä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2323', '281', 'å°–æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2324', '281', 'æ³½åº“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2325', '281', 'æ²³å—è’™å¤æ—è‡ªæ²»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2326', '282', 'ç‰æ ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2327', '282', 'æ‚å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2328', '282', 'ç§°å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2329', '282', 'æ²»å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2330', '282', 'å›Šè°¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2331', '282', 'æ›²éº»è±å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2332', '283', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2333', '283', 'å†ä¸‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2334', '283', 'å¤©æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2335', '283', 'æ§è«åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2336', '283', 'å†åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2337', '283', 'é•¿æ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2338', '283', 'ç« ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2339', '283', 'å¹³é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2340', '283', 'æµé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2341', '283', 'å•†æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2342', '284', 'å¸‚å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2343', '284', 'å¸‚åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2344', '284', 'åŸé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2345', '284', 'å››æ–¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2346', '284', 'ææ²§åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2347', '284', 'é»„å²›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2348', '284', 'å´‚å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2349', '284', 'èƒ¶å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2350', '284', 'å³å¢¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2351', '284', 'å¹³åº¦å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2352', '284', 'èƒ¶å—å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2353', '284', 'è±è¥¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2354', '285', 'æ»¨åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2355', '285', 'æƒ æ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2356', '285', 'é˜³ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2357', '285', 'æ— æ££å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2358', '285', 'æ²¾åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2359', '285', 'åšå…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2360', '285', 'é‚¹å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2361', '286', 'å¾·åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2362', '286', 'é™µå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2363', '286', 'ä¹é™µå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2364', '286', 'ç¦¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2365', '286', 'å®æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2366', '286', 'åº†äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2367', '286', 'ä¸´é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2368', '286', 'é½æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2369', '286', 'å¹³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2370', '286', 'å¤æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2371', '286', 'æ­¦åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2372', '287', 'ä¸œè¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2373', '287', 'æ²³å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2374', '287', 'å¦åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2375', '287', 'åˆ©æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2376', '287', 'å¹¿é¥¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2377', '288', 'ç‰¡ä¸¹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2378', '288', 'æ›¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2379', '288', 'å•å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2380', '288', 'æˆæ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2381', '288', 'å·¨é‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2382', '288', 'éƒ“åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2383', '288', 'é„„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2384', '288', 'å®šé™¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2385', '288', 'ä¸œæ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2386', '289', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2387', '289', 'ä»»åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2388', '289', 'æ›²é˜œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2389', '289', 'å…–å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2390', '289', 'é‚¹åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2391', '289', 'å¾®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2392', '289', 'é±¼å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2393', '289', 'é‡‘ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2394', '289', 'å˜‰ç¥¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2395', '289', 'æ±¶ä¸Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2396', '289', 'æ³—æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2397', '289', 'æ¢å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2398', '290', 'è±åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2399', '290', 'é’¢åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2400', '291', 'ä¸œæ˜ŒåºœåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2401', '291', 'ä¸´æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2402', '291', 'é˜³è°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2403', '291', 'è˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2404', '291', 'èŒŒå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2405', '291', 'ä¸œé˜¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2406', '291', 'å† å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2407', '291', 'é«˜å”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2408', '292', 'å…°å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2409', '292', 'ç½—åº„åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2410', '292', 'æ²³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2411', '292', 'æ²‚å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2412', '292', 'éƒ¯åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2413', '292', 'æ²‚æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2414', '292', 'è‹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2415', '292', 'è´¹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2416', '292', 'å¹³é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2417', '292', 'è’å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2418', '292', 'è’™é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2419', '292', 'ä¸´æ²­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2420', '293', 'ä¸œæ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2421', '293', 'å²šå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2422', '293', 'äº”è²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2423', '293', 'è’å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2424', '294', 'æ³°å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2425', '294', 'å²±å²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2426', '294', 'æ–°æ³°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2427', '294', 'è‚¥åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2428', '294', 'å®é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2429', '294', 'ä¸œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2430', '295', 'è£æˆå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2431', '295', 'ä¹³å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2432', '295', 'ç¯ç¿ åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2433', '295', 'æ–‡ç™»å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2434', '296', 'æ½åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2435', '296', 'å¯’äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2436', '296', 'åŠå­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2437', '296', 'å¥æ–‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2438', '296', 'é’å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2439', '296', 'è¯¸åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2440', '296', 'å¯¿å…‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2441', '296', 'å®‰ä¸˜å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2442', '296', 'é«˜å¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2443', '296', 'æ˜Œé‚‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2444', '296', 'ä¸´æœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2445', '296', 'æ˜Œä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2446', '297', 'èŠç½˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2447', '297', 'ç¦å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2448', '297', 'ç‰Ÿå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2449', '297', 'è±å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2450', '297', 'å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2451', '297', 'é¾™å£å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2452', '297', 'è±é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2453', '297', 'è±å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2454', '297', 'è“¬è±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2455', '297', 'æ‹›è¿œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2456', '297', 'æ –éœå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2457', '297', 'æµ·é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2458', '297', 'é•¿å²›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2459', '298', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2460', '298', 'å±±äº­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2461', '298', 'å³„åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2462', '298', 'å°å„¿åº„åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2463', '298', 'è–›åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2464', '298', 'æ»•å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2465', '299', 'å¼ åº—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2466', '299', 'ä¸´æ·„åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2467', '299', 'æ·„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2468', '299', 'åšå±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2469', '299', 'å‘¨æ‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2470', '299', 'æ¡“å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2471', '299', 'é«˜é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2472', '299', 'æ²‚æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2473', '300', 'æèŠ±å²­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2474', '300', 'å°åº—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2475', '300', 'è¿æ³½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2476', '300', 'å°–è‰åªåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2477', '300', 'ä¸‡æŸæ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2478', '300', 'æ™‹æºåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2479', '300', 'é«˜æ–°å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2480', '300', 'æ°‘è¥ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2481', '300', 'ç»æµæŠ€æœ¯å¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2482', '300', 'æ¸…å¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2483', '300', 'é˜³æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2484', '300', 'å¨„çƒ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2485', '300', 'å¤äº¤å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2486', '301', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2487', '301', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2488', '301', 'æ²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2489', '301', 'æ½åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2490', '301', 'é•¿æ²»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2491', '301', 'è¥„å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2492', '301', 'å±¯ç•™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2493', '301', 'å¹³é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2494', '301', 'é»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2495', '301', 'å£¶å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2496', '301', 'é•¿å­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2497', '301', 'æ­¦ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2498', '301', 'æ²æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2499', '302', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2500', '302', 'çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2501', '302', 'å—éƒŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2502', '302', 'æ–°è£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2503', '302', 'é˜³é«˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2504', '302', 'å¤©é•‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2505', '302', 'å¹¿çµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2506', '302', 'çµä¸˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2507', '302', 'æµ‘æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2508', '302', 'å·¦äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2509', '302', 'å¤§åŒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2510', '303', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2511', '303', 'é«˜å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2512', '303', 'æ²æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2513', '303', 'é˜³åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2514', '303', 'é™µå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2515', '303', 'æ³½å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2516', '304', 'æ¦†æ¬¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2517', '304', 'ä»‹ä¼‘å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2518', '304', 'æ¦†ç¤¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2519', '304', 'å·¦æƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2520', '304', 'å’Œé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2521', '304', 'æ˜”é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2522', '304', 'å¯¿é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2523', '304', 'å¤ªè°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2524', '304', 'ç¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2525', '304', 'å¹³é¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2526', '304', 'çµçŸ³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2527', '305', 'å°§éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2528', '305', 'ä¾¯é©¬å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2529', '305', 'éœå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2530', '305', 'æ›²æ²ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2531', '305', 'ç¿¼åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2532', '305', 'è¥„æ±¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2533', '305', 'æ´ªæ´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2534', '305', 'å‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2535', '305', 'å®‰æ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2536', '305', 'æµ®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2537', '305', 'å¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2538', '305', 'ä¹¡å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2539', '305', 'å¤§å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2540', '305', 'éš°å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2541', '305', 'æ°¸å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2542', '305', 'è’²å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2543', '305', 'æ±¾è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2544', '306', 'ç¦»çŸ³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2545', '306', 'ç¦»çŸ³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2546', '306', 'å­ä¹‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2547', '306', 'æ±¾é˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2548', '306', 'æ–‡æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2549', '306', 'äº¤åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2550', '306', 'å…´å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2551', '306', 'ä¸´å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2552', '306', 'æŸ³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2553', '306', 'çŸ³æ¥¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2554', '306', 'å²šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2555', '306', 'æ–¹å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2556', '306', 'ä¸­é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2557', '306', 'äº¤å£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2558', '307', 'æœ”åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2559', '307', 'å¹³é²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2560', '307', 'å±±é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2561', '307', 'åº”å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2562', '307', 'å³ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2563', '307', 'æ€€ä»å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2564', '308', 'å¿»åºœåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2565', '308', 'åŸå¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2566', '308', 'å®šè¥„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2567', '308', 'äº”å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2568', '308', 'ä»£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2569', '308', 'ç¹å³™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2570', '308', 'å®æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2571', '308', 'é™ä¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2572', '308', 'ç¥æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2573', '308', 'äº”å¯¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2574', '308', 'å²¢å²šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2575', '308', 'æ²³æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2576', '308', 'ä¿å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2577', '308', 'åå…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2578', '309', 'åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2579', '309', 'çŸ¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2580', '309', 'éƒŠåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2581', '309', 'å¹³å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2582', '309', 'ç›‚å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2583', '310', 'ç›æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2584', '310', 'æ°¸æµå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2585', '310', 'æ²³æ´¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2586', '310', 'ä¸´çŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2587', '310', 'ä¸‡è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2588', '310', 'é—»å–œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2589', '310', 'ç¨·å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2590', '310', 'æ–°ç»›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2591', '310', 'ç»›å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2592', '310', 'å£æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2593', '310', 'å¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2594', '310', 'å¹³é™†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2595', '310', 'èŠ®åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2596', '311', 'è²æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2597', '311', 'æ–°åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2598', '311', 'ç¢‘æ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2599', '311', 'é›å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2600', '311', 'çæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2601', '311', 'æœªå¤®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2602', '311', 'é˜è‰¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2603', '311', 'ä¸´æ½¼åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2604', '311', 'é•¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2605', '311', 'è“ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2606', '311', 'å‘¨è‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2607', '311', 'æˆ·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2608', '311', 'é«˜é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2609', '312', 'æ±‰æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2610', '312', 'æ±‰é˜´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2611', '312', 'çŸ³æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2612', '312', 'å®é™•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2613', '312', 'ç´«é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2614', '312', 'å²šçš‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2615', '312', 'å¹³åˆ©å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2616', '312', 'é•‡åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2617', '312', 'æ—¬é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2618', '312', 'ç™½æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2619', '313', 'é™ˆä»“åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2620', '313', 'æ¸­æ»¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2621', '313', 'é‡‘å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2622', '313', 'å‡¤ç¿”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2623', '313', 'å²å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2624', '313', 'æ‰¶é£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2625', '313', 'çœ‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2626', '313', 'é™‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2627', '313', 'åƒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2628', '313', 'éºŸæ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2629', '313', 'å‡¤å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2630', '313', 'å¤ªç™½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2631', '314', 'æ±‰å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2632', '314', 'å—éƒ‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2633', '314', 'åŸå›ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2634', '314', 'æ´‹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2635', '314', 'è¥¿ä¹¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2636', '314', 'å‹‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2637', '314', 'å®å¼ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2638', '314', 'ç•¥é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2639', '314', 'é•‡å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2640', '314', 'ç•™åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2641', '314', 'ä½›åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2642', '315', 'å•†å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2643', '315', 'æ´›å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2644', '315', 'ä¸¹å‡¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2645', '315', 'å•†å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2646', '315', 'å±±é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2647', '315', 'é•‡å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2648', '315', 'æŸæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2649', '316', 'è€€å·åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2650', '316', 'ç‹ç›ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2651', '316', 'å°å°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2652', '316', 'å®œå›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2653', '317', 'ä¸´æ¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2654', '317', 'éŸ©åŸå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2655', '317', 'åé˜´å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2656', '317', 'åå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2657', '317', 'æ½¼å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2658', '317', 'å¤§è”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2659', '317', 'åˆé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2660', '317', 'æ¾„åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2661', '317', 'è’²åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2662', '317', 'ç™½æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2663', '317', 'å¯Œå¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2664', '318', 'ç§¦éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2665', '318', 'æ¸­åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2666', '318', 'æ¨é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2667', '318', 'å…´å¹³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2668', '318', 'ä¸‰åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2669', '318', 'æ³¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2670', '318', 'ä¹¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2671', '318', 'ç¤¼æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2672', '318', 'æ°¸å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2673', '318', 'å½¬å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2674', '318', 'é•¿æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2675', '318', 'æ—¬é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2676', '318', 'æ·³åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2677', '318', 'æ­¦åŠŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2678', '319', 'å´èµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2679', '319', 'å®å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2680', '319', 'å»¶é•¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2681', '319', 'å»¶å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2682', '319', 'å­é•¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2683', '319', 'å®‰å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2684', '319', 'å¿—ä¸¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2685', '319', 'ç”˜æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2686', '319', 'å¯Œå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2687', '319', 'æ´›å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2688', '319', 'å®œå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2689', '319', 'é»„é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2690', '319', 'é»„é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2691', '320', 'æ¦†é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2692', '320', 'ç¥æœ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2693', '320', 'åºœè°·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2694', '320', 'æ¨ªå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2695', '320', 'é–è¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2696', '320', 'å®šè¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2697', '320', 'ç»¥å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2698', '320', 'ç±³è„‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2699', '320', 'ä½³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2700', '320', 'å´å ¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2701', '320', 'æ¸…æ¶§å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2702', '320', 'å­æ´²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2703', '321', 'é•¿å®åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2704', '321', 'é—¸åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2705', '321', 'é—µè¡ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2706', '321', 'å¾æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2707', '321', 'æµ¦ä¸œæ–°åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2708', '321', 'æ¨æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2709', '321', 'æ™®é™€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2710', '321', 'é™å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2711', '321', 'å¢æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2712', '321', 'è™¹å£åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2713', '321', 'é»„æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2714', '321', 'å—æ±‡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2715', '321', 'æ¾æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2716', '321', 'å˜‰å®šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2717', '321', 'å®å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2718', '321', 'é’æµ¦åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2719', '321', 'é‡‘å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2720', '321', 'å¥‰è´¤åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2721', '321', 'å´‡æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2722', '322', 'é’ç¾ŠåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2723', '322', 'é”¦æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2724', '322', 'é‡‘ç‰›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2725', '322', 'æ­¦ä¾¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2726', '322', 'æˆååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2727', '322', 'é¾™æ³‰é©¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2728', '322', 'é’ç™½æ±ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2729', '322', 'æ–°éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2730', '322', 'æ¸©æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2731', '322', 'é«˜æ–°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2732', '322', 'é«˜æ–°è¥¿åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2733', '322', 'éƒ½æ±Ÿå °å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2734', '322', 'å½­å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2735', '322', 'é‚›å´ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2736', '322', 'å´‡å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2737', '322', 'é‡‘å ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2738', '322', 'åŒæµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2739', '322', 'éƒ«å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2740', '322', 'å¤§é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2741', '322', 'è’²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2742', '322', 'æ–°æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2743', '322', 'éƒ½æ±Ÿå °å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2744', '322', 'å½­å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2745', '322', 'é‚›å´ƒå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2746', '322', 'å´‡å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2747', '322', 'é‡‘å ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2748', '322', 'åŒæµå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2749', '322', 'éƒ«å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2750', '322', 'å¤§é‚‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2751', '322', 'è’²æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2752', '322', 'æ–°æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2753', '323', 'æ¶ªåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2754', '323', 'æ¸¸ä»™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2755', '323', 'æ±Ÿæ²¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2756', '323', 'ç›äº­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2757', '323', 'ä¸‰å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2758', '323', 'å¹³æ­¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2759', '323', 'å®‰å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2760', '323', 'æ¢“æ½¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2761', '323', 'åŒ—å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2762', '324', 'é©¬å°”åº·å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2763', '324', 'æ±¶å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2764', '324', 'ç†å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2765', '324', 'èŒ‚å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2766', '324', 'æ¾æ½˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2767', '324', 'ä¹å¯¨æ²Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2768', '324', 'é‡‘å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2769', '324', 'å°é‡‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2770', '324', 'é»‘æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2771', '324', 'å£¤å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2772', '324', 'é˜¿åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2773', '324', 'è‹¥å°”ç›–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2774', '324', 'çº¢åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2775', '325', 'å·´å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2776', '325', 'é€šæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2777', '325', 'å—æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2778', '325', 'å¹³æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2779', '326', 'é€šå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2780', '326', 'ä¸‡æºå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2781', '326', 'è¾¾å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2782', '326', 'å®£æ±‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2783', '326', 'å¼€æ±Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2784', '326', 'å¤§ç«¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2785', '326', 'æ¸ å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2786', '327', 'æ—Œé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2787', '327', 'å¹¿æ±‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2788', '327', 'ä»€é‚¡å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2789', '327', 'ç»µç«¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2790', '327', 'ç½—æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2791', '327', 'ä¸­æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2792', '328', 'åº·å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2793', '328', 'ä¸¹å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2794', '328', 'æ³¸å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2795', '328', 'ç‚‰éœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2796', '328', 'ä¹é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2797', '328', 'ç”˜å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2798', '328', 'é›…æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2799', '328', 'æ–°é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2800', '328', 'é“å­šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2801', '328', 'ç™½ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2802', '328', 'ç†å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2803', '328', 'å¾·æ ¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2804', '328', 'ä¹¡åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2805', '328', 'çŸ³æ¸ å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2806', '328', 'ç¨»åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2807', '328', 'è‰²è¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2808', '328', 'å·´å¡˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2809', '328', 'å¾—è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2810', '329', 'å¹¿å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2811', '329', 'åè“¥å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2812', '329', 'å²³æ± å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2813', '329', 'æ­¦èƒœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2814', '329', 'é‚»æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2815', '330', 'åˆ©å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2816', '330', 'å…ƒååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2817', '330', 'æœå¤©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2818', '330', 'æ—ºè‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2819', '330', 'é’å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2820', '330', 'å‰‘é˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2821', '330', 'è‹æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2822', '331', 'å³¨çœ‰å±±å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2823', '331', 'ä¹å±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2824', '331', 'çŠä¸ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2825', '331', 'äº•ç ”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2826', '331', 'å¤¹æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2827', '331', 'æ²å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2828', '331', 'å³¨è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2829', '331', 'é©¬è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2830', '332', 'è¥¿æ˜Œå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2831', '332', 'ç›æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2832', '332', 'å¾·æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2833', '332', 'ä¼šç†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2834', '332', 'ä¼šä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2835', '332', 'å®å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2836', '332', 'æ™®æ ¼å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2837', '332', 'å¸ƒæ‹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2838', '332', 'é‡‘é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2839', '332', 'æ˜­è§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2840', '332', 'å–œå¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2841', '332', 'å†•å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2842', '332', 'è¶Šè¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2843', '332', 'ç”˜æ´›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2844', '332', 'ç¾å§‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2845', '332', 'é›·æ³¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2846', '332', 'æœ¨é‡Œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2847', '333', 'ä¸œå¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2848', '333', 'ä»å¯¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2849', '333', 'å½­å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2850', '333', 'æ´ªé›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2851', '333', 'ä¸¹æ£±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2852', '333', 'é’ç¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2853', '334', 'é˜†ä¸­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2854', '334', 'å—éƒ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2855', '334', 'è¥å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2856', '334', 'è“¬å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2857', '334', 'ä»ªé™‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2858', '334', 'é¡ºåº†åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2859', '334', 'é«˜åªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2860', '334', 'å˜‰é™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2861', '334', 'è¥¿å……å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2862', '335', 'å¸‚ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2863', '335', 'ä¸œå…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2864', '335', 'å¨è¿œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2865', '335', 'èµ„ä¸­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2866', '335', 'éš†æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2867', '336', 'ä¸\œ  åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2868', '336', 'è¥\¿  åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2869', '336', 'ä»å’ŒåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2870', '336', 'ç±³æ˜“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2871', '336', 'ç›è¾¹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2872', '337', 'èˆ¹å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2873', '337', 'å®‰å±…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2874', '337', 'è“¬æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2875', '337', 'å°„æ´ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2876', '337', 'å¤§è‹±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2877', '338', 'é›¨åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2878', '338', 'åå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2879', '338', 'è¥ç»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2880', '338', 'æ±‰æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2881', '338', 'çŸ³æ£‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2882', '338', 'å¤©å…¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2883', '338', 'èŠ¦å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2884', '338', 'å®å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2885', '339', 'ç¿ å±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2886', '339', 'å®œå®¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2887', '339', 'å—æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2888', '339', 'æ±Ÿå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2889', '339', 'é•¿å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2890', '339', 'é«˜å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2891', '339', 'ç™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2892', '339', 'ç­ è¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2893', '339', 'å…´æ–‡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2894', '339', 'å±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2895', '340', 'é›æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2896', '340', 'ç®€é˜³å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2897', '340', 'å®‰å²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2898', '340', 'ä¹è‡³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2899', '341', 'å¤§å®‰åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2900', '341', 'è‡ªæµäº•åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2901', '341', 'è´¡äº•åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2902', '341', 'æ²¿æ»©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2903', '341', 'è£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2904', '341', 'å¯Œé¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2905', '342', 'æ±Ÿé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2906', '342', 'çº³æºªåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2907', '342', 'é¾™é©¬æ½­åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2908', '342', 'æ³¸å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2909', '342', 'åˆæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2910', '342', 'å™æ°¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2911', '342', 'å¤è”ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2912', '343', 'å’Œå¹³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2913', '343', 'æ²³è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2914', '343', 'å—å¼€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2915', '343', 'æ²³åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2916', '343', 'æ²³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2917', '343', 'çº¢æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2918', '343', 'ä¸œä¸½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2919', '343', 'æ´¥å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2920', '343', 'è¥¿é’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2921', '343', 'åŒ—è¾°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2922', '343', 'å¡˜æ²½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2923', '343', 'æ±‰æ²½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2924', '343', 'å¤§æ¸¯åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2925', '343', 'æ­¦æ¸…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2926', '343', 'å®å»åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2927', '343', 'ç»æµå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2928', '343', 'å®æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2929', '343', 'é™æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2930', '343', 'è“Ÿå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2931', '344', 'åŸå…³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2932', '344', 'æ—å‘¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2933', '344', 'å½“é›„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2934', '344', 'å°¼æœ¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2935', '344', 'æ›²æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2936', '344', 'å †é¾™å¾·åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2937', '344', 'è¾¾å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2938', '344', 'å¢¨ç«¹å·¥å¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2939', '345', 'å™¶å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2940', '345', 'æ™®å…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2941', '345', 'æœ­è¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2942', '345', 'æ—¥åœŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2943', '345', 'é©å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2944', '345', 'æ”¹åˆ™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2945', '345', 'æªå‹¤å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2946', '346', 'æ˜Œéƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2947', '346', 'æ±Ÿè¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2948', '346', 'è´¡è§‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2949', '346', 'ç±»ä¹Œé½å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2950', '346', 'ä¸é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2951', '346', 'å¯Ÿé›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2952', '346', 'å…«å®¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2953', '346', 'å·¦è´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2954', '346', 'èŠ’åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2955', '346', 'æ´›éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2956', '346', 'è¾¹åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2957', '347', 'æ—èŠå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2958', '347', 'å·¥å¸ƒæ±Ÿè¾¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2959', '347', 'ç±³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2960', '347', 'å¢¨è„±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2961', '347', 'æ³¢å¯†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2962', '347', 'å¯Ÿéš…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2963', '347', 'æœ—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2964', '348', 'é‚£æ›²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2965', '348', 'å˜‰é»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2966', '348', 'æ¯”å¦‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2967', '348', 'è‚è£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2968', '348', 'å®‰å¤šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2969', '348', 'ç”³æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2970', '348', 'ç´¢å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2971', '348', 'ç­æˆˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2972', '348', 'å·´é’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2973', '348', 'å°¼ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2974', '349', 'æ—¥å–€åˆ™å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2975', '349', 'å—æœ¨æ—å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2976', '349', 'æ±Ÿå­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2977', '349', 'å®šæ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2978', '349', 'è¨è¿¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2979', '349', 'æ‹‰å­œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2980', '349', 'æ˜‚ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2981', '349', 'è°¢é€šé—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2982', '349', 'ç™½æœ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2983', '349', 'ä»å¸ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2984', '349', 'åº·é©¬å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2985', '349', 'å®šç»“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2986', '349', 'ä»²å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2987', '349', 'äºšä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2988', '349', 'å‰éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2989', '349', 'è‚æ‹‰æœ¨å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2990', '349', 'è¨å˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2991', '349', 'å²—å·´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2992', '350', 'ä¹ƒä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2993', '350', 'æ‰å›Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2994', '350', 'è´¡å˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2995', '350', 'æ¡‘æ—¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2996', '350', 'ç¼ç»“å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2997', '350', 'æ›²æ¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2998', '350', 'æªç¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('2999', '350', 'æ´›æ‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3000', '350', 'åŠ æŸ¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3001', '350', 'éš†å­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3002', '350', 'é”™é‚£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3003', '350', 'æµªå¡å­å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3004', '351', 'å¤©å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3005', '351', 'æ²™ä¾å·´å…‹åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3006', '351', 'æ–°å¸‚åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3007', '351', 'æ°´ç£¨æ²ŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3008', '351', 'å¤´å±¯æ²³åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3009', '351', 'è¾¾å‚åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3010', '351', 'ç±³ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3011', '351', 'ä¹Œé²æœ¨é½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3012', '352', 'é˜¿å…‹è‹å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3013', '352', 'æ¸©å®¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3014', '352', 'åº“è½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3015', '352', 'æ²™é›…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3016', '352', 'æ–°å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3017', '352', 'æ‹œåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3018', '352', 'ä¹Œä»€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3019', '352', 'é˜¿ç“¦æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3020', '352', 'æŸ¯åªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3021', '353', 'é˜¿æ‹‰å°”å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3022', '354', 'åº“å°”å‹’å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3023', '354', 'è½®å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3024', '354', 'å°‰çŠå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3025', '354', 'è‹¥ç¾Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3026', '354', 'ä¸”æœ«å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3027', '354', 'ç„‰è€\†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3028', '354', 'å’Œé™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3029', '354', 'å’Œç¡•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3030', '354', 'åšæ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3031', '355', 'åšä¹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3032', '355', 'ç²¾æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3033', '355', 'æ¸©æ³‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3034', '356', 'å‘¼å›¾å£å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3035', '356', 'ç±³æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3036', '356', 'æ˜Œå‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3037', '356', 'é˜œåº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3038', '356', 'ç›çº³æ–¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3039', '356', 'å¥‡å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3040', '356', 'å‰æœ¨è¨å°”å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3041', '356', 'æœ¨å’', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3042', '357', 'å“ˆå¯†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3043', '357', 'ä¼Šå¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3044', '357', 'å·´é‡Œå\¤', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3045', '358', 'å’Œç”°å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3046', '358', 'å’Œç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3047', '358', 'å¢¨ç‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3048', '358', 'çš®å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3049', '358', 'æ´›æµ¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3050', '358', 'ç­–å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3051', '358', 'äºç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3052', '358', 'æ°‘ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3053', '359', 'å–€ä»€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3054', '359', 'ç–é™„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3055', '359', 'ç–å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3056', '359', 'è‹±å‰æ²™å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3057', '359', 'æ³½æ™®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3058', '359', 'èè½¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3059', '359', 'å¶åŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3060', '359', 'éº¦ç›–æå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3061', '359', 'å²³æ™®æ¹–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3062', '359', 'ä¼½å¸ˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3063', '359', 'å·´æ¥šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3064', '359', 'å¡”ä»€åº“å°”å¹\²', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3065', '360', 'å…‹æ‹‰ç›ä¾å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3066', '361', 'é˜¿å›¾ä»€å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3067', '361', 'é˜¿å…‹é™¶å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3068', '361', 'é˜¿åˆå¥‡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3069', '361', 'ä¹Œæ°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3070', '362', 'çŸ³æ²³å­å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3071', '363', 'å›¾æœ¨èˆ’å…‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3072', '364', 'åé²ç•ªå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3073', '364', 'é„¯å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3074', '364', 'æ‰˜å…‹é€Šå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3075', '365', 'äº”å®¶æ¸ å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3076', '366', 'é˜¿å‹’æ³°å¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3077', '366', 'å¸ƒå…‹èµ›å°”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3078', '366', 'ä¼Šå®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3079', '366', 'å¸ƒå°”æ´¥å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3080', '366', 'å¥å±¯å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3081', '366', 'ä¹Œè‹å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3082', '366', 'é¢æ•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3083', '366', 'å¯Œè•´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3084', '366', 'ä¼Šå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3085', '366', 'ç¦æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3086', '366', 'éœåŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3087', '366', 'æ²™æ¹¾å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3088', '366', 'å·©ç•™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3089', '366', 'å“ˆå·´æ²³å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3090', '366', 'æ‰˜é‡Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3091', '366', 'é’æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3092', '366', 'æ–°æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3093', '366', 'è£•æ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3094', '366', 'å’Œå¸ƒå…‹èµ›å°\”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3095', '366', 'å‰æœ¨ä¹ƒå¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3096', '366', 'æ˜­è‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3097', '366', 'ç‰¹å…‹æ–¯å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3098', '366', 'å°¼å‹’å…‹å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3099', '366', 'å¯Ÿå¸ƒæŸ¥å°”', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3100', '367', 'ç›˜é¾™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3101', '367', 'äº”ååŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3102', '367', 'å®˜æ¸¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3103', '367', 'è¥¿å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3104', '367', 'ä¸œå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3105', '367', 'å®‰å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3106', '367', 'å‘ˆè´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3107', '367', 'æ™‹å®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3108', '367', 'å¯Œæ°‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3109', '367', 'å®œè‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3110', '367', 'åµ©æ˜å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3111', '367', 'çŸ³æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3112', '367', 'ç¦„åŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3113', '367', 'å¯»ç”¸', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3114', '368', 'å…°åª', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3115', '368', 'æ³¸æ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3116', '368', 'ç¦è´¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3117', '368', 'è´¡å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3118', '369', 'å®æ´±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3119', '369', 'æ€èŒ…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3120', '369', 'å¢¨æ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3121', '369', 'æ™¯ä¸œ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3122', '369', 'æ™¯è°·', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3123', '369', 'é•‡æ²…', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3124', '369', 'æ±ŸåŸ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3125', '369', 'å­Ÿè¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3126', '369', 'æ¾œæ²§', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3127', '369', 'è¥¿ç›Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3128', '370', 'å¤åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3129', '370', 'å®è’—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3130', '370', 'ç‰é¾™', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3131', '370', 'æ°¸èƒœå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3132', '370', 'ååªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3133', '371', 'éš†é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3134', '371', 'æ–½ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3135', '371', 'è…¾å†²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3136', '371', 'é¾™é™µå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3137', '371', 'æ˜Œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3138', '372', 'æ¥šé›„å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3139', '372', 'åŒæŸå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3140', '372', 'ç‰Ÿå®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3141', '372', 'å—åå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3142', '372', 'å§šå®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3143', '372', 'å¤§å§šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3144', '372', 'æ°¸ä»å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3145', '372', 'å…ƒè°‹å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3146', '372', 'æ­¦å®šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3147', '372', 'ç¦„ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3148', '373', 'å¤§ç†å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3149', '373', 'ç¥¥äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3150', '373', 'å®¾å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3151', '373', 'å¼¥æ¸¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3152', '373', 'æ°¸å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3153', '373', 'äº‘é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3154', '373', 'æ´±æºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3155', '373', 'å‰‘å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3156', '373', 'é¹¤åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3157', '373', 'æ¼¾æ¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3158', '373', 'å—æ¶§', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3159', '373', 'å·å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3160', '374', 'æ½è¥¿å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3161', '374', 'ç‘ä¸½å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3162', '374', 'æ¢æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3163', '374', 'ç›ˆæ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3164', '374', 'é™‡å·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3165', '375', 'é¦™æ ¼é‡Œæ‹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3166', '375', 'å¾·é’¦å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3167', '375', 'ç»´è¥¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3168', '376', 'æ³¸è¥¿å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3169', '376', 'è’™è‡ªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3170', '376', 'ä¸ªæ—§å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3171', '376', 'å¼€è¿œå¸‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3172', '376', 'ç»¿æ˜¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3173', '376', 'å»ºæ°´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3174', '376', 'çŸ³å±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3175', '376', 'å¼¥å‹’å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3176', '376', 'å…ƒé˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3177', '376', 'çº¢æ²³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3178', '376', 'é‡‘å¹³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3179', '376', 'æ²³å£', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3180', '376', 'å±è¾¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3181', '377', 'ä¸´ç¿”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3182', '377', 'å‡¤åº†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3183', '377', 'äº‘å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3184', '377', 'æ°¸å¾·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3185', '377', 'é•‡åº·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3186', '377', 'åŒæ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3187', '377', 'è€¿é©¬', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3188', '377', 'æ²§æº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3189', '378', 'éº’éºŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3190', '378', 'å®£å¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3191', '378', 'é©¬é¾™å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3192', '378', 'é™†è‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3193', '378', 'å¸ˆå®—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3194', '378', 'ç½—å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3195', '378', 'å¯Œæºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3196', '378', 'ä¼šæ³½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3197', '378', 'æ²¾ç›Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3198', '379', 'æ–‡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3199', '379', 'ç šå±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3200', '379', 'è¥¿ç•´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3201', '379', 'éº»æ —å¡å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3202', '379', 'é©¬å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3203', '379', 'ä¸˜åŒ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3204', '379', 'å¹¿å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3205', '379', 'å¯Œå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3206', '380', 'æ™¯æ´ªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3207', '380', 'å‹æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3208', '380', 'å‹è…Šå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3209', '381', 'çº¢å¡”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3210', '381', 'æ±Ÿå·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3211', '381', 'æ¾„æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3212', '381', 'é€šæµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3213', '381', 'åå®å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3214', '381', 'æ˜“é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3215', '381', 'å³¨å±±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3216', '381', 'æ–°å¹³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3217', '381', 'å…ƒæ±Ÿ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3218', '382', 'æ˜­é˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3219', '382', 'é²ç”¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3220', '382', 'å·§å®¶å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3221', '382', 'ç›æ´¥å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3222', '382', 'å¤§å…³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3223', '382', 'æ°¸å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3224', '382', 'ç»¥æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3225', '382', 'é•‡é›„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3226', '382', 'å½è‰¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3227', '382', 'å¨ä¿¡å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3228', '382', 'æ°´å¯Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3229', '383', 'è¥¿æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3230', '383', 'ä¸ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3231', '383', 'ä¸‹åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3232', '383', 'æ‹±å¢…åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3233', '383', 'æ»¨æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3234', '383', 'æ±Ÿå¹²åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3235', '383', 'è§å±±åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3236', '383', 'ä½™æ­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3237', '383', 'å¸‚éƒŠ', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3238', '383', 'å»ºå¾·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3239', '383', 'å¯Œé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3240', '383', 'ä¸´å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3241', '383', 'æ¡åºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3242', '383', 'æ·³å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3243', '384', 'å´å…´åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3244', '384', 'å—æµ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3245', '384', 'å¾·æ¸…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3246', '384', 'é•¿å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3247', '384', 'å®‰å‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3248', '385', 'å—æ¹–åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3249', '385', 'ç§€æ´²åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3250', '385', 'æµ·å®å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3251', '385', 'å˜‰å–„å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3252', '385', 'å¹³æ¹–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3253', '385', 'æ¡ä¹¡å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3254', '385', 'æµ·ç›å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3255', '386', 'å©ºåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3256', '386', 'é‡‘ä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3257', '386', 'å…°æºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3258', '386', 'å¸‚åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3259', '386', 'ä½›å ‚é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3260', '386', 'ä¸Šæºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3261', '386', 'ä¹‰äº­é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3262', '386', 'å¤§é™ˆé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3263', '386', 'è‹æºªé•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3264', '386', 'èµ¤å²¸é•\‡', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3265', '386', 'ä¸œé˜³å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3266', '386', 'æ°¸åº·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3267', '386', 'æ­¦ä¹‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3268', '386', 'æµ¦æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3269', '386', 'ç£å®‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3270', '387', 'è²éƒ½åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3271', '387', 'é¾™æ³‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3272', '387', 'é’ç”°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3273', '387', 'ç¼™äº‘å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3274', '387', 'é‚æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3275', '387', 'æ¾é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3276', '387', 'äº‘å’Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3277', '387', 'åº†å…ƒå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3278', '387', 'æ™¯å®', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3279', '388', 'æµ·æ›™åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3280', '388', 'æ±Ÿä¸œåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3281', '388', 'æ±ŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3282', '388', 'é•‡æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3283', '388', 'åŒ—ä»‘åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3284', '388', 'é„å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3285', '388', 'ä½™å§šå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3286', '388', 'æ…ˆæºªå¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3287', '388', 'å¥‰åŒ–å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3288', '388', 'è±¡å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3289', '388', 'å®æµ·å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3290', '389', 'è¶ŠåŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3291', '389', 'ä¸Šè™å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3292', '389', 'åµŠå·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3293', '389', 'ç»å…´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3294', '389', 'æ–°æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3295', '389', 'è¯¸æš¨å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3296', '390', 'æ¤’æ±ŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3297', '390', 'é»„å²©åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3298', '390', 'è·¯æ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3299', '390', 'æ¸©å²­å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3300', '390', 'ä¸´æµ·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3301', '390', 'ç‰ç¯å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3302', '390', 'ä¸‰é—¨å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3303', '390', 'å¤©å°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3304', '390', 'ä»™å±…å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3305', '391', 'é¹¿åŸåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3306', '391', 'é¾™æ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3307', '391', 'ç“¯æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3308', '391', 'ç‘å®‰å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3309', '391', 'ä¹æ¸…å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3310', '391', 'æ´å¤´å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3311', '391', 'æ°¸å˜‰å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3312', '391', 'å¹³é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3313', '391', 'è‹å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3314', '391', 'æ–‡æˆå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3315', '391', 'æ³°é¡ºå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3316', '392', 'å®šæµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3317', '392', 'æ™®é™€åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3318', '392', 'å²±å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3319', '392', 'åµŠæ³—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3320', '393', 'è¡¢å·å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3321', '393', 'æ±Ÿå±±å¸\‚', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3322', '393', 'å¸¸å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3323', '393', 'å¼€åŒ–å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3324', '393', 'é¾™æ¸¸å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3325', '394', 'åˆå·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3326', '394', 'æ±Ÿæ´¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3327', '394', 'å—å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3328', '394', 'æ°¸å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3329', '394', 'å—å²¸åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3330', '394', 'æ¸åŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3331', '394', 'ä¸‡ç››åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3332', '394', 'å¤§æ¸¡å£åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3333', '394', 'ä¸‡å·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3334', '394', 'åŒ—ç¢šåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3335', '394', 'æ²™åªååŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3336', '394', 'å·´å—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3337', '394', 'æ¶ªé™µåŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3338', '394', 'æ±ŸåŒ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3339', '394', 'ä¹é¾™å¡åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3340', '394', 'æ¸ä¸­åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3341', '394', 'é»”æ±Ÿå¼€å‘åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3342', '394', 'é•¿å¯¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3343', '394', 'åŒæ¡¥åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3344', '394', 'ç¶¦æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3345', '394', 'æ½¼å—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3346', '394', 'é“œæ¢å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3347', '394', 'å¤§è¶³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3348', '394', 'è£æ˜Œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3349', '394', 'ç’§å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3350', '394', 'å«æ±Ÿå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3351', '394', 'æ­¦éš†å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3352', '394', 'ä¸°éƒ½å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3353', '394', 'åŸå£å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3354', '394', 'æ¢å¹³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3355', '394', 'å¼€å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3356', '394', 'å·«æºªå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3357', '394', 'å·«å±±å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3358', '394', 'å¥‰èŠ‚å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3359', '394', 'äº‘é˜³å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3360', '394', 'å¿ å¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3361', '394', 'çŸ³æŸ±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3362', '394', 'å½­æ°´', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3363', '394', 'é…‰é˜³', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3364', '394', 'ç§€å±\±', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3365', '395', 'æ²™ç”°åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3366', '395', 'ä¸œåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3367', '395', 'è§‚å¡˜åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3368', '395', 'é»„å¤§ä»™åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3369', '395', 'ä¹é¾™åŸåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3370', '395', 'å±¯é—¨åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3371', '395', 'è‘µé’åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3372', '395', 'å…ƒæœ—åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3373', '395', 'æ·±æ°´åŸ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3374', '395', 'è¥¿è´¡åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3375', '395', 'å¤§åŸ”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3376', '395', 'æ¹¾ä»”åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3377', '395', 'æ²¹å°–æ—ºåŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3378', '395', 'åŒ—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3379', '395', 'å—åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3380', '395', 'èƒæ¹¾åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3381', '395', 'ä¸­è¥¿åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3382', '395', 'ç¦»å²›åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3383', '396', 'æ¾³é—¨', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3384', '397', 'å°åŒ—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3385', '397', 'é«˜é›„', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3386', '397', 'åŸºéš†', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3387', '397', 'å°ä¸­', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3388', '397', 'å°å—', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3389', '397', 'æ–°ç«¹', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3390', '397', 'å˜‰ä¹‰', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3391', '397', 'å®œå…°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3392', '397', 'æ¡ƒå›­å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3393', '397', 'è‹—æ —å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3394', '397', 'å½°åŒ–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3395', '397', 'å—æŠ•å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3396', '397', 'äº‘æ—å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3397', '397', 'å±ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3398', '397', 'å°ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3399', '397', 'èŠ±è²å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3400', '397', 'æ¾æ¹–å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3401', '3', 'åˆè‚¥', '2', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3402', '3401', 'åºé˜³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3403', '3401', 'ç‘¶æµ·åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3404', '3401', 'èœ€å±±åŒº', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3405', '3401', 'åŒ…æ²³åŒ\º', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3406', '3401', 'é•¿ä¸°å\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3407', '3401', 'è‚¥ä¸œå\¿', '3', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3408', '3401', 'è‚¥è¥¿å\¿', '3', '0');
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('1', 'post_express', 'é‚®æ”¿å¿«é€’åŒ…è£\¹', 'é‚®æ”¿å¿«é€’åŒ…è£¹çš„æè¿°å†…å®¹ã€\‚', '1%', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('2', 'yto', 'åœ†é€šé€Ÿé€\’', 'ä¸Šæµ·åœ†é€šç‰©æµï¼ˆé€Ÿé€’ï¼‰æœ‰é™å…¬å¸ç»è¿‡å¤šå¹´çš„ç½‘ç»œå¿«é€Ÿå‘å±•ï¼Œåœ¨ä¸­å›½é€Ÿé€’è¡Œä¸šä¸­ä¸€ç›´å¤„äºé¢†å…ˆåœ°ä½ã€‚ä¸ºäº†èƒ½æ›´å¥½çš„å‘å±•å›½é™…å¿«ä»¶å¸‚åœºï¼ŒåŠ å¿«ä¸å›½é™…å¸‚åœºçš„æ¥è½¨ï¼Œå¼ºåŒ–åœ†é€šçš„æ•´ä½“å®åŠ›ï¼Œåœ†é€šå·²åœ¨ä¸œå—äºšã€æ¬§ç¾ã€ä¸­ä¸œã€åŒ—ç¾æ´²ã€éæ´²ç­‰è®¸å¤šåŸå¸‚è¿ä½œå›½é™…å¿«ä»¶ä¸šåŠ¡', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('3', 'city_express', 'åŸé™…å¿«é€\’', 'é…é€çš„è¿è´¹æ˜¯å›ºå®šçš„', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('4', 'flat', 'å¸‚å†…å¿«é€\’', 'å›ºå®šè¿è´¹çš„é…é€æ–¹å¼å†…å®\¹', '0', '1', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('5', 'sto_express', 'ç”³é€šå¿«é€\’', 'æ±Ÿã€æµ™ã€æ²ªåœ°åŒºé¦–é‡ä¸\º15å…\ƒ/KGï¼Œå…¶ä»–åœ°åŒ\º18å…\ƒ/KGï¼\Œ ç»­é‡å‡ä¸º5-6å…\ƒ/KGï¼\Œ äº‘å—åœ°åŒºä¸\º8å…\ƒ', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('6', 'post_mail', 'é‚®å±€å¹³é‚®', 'é‚®å±€å¹³é‚®çš„æè¿°å†…å®¹ã€\‚', '0', '0', '1', '', '', '', '0', '0');
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('7', 'fpd', 'è¿è´¹åˆ°ä»˜', 'æ‰€è´­å•†å“åˆ°è¾¾å³ä»˜è¿è´\¹', '0', '0', '1', '', '', '', '0', '0');
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('1', 'ç”³é€\š', '5', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:1:\"0\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('2', '1', '3', 'a:4:{i:0;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"10\";}i:1;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:6:\"100000\";}i:2;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}i:3;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:1:\"5\";}}');
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('3', 'é‚®å±€', '6', 'a:7:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:1:\"4\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:3:\"3.5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:3:\"2.5\";}i:3;a:2:{s:4:\"name\";s:9:\"step_fee1\";s:5:\"value\";N;}i:4;a:2:{s:4:\"name\";s:8:\"pack_fee\";s:5:\"value\";s:1:\"0\";}i:5;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:6;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('4', 'è¿è´¹åˆ°ä»˜', '7', 'a:2:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:5:\"50000\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";N;}}');
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('101', '1', 'shop_name', 'text', '', '', 'æ— é™æµé‡å…ˆé”‹', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('102', '1', 'shop_title', 'text', '', '', 'æ— é™æµé‡å…ˆé”‹', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('103', '1', 'shop_desc', 'text', '', '', 'æ— é™æµé‡å…ˆé”‹', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('104', '1', 'shop_keywords', 'text', '', '', 'æ— é™æµé‡å…ˆé”‹', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('106', '1', 'shop_province', 'manual', '', '', '26', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('107', '1', 'shop_city', 'manual', '', '', '322', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('109', '1', 'qq', 'text', '', '', '512899034', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('120', '1', 'user_notice', 'textarea', '', '', 'ç”¨æˆ·ä¸­å¿ƒå…¬å‘Šï¼\', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('121', '1', 'shop_notice', 'textarea', '', '', 'æ¬¢è¿å…‰ä¸´æ— é™æµé‡å…ˆé”‹ç½\‘,æˆ‘ä»¬çš„å®—æ—¨ï¼šè¯šä¿¡ç»è¥ã€æœåŠ¡å®¢æˆ·ï¼\r\n<MARQUEE onmouseover=this.stop() onmouseout=this.start() \r\nscrollAmount=3><U><FONT color=red>\r\n<P>å’¨è¯¢QQï¼\š512899034</P></FONT></U></MARQUEE>', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('210', '2', 'integral_name', 'text', '', '', 'ç§¯åˆ†', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('239', '2', 'certificate_id', 'hidden', '', '', '105075', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('240', '2', 'token', 'hidden', '', '', 'b999d01e372f57fb6922163eea2096071d7c8d81b728bac27e11116d03028ecf', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('303', '3', 'currency_format', 'text', '', '', 'ï¿\¥%så…\ƒ', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('304', '3', 'thumb_width', 'text', '', '', '230', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('305', '3', 'thumb_height', 'text', '', '', '328', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('306', '3', 'image_width', 'text', '', '', '357', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('307', '3', 'image_height', 'text', '', '', '510', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('312', '3', 'top_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('317', '3', 'goods_name_length', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('319', '3', 'page_size', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('326', '3', 'name_of_region_1', 'text', '', '', 'å›½å®¶', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('327', '3', 'name_of_region_2', 'text', '', '', 'çœ\', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('328', '3', 'name_of_region_3', 'text', '', '', 'å¸\‚', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('329', '3', 'name_of_region_4', 'text', '', '', 'åŒ\º', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('330', '3', 'search_keywords', 'text', '', '', '5Gæµé‡åŒ\…,10Gæµé‡,æ— é™æµé‡,è¯•ç”¨å\·', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('503', '5', 'smtp_user', 'text', '', '', 'liujianpc', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('504', '5', 'smtp_pass', 'password', '', '', 'abc7612776', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('603', '6', 'hash_code', 'hidden', '', '', 'f86f208625cf610e5bb09e6862bec9df', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('604', '6', 'template', 'hidden', '', '', '68ecshop_xiaomifree', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('605', '6', 'install_date', 'hidden', '', '', '1380088048', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('617', '6', 'captcha', 'hidden', '', '', '36', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time` ) VALUES  ('1', '', '1', 'åˆ˜å…ˆç”\Ÿ', 'ecshop@ecshop.com', '1', '2', '52', '502', 'æµ·å…´å¤§å¦', '', '010-25851234', '13986765412', '', '');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time` ) VALUES  ('2', '', '3', 'å¶å…ˆç”\Ÿ', 'text@ecshop.com', '1', '2', '52', '510', 'é€šå·åŒºæ——èˆ°å‡¯æ—‹å°åŒ\º', '', '13588104710', '', '', '');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time` ) VALUES  ('3', '', '6', '11', '123@qq.com', '1', '27', '343', '2914', '11', '11', '11', '', '', '');
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('1', '3', '0', '1', '1242142681', '4', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('2', '4', '1000003379', '1', '1242976699', '14', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('3', '4', '1000018450', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('4', '4', '1000023774', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('5', '4', '1000039394', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('6', '4', '1000049305', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('7', '4', '1000052248', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('8', '4', '1000061542', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('9', '4', '1000070278', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('10', '4', '1000080588', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('11', '4', '1000091405', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('24', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('25', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('26', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('27', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('28', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('29', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('30', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('31', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('32', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('33', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('34', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('35', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('36', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('37', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('38', '3', '0', '1', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('39', '3', '0', '1', '0', '0', '0');
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('1', 'æ³¨å†Œç”¨æˆ·', '0', '10000', '100', '1', '0');
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('2', 'vip', '10000', '10000000', '95', '1', '0');
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('3', 'ä»£é”€ç”¨æˆ·', '0', '0', '90', '0', '1');
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('1', 'ecshop@ecshop.com', 'ecshop', '554fcae493e564ee0dc75bdf2ebf94ca', '', '', '0', '1960-03-03', '0.00', '0.00', '112987', '29989', '1', '0', '1245048540', '0000-00-00 00:00:00', '0.0.0.0', '11', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('2', 'vip@ecshop.com', 'vip', '232059cb5361a9336ccf1b8c2ba7657a', '', '', '0', '1949-01-01', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('3', 'text@ecshop.com', 'text', '1cb251ec0d568de6a929b520c4aed8d1', '', '', '0', '1949-01-01', '0.00', '0.00', '0', '0', '2', '0', '1242973574', '0000-00-00 00:00:00', '0.0.0.0', '2', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('5', 'zuanshi@ecshop.com', 'zuanshi', '815a71fb334412e7ba4595741c5a111d', '', '', '0', '1949-01-01', '0.00', '10000.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '3', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('6', '123@qq.com', 'admin2008', 'f3e4b2338751bbbab17f2cad97cfd98c', '', '', '0', '0000-00-00', '0.00', '0.00', '35941', '35941', '3', '1380165581', '1380506927', '0000-00-00 00:00:00', '127.0.0.1', '13', '0', '0', '3338', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('1', '25', 'RVlYQhFY', 'RVlYQhFYQg', '1241972716', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('2', '25', 'RVlYQhFYQhFQEg', 'RVlYQhFYQhFQEg', '1241972726', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('3', '26', 'RVlYQhFYQg', 'RVlYQhFYQg', '1241972801', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('4', '26', 'RVlYQhFYQhFQEVo', 'RVlYQhFYQhFQEVo', '1241972811', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('5', '27', 'RlpbQRI', 'RlpbQRJbQQ', '1241972903', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('6', '27', 'RlpbQRJbQg', 'RVpbQBJaQRE', '1241972911', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('7', '30', 'RVtbQBJYQBJQE1lU', 'R1pYRxJaQhRTEVhXSEdaWA', '1241973121', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('8', '30', 'R1pYRxJYRxNTFV9S', 'TF5cQBVdQA', '1241973127', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('9', '30', 'Q15cSxZeRhhWFg', 'TV9fSxdfSxdXGFxTQUI', '1241973134', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('10', '30', 'QVxaRhRaRhRSF11d', 'TFBeRRheRRhWFlJdSU1Q', '1241973146', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('11', '30', 'R1xaRxNcRw', 'QF1dRRVdRBY', '1241973157', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('12', '30', 'RlpbQRNdQBJU', 'R1xaQRRaQRVSEg', '1241973164', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('13', '30', 'RltdQBRaQQ', 'Rl1dRRheRRhYF10', '1241973170', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('14', '30', 'RltdQBVeRhg', 'RlxaQRZeRhVV', '1241973178', '1273449600', '0', '', '-1958172277');
INSERT INTO `ecs_virtual_card` ( `card_id`, `goods_id`, `card_sn`, `card_password`, `add_date`, `end_date`, `is_saled`, `order_sn`, `crc32` ) VALUES  ('15', '30', 'QFtbRhRaQRZVEw', 'Rl1aQRRaQRZUElg', '1241973185', '1273449600', '0', '', '-1958172277');
-- END ecshop v2.x SQL Dump Program 