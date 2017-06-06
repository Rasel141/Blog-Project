-- Adminer 4.3.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1,	'Java'),
(2,	'PHP'),
(3,	'HTML'),
(4,	'CSS'),
(6,	'Python'),
(7,	'JAVAScript'),
(8,	'.Net'),
(9,	'Ruby');

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1,	'Rasel',	'Hossain',	'rasel@gmail.com',	'PHP is an alternative to Microsoft\'s',	1,	'2017-05-30 13:32:42'),
(2,	'Rashedujjaman',	'Ratul',	'ratul@gmail.com',	'Java is a high-level programming.',	1,	'2017-05-30 13:11:27'),
(3,	'Md',	'Mohib',	'mohib@gmail.com',	'PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s',	1,	'2017-05-30 13:32:39'),
(5,	'Tanjina',	'Afrin',	'tanjina@gmail.com',	'tanjina PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s PHP is an alternative to Microsoft\'s',	0,	'2017-05-30 13:33:14');

DROP TABLE IF EXISTS `tbl_footer`;
CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1,	'Copyright Rasel Hossain');

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1,	'About Us',	'<p style=\"text-align: justify;\"><span>About us..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>'),
(2,	'Privacy Policy',	'<p><span>Privacy policy..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>'),
(3,	'DMCA',	'<p><span>DMCA..Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</span></p>');

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(19,	1,	'Definition of Java',	'<p>Java is a high-level&nbsp;<a href=\"https://techterms.com/definition/programming_language\">programming language</a>&nbsp;developed by Sun Microsystems. It was originally designed for developing programs for set-top boxes and handheld devices, but later became a popular choice for creating web&nbsp;<a href=\"https://techterms.com/definition/application\">applications</a>.</p>\r\n<p>The Java&nbsp;<a href=\"https://techterms.com/definition/syntax\">syntax</a>&nbsp;is similar to&nbsp;<a href=\"https://techterms.com/definition/cplusplus\">C++</a>, but is strictly an&nbsp;<a href=\"https://techterms.com/definition/oop\">object-oriented programming language</a>. For example, most Java programs contain&nbsp;<a href=\"https://techterms.com/definition/class\">classes</a>, which are used to define objects, and&nbsp;<a href=\"https://techterms.com/definition/method\">methods</a>, which are assigned to individual classes. Java is also known for being more strict than C++, meaning variables and&nbsp;<a href=\"https://techterms.com/definition/function\">functions</a>&nbsp;must be explicitly defined. This means Java&nbsp;<a href=\"https://techterms.com/definition/sourcecode\">source code</a>&nbsp;may produce errors or \"exceptions\" more easily than other languages, but it also limits other types of errors that may be caused by undefined variables or unassigned types.</p>\r\n<p>\"</p>\r\n<p>\"</p>',	'upload/00802b101d.jpg',	'Maruf',	'Java, Java Coding, JAVA',	'2017-06-03 18:49:19',	3),
(20,	2,	'Definition of PHP',	'<p>PHP is an alternative to Microsoft\'s&nbsp;<a href=\"http://searchwindowsserver.techtarget.com/definition/Active-Server-Page\">Active Server Page</a>&nbsp;(ASP) technology. As with ASP, the PHP script is embedded within a Web page along with its&nbsp;<a href=\"http://searchsoa.techtarget.com/definition/HTML\">HTML</a>. Before the page is sent to a user that has requested it, the Web server calls PHP to interpret and perform the operations called for in the PHP script.</p>\r\n<p>An HTML page that includes a PHP script is typically given a file name suffix of \".php\" \".php3,\" or \".phtml\". Like ASP, PHP can be thought of as \"dynamic HTML pages,\" since content will vary based on the results of interpreting the script.</p>\r\n<p>PHP is free and offered under an&nbsp;<a href=\"http://searchenterpriselinux.techtarget.com/definition/open-source\">open source</a>&nbsp;license.</p>\r\n<p>\"</p>\r\n<p>\"</p>',	'upload/7c4415f9d7.jpg',	'Rasel',	'PHP, PHP Coding, php',	'2017-06-03 18:49:46',	3),
(21,	3,	'Definition of HTML',	'<p><span>HTML is a formal Recommendation by the World Wide Web Consortium (</span><a href=\"http://searchsoa.techtarget.com/definition/W3C\">W3C</a><span>) and is generally adhered to by the major browsers, Microsoft\'s Internet Explorer and Netscape\'s Navigator, which also provide some additional non-standard codes. The current version of HTML is&nbsp;</span><a href=\"http://searchsoa.techtarget.com/definition/HTML-40\">HTML 4.0</a><span>. However, both Internet Explorer and Netscape implement some features differently and provide non-standard extensions. Web developers using the more advanced features of HTML 4 may have to design pages for both browsers and send out the appropriate version to a user. Significant features in HTML 4 are sometimes described in general as&nbsp;</span><a href=\"http://searchsoa.techtarget.com/definition/dynamic-HTML\">dynamic HTML</a><span>. What is sometimes referred to as HTML 5 is an extensible form of HTML called Extensible Hypertext Markup Language (</span><a href=\"http://searchsoa.techtarget.com/definition/XHTML\">XHTML</a><span>).</span></p>',	'upload/cd31836acd.jpg',	'Amit',	'HTML',	'2017-06-03 18:51:50',	1),
(22,	4,	'Definition of CSS',	'<p>Stands for \"Cascading Style Sheet.\" Cascading style sheets are used to format the layout of&nbsp;<a href=\"https://techterms.com/definition/webpage\">Web pages</a>. They can be used to define text styles, table sizes, and other aspects of Web pages that previously could only be defined in a page\'s&nbsp;<a href=\"https://techterms.com/definition/html\">HTML</a>.</p>\r\n<p>CSS helps Web developers create a uniform look across several pages of a Web site. Instead of defining the style of each table and each block of text within a page\'s HTML, commonly used styles need to be defined only once in a CSS document. Once the style is defined in cascading style sheet, it can be used by any page that references the CSS file. Plus, CSS makes it easy to change styles across several pages at once. For example, a Web developer may want to increase the default text size from 10pt to 12pt for fifty pages of a Web site. If the pages all reference the same style sheet, the text size only needs to be changed on the style sheet and all the pages will show the larger text.</p>',	'upload/0abb17a250.jpg',	'Momit',	'CSS',	'2017-06-03 18:52:01',	2),
(23,	6,	'Definition of Python',	'<p>A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularity for your application and a high degree of code reusing.</p>\r\n<p>As you already know, Python gives you many built-in functions like print(), etc. but you can also create your own functions. These functions are called&nbsp;<em>user-defined functions.</em></p>\r\n<p>\"</p>\r\n<p>\"</p>',	'upload/5e5811aa0f.jpg',	'Rakib',	'Python',	'2017-06-03 18:42:09',	0),
(24,	3,	'HTML',	'<p><span>PHP is an alternative to Microsoft\'s&nbsp;</span><a href=\"http://searchwindowsserver.techtarget.com/definition/Active-Server-Page\">Active Server Page</a><span>&nbsp;(ASP) technology. As with ASP, the PHP script is embedded within a Web page along with its&nbsp;</span><a href=\"http://searchsoa.techtarget.com/definition/HTML\">HTML</a><span>. Before the page is sent to a user that has requested it, the Web server calls PHP to interpret and perform the operations called for in the PHP script.</span></p>',	'upload/810c014810.jpg',	'Maruf',	'HTML',	'2017-06-03 19:16:26',	2);

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(6,	'First Slider title will be go here',	'upload/slider/9e60592130.jpg'),
(7,	'Second Slider title will be go here',	'upload/slider/dc0322ca70.jpg'),
(8,	'Third Slider title will be go here',	'upload/slider/11e4af999d.jpg'),
(10,	'Fourth Slider title will be go here',	'upload/slider/745fde3c6d.jpg');

DROP TABLE IF EXISTS `tbl_social`;
CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1,	'http://www.facebook.com/rasel.hossain123',	'http://www.twitter.com',	'http://www.linkedin.com',	'http://www.google.com');

DROP TABLE IF EXISTS `tbl_theme`;
CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1,	'green');

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(11,	'',	'Rasel',	'202cb962ac59075b964b07152d234b70',	'rasel@gmail.com',	'',	1),
(12,	'',	'Mohib',	'202cb962ac59075b964b07152d234b70',	'mohib@gmail.com',	'',	2),
(13,	'',	'Maruf',	'202cb962ac59075b964b07152d234b70',	'maruf',	'',	3);

DROP TABLE IF EXISTS `title_slogan`;
CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1,	'Website Title',	'Website Slogan',	'upload/logo.png');

-- 2017-06-06 20:00:27
