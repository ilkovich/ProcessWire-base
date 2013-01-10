DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY  (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `field_body` (`pages_id`, `data`) VALUES (27,'<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY  (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`pages_id`,`sort`),
  KEY `data` (`data`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY  (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_keywords`;
CREATE TABLE `field_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY  (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES (1,'Home');

INSERT INTO `fieldgroups` (`id`, `name`) VALUES (1,'home');

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,1,0);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,80,1);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,79,2);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,78,3);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,76,4);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`) VALUES (1,44,5);

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES (80,'FieldtypeText','keywords',0,'Keywords','{\"description\":\"Use this to add keywords for SEO\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES (79,'FieldtypeTextarea','summary',1,'Summary','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES (78,'FieldtypeText','headline',0,'Headline','{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES (76,'FieldtypeTextarea','body',0,'Body','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"collapsed\":0,\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES (44,'FieldtypeImage','images',0,'Images','{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1}');

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES (1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"roles\":[37]}');

UPDATE pages SET templates_id=1 WHERE id=1; 
