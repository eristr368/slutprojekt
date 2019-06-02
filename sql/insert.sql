use general;

INSERT INTO Product_catagories 
VALUES (NULL, "Type_1"),
       (NULL, "Type_2"),
       (NULL, "Type_3"),
       (NULL, "Type_4");


-- Autogenererade produkter

-- Generation time: Sat, 01 Jun 2019 10:11:21 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT '../public/img/500x325.png',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `catagory_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `catagory_id` (`catagory_id`),
  CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `Product_catagories` (`catagory_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Product` VALUES ('1','cum','http://lorempixel.com/500/325/technics/1','Reprehenderit et optio et dolor et quia. Natus et voluptas velit quo. Quas quibusdam quisquam iusto sint eos eius.','1'),
('2','aut','img/500x325.png','Sint quibusdam iste dolores modi et eos. Consequatur quidem eum architecto sit quo in libero. Dolorem quia et debitis sunt qui dolorem consequatur totam.','2'),
('3','porro','img/500x325.png','Qui quo nihil quia repudiandae quibusdam aperiam. Autem molestiae officia maiores provident illum laudantium consectetur. Dolores qui fuga debitis consequatur.','3'),
('4','sapiente','http://lorempixel.com/500/325/technics/2','Eos veniam tempora aut illum. Molestiae in aut ipsa reprehenderit voluptatem est non. Qui quo molestiae sunt tempora pariatur. Quisquam voluptas repellat veritatis maiores sint. Molestias veritatis ipsam repellendus rem hic qui.','4'),
('5','eum','http://lorempixel.com/500/325/technics/4','Aliquam vero tempore ducimus ea aliquam rerum ut. Qui aliquam culpa suscipit et magni ipsam minus. Voluptas ab blanditiis nisi ipsam fugiat. Enim omnis ut est sed natus occaecati est labore.','1'),
('6','asperiores','http://lorempixel.com/500/325/technics/5','Quis illum occaecati aut nihil. Omnis reiciendis accusamus est et quia magnam.','2'),
('7','vero','img/500x325.png','Alias beatae corrupti beatae. Dicta provident dicta eos nemo sunt cumque sapiente autem. Sequi a veritatis nam vel.','3'),
('8','delectus','img/500x325.png','Temporibus porro ullam voluptas aut. Amet nesciunt architecto esse tenetur. Numquam ut eos neque. Illo illum dolor vero perspiciatis.','4'),
('9','perferendis','http://lorempixel.com/500/325/technics/3','Esse odio quidem autem. Tempora excepturi assumenda deleniti veritatis dolores. Excepturi necessitatibus natus hic quisquam suscipit adipisci. Molestiae facilis eos consequuntur a.','1'),
('10','sed','http://lorempixel.com/500/325/technics/6','Id quo excepturi error est veritatis consequuntur. Illo sunt dolores omnis libero fugiat ut qui aliquid. Recusandae consectetur dolores porro omnis facere. Illum labore fugiat laboriosam repellat qui. Sunt blanditiis ut harum facilis praesentium quidem blanditiis.','2'),
('11','sunt','http://lorempixel.com/500/325/technics/7','Ad similique consequatur dolorum. Autem qui provident voluptatum ut quidem magni. Dolorum temporibus facere neque facilis temporibus aliquid provident.','3'),
('12','hic','http://lorempixel.com/500/325/technics/9','Aperiam et numquam a voluptatibus quia molestiae qui. Quasi quam ut dolor dicta temporibus eius ut. Nobis molestiae ab aspernatur sequi. Eveniet error voluptatem ut harum officiis libero rerum.','4'),
('13','accusamus','img/500x325.png','Quidem ipsam optio labore enim ullam est quos odio. Reprehenderit eum beatae itaque atque beatae praesentium molestiae recusandae. Doloribus nostrum explicabo nam est. Saepe eaque perspiciatis consequatur et eveniet dolor.','1'),
('14','neque','http://lorempixel.com/500/325/technics/1','Non ipsam aperiam cupiditate consequatur eveniet sit tempora odit. Perferendis sed est dignissimos perspiciatis dolores eos maxime aperiam. Impedit illo sint velit nihil ut. Blanditiis doloremque et et repellendus veritatis autem ullam. Voluptatem sint ad deserunt et dolor ipsum.','2'),
('15','qui','img/500x325.png','In dolorem eos saepe. Dicta animi rem aut accusamus sunt rerum voluptas. Veniam quis aut aut enim error.','3'),
('16','fugiat','http://lorempixel.com/500/325/technics/3','Harum et dolorum et. Est consectetur vel quam incidunt animi. Vel dolorum architecto rem eveniet tempore distinctio. Blanditiis voluptas dolore alias quae voluptate debitis unde.','4'),
('17','illum','img/500x325.png','Cum est corporis voluptatem reprehenderit. Illum nostrum a voluptate et. Voluptatibus iusto cumque necessitatibus quasi provident rerum rerum architecto.','1'),
('18','repellendus','','Aperiam omnis pariatur qui qui. Esse beatae eum possimus. Doloremque dolore doloribus dolore. Et laudantium occaecati reiciendis aut nobis.','2'),
('19','aliquid','img/500x325.png','Voluptate quo praesentium cum ratione doloremque ab. Molestias ut totam ipsum voluptatibus. Doloremque sint et minima voluptate sit.','3'),
('20','libero','http://lorempixel.com/500/325/technics/2','Maiores enim vitae est quisquam sunt. Omnis nisi atque consectetur est quo. Sed totam ut provident possimus. Hic odio repellat laborum. Rerum facere est aut eaque deserunt et.','4'),
('21','et','http://lorempixel.com/500/325/technics/1','Ratione id ut quo voluptatum et odio ut. Iusto ea eos vero est sint dolor non. Aut non doloremque repellat mollitia. Architecto in maiores porro beatae dignissimos corporis porro nihil.','1'),
('22','cupiditate','http://lorempixel.com/500/325/technics/9','Sint praesentium laudantium ut. Eum qui autem dolor quia est. Eveniet reprehenderit quas aut. Perferendis consequuntur ipsa non perferendis saepe sunt.','2'),
('23','fuga','http://lorempixel.com/500/325/technics/6','Rerum ut repellat reiciendis voluptas corporis amet quam. Voluptatibus et hic error nesciunt iure eveniet sit. Occaecati ex vel sit similique. Voluptatum commodi velit labore deserunt sed.','3'),
('24','corrupti','img/500x325.png','Nostrum similique non dolores sit aut doloribus. Et ut et delectus dolor sed. Ut quia rerum id voluptas aspernatur. Alias pariatur et omnis neque.','4'),
('25','ratione','img/500x325.png','Consequatur cupiditate nam quia sunt. At ut nesciunt sunt ut atque quidem. Rem facilis recusandae sed laudantium. Quam fugit minus cumque.','1'),
('26','adipisci','http://lorempixel.com/500/325/technics/5','Et praesentium reprehenderit ut qui necessitatibus aut quasi. Ut dolorem libero qui dolor fugit nam totam. Ex neque temporibus voluptatem soluta iste impedit accusamus.','2'),
('27','est','img/500x325.png','Libero voluptas earum quasi ullam fugiat dignissimos provident. Quod atque delectus dicta voluptatem dolorum sequi voluptatem. Dolorem velit molestias et quia consectetur. Nobis praesentium quidem expedita aut atque. Eos delectus debitis dolorem.','3'),
('28','mollitia','img/500x325.png','Inventore autem enim in aliquam. Voluptatem suscipit et totam hic qui aut. Ea rerum natus non vero impedit.','4'),
('29','velit','img/500x325.png','Aut eligendi autem cumque. Ab odit fugit eius. Ipsum dicta voluptatem qui qui voluptates. Vero omnis repellat reiciendis illum omnis aut omnis.','1'),
('30','dolorem','http://lorempixel.com/500/325/technics/4','Commodi cupiditate esse rerum hic. Rem aut blanditiis perferendis quia ut incidunt.','2'),
('31','corporis','img/500x325.png','Enim voluptatum totam quis non similique. Voluptate minus placeat nemo sit temporibus. Laudantium voluptas culpa eveniet recusandae magnam est. Cum consequatur impedit eum.','3'),
('32','deserunt','img/500x325.png','Dolorem adipisci officia quasi alias. Rerum omnis dolor autem aut provident placeat id alias. Ea quae impedit ut molestiae qui.','4'),
('33','consequuntur','img/500x325.png','Velit qui quia recusandae enim beatae eveniet. Odio autem expedita cumque tempore sit. Placeat nostrum id laborum quidem commodi.','1'),
('34','dolor','http://lorempixel.com/500/325/technics/2','Possimus neque ut eveniet ut provident dolor quibusdam. Consequatur ullam beatae consectetur ut voluptatem doloremque cumque in. Illo saepe vel iste expedita asperiores magni blanditiis est.','2'),
('35','temporibus','http://lorempixel.com/500/325/technics/1','Provident reprehenderit maiores optio sint repudiandae. Eligendi quasi aut molestias. Vitae aperiam distinctio et magni sed. Odio hic delectus rerum.','3'),
('36','eaque','img/500x325.png','Voluptatem ipsam consequatur quia et reprehenderit numquam ut. Veritatis vel perspiciatis omnis. Amet excepturi qui consequatur. Iure neque reiciendis voluptatibus nam.','4'),
('37','tempore','http://lorempixel.com/500/325/technics/3','Amet dolores libero reiciendis vitae. Maiores consequatur quos beatae modi sint dolorem. Ea et nobis qui debitis.','1'),
('38','praesentium','img/500x325.png','Magnam doloribus dolorem sunt ullam. Porro optio dignissimos repellat aliquid quidem. Commodi facere saepe iure voluptatem.','2'),
('39','ut','http://lorempixel.com/500/325/technics/9','Sit dolores nemo et quia et. Earum voluptatem animi ut eligendi ipsum. Autem odit ipsam ea.','3'),
('40','sit','http://lorempixel.com/500/325/technics/5','Labore reiciendis et eos molestiae. Cumque sit tenetur debitis consequatur. Velit culpa aut laborum at. Eos delectus non voluptatem dolorum rem vel et non.','4'),
('41','ullam','img/500x325.png','Velit earum explicabo unde pariatur. Sunt quaerat autem cumque aut dolore velit. Doloremque ullam placeat ratione nobis ab cupiditate distinctio esse. Nihil magnam et maiores ut quos.','1'),
('42','maxime','http://lorempixel.com/500/325/technics/7','Debitis distinctio quibusdam expedita nihil accusantium voluptas dolores. Vel est inventore consequatur odit. Autem excepturi sit id culpa necessitatibus soluta. Ab sapiente quo enim sint facilis ut dolores. Sit est atque laudantium inventore est.','2'),
('43','labore','http://lorempixel.com/500/325/technics/1','Hic laudantium sapiente aut molestias quibusdam. Quia animi quia accusantium delectus ut. Libero modi enim laborum consequuntur tenetur officia sint.','3'),
('44','aspernatur','http://lorempixel.com/500/325/technics/4','Illo occaecati cupiditate nostrum officia suscipit. Cum ab deleniti vel id ut. Totam adipisci sunt sed dolor aut saepe aut.','4'),
('45','laborum','http://lorempixel.com/500/325/technics/2','Et qui similique quis natus libero rerum animi. Ea libero iure dolorem ut laborum. Voluptatem maiores rerum ab id exercitationem voluptate optio. Nesciunt est tempore quibusdam hic.','1'),
('46','ex','img/500x325.png','Voluptatem odio dolorem non libero. Fuga enim dignissimos aliquam in.','2'),
('47','repellat','img/500x325.png','Ipsa expedita quia dolorem dolores quo. In in sed cumque aspernatur. Perferendis dolor voluptas placeat. Suscipit maiores quod corrupti maxime occaecati. Dicta quas nesciunt et ut ut officia minus.','3'),
('48','quas','img/500x325.png','Ipsa maiores iste itaque cupiditate esse recusandae praesentium. Quod et ad sapiente est. Qui tempora tenetur sit ea non asperiores amet deserunt. Vel quod dicta dignissimos quod reiciendis perferendis harum.','4'),
('49','quis','img/500x325.png','Quia mollitia quisquam sapiente explicabo illum qui itaque. Dolores asperiores ut ab accusantium quibusdam tempore. Dolore itaque in est nihil enim possimus.','1'),
('50','culpa','http://lorempixel.com/500/325/technics/6','Qui laborum deserunt est totam. Quia quo eaque nam nihil quidem. Maiores dolores ipsam reiciendis velit autem quos.','2'),
('51','enim','http://lorempixel.com/500/325/technics/7','Odit assumenda eum corporis cumque. Voluptatem quidem iure et quaerat. Ea voluptatem sapiente voluptas tenetur voluptas dolorem consectetur.','3'),
('52','cumque','http://lorempixel.com/500/325/technics/2','Voluptatem quidem ut nesciunt reiciendis alias doloremque. Ipsa minima qui quia ducimus officia non vero. Architecto est repudiandae omnis enim qui labore eos.','4'),
('53','ea','http://lorempixel.com/500/325/technics/7','Soluta at et quis repellendus. Autem eius sint officia magni dolor cumque qui. Amet perferendis qui in ut ut deserunt.','1'),
('54','nam','img/500x325.png','Quis rerum et esse. Illo nisi laudantium dolorem occaecati qui aperiam. Id praesentium hic consequatur at possimus fugit. Culpa et voluptatem est aut sed mollitia.','2'),
('55','eligendi','http://lorempixel.com/500/325/technics/8','Sequi omnis ut est et possimus. Et libero aut sunt quis ut debitis voluptas. Molestiae perspiciatis rerum vero. Enim eos ut sed aut rerum.','3'),
('56','non','http://lorempixel.com/500/325/technics/9','Omnis distinctio aut molestias accusamus qui est consequatur. Ut rem corrupti animi necessitatibus.','4'),
('57','quidem','http://lorempixel.com/500/325/technics/5','Quas tenetur doloribus sed eveniet molestiae eligendi voluptatem. Perferendis ut ut recusandae tempore. Molestias consequatur animi earum ullam suscipit.','1'),
('58','sequi','img/500x325.png','Quia nisi assumenda et eos ea. Odio soluta consequuntur optio ea iusto ea tempore. Iure accusamus tempora quia est nobis non id.','2'),
('59','vel','img/500x325.png','Doloribus ducimus doloribus repellendus ex laudantium aut. Voluptas quia ipsam impedit consectetur ratione. Architecto libero non voluptate.','3'),
('60','voluptatem','http://lorempixel.com/500/325/technics/4','Minima deserunt sint saepe quia. Aspernatur non doloribus qui minus. Odit non illo rerum consequatur velit.','4'),
('61','voluptatum','','Eius id quisquam distinctio quia architecto qui dolores sit. Omnis maiores doloremque mollitia nesciunt. Aspernatur qui cum quae nihil adipisci voluptatem vero.','1'),
('62','alias','img/500x325.png','Aut magni minus et ut qui qui. Repudiandae ut dolorum eveniet qui corporis illum.','2'),
('63','consequatur','http://lorempixel.com/500/325/technics/3','Quis dolor ipsa quidem dolores voluptatem neque earum. Quis nemo dolores velit nemo officiis. Non aperiam numquam incidunt dolorem ut. Adipisci eveniet doloremque est animi. Non deleniti quisquam ullam perferendis.','3'),
('64','ipsa','http://lorempixel.com/500/325/technics/2','Nisi cum modi ut provident ea aut nam rerum. Quos voluptates voluptatibus harum. Aut consequatur quaerat earum dolorum dolores. Labore placeat veniam perferendis quia ut delectus tenetur odit. Minima et et ratione numquam quam.','4'),
('65','architecto','http://lorempixel.com/500/325/technics/5','Quis officiis magnam eos commodi eius deserunt. Nam cum perferendis expedita velit. Fugit iusto nihil quia repellat laborum voluptatem.','1'),
('66','perspiciatis','img/500x325.png','Id modi inventore perferendis neque. Cum tenetur ab placeat qui. Et sit rerum voluptas expedita. Ut aut et non incidunt a inventore. Dolores quis ea est est ad beatae.','2'),
('67','quia','img/500x325.png','Minima distinctio fuga et fugiat aperiam temporibus. Explicabo consequatur inventore ipsum quia in.','3'),
('68','maiores','http://lorempixel.com/500/325/technics/3','Aut a veniam nobis aut voluptatibus. Ullam mollitia sequi necessitatibus eum ullam enim qui omnis. Esse dolor adipisci unde porro suscipit vel eum.','4'),
('69','quae','img/500x325.png','Et eum dignissimos aliquid dolorem. Placeat est consequatur aperiam vel. Laboriosam vero distinctio ab voluptas ut sed soluta. Quidem ipsam sapiente exercitationem ut.','1'),
('70','eos','http://lorempixel.com/500/325/technics/6','Quibusdam impedit possimus dolor aut. Dolorem voluptas suscipit ducimus impedit iste possimus. Commodi vitae voluptatibus repellendus vitae. Ab repellat exercitationem ea.','2'),
('71','veritatis','http://lorempixel.com/500/325/technics/6','Iste itaque qui id quaerat. Hic consequatur consequuntur consequatur enim. Eius assumenda et debitis placeat. Eaque recusandae quasi doloremque.','3'),
('72','nihil','http://lorempixel.com/500/325/technics/7','Quia quod quaerat architecto provident. In sit quia similique repellendus rerum vero. Incidunt pariatur quis ea voluptatibus facere.','4'),
('73','omnis','http://lorempixel.com/500/325/technics/8','Et nihil odit et. Voluptatem sequi expedita qui voluptas beatae distinctio. Quisquam voluptas at vel tenetur quae vel. Enim sapiente quia officia repellendus.','1'),
('74','dolores','img/500x325.png','Non voluptatem odit nesciunt dolores. Ea eos voluptatem in accusantium veniam aliquid molestias velit. Dolor ut enim provident dolore a expedita. Ea dolores sapiente explicabo sit enim.','2'),
('75','officia','img/500x325.png','Facere architecto ipsum ut occaecati debitis sed. Sit officiis ut et. Quis cum qui consequatur et autem voluptas. Est dicta veniam non.','3'),
('76','odio','http://lorempixel.com/500/325/technics/1','Sit repellat facilis et voluptas voluptatem. Doloremque aliquid omnis sed ut rem. Quisquam quo mollitia saepe provident laboriosam quasi. Porro maxime tempora qui aspernatur.','4'),
('77','reiciendis','img/500x325.png','Harum ratione consequuntur qui impedit non est quaerat alias. Aliquam aut doloribus nihil temporibus. Accusantium possimus doloremque deserunt quia eveniet quidem. Consequatur necessitatibus ratione officia impedit odio est enim. Enim doloremque rerum deserunt qui ut quod et.','1'),
('78','atque','','Et velit consequatur molestiae est laborum beatae pariatur. Ut illo error nesciunt voluptatum voluptatem corrupti. Placeat animi numquam fuga et est sed earum. Nemo impedit consequatur eum fugit quae pariatur voluptatibus.','2'),
('79','placeat','http://lorempixel.com/500/325/technics/7','Ex aperiam sint itaque cupiditate maiores. Porro quos sint et sint illum quasi nesciunt. Rerum consequatur officiis quasi debitis.','3'),
('80','officiis','http://lorempixel.com/500/325/technics/9','Illum dolorum ipsum molestias impedit fugiat ipsum laborum. Vitae earum aut sequi quia. Ut assumenda laboriosam atque illum commodi expedita.','4'),
('81','fugit','http://lorempixel.com/500/325/technics/1','Harum aperiam ipsum doloremque alias. Dicta asperiores ipsum facere est. Libero debitis rem in qui voluptates et illum. Ut et inventore nisi et sit.','1'),
('82','sint','http://lorempixel.com/500/325/technics/2','Adipisci dolor quis possimus quae facilis et nisi. Enim eum et quibusdam quam. Fugiat quae error dignissimos ut in odit.','2'),
('83','nisi','http://lorempixel.com/500/325/technics/3','Rerum in ad recusandae nostrum quis voluptatibus. Unde in et aperiam provident fugiat delectus eaque. Autem aut repellendus commodi quidem distinctio. Tenetur officia reiciendis quod adipisci dolore corporis laboriosam.','3'),
('84','molestiae','http://lorempixel.com/500/325/technics/5','Amet cum qui quia praesentium officia. Itaque vel nihil aliquid libero saepe hic tenetur. Placeat ex modi quisquam voluptate non ipsum. Minus dolorem ea excepturi nihil culpa rerum officia.','4'),
('85','earum','http://lorempixel.com/500/325/technics/7','Quo placeat consectetur doloribus voluptates. Et sed officiis sequi non pariatur. Pariatur rem assumenda deleniti ut aut accusamus esse consequatur.','1'),
('86','distinctio','http://lorempixel.com/500/325/technics/8','Omnis dolores qui repudiandae commodi deserunt omnis ipsum. Et ea amet sit sit facilis. Reprehenderit dolorem voluptatem voluptatem sunt saepe reprehenderit est expedita. Ipsa ducimus ratione qui molestias.','2'),
('87','soluta','http://lorempixel.com/500/325/technics/9','Quia provident quibusdam deserunt consequatur eligendi a ratione. Adipisci voluptate accusantium adipisci molestiae non quia vel. Reprehenderit officia qui assumenda illo ipsum incidunt sed. Natus dolorem excepturi ipsum nam sed voluptatem.','3'),
('88','voluptas','http://lorempixel.com/500/325/technics/7','Nemo tempore sit aut culpa est. Deleniti omnis accusamus commodi. Quia qui enim omnis ad inventore recusandae ut consequatur.','4'),
('89','suscipit','http://lorempixel.com/500/325/technics/9','Ut a non voluptatibus eveniet hic velit accusantium impedit. Sunt laudantium omnis quidem blanditiis aperiam nihil tempore nisi. In labore quaerat incidunt et. Unde inventore maiores nisi consequuntur expedita aspernatur quis.','1'),
('90','esse','img/500x325.png','Odio at eos dignissimos ut aspernatur dignissimos. Et quos et optio dolores eveniet repellendus blanditiis. Dignissimos omnis nam sit illo enim autem. Tempora et consequuntur saepe voluptas ut voluptate.','2'),
('91','aperiam','img/500x325.png','Explicabo consequatur maxime culpa libero. Eos dolor fugit sed officia id iure enim.','3'),
('92','molestias','img/500x325.png','Debitis odit minus et eos quo dolor. Perferendis doloribus eius qui odio perspiciatis. Enim praesentium illo modi sunt rem. Animi aut voluptatem in non.','4'),
('93','voluptate','http://lorempixel.com/500/325/technics/1','Sit quia cum dolorem voluptatem. Corporis est culpa veniam perferendis earum molestiae quia consequuntur.','1'),
('94','numquam','http://lorempixel.com/500/325/technics/3','Est atque ad officiis laboriosam distinctio deleniti. Et optio consequatur et aut ut non aut. Vero commodi quos fugiat dolor hic distinctio sapiente. Non sunt tempora dolores dolorem cum nihil.','2'),
('95','quibusdam','img/500x325.png','Eum alias optio sit autem voluptas. Tenetur fuga sit earum rerum earum quo. Illum a rerum sequi corrupti deserunt quod a. Doloremque aliquid voluptatem corrupti.','3'),
('96','eveniet','img/500x325.png','Nesciunt mollitia dolorem aut dolor aut sed temporibus libero. Ex illo aliquid necessitatibus aspernatur ullam. Maxime delectus voluptatem ut qui dolore.','4'),
('97','harum','http://lorempixel.com/500/325/technics/2','Autem odio qui consequuntur quibusdam eos molestias. Magnam pariatur et non cupiditate. Quaerat iure voluptatibus delectus eius repudiandae velit sunt. Qui qui aspernatur ea omnis. Et repellendus beatae voluptate maiores repellat qui illum.','1'),
('98','quo','img/500x325.png','Nesciunt ducimus laboriosam enim est ad distinctio aliquam. Dolores aperiam et nobis asperiores ut. Tempora sunt placeat maiores dolores.','2'),
('99','repudiandae','','Similique fugiat eum omnis natus dolor est nesciunt. Harum pariatur enim esse sapiente. Qui consequatur incidunt omnis.','3'),
('100','iure','img/500x325.png','Quae libero est doloremque quia totam consectetur dolores. Iste vel iste neque fuga dolores. Consequuntur qui aliquam quas et itaque ut voluptas. Labore accusamus omnis quo vel.','4'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



