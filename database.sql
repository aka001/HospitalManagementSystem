-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: experiment
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `dateit` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (38,1,1,'2013-12-02 09:20:00','cancel','2013-12-02 03:50:50','2013-12-02 03:50:53'),(39,1,1,'2013-12-02 09:20:00','served','2013-12-02 03:51:00','2013-12-02 03:52:24'),(40,1,1,'2013-12-02 09:31:00','served','2013-12-02 04:01:59','2013-12-02 04:04:22'),(41,1,1,'2013-12-04 10:20:00','served','2013-12-02 04:51:02','2013-12-02 04:53:19');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistants`
--

DROP TABLE IF EXISTS `assistants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `doctors_id` int(11) DEFAULT NULL,
  `biodata` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistants`
--

LOCK TABLES `assistants` WRITE;
/*!40000 ALTER TABLE `assistants` DISABLE KEYS */;
/*!40000 ALTER TABLE `assistants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistants_users`
--

DROP TABLE IF EXISTS `assistants_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistants_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assistant_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assistants_users_on_assistant_id_and_user_id` (`assistant_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistants_users`
--

LOCK TABLES `assistants_users` WRITE;
/*!40000 ALTER TABLE `assistants_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `assistants_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1665 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Abhayapuri',NULL,NULL),(2,'Achabbal',NULL,NULL),(3,'Achalpur',NULL,NULL),(4,'Achhnera',NULL,NULL),(5,'Adari',NULL,NULL),(6,'Adalaj',NULL,NULL),(7,'Adilabad',NULL,NULL),(8,'Adityana',NULL,NULL),(9,'Pereyaapatna',NULL,NULL),(10,'Adoni',NULL,NULL),(11,'Adoor',NULL,NULL),(12,'Adiyara',NULL,NULL),(13,'Adra',NULL,NULL),(14,'Afzalpura',NULL,NULL),(15,'Agartala',NULL,NULL),(16,'Agra',NULL,NULL),(17,'Ahiwara',NULL,NULL),(18,'Ahmedabad',NULL,NULL),(19,'Ahmedgarh',NULL,NULL),(20,'Ahmednagar',NULL,NULL),(21,'Ahmedpur',NULL,NULL),(22,'Aizawl',NULL,NULL),(23,'Ajmer',NULL,NULL),(24,'Ajra',NULL,NULL),(25,'Akaltara',NULL,NULL),(26,'Akbarpur',NULL,NULL),(27,'Akathiyoor',NULL,NULL),(28,'Akhnoor',NULL,NULL),(29,'Akkalkot',NULL,NULL),(30,'Akola',NULL,NULL),(31,'Akot',NULL,NULL),(32,'Alandha',NULL,NULL),(33,'Alandi',NULL,NULL),(34,'Alang',NULL,NULL),(35,'Alappuzha',NULL,NULL),(36,'Aldona',NULL,NULL),(37,'Alibag',NULL,NULL),(38,'Aligarh',NULL,NULL),(39,'Alipurduar',NULL,NULL),(40,'Allahabad',NULL,NULL),(41,'Almora',NULL,NULL),(42,'Aalanavara',NULL,NULL),(43,'Along',NULL,NULL),(44,'Alur',NULL,NULL),(45,'Alwar',NULL,NULL),(46,'Amadalavalasa',NULL,NULL),(47,'Amalapuram',NULL,NULL),(48,'Amalner',NULL,NULL),(49,'Amarpur',NULL,NULL),(50,'Ambad',NULL,NULL),(51,'Ambagarh Chowki',NULL,NULL),(52,'Ambaji',NULL,NULL),(53,'Ambaliyasan',NULL,NULL),(54,'Ambejogai',NULL,NULL),(55,'Ambikaanagara',NULL,NULL),(56,'Ambikapur',NULL,NULL),(57,'Ambivali Tarf Wankhal',NULL,NULL),(58,'Ameenapuram',NULL,NULL),(59,'Amguri',NULL,NULL),(60,'Amini',NULL,NULL),(61,'Amlabad',NULL,NULL),(62,'Amli',NULL,NULL),(63,'Amravati',NULL,NULL),(64,'Amreli',NULL,NULL),(65,'Amritsar',NULL,NULL),(66,'Amroha',NULL,NULL),(67,'Anakapalle',NULL,NULL),(68,'Anand',NULL,NULL),(69,'Anandapur',NULL,NULL),(70,'Anandnagaar',NULL,NULL),(71,'Anantapur',NULL,NULL),(72,'Anantnag',NULL,NULL),(73,'Ancharakandy',NULL,NULL),(74,'Andada',NULL,NULL),(75,'Anekal',NULL,NULL),(76,'Ankola',NULL,NULL),(77,'Anjar',NULL,NULL),(78,'Anjangaon',NULL,NULL),(79,'Anklav',NULL,NULL),(80,'Ankleshwar',NULL,NULL),(81,'Annigeri',NULL,NULL),(82,'Antaliya',NULL,NULL),(83,'Anugul',NULL,NULL),(84,'Ara',NULL,NULL),(85,'Arambhada',NULL,NULL),(86,'Arakkonam',NULL,NULL),(87,'Araria',NULL,NULL),(88,'Arang',NULL,NULL),(89,'Arambagh',NULL,NULL),(90,'Arsikere',NULL,NULL),(91,'Arcot',NULL,NULL),(92,'Areraj',NULL,NULL),(93,'Ariyalur',NULL,NULL),(94,'Arkalgud',NULL,NULL),(95,'Arki',NULL,NULL),(96,'Arnia',NULL,NULL),(97,'Aroor',NULL,NULL),(98,'Arrah',NULL,NULL),(99,'Aruppukkottai',NULL,NULL),(100,'Arvi',NULL,NULL),(101,'Arwal',NULL,NULL),(102,'Asankhurd',NULL,NULL),(103,'Asansol',NULL,NULL),(104,'Asarganj',NULL,NULL),(105,'Ashok Nagar',NULL,NULL),(106,'Ashta',NULL,NULL),(107,'Ashtamichira',NULL,NULL),(108,'Asika',NULL,NULL),(109,'Asola',NULL,NULL),(110,'Assandh',NULL,NULL),(111,'Ateli',NULL,NULL),(112,'Athni',NULL,NULL),(113,'Attingal',NULL,NULL),(114,'Atul',NULL,NULL),(115,'Aurad',NULL,NULL),(116,'Aurangabad',NULL,NULL),(117,'Aurangabad',NULL,NULL),(118,'Ausa',NULL,NULL),(119,'Avinissery',NULL,NULL),(120,'Awantipora',NULL,NULL),(121,'Azamgarh',NULL,NULL),(122,'Azmatgarh',NULL,NULL),(123,'Babaleshwar',NULL,NULL),(124,'Babiyal',NULL,NULL),(125,'Baddi',NULL,NULL),(126,'Bade Bacheli',NULL,NULL),(127,'Badaun',NULL,NULL),(128,'Badagaon',NULL,NULL),(129,'Badepalle',NULL,NULL),(130,'Badharghat',NULL,NULL),(131,'Bagaha',NULL,NULL),(132,'Bageshwar',NULL,NULL),(133,'Bahadurgarh',NULL,NULL),(134,'Bahadurganj',NULL,NULL),(135,'Baharampur',NULL,NULL),(136,'Bahraich',NULL,NULL),(137,'Bairgania',NULL,NULL),(138,'Bakhtiarpur',NULL,NULL),(139,'Balaghat',NULL,NULL),(140,'Balangir',NULL,NULL),(141,'Balasore',NULL,NULL),(142,'Baleshwar',NULL,NULL),(143,'Bhiwadi',NULL,NULL),(144,'Bali',NULL,NULL),(145,'Bally',NULL,NULL),(146,'Ballabhgarh',NULL,NULL),(147,'Ballia',NULL,NULL),(148,'Balod',NULL,NULL),(149,'Baloda Bazar',NULL,NULL),(150,'Balrampur',NULL,NULL),(151,'Balurghat',NULL,NULL),(152,'Bamra',NULL,NULL),(153,'Bandar',NULL,NULL),(154,'Bandikui',NULL,NULL),(155,'Bandipore',NULL,NULL),(156,'Bangalore',NULL,NULL),(157,'Banganapalle',NULL,NULL),(158,'Banka',NULL,NULL),(159,'Banmankhi Bazar',NULL,NULL),(160,'Banswara',NULL,NULL),(161,'Bankura',NULL,NULL),(162,'Bapatla',NULL,NULL),(163,'Barakar',NULL,NULL),(164,'Barahiya',NULL,NULL),(165,'Baramati',NULL,NULL),(166,'Baramula',NULL,NULL),(167,'Baran',NULL,NULL),(168,'Barasat',NULL,NULL),(169,'Bardhaman',NULL,NULL),(170,'Barauli',NULL,NULL),(171,'Barbigha',NULL,NULL),(172,'Bareilly',NULL,NULL),(173,'Bargarh',NULL,NULL),(174,'Barughutu',NULL,NULL),(175,'Basna',NULL,NULL),(176,'Barbil',NULL,NULL),(177,'Bargarh',NULL,NULL),(178,'Barh',NULL,NULL),(179,'Baripada',NULL,NULL),(180,'Barmer',NULL,NULL),(181,'Barnala',NULL,NULL),(182,'Barpeta',NULL,NULL),(183,'Barpeta Road',NULL,NULL),(184,'Barrackpur',NULL,NULL),(185,'Barwani',NULL,NULL),(186,'Barwala',NULL,NULL),(187,'Basavan Bagevadi',NULL,NULL),(188,'Basudebpur',NULL,NULL),(189,'Batala',NULL,NULL),(190,'Bathinda',NULL,NULL),(191,'Bawal',NULL,NULL),(192,'Bazpur',NULL,NULL),(193,'Beawar',NULL,NULL),(194,'Begusarai',NULL,NULL),(195,'Behea',NULL,NULL),(196,'Belgaum',NULL,NULL),(197,'Bellampalle',NULL,NULL),(198,'Ballary',NULL,NULL),(199,'Belpahar',NULL,NULL),(200,'Bemetra',NULL,NULL),(201,'Berinag',NULL,NULL),(202,'Bethamcherla',NULL,NULL),(203,'Bettiah',NULL,NULL),(204,'Betul',NULL,NULL),(205,'Bhabua',NULL,NULL),(206,'Bhadrachalam',NULL,NULL),(207,'Bhadrak',NULL,NULL),(208,'Bhagalpur',NULL,NULL),(209,'Bhagha Purana',NULL,NULL),(210,'Bhainsa',NULL,NULL),(211,'Bhajanpura',NULL,NULL),(212,'Bhandara',NULL,NULL),(213,'Bharatpur',NULL,NULL),(214,'Bharthana',NULL,NULL),(215,'Bharuch',NULL,NULL),(216,'Bhatapara',NULL,NULL),(217,'Bhavani',NULL,NULL),(218,'Bhavnagar',NULL,NULL),(219,'Bhawanipatna',NULL,NULL),(220,'Bheemunipatnam',NULL,NULL),(221,'Bhilai',NULL,NULL),(222,'Bhilwara',NULL,NULL),(223,'Bhimavaram',NULL,NULL),(224,'Bhinmal',NULL,NULL),(225,'Bhiwandi',NULL,NULL),(226,'Bhiwani',NULL,NULL),(227,'Bhongir',NULL,NULL),(228,'Bhopal',NULL,NULL),(229,'Bhuban',NULL,NULL),(230,'Bhubaneswar*',NULL,NULL),(231,'Bhuj',NULL,NULL),(232,'Bhusawal',NULL,NULL),(233,'Bidar',NULL,NULL),(234,'Bidhan Nagar',NULL,NULL),(235,'Bihar Sharif',NULL,NULL),(236,'Bijapur',NULL,NULL),(237,'Bijnor',NULL,NULL),(238,'Bikaner',NULL,NULL),(239,'Bikramganj',NULL,NULL),(240,'Bilara',NULL,NULL),(241,'Bilasipara',NULL,NULL),(242,'Bilaspur',NULL,NULL),(243,'Bilaspur',NULL,NULL),(244,'Biramitrapur',NULL,NULL),(245,'Birgaon',NULL,NULL),(246,'Bobbili',NULL,NULL),(247,'Bodhan',NULL,NULL),(248,'Bodh Gaya',NULL,NULL),(249,'Bokaro Steel City',NULL,NULL),(250,'Bongaigaon',NULL,NULL),(251,'Bomdila',NULL,NULL),(252,'Brahmapur',NULL,NULL),(253,'Brajrajnagar',NULL,NULL),(254,'Budaun',NULL,NULL),(255,'Budhlada',NULL,NULL),(256,'Bulandshahr',NULL,NULL),(257,'Burhanpur',NULL,NULL),(258,'Burla',NULL,NULL),(259,'Buxar',NULL,NULL),(260,'Byasanagar',NULL,NULL),(261,'Cambay',NULL,NULL),(262,'Chadchan',NULL,NULL),(263,'Chaibasa',NULL,NULL),(264,'Chakeri',NULL,NULL),(265,'Chakradharpur',NULL,NULL),(266,'Chalisgaon',NULL,NULL),(267,'Chamba',NULL,NULL),(268,'Chamba',NULL,NULL),(269,'Champa',NULL,NULL),(270,'Champawat',NULL,NULL),(271,'Champhai',NULL,NULL),(272,'Chamarajanagara',NULL,NULL),(273,'Chandigarh*',NULL,NULL),(274,'Chandil',NULL,NULL),(275,'Chandausi',NULL,NULL),(276,'Chandrapura',NULL,NULL),(277,'Chanpatia',NULL,NULL),(278,'Charkhi Dadri',NULL,NULL),(279,'Chapirevula',NULL,NULL),(280,'Chatra',NULL,NULL),(281,'Charkhari',NULL,NULL),(282,'Chalakudy',NULL,NULL),(283,'Chandrapur',NULL,NULL),(284,'Changanassery',NULL,NULL),(285,'Cheeka',NULL,NULL),(286,'Chendamangalam',NULL,NULL),(287,'Chengalpattu',NULL,NULL),(288,'Chengannur',NULL,NULL),(289,'Chennai*',NULL,NULL),(290,'Cherthala',NULL,NULL),(291,'Cheruthazham',NULL,NULL),(292,'Chhapra',NULL,NULL),(293,'Chhatarpur',NULL,NULL),(294,'Chhindwara',NULL,NULL),(295,'Chikkodi',NULL,NULL),(296,'Chikkamagalur',NULL,NULL),(297,'Chilakaluripet',NULL,NULL),(298,'Chinchani',NULL,NULL),(299,'Chinna salem',NULL,NULL),(300,'Chinthaamani',NULL,NULL),(301,'Chiplun',NULL,NULL),(302,'Chirala',NULL,NULL),(303,'Chirkunda',NULL,NULL),(304,'Chirmiri',NULL,NULL),(305,'Chinsura',NULL,NULL),(306,'Chitradurga',NULL,NULL),(307,'Chittur-Thathamangalam',NULL,NULL),(308,'Chitrakoot',NULL,NULL),(309,'Chittoor',NULL,NULL),(310,'Chockli',NULL,NULL),(311,'Churi',NULL,NULL),(312,'Churu',NULL,NULL),(313,'Coimbatore',NULL,NULL),(314,'Colgong',NULL,NULL),(315,'Contai',NULL,NULL),(316,'Cooch Behar',NULL,NULL),(317,'Coonoor',NULL,NULL),(318,'Cuddalore',NULL,NULL),(319,'Cuddapah',NULL,NULL),(320,'Curchorem Cacora',NULL,NULL),(321,'Cuttack',NULL,NULL),(322,'Chikkaballapura',NULL,NULL),(323,'Chandan Bara',NULL,NULL),(324,'Chaukori',NULL,NULL),(325,'Dabra',NULL,NULL),(326,'Dadri',NULL,NULL),(327,'Dahod',NULL,NULL),(328,'Dalhousie',NULL,NULL),(329,'Dalkhola',NULL,NULL),(330,'Dalli-Rajhara',NULL,NULL),(331,'Dalsinghsarai',NULL,NULL),(332,'Daltonganj',NULL,NULL),(333,'Daman and Diu',NULL,NULL),(334,'Damoh',NULL,NULL),(335,'Darbhanga',NULL,NULL),(336,'Darjeeling',NULL,NULL),(337,'Dasua',NULL,NULL),(338,'Datia',NULL,NULL),(339,'Daudnagar',NULL,NULL),(340,'Daund',NULL,NULL),(341,'Davanagere',NULL,NULL),(342,'Debagarh',NULL,NULL),(343,'Deesa',NULL,NULL),(344,'Dehgam',NULL,NULL),(345,'Dehradun',NULL,NULL),(346,'Dehri-on-Sone',NULL,NULL),(347,'Delhi',NULL,NULL),(348,'Deoghar',NULL,NULL),(349,'Deoria',NULL,NULL),(350,'Devarakonda',NULL,NULL),(351,'Devar Hipparagi',NULL,NULL),(352,'Devgarh',NULL,NULL),(353,'Devgarh',NULL,NULL),(354,'Dewas',NULL,NULL),(355,'Dhampur',NULL,NULL),(356,'Dhamtari',NULL,NULL),(357,'Dhanbad',NULL,NULL),(358,'Dhar',NULL,NULL),(359,'Dharampur',NULL,NULL),(360,'Dharamsala',NULL,NULL),(361,'Dharmanagar',NULL,NULL),(362,'Dharmapuri',NULL,NULL),(363,'Dharmavaram',NULL,NULL),(364,'Dharwad',NULL,NULL),(365,'Dhekiajuli',NULL,NULL),(366,'Dhenkanal',NULL,NULL),(367,'Dholka',NULL,NULL),(368,'Dhubri',NULL,NULL),(369,'Dhule',NULL,NULL),(370,'Dhulian',NULL,NULL),(371,'Dhuri',NULL,NULL),(372,'Dibrugarh',NULL,NULL),(373,'Digboi',NULL,NULL),(374,'Dighwara',NULL,NULL),(375,'Dimapur',NULL,NULL),(376,'Dinanagar',NULL,NULL),(377,'Dindigul',NULL,NULL),(378,'Diphu',NULL,NULL),(379,'Dipka',NULL,NULL),(380,'Dispur*',NULL,NULL),(381,'Dombivli',NULL,NULL),(382,'Dongargarh',NULL,NULL),(383,'Duliajan Oil Town',NULL,NULL),(384,'Dumdum',NULL,NULL),(385,'Dumka',NULL,NULL),(386,'Dumraon',NULL,NULL),(387,'Durg-Bhilai Nagar',NULL,NULL),(388,'Durgapur',NULL,NULL),(389,'Durgapur',NULL,NULL),(390,'Dwarka',NULL,NULL),(391,'Ellenabad',NULL,NULL),(392,'Eluru',NULL,NULL),(393,'Erattupetta',NULL,NULL),(394,'Erode',NULL,NULL),(395,'Etah',NULL,NULL),(396,'Etawah',NULL,NULL),(397,'English Bazar(Malda)',NULL,NULL),(398,'Faizabad',NULL,NULL),(399,'Falna',NULL,NULL),(400,'Faridabad',NULL,NULL),(401,'Faridkot',NULL,NULL),(402,'Farooqnagar',NULL,NULL),(403,'Farrukhabad',NULL,NULL),(404,'Fatehabad',NULL,NULL),(405,'Fatehabad',NULL,NULL),(406,'Fatehabad',NULL,NULL),(407,'Fatehgarh',NULL,NULL),(408,'Fatehpur Chaurasi',NULL,NULL),(409,'Fatehpur Sikri',NULL,NULL),(410,'Fatehpur',NULL,NULL),(411,'Fatehpur',NULL,NULL),(412,'Fatehpur',NULL,NULL),(413,'Fatwah',NULL,NULL),(414,'Fazilka',NULL,NULL),(415,'Forbesganj',NULL,NULL),(416,'Firozabad',NULL,NULL),(417,'Firozpur',NULL,NULL),(418,'Firozpur Cantt.',NULL,NULL),(419,'Gadarwara',NULL,NULL),(420,'Gadhaga',NULL,NULL),(421,'Gadchiroli',NULL,NULL),(422,'Gadwal',NULL,NULL),(423,'Ganaur',NULL,NULL),(424,'Gandhidham',NULL,NULL),(425,'Gandhinagar*',NULL,NULL),(426,'Gangtok*',NULL,NULL),(427,'Ganjam',NULL,NULL),(428,'Garhwa',NULL,NULL),(429,'Gauripur',NULL,NULL),(430,'Gauribidanur',NULL,NULL),(431,'Gaya',NULL,NULL),(432,'Gharaunda',NULL,NULL),(433,'Ghatampur',NULL,NULL),(434,'Ghatanji',NULL,NULL),(435,'Ghatshila',NULL,NULL),(436,'Ghaziabad',NULL,NULL),(437,'Ghazipur',NULL,NULL),(438,'Giddarbaha',NULL,NULL),(439,'Gingee',NULL,NULL),(440,'Giridih',NULL,NULL),(441,'Goa Velha',NULL,NULL),(442,'Goalpara',NULL,NULL),(443,'Gobichettipalayam',NULL,NULL),(444,'Gobindgarh',NULL,NULL),(445,'Gobranawapara',NULL,NULL),(446,'Godda',NULL,NULL),(447,'Godhra',NULL,NULL),(448,'Gogri Jamalpur',NULL,NULL),(449,'Gohana',NULL,NULL),(450,'Gokak',NULL,NULL),(451,'Golaghat',NULL,NULL),(452,'Gomoh',NULL,NULL),(453,'Gondiya',NULL,NULL),(454,'Gooty',NULL,NULL),(455,'Gopalganj',NULL,NULL),(456,'Gorakhpur',NULL,NULL),(457,'Greater Noida',NULL,NULL),(458,'Gudalur',NULL,NULL),(459,'Gudalur',NULL,NULL),(460,'Gudalur',NULL,NULL),(461,'Gudivada',NULL,NULL),(462,'Gudur',NULL,NULL),(463,'Gulbarga',NULL,NULL),(464,'Gumia',NULL,NULL),(465,'Gumla',NULL,NULL),(466,'Guna',NULL,NULL),(467,'Gundlupet',NULL,NULL),(468,'Guntakal',NULL,NULL),(469,'Guntur',NULL,NULL),(470,'Gunupur',NULL,NULL),(471,'Gurdaspur',NULL,NULL),(472,'Gurgaon',NULL,NULL),(473,'Guruvayoor',NULL,NULL),(474,'Guwahati',NULL,NULL),(475,'Gwalior',NULL,NULL),(476,'Haflong',NULL,NULL),(477,'Hailakandi',NULL,NULL),(478,'Hajipursscsc',NULL,NULL),(479,'Haldia',NULL,NULL),(480,'Haldwani',NULL,NULL),(481,'Hamirpur',NULL,NULL),(482,'Hamirpur',NULL,NULL),(483,'Hansi',NULL,NULL),(484,'Hanuman Junction',NULL,NULL),(485,'Hanumangarh',NULL,NULL),(486,'Hapur',NULL,NULL),(487,'Harda',NULL,NULL),(488,'Hardoi',NULL,NULL),(489,'Haridwar',NULL,NULL),(490,'Haripad',NULL,NULL),(491,'Harsawa',NULL,NULL),(492,'Harur',NULL,NULL),(493,'Haasana',NULL,NULL),(494,'Hastinapur',NULL,NULL),(495,'Hathras',NULL,NULL),(496,'Hazaribag',NULL,NULL),(497,'Hilsa',NULL,NULL),(498,'Himatnagar',NULL,NULL),(499,'Hindupur',NULL,NULL),(500,'Hinjilicut',NULL,NULL),(501,'Hisar',NULL,NULL),(502,'Hisua',NULL,NULL),(503,'Hodal',NULL,NULL),(504,'Hojai',NULL,NULL),(505,'Hoshiarpur',NULL,NULL),(506,'Hosapet',NULL,NULL),(507,'Howrah',NULL,NULL),(508,'Hubbali',NULL,NULL),(509,'Hukkeri',NULL,NULL),(510,'Hugli-Chuchura',NULL,NULL),(511,'Hussainabad',NULL,NULL),(512,'Hyderabad*',NULL,NULL),(513,'Ichalkaranji',NULL,NULL),(514,'Ichchapuram',NULL,NULL),(515,'Idar',NULL,NULL),(516,'Imphal*',NULL,NULL),(517,'Indirapuram',NULL,NULL),(518,'Indi',NULL,NULL),(519,'Indore',NULL,NULL),(520,'Indranagar',NULL,NULL),(521,'Irinjalakuda',NULL,NULL),(522,'Islampur',NULL,NULL),(523,'Islampur',NULL,NULL),(524,'Itanagar*',NULL,NULL),(525,'Itarsi',NULL,NULL),(526,'Idukki',NULL,NULL),(527,'Jabalpur',NULL,NULL),(528,'Jagadhri',NULL,NULL),(529,'Jagatsinghapur',NULL,NULL),(530,'Jagdalpur',NULL,NULL),(531,'Jagdispur',NULL,NULL),(532,'Jaggaiahpet',NULL,NULL),(533,'Jagraon',NULL,NULL),(534,'Jagtial',NULL,NULL),(535,'Jaipur*',NULL,NULL),(536,'Jais',NULL,NULL),(537,'Jaisalmer',NULL,NULL),(538,'Jaitaran',NULL,NULL),(539,'Jaitu',NULL,NULL),(540,'Jajapur',NULL,NULL),(541,'Jajmau',NULL,NULL),(542,'Jalalabad',NULL,NULL),(543,'Jalna',NULL,NULL),(544,'Jalandhar Cantt.',NULL,NULL),(545,'Jalandhar',NULL,NULL),(546,'Jaleswar',NULL,NULL),(547,'Jalgaon',NULL,NULL),(548,'Jalpaiguri',NULL,NULL),(549,'Jalore',NULL,NULL),(550,'Jamalpur',NULL,NULL),(551,'Jammalamadugu',NULL,NULL),(552,'Jammu',NULL,NULL),(553,'Jamnagar',NULL,NULL),(554,'Jamshedpur',NULL,NULL),(555,'Jamtara',NULL,NULL),(556,'Jamui',NULL,NULL),(557,'Jandiala',NULL,NULL),(558,'Jangaon',NULL,NULL),(559,'Janjgir',NULL,NULL),(560,'Jashpurnagar',NULL,NULL),(561,'Jaspur',NULL,NULL),(562,'Jatani',NULL,NULL),(563,'Jaunpur',NULL,NULL),(564,'Jayankondam',NULL,NULL),(565,'Jehanabad',NULL,NULL),(566,'Jeypur',NULL,NULL),(567,'Jhabua',NULL,NULL),(568,'Jhajha',NULL,NULL),(569,'Jhajjar',NULL,NULL),(570,'Jhalawar',NULL,NULL),(571,'Jhanjharpur',NULL,NULL),(572,'Jhansi',NULL,NULL),(573,'Jhargram',NULL,NULL),(574,'Jharsuguda',NULL,NULL),(575,'Jhumri Tilaiya',NULL,NULL),(576,'Jhunjhunu',NULL,NULL),(577,'Jind',NULL,NULL),(578,'Joda',NULL,NULL),(579,'Jodhpur',NULL,NULL),(580,'Jogabani',NULL,NULL),(581,'Jogendranagar',NULL,NULL),(582,'Jorhat',NULL,NULL),(583,'Jowai',NULL,NULL),(584,'Junagadh',NULL,NULL),(585,'Junnar',NULL,NULL),(586,'Jhalda',NULL,NULL),(587,'Kadapa',NULL,NULL),(588,'Kadi',NULL,NULL),(589,'Kadiri',NULL,NULL),(590,'Kadirur',NULL,NULL),(591,'Kagaznagar',NULL,NULL),(592,'Kailaras',NULL,NULL),(593,'Kailasahar',NULL,NULL),(594,'Kaithal',NULL,NULL),(595,'Kakching',NULL,NULL),(596,'Kakinada',NULL,NULL),(597,'Kalan Wali',NULL,NULL),(598,'Kalavad',NULL,NULL),(599,'Kalburgi',NULL,NULL),(600,'Kalimpong',NULL,NULL),(601,'Kalka',NULL,NULL),(602,'Kalliasseri',NULL,NULL),(603,'Kalpi',NULL,NULL),(604,'Kalol',NULL,NULL),(605,'Kalpetta',NULL,NULL),(606,'Kalyan',NULL,NULL),(607,'Kalyandurg',NULL,NULL),(608,'Kamareddy',NULL,NULL),(609,'Kamthi',NULL,NULL),(610,'Kanchipuram',NULL,NULL),(611,'Kanda',NULL,NULL),(612,'Kandukur',NULL,NULL),(613,'Kanhangad',NULL,NULL),(614,'Kanjikkuzhi',NULL,NULL),(615,'Kanker',NULL,NULL),(616,'Kannur',NULL,NULL),(617,'Kanpur',NULL,NULL),(618,'Kantabanji',NULL,NULL),(619,'Kanti',NULL,NULL),(620,'Kapadvanj',NULL,NULL),(621,'Kapurthala',NULL,NULL),(622,'Karad',NULL,NULL),(623,'Karaikal',NULL,NULL),(624,'Karaikudi',NULL,NULL),(625,'Karanjia',NULL,NULL),(626,'Karimganj',NULL,NULL),(627,'Karimnagar',NULL,NULL),(628,'Karjan',NULL,NULL),(629,'karjat',NULL,NULL),(630,'Kaarkala',NULL,NULL),(631,'Karnal',NULL,NULL),(632,'Karoran',NULL,NULL),(633,'Kartarpur',NULL,NULL),(634,'Karur',NULL,NULL),(635,'Karungal',NULL,NULL),(636,'Karwar',NULL,NULL),(637,'Kasaragod',NULL,NULL),(638,'Kashipur',NULL,NULL),(639,'Kathua',NULL,NULL),(640,'Katihar',NULL,NULL),(641,'Katni',NULL,NULL),(642,'Katra',NULL,NULL),(643,'Kavali',NULL,NULL),(644,'Kavaratti*',NULL,NULL),(645,'Kawardha',NULL,NULL),(646,'Kayamkulam',NULL,NULL),(647,'Kendrapara',NULL,NULL),(648,'Kendujhar',NULL,NULL),(649,'Keshod',NULL,NULL),(650,'Keylong',NULL,NULL),(651,'Khagaria',NULL,NULL),(652,'Khalilabad',NULL,NULL),(653,'Khambhalia',NULL,NULL),(654,'Khambhat',NULL,NULL),(655,'Khammam',NULL,NULL),(656,'Khanna',NULL,NULL),(657,'Kharagpur',NULL,NULL),(658,'Kharagpur',NULL,NULL),(659,'Kharar',NULL,NULL),(660,'Kheda',NULL,NULL),(661,'Khedbrahma',NULL,NULL),(662,'Kheralu',NULL,NULL),(663,'Kheri',NULL,NULL),(664,'Khordha',NULL,NULL),(665,'Khowai',NULL,NULL),(666,'Khunti',NULL,NULL),(667,'Khurai',NULL,NULL),(668,'kichha',NULL,NULL),(669,'Kishanganj',NULL,NULL),(670,'Kochi',NULL,NULL),(671,'Kodad',NULL,NULL),(672,'Kodinar',NULL,NULL),(673,'Kodungallur',NULL,NULL),(674,'Kohima*',NULL,NULL),(675,'Kokrajhar',NULL,NULL),(676,'Kolar',NULL,NULL),(677,'Kolhar',NULL,NULL),(678,'Kolhapur',NULL,NULL),(679,'Kolkata',NULL,NULL),(680,'Kollam',NULL,NULL),(681,'Kollankodu',NULL,NULL),(682,'Kondagaon',NULL,NULL),(683,'Konnagar',NULL,NULL),(684,'Koothuparamba',NULL,NULL),(685,'Koraput',NULL,NULL),(686,'Korba',NULL,NULL),(687,'Koratla',NULL,NULL),(688,'Kot Kapura',NULL,NULL),(689,'Kota',NULL,NULL),(690,'Kota',NULL,NULL),(691,'Kota',NULL,NULL),(692,'Kotdwara',NULL,NULL),(693,'Kothagudem',NULL,NULL),(694,'Kothamangalam',NULL,NULL),(695,'Kothapeta',NULL,NULL),(696,'Kotma',NULL,NULL),(697,'Kottayam',NULL,NULL),(698,'Kovvur',NULL,NULL),(699,'Kozhikode',NULL,NULL),(700,'Krishnanagar',NULL,NULL),(701,'Kuchinda',NULL,NULL),(702,'Kulpahar',NULL,NULL),(703,'Kunnamkulam',NULL,NULL),(704,'Kurali',NULL,NULL),(705,'Kurnool',NULL,NULL),(706,'Kurukshetra',NULL,NULL),(707,'Kyathampalle',NULL,NULL),(708,'Kamahi Devi',NULL,NULL),(709,'Kalyani',NULL,NULL),(710,'Lachhmangarh',NULL,NULL),(711,'Ladnu',NULL,NULL),(712,'Ladwa',NULL,NULL),(713,'Lahar',NULL,NULL),(714,'Laharpur',NULL,NULL),(715,'Lakheri',NULL,NULL),(716,'Lakhimpur',NULL,NULL),(717,'Lakhisarai',NULL,NULL),(718,'Lakshmishawara',NULL,NULL),(719,'Lal Gopalganj Nindaura',NULL,NULL),(720,'Lalganj',NULL,NULL),(721,'Lalgudi',NULL,NULL),(722,'Lalitpur',NULL,NULL),(723,'Lalganj',NULL,NULL),(724,'Lalsot',NULL,NULL),(725,'Lanka',NULL,NULL),(726,'Lar',NULL,NULL),(727,'Lathi',NULL,NULL),(728,'Latur',NULL,NULL),(729,'Leh',NULL,NULL),(730,'Lilong',NULL,NULL),(731,'Limbdi',NULL,NULL),(732,'Lingsuguru',NULL,NULL),(733,'Loha',NULL,NULL),(734,'Lohardaga',NULL,NULL),(735,'Lonar',NULL,NULL),(736,'Lonavla',NULL,NULL),(737,'Longowal',NULL,NULL),(738,'Loni',NULL,NULL),(739,'Losal',NULL,NULL),(740,'Lucknow*',NULL,NULL),(741,'Ludhiana',NULL,NULL),(742,'Lumding',NULL,NULL),(743,'Lunawada',NULL,NULL),(744,'Lundi',NULL,NULL),(745,'Lunglei',NULL,NULL),(746,'Macherla',NULL,NULL),(747,'Machilipatnam',NULL,NULL),(748,'Madanapalle',NULL,NULL),(749,'Maddhuru',NULL,NULL),(750,'Margao',NULL,NULL),(751,'Madhepura',NULL,NULL),(752,'Madhubani',NULL,NULL),(753,'Madhugiri',NULL,NULL),(754,'Madhupur',NULL,NULL),(755,'Madhyamgram',NULL,NULL),(756,'Madikeri',NULL,NULL),(757,'Madurai',NULL,NULL),(758,'Maagadi',NULL,NULL),(759,'Mahabaleswar',NULL,NULL),(760,'Mahad',NULL,NULL),(761,'Mahbubnagar',NULL,NULL),(762,'Mahalingapura',NULL,NULL),(763,'Maharajganj',NULL,NULL),(764,'Maharajpur',NULL,NULL),(765,'Mahasamund',NULL,NULL),(766,'Mahe',NULL,NULL),(767,'Mahendragarh',NULL,NULL),(768,'Mahendragarh',NULL,NULL),(769,'Mahesana',NULL,NULL),(770,'Mahidpur',NULL,NULL),(771,'Mahnar Bazar',NULL,NULL),(772,'Mahoba',NULL,NULL),(773,'Mahuli',NULL,NULL),(774,'Mahuva',NULL,NULL),(775,'Mahwa',NULL,NULL),(776,'Maihar',NULL,NULL),(777,'Mainaguri',NULL,NULL),(778,'Makhdumpur',NULL,NULL),(779,'Makrana',NULL,NULL),(780,'Mal',NULL,NULL),(781,'Malajkhand',NULL,NULL),(782,'Malappuram',NULL,NULL),(783,'Malavalli',NULL,NULL),(784,'Malegaon',NULL,NULL),(785,'Malerkotla',NULL,NULL),(786,'Malkangiri',NULL,NULL),(787,'Malkapur',NULL,NULL),(788,'Malout',NULL,NULL),(789,'Malpura',NULL,NULL),(790,'Maaluru',NULL,NULL),(791,'Manasa',NULL,NULL),(792,'Manavadar',NULL,NULL),(793,'Manawar',NULL,NULL),(794,'Manchar',NULL,NULL),(795,'Mancherial',NULL,NULL),(796,'Mandalgarh',NULL,NULL),(797,'Mandamarri',NULL,NULL),(798,'Mandapeta',NULL,NULL),(799,'Mandawa',NULL,NULL),(800,'Mandi',NULL,NULL),(801,'Mandi Dabwali',NULL,NULL),(802,'Mandideep',NULL,NULL),(803,'Mandla',NULL,NULL),(804,'Mandsaur',NULL,NULL),(805,'Mandvi',NULL,NULL),(806,'Mandya',NULL,NULL),(807,'Maner',NULL,NULL),(808,'Manesar',NULL,NULL),(809,'Mangalagiri',NULL,NULL),(810,'Mangaldoi',NULL,NULL),(811,'Mangalore',NULL,NULL),(812,'Mangalvedhe',NULL,NULL),(813,'Manglaur',NULL,NULL),(814,'Mangrol',NULL,NULL),(815,'Mangrol',NULL,NULL),(816,'Mangrulpir',NULL,NULL),(817,'Manihari',NULL,NULL),(818,'Manjlegaon',NULL,NULL),(819,'Mankachar',NULL,NULL),(820,'Manmad',NULL,NULL),(821,'Mansa',NULL,NULL),(822,'Mansa',NULL,NULL),(823,'Manuguru',NULL,NULL),(824,'Maanvi',NULL,NULL),(825,'Manwath',NULL,NULL),(826,'Mapusa',NULL,NULL),(827,'Margao',NULL,NULL),(828,'Margherita',NULL,NULL),(829,'Marhaura',NULL,NULL),(830,'Mariani',NULL,NULL),(831,'Marigaon',NULL,NULL),(832,'Markapur',NULL,NULL),(833,'Marmagao',NULL,NULL),(834,'Masaurhi',NULL,NULL),(835,'Mathabhanga',NULL,NULL),(836,'Mathura',NULL,NULL),(837,'Mattannur',NULL,NULL),(838,'Mauganj',NULL,NULL),(839,'Maur',NULL,NULL),(840,'Mavelikkara',NULL,NULL),(841,'Mavoor',NULL,NULL),(842,'Mayang Imphal',NULL,NULL),(843,'Medak',NULL,NULL),(844,'Medinipur',NULL,NULL),(845,'Meerut',NULL,NULL),(846,'Mehkar',NULL,NULL),(847,'Mehmedabad',NULL,NULL),(848,'Memari',NULL,NULL),(849,'Merta City',NULL,NULL),(850,'Mhaswad',NULL,NULL),(851,'Mhow Cantonment',NULL,NULL),(852,'Mhowgaon',NULL,NULL),(853,'Mihijam',NULL,NULL),(854,'Mira-Bhayandar',NULL,NULL),(855,'Miraj',NULL,NULL),(856,'Mirganj',NULL,NULL),(857,'Miryalaguda',NULL,NULL),(858,'Mirzapur',NULL,NULL),(859,'Mithapur',NULL,NULL),(860,'Modasa',NULL,NULL),(861,'Modinagar',NULL,NULL),(862,'Moga',NULL,NULL),(863,'Mogalthur',NULL,NULL),(864,'Mohali',NULL,NULL),(865,'Mohania',NULL,NULL),(866,'Mokama',NULL,NULL),(867,'Mokameh',NULL,NULL),(868,'Mokokchung',NULL,NULL),(869,'Monoharpur',NULL,NULL),(870,'Moradabad',NULL,NULL),(871,'Morena',NULL,NULL),(872,'Morinda',NULL,NULL),(873,'Morshi',NULL,NULL),(874,'Morvi',NULL,NULL),(875,'Motihari',NULL,NULL),(876,'Motipur',NULL,NULL),(877,'Mount Abu',NULL,NULL),(878,'Mudalagi',NULL,NULL),(879,'Mudabidri',NULL,NULL),(880,'Muddebihala',NULL,NULL),(881,'Mudhola',NULL,NULL),(882,'Mukatsar',NULL,NULL),(883,'Mukerian',NULL,NULL),(884,'Mukhed',NULL,NULL),(885,'Muktsar',NULL,NULL),(886,'Mul',NULL,NULL),(887,'Mulabaagilu',NULL,NULL),(888,'Multai',NULL,NULL),(889,'Mumbai',NULL,NULL),(890,'Mundi',NULL,NULL),(891,'Mundaragi',NULL,NULL),(892,'Mungeli',NULL,NULL),(893,'Munger',NULL,NULL),(894,'Muradnagar',NULL,NULL),(895,'Murliganj',NULL,NULL),(896,'Murshidabad',NULL,NULL),(897,'Murtijapur',NULL,NULL),(898,'Murwara',NULL,NULL),(899,'Musabani',NULL,NULL),(900,'Mussoorie',NULL,NULL),(901,'Muvattupuzha',NULL,NULL),(902,'Muzaffarnagar',NULL,NULL),(903,'Muzaffarpur',NULL,NULL),(904,'Mysore',NULL,NULL),(905,'Nabadwip',NULL,NULL),(906,'Nabarangapur',NULL,NULL),(907,'Nabha',NULL,NULL),(908,'Nadbai',NULL,NULL),(909,'Nadiad',NULL,NULL),(910,'Nidagundi',NULL,NULL),(911,'Nagaon',NULL,NULL),(912,'Nagapattinam',NULL,NULL),(913,'Nagar',NULL,NULL),(914,'Nagari',NULL,NULL),(915,'Nagarkurnool',NULL,NULL),(916,'Nagaur',NULL,NULL),(917,'Nagda',NULL,NULL),(918,'Nagercoil',NULL,NULL),(919,'Nagina',NULL,NULL),(920,'Nagla',NULL,NULL),(921,'Nagpur',NULL,NULL),(922,'Nahan',NULL,NULL),(923,'Naharlagun',NULL,NULL),(924,'Naihati',NULL,NULL),(925,'Naila Janjgir',NULL,NULL),(926,'Nainital',NULL,NULL),(927,'Nainpur',NULL,NULL),(928,'Najibabad',NULL,NULL),(929,'Nakodar',NULL,NULL),(930,'Nakur',NULL,NULL),(931,'Nalasopara',NULL,NULL),(932,'Nalanda',NULL,NULL),(933,'Nalbari',NULL,NULL),(934,'Namagiripettai',NULL,NULL),(935,'Namakkal',NULL,NULL),(936,'Nanded-Waghala',NULL,NULL),(937,'Nandgaon',NULL,NULL),(938,'Nandivaram-Guduvancheri',NULL,NULL),(939,'Nandura',NULL,NULL),(940,'Nandurbar',NULL,NULL),(941,'Nandyal',NULL,NULL),(942,'Nangal',NULL,NULL),(943,'Nanjanagoodu',NULL,NULL),(944,'Nanjikottai',NULL,NULL),(945,'Nanpara',NULL,NULL),(946,'Narasapur',NULL,NULL),(947,'Narasaraopet',NULL,NULL),(948,'Naraura',NULL,NULL),(949,'Narayanpet',NULL,NULL),(950,'Nargund',NULL,NULL),(951,'Narkatiaganj',NULL,NULL),(952,'Narkhed',NULL,NULL),(953,'Narnaul',NULL,NULL),(954,'Narsinghgarh',NULL,NULL),(955,'Narsinghgarh',NULL,NULL),(956,'Narsipatnam',NULL,NULL),(957,'Narwana',NULL,NULL),(958,'Nashik',NULL,NULL),(959,'Nasirabad',NULL,NULL),(960,'Natham',NULL,NULL),(961,'Nathdwara',NULL,NULL),(962,'Naugachhia',NULL,NULL),(963,'Naugawan Sadat',NULL,NULL),(964,'Nautanwa',NULL,NULL),(965,'Navalgund',NULL,NULL),(966,'Navi Mumbai',NULL,NULL),(967,'Navsari',NULL,NULL),(968,'Nawabganj',NULL,NULL),(969,'Nawada',NULL,NULL),(970,'Nawagarh',NULL,NULL),(971,'Nawalgarh',NULL,NULL),(972,'Nawanshahr',NULL,NULL),(973,'Nawapur',NULL,NULL),(974,'Nedumangad',NULL,NULL),(975,'Neem-Ka-Thana',NULL,NULL),(976,'Neemuch',NULL,NULL),(977,'Nehtaur',NULL,NULL),(978,'Nelamangala',NULL,NULL),(979,'Nellikuppam',NULL,NULL),(980,'Nellore',NULL,NULL),(981,'Nepanagar',NULL,NULL),(982,'New Delhi*',NULL,NULL),(983,'Neyveli',NULL,NULL),(984,'Neyyattinkara',NULL,NULL),(985,'Nidadavole',NULL,NULL),(986,'Nilanga',NULL,NULL),(987,'Nilambur',NULL,NULL),(988,'Nimbahera',NULL,NULL),(989,'Nippani',NULL,NULL),(990,'Nirmal',NULL,NULL),(991,'Niwai',NULL,NULL),(992,'Niwari',NULL,NULL),(993,'Nizamabad',NULL,NULL),(994,'Nohar',NULL,NULL),(995,'Noida',NULL,NULL),(996,'Nokha',NULL,NULL),(997,'Nokha',NULL,NULL),(998,'Nongstoin',NULL,NULL),(999,'Noorpur',NULL,NULL),(1000,'North Lakhimpur',NULL,NULL),(1001,'Nowgong',NULL,NULL),(1002,'Nowrozabad',NULL,NULL),(1003,'Nuzvid',NULL,NULL),(1004,'O\' Valley',NULL,NULL),(1005,'Oddanchatram',NULL,NULL),(1006,'Obra',NULL,NULL),(1007,'Ongole',NULL,NULL),(1008,'Orai',NULL,NULL),(1009,'Osmanabad',NULL,NULL),(1010,'Ottappalam',NULL,NULL),(1011,'Ozar',NULL,NULL),(1012,'P.N.Patti',NULL,NULL),(1013,'Pachora',NULL,NULL),(1014,'Pachore',NULL,NULL),(1015,'Pacode',NULL,NULL),(1016,'Padmanabhapuram',NULL,NULL),(1017,'Padra',NULL,NULL),(1018,'Padrauna',NULL,NULL),(1019,'Paithan',NULL,NULL),(1020,'Pakaur',NULL,NULL),(1021,'Palacole',NULL,NULL),(1022,'Palai',NULL,NULL),(1023,'Palakkad',NULL,NULL),(1024,'Palani',NULL,NULL),(1025,'Palanpur',NULL,NULL),(1026,'Palasa Kasibugga',NULL,NULL),(1027,'Palghar',NULL,NULL),(1028,'Pali',NULL,NULL),(1029,'Pali',NULL,NULL),(1030,'Palia Kalan',NULL,NULL),(1031,'Palitana',NULL,NULL),(1032,'Pondur',NULL,NULL),(1033,'Palladam',NULL,NULL),(1034,'Pallapatti',NULL,NULL),(1035,'Pallikonda',NULL,NULL),(1036,'Palwal',NULL,NULL),(1037,'Palwancha',NULL,NULL),(1038,'Panagar',NULL,NULL),(1039,'Panagudi',NULL,NULL),(1040,'Panaji*',NULL,NULL),(1041,'Panamattom',NULL,NULL),(1042,'Panchkula',NULL,NULL),(1043,'Panchla',NULL,NULL),(1044,'Pandharkaoda',NULL,NULL),(1045,'Pandharpur',NULL,NULL),(1046,'Pandhurna',NULL,NULL),(1047,'Pandua',NULL,NULL),(1048,'Panipat',NULL,NULL),(1049,'Panna',NULL,NULL),(1050,'Panniyannur',NULL,NULL),(1051,'Panruti',NULL,NULL),(1052,'Panvel',NULL,NULL),(1053,'Pappinisseri',NULL,NULL),(1054,'Paradip',NULL,NULL),(1055,'Paramakudi',NULL,NULL),(1056,'Parangipettai',NULL,NULL),(1057,'Parasi',NULL,NULL),(1058,'Paravoor',NULL,NULL),(1059,'Parbhani',NULL,NULL),(1060,'Pardi',NULL,NULL),(1061,'Parlakhemundi',NULL,NULL),(1062,'Parli',NULL,NULL),(1063,'Parola',NULL,NULL),(1064,'Partur',NULL,NULL),(1065,'Parvathipuram',NULL,NULL),(1066,'Pasan',NULL,NULL),(1067,'Paschim Punropara',NULL,NULL),(1068,'Pasighat',NULL,NULL),(1069,'Patan',NULL,NULL),(1070,'Pathanamthitta',NULL,NULL),(1071,'Pathankot',NULL,NULL),(1072,'Pathardi',NULL,NULL),(1073,'Pathri',NULL,NULL),(1074,'Patiala',NULL,NULL),(1075,'Patna*',NULL,NULL),(1076,'Patran',NULL,NULL),(1077,'Patratu',NULL,NULL),(1078,'Pattamundai',NULL,NULL),(1079,'Patti',NULL,NULL),(1080,'Pattukkottai',NULL,NULL),(1081,'Patur',NULL,NULL),(1082,'Pauni',NULL,NULL),(1083,'Pauri',NULL,NULL),(1084,'Paavagada',NULL,NULL),(1085,'Pedana',NULL,NULL),(1086,'Peddapuram',NULL,NULL),(1087,'Pehowa',NULL,NULL),(1088,'Pen',NULL,NULL),(1089,'Penuganchiprolu',NULL,NULL),(1090,'Perambalur',NULL,NULL),(1091,'Peravurani',NULL,NULL),(1092,'Peringathur',NULL,NULL),(1093,'Perinthalmanna',NULL,NULL),(1094,'Periyakulam',NULL,NULL),(1095,'Periyasemur',NULL,NULL),(1096,'Pernampattu',NULL,NULL),(1097,'Perumbavoor',NULL,NULL),(1098,'Petlad',NULL,NULL),(1099,'Phagwara',NULL,NULL),(1100,'Phalodi',NULL,NULL),(1101,'Phaltan',NULL,NULL),(1102,'Phillaur',NULL,NULL),(1103,'Phulabani',NULL,NULL),(1104,'Phulera',NULL,NULL),(1105,'Phulpur',NULL,NULL),(1106,'Phusro',NULL,NULL),(1107,'Pihani',NULL,NULL),(1108,'Pilani',NULL,NULL),(1109,'Pilibanga',NULL,NULL),(1110,'Pilibhit',NULL,NULL),(1111,'Pilkhuwa',NULL,NULL),(1112,'Pindwara',NULL,NULL),(1113,'Pinjore',NULL,NULL),(1114,'Pipar City',NULL,NULL),(1115,'Pipariya',NULL,NULL),(1116,'Piro',NULL,NULL),(1117,'Pithampur',NULL,NULL),(1118,'Pithapuram',NULL,NULL),(1119,'Pithoragarh',NULL,NULL),(1120,'Pollachi',NULL,NULL),(1121,'Polur',NULL,NULL),(1122,'Pondicherry*',NULL,NULL),(1123,'Ponkunnam',NULL,NULL),(1124,'Ponnani',NULL,NULL),(1125,'Ponneri',NULL,NULL),(1126,'Ponnur',NULL,NULL),(1127,'Porbandar',NULL,NULL),(1128,'Porsa',NULL,NULL),(1129,'Port Blair*',NULL,NULL),(1130,'Powayan',NULL,NULL),(1131,'Prantij',NULL,NULL),(1132,'Pratapgarh',NULL,NULL),(1133,'Pratapgarh',NULL,NULL),(1134,'Prithvipur',NULL,NULL),(1135,'Proddatur',NULL,NULL),(1136,'Pudukkottai',NULL,NULL),(1137,'Pudupattinam',NULL,NULL),(1138,'Pukhrayan',NULL,NULL),(1139,'Pulgaon',NULL,NULL),(1140,'Puliyankudi',NULL,NULL),(1141,'Punalur',NULL,NULL),(1142,'Punch',NULL,NULL),(1143,'Pune',NULL,NULL),(1144,'Punjaipugalur',NULL,NULL),(1145,'Punganur',NULL,NULL),(1146,'Puranpur',NULL,NULL),(1147,'Purna',NULL,NULL),(1148,'Puri',NULL,NULL),(1149,'Purnia',NULL,NULL),(1150,'Purquazi',NULL,NULL),(1151,'Purulia',NULL,NULL),(1152,'Purwa',NULL,NULL),(1153,'Pusad',NULL,NULL),(1154,'Puthooru',NULL,NULL),(1155,'Puthuppally',NULL,NULL),(1156,'Puttur',NULL,NULL),(1157,'Qadian',NULL,NULL),(1158,'Quilandy',NULL,NULL),(1159,'Rabakavi Banahatti',NULL,NULL),(1160,'Radhanpur',NULL,NULL),(1161,'Rae Bareli',NULL,NULL),(1162,'Rafiganj',NULL,NULL),(1163,'Raghogarh-Vijaypur',NULL,NULL),(1164,'Raghunathpur',NULL,NULL),(1165,'Raghunathganj',NULL,NULL),(1166,'Rahatgarh',NULL,NULL),(1167,'Raichuri',NULL,NULL),(1168,'Raayachuru',NULL,NULL),(1169,'Raiganj',NULL,NULL),(1170,'Raigarh',NULL,NULL),(1171,'Ranipet',NULL,NULL),(1172,'Raikot',NULL,NULL),(1173,'Raipur*',NULL,NULL),(1174,'Rairangpur',NULL,NULL),(1175,'Raisen',NULL,NULL),(1176,'Raisinghnagar',NULL,NULL),(1177,'Rajagangapur',NULL,NULL),(1178,'Rajahmundry',NULL,NULL),(1179,'Rajakhera',NULL,NULL),(1180,'Rajaldesar',NULL,NULL),(1181,'Rajam',NULL,NULL),(1182,'Rajampet',NULL,NULL),(1183,'Rajapalayam',NULL,NULL),(1184,'Rajauri',NULL,NULL),(1185,'Rajgarh (Alwar)',NULL,NULL),(1186,'Rajgarh (Churu)',NULL,NULL),(1187,'Rajgarh',NULL,NULL),(1188,'Rajgir',NULL,NULL),(1189,'Rajkot',NULL,NULL),(1190,'Rajnandgaon',NULL,NULL),(1191,'Rajpipla',NULL,NULL),(1192,'Rajpura',NULL,NULL),(1193,'Rajsamand',NULL,NULL),(1194,'Rajula',NULL,NULL),(1195,'Rajura',NULL,NULL),(1196,'Ramachandrapuram',NULL,NULL),(1197,'Ramagundam',NULL,NULL),(1198,'Raamanagara',NULL,NULL),(1199,'Ramanathapuram',NULL,NULL),(1200,'Raamadurga',NULL,NULL),(1201,'Rameshwaram',NULL,NULL),(1202,'Ramganj Mandi',NULL,NULL),(1203,'Ramngarh',NULL,NULL),(1204,'Ramngarh',NULL,NULL),(1205,'Ramnagar',NULL,NULL),(1206,'Ramnagar',NULL,NULL),(1207,'Rampur',NULL,NULL),(1208,'Rampur Maniharan',NULL,NULL),(1209,'Rampur Maniharan',NULL,NULL),(1210,'Rampura Phul',NULL,NULL),(1211,'Rampurhat',NULL,NULL),(1212,'Ramtek',NULL,NULL),(1213,'Ranaghat',NULL,NULL),(1214,'Ranavav',NULL,NULL),(1215,'Ranchi*',NULL,NULL),(1216,'Rangia',NULL,NULL),(1217,'Rania',NULL,NULL),(1218,'Ranibennur',NULL,NULL),(1219,'Rapar',NULL,NULL),(1220,'Rasipuram',NULL,NULL),(1221,'Rasra',NULL,NULL),(1222,'Ratangarh',NULL,NULL),(1223,'Rath',NULL,NULL),(1224,'Ratia',NULL,NULL),(1225,'Ratlam',NULL,NULL),(1226,'Ratnagiri',NULL,NULL),(1227,'Rau',NULL,NULL),(1228,'Raurkela',NULL,NULL),(1229,'Raver',NULL,NULL),(1230,'Rawatbhata',NULL,NULL),(1231,'Rawatsar',NULL,NULL),(1232,'Raxaul Bazar',NULL,NULL),(1233,'Rayachoti',NULL,NULL),(1234,'Rayadurg',NULL,NULL),(1235,'Rayagada',NULL,NULL),(1236,'Reengus',NULL,NULL),(1237,'Rehli',NULL,NULL),(1238,'Renigunta',NULL,NULL),(1239,'Renukoot',NULL,NULL),(1240,'Reoti',NULL,NULL),(1241,'Repalle',NULL,NULL),(1242,'Revelganj',NULL,NULL),(1243,'Rewa',NULL,NULL),(1244,'Rewari',NULL,NULL),(1245,'Rishikesh',NULL,NULL),(1246,'Risod',NULL,NULL),(1247,'Robertsganj',NULL,NULL),(1248,'Robertson Pet',NULL,NULL),(1249,'Rohtak',NULL,NULL),(1250,'Ron',NULL,NULL),(1251,'Roorkee',NULL,NULL),(1252,'Rosera',NULL,NULL),(1253,'Rudauli',NULL,NULL),(1254,'Rudrapur',NULL,NULL),(1255,'Rudrapur',NULL,NULL),(1256,'Rupnagar',NULL,NULL),(1257,'Sabalgarh',NULL,NULL),(1258,'Sadabad',NULL,NULL),(1259,'Sadalaga',NULL,NULL),(1260,'Sadasivpet',NULL,NULL),(1261,'Sadri',NULL,NULL),(1262,'Sadulshahar',NULL,NULL),(1263,'Sadulpur',NULL,NULL),(1264,'Safidon',NULL,NULL),(1265,'Safipur',NULL,NULL),(1266,'Sagar',NULL,NULL),(1267,'Sagara',NULL,NULL),(1268,'Sagwara',NULL,NULL),(1269,'Saharanpur',NULL,NULL),(1270,'Saharsa',NULL,NULL),(1271,'Sahaspur',NULL,NULL),(1272,'Sahaswan',NULL,NULL),(1273,'Sahawar',NULL,NULL),(1274,'Sahibganj',NULL,NULL),(1275,'Sahjanwa',NULL,NULL),(1276,'Saidpur',NULL,NULL),(1277,'Saiha',NULL,NULL),(1278,'Sailu',NULL,NULL),(1279,'Sainthia',NULL,NULL),(1280,'Sakaleshapura',NULL,NULL),(1281,'Sakti',NULL,NULL),(1282,'Salaya',NULL,NULL),(1283,'Salem',NULL,NULL),(1284,'Salur',NULL,NULL),(1285,'Samalkha',NULL,NULL),(1286,'Samalkot',NULL,NULL),(1287,'Samana',NULL,NULL),(1288,'Samastipur',NULL,NULL),(1289,'Sambalpur',NULL,NULL),(1290,'Sambhal',NULL,NULL),(1291,'Sambhar',NULL,NULL),(1292,'Samdhan',NULL,NULL),(1293,'Samthar',NULL,NULL),(1294,'Sanand',NULL,NULL),(1295,'Sanawad',NULL,NULL),(1296,'Sanchore',NULL,NULL),(1297,'Sindagi',NULL,NULL),(1298,'Sandi',NULL,NULL),(1299,'Sandila',NULL,NULL),(1300,'Sandur',NULL,NULL),(1301,'Sangamner',NULL,NULL),(1302,'Sangareddy',NULL,NULL),(1303,'Sangaria',NULL,NULL),(1304,'Sangli',NULL,NULL),(1305,'Sangole',NULL,NULL),(1306,'Sangrur',NULL,NULL),(1307,'Sankarankoil',NULL,NULL),(1308,'Sankari',NULL,NULL),(1309,'Sankeshwara',NULL,NULL),(1310,'Santipur',NULL,NULL),(1311,'Sarangpur',NULL,NULL),(1312,'Sardarshahar',NULL,NULL),(1313,'Sardhana',NULL,NULL),(1314,'Sarni',NULL,NULL),(1315,'Sasaram',NULL,NULL),(1316,'Sasvad',NULL,NULL),(1317,'Satana',NULL,NULL),(1318,'Satara',NULL,NULL),(1319,'Satna',NULL,NULL),(1320,'Sathyamangalam',NULL,NULL),(1321,'Sattenapalle',NULL,NULL),(1322,'Sattur',NULL,NULL),(1323,'Saunda',NULL,NULL),(1324,'Soudaththi-Yellamma',NULL,NULL),(1325,'Sausar',NULL,NULL),(1326,'Savarkundla',NULL,NULL),(1327,'Savanur',NULL,NULL),(1328,'Savner',NULL,NULL),(1329,'Sawai Madhopur',NULL,NULL),(1330,'Sawantwadi',NULL,NULL),(1331,'Sedam',NULL,NULL),(1332,'Sehore',NULL,NULL),(1333,'Sendhwa',NULL,NULL),(1334,'Seohara',NULL,NULL),(1335,'Seoni',NULL,NULL),(1336,'Seoni-Malwa',NULL,NULL),(1337,'Shahabad',NULL,NULL),(1338,'Shahabad, Hardoi',NULL,NULL),(1339,'Shahabad, Rampur',NULL,NULL),(1340,'Shahade',NULL,NULL),(1341,'Shahbad',NULL,NULL),(1342,'Shahdol',NULL,NULL),(1343,'Shahganj',NULL,NULL),(1344,'Shahjahanpur',NULL,NULL),(1345,'Shahapura',NULL,NULL),(1346,'Shahpura',NULL,NULL),(1347,'Shahpura',NULL,NULL),(1348,'Shajapur',NULL,NULL),(1349,'Shamgarh',NULL,NULL),(1350,'Shamli',NULL,NULL),(1351,'Shamsabad, Agra',NULL,NULL),(1352,'Shamsabad, Farrukhabad',NULL,NULL),(1353,'Shegaon',NULL,NULL),(1354,'Sheikhpura',NULL,NULL),(1355,'Shendurjana',NULL,NULL),(1356,'Shenkottai',NULL,NULL),(1357,'Sheoganj',NULL,NULL),(1358,'Sheohar',NULL,NULL),(1359,'Sheopur',NULL,NULL),(1360,'Sherghati',NULL,NULL),(1361,'Sherkot',NULL,NULL),(1362,'Shiggaavi',NULL,NULL),(1363,'Shikapur',NULL,NULL),(1364,'Shikarpur, Bulandshahr',NULL,NULL),(1365,'Shikohabad',NULL,NULL),(1366,'Shillong*',NULL,NULL),(1367,'Shimla*',NULL,NULL),(1368,'Shivamogga',NULL,NULL),(1369,'Shirdi',NULL,NULL),(1370,'Shirpur-Warwade',NULL,NULL),(1371,'Shirur',NULL,NULL),(1372,'Shishgarh',NULL,NULL),(1373,'Shivpuri',NULL,NULL),(1374,'Sholavandan',NULL,NULL),(1375,'Sholingur',NULL,NULL),(1376,'Shoranur',NULL,NULL),(1377,'Surapura',NULL,NULL),(1378,'Shrigonda',NULL,NULL),(1379,'Shrirampur',NULL,NULL),(1380,'Shree Rangapattana',NULL,NULL),(1381,'Shujalpur',NULL,NULL),(1382,'Siana',NULL,NULL),(1383,'Sibsagar',NULL,NULL),(1384,'Siddipet',NULL,NULL),(1385,'Sidhi',NULL,NULL),(1386,'Sidhpur',NULL,NULL),(1387,'Sidhalaghatta',NULL,NULL),(1388,'Sihor',NULL,NULL),(1389,'Sihora',NULL,NULL),(1390,'Sikanderpur',NULL,NULL),(1391,'Sikandra Rao',NULL,NULL),(1392,'Sikandrabad',NULL,NULL),(1393,'Sikar',NULL,NULL),(1394,'Silao',NULL,NULL),(1395,'Silapathar',NULL,NULL),(1396,'Silchar',NULL,NULL),(1397,'Siliguri',NULL,NULL),(1398,'Sillod',NULL,NULL),(1399,'Silvassa*',NULL,NULL),(1400,'Simdega',NULL,NULL),(1401,'Sindhagi',NULL,NULL),(1402,'Sindhanooru',NULL,NULL),(1403,'Singapur',NULL,NULL),(1404,'Singrauli',NULL,NULL),(1405,'Sinnar',NULL,NULL),(1406,'Sira',NULL,NULL),(1407,'Sircilla',NULL,NULL),(1408,'Sirhind Fatehgarh Sahib',NULL,NULL),(1409,'Sirkali',NULL,NULL),(1410,'Sirohi',NULL,NULL),(1411,'Sironj',NULL,NULL),(1412,'Sirsa',NULL,NULL),(1413,'Sirsaganj',NULL,NULL),(1414,'Sirsi',NULL,NULL),(1415,'Sirsi',NULL,NULL),(1416,'Sheraguppa',NULL,NULL),(1417,'Sitamarhi',NULL,NULL),(1418,'Sitapur',NULL,NULL),(1419,'Sitarganj',NULL,NULL),(1420,'Sivaganga',NULL,NULL),(1421,'Sivagiri',NULL,NULL),(1422,'Sivakasi',NULL,NULL),(1423,'Siwan',NULL,NULL),(1424,'Sohagpur',NULL,NULL),(1425,'Sohna',NULL,NULL),(1426,'Sojat',NULL,NULL),(1427,'Solan',NULL,NULL),(1428,'Solapur',NULL,NULL),(1429,'Sonamukhi',NULL,NULL),(1430,'Sonepur',NULL,NULL),(1431,'Songadh',NULL,NULL),(1432,'Sonipat',NULL,NULL),(1433,'Sopore',NULL,NULL),(1434,'Soro',NULL,NULL),(1435,'Soron',NULL,NULL),(1436,'Soyagaon',NULL,NULL),(1437,'Sri Madhopur',NULL,NULL),(1438,'Srikakulam',NULL,NULL),(1439,'Srikalahasti',NULL,NULL),(1440,'Srinagar*',NULL,NULL),(1441,'Shreenivaasapura',NULL,NULL),(1442,'Srisailam Project (Right Flank Colony) Township',NULL,NULL),(1443,'Srirampore',NULL,NULL),(1444,'Srivilliputhur',NULL,NULL),(1445,'Suar',NULL,NULL),(1446,'Sugauli',NULL,NULL),(1447,'Sujangarh',NULL,NULL),(1448,'Sujanpur',NULL,NULL),(1449,'Sultanganj',NULL,NULL),(1450,'Sultanpur',NULL,NULL),(1451,'Sumerpur',NULL,NULL),(1452,'Sumerpur',NULL,NULL),(1453,'Sunabeda',NULL,NULL),(1454,'Sunam',NULL,NULL),(1455,'Sundargarh',NULL,NULL),(1456,'Sundarnagar',NULL,NULL),(1457,'Supaul',NULL,NULL),(1458,'Surandai',NULL,NULL),(1459,'Surat',NULL,NULL),(1460,'Suratgarh',NULL,NULL),(1461,'Suri',NULL,NULL),(1462,'Suriyampalayam',NULL,NULL),(1463,'Suryapet',NULL,NULL),(1464,'Tadepalligudem',NULL,NULL),(1465,'Tadpatri',NULL,NULL),(1466,'Taki',NULL,NULL),(1467,'Talaja',NULL,NULL),(1468,'Talcher',NULL,NULL),(1469,'Talegaon Dabhade',NULL,NULL),(1470,'Thaalikote',NULL,NULL),(1471,'Taliparamba',NULL,NULL),(1472,'Talode',NULL,NULL),(1473,'Talwara',NULL,NULL),(1474,'Tamluk',NULL,NULL),(1475,'Tanda',NULL,NULL),(1476,'Tanda',NULL,NULL),(1477,'Tandur',NULL,NULL),(1478,'Tanuku',NULL,NULL),(1479,'Tarakeswar',NULL,NULL),(1480,'Tarana',NULL,NULL),(1481,'Taranagar',NULL,NULL),(1482,'Taraori',NULL,NULL),(1483,'Tarbha',NULL,NULL),(1484,'Tarikere',NULL,NULL),(1485,'Tarn Taran',NULL,NULL),(1486,'Tasgaon',NULL,NULL),(1487,'Tehri',NULL,NULL),(1488,'Tekkalakote',NULL,NULL),(1489,'Tenali',NULL,NULL),(1490,'Tenkasi',NULL,NULL),(1491,'Tenu Dam-cum-Kathhara',NULL,NULL),(1492,'Thergallu',NULL,NULL),(1493,'Tetri Bazar',NULL,NULL),(1494,'Tezpur',NULL,NULL),(1495,'Thakurdwara',NULL,NULL),(1496,'Thammampatti',NULL,NULL),(1497,'Thana Bhawan',NULL,NULL),(1498,'Thane',NULL,NULL),(1499,'Thanesar',NULL,NULL),(1500,'Thangadh',NULL,NULL),(1501,'Thanjavur',NULL,NULL),(1502,'Tharad',NULL,NULL),(1503,'Tharamangalam',NULL,NULL),(1504,'Tharangambadi',NULL,NULL),(1505,'Theni Allinagaram',NULL,NULL),(1506,'Thirumangalam',NULL,NULL),(1507,'Thirunindravur',NULL,NULL),(1508,'Thiruparappu',NULL,NULL),(1509,'Thirupuvanam',NULL,NULL),(1510,'Thiruthuraipoondi',NULL,NULL),(1511,'Thiruvalla',NULL,NULL),(1512,'Thiruvallur',NULL,NULL),(1513,'Trivandrum',NULL,NULL),(1514,'Thiruvarur',NULL,NULL),(1515,'Thodupuzha',NULL,NULL),(1516,'Thoothukudi',NULL,NULL),(1517,'Thoubal',NULL,NULL),(1518,'Thrissur',NULL,NULL),(1519,'Thuraiyur',NULL,NULL),(1520,'Tikamgarh',NULL,NULL),(1521,'Tikota',NULL,NULL),(1522,'Tilda Newra',NULL,NULL),(1523,'Tilhar',NULL,NULL),(1524,'Talikota',NULL,NULL),(1525,'Tindivanam',NULL,NULL),(1526,'Tinsukia',NULL,NULL),(1527,'Thipatooru',NULL,NULL),(1528,'Tirora',NULL,NULL),(1529,'Tiruchendur',NULL,NULL),(1530,'Tiruchengode',NULL,NULL),(1531,'Tiruchirappalli',NULL,NULL),(1532,'Tirukalukundram',NULL,NULL),(1533,'Tirukkoyilur',NULL,NULL),(1534,'Tirunelveli',NULL,NULL),(1535,'Tirupathur',NULL,NULL),(1536,'Tirupathur',NULL,NULL),(1537,'Tirupati',NULL,NULL),(1538,'Tiruppur',NULL,NULL),(1539,'Tirur',NULL,NULL),(1540,'Tiruttani',NULL,NULL),(1541,'Tiruvannamalai',NULL,NULL),(1542,'Tiruvethipuram',NULL,NULL),(1543,'Tiruvuru',NULL,NULL),(1544,'Tirwaganj',NULL,NULL),(1545,'Titlagarh',NULL,NULL),(1546,'Tittakudi',NULL,NULL),(1547,'Todabhim',NULL,NULL),(1548,'Todaraisingh',NULL,NULL),(1549,'Tohana',NULL,NULL),(1550,'Tonk',NULL,NULL),(1551,'Tuensang',NULL,NULL),(1552,'Tuljapur',NULL,NULL),(1553,'Tulsipur',NULL,NULL),(1554,'Thumakooru',NULL,NULL),(1555,'Tumsar',NULL,NULL),(1556,'Tundla',NULL,NULL),(1557,'Tuni',NULL,NULL),(1558,'Tura',NULL,NULL),(1559,'Uchgaon',NULL,NULL),(1560,'Udaipur',NULL,NULL),(1561,'Udaipur',NULL,NULL),(1562,'Udaipurwati',NULL,NULL),(1563,'Udgir',NULL,NULL),(1564,'Udhagamandalam',NULL,NULL),(1565,'Udhampur',NULL,NULL),(1566,'Udumalaipettai',NULL,NULL),(1567,'Udupi',NULL,NULL),(1568,'Ugar',NULL,NULL),(1569,'Ujhani',NULL,NULL),(1570,'Ujjain',NULL,NULL),(1571,'Umarga',NULL,NULL),(1572,'Umaria',NULL,NULL),(1573,'Umarkhed',NULL,NULL),(1574,'Umarkote',NULL,NULL),(1575,'Umbergaon',NULL,NULL),(1576,'Umred',NULL,NULL),(1577,'Umreth',NULL,NULL),(1578,'Una',NULL,NULL),(1579,'Unjha',NULL,NULL),(1580,'Unnamalaikadai',NULL,NULL),(1581,'Unnao',NULL,NULL),(1582,'Upleta',NULL,NULL),(1583,'Uran',NULL,NULL),(1584,'Uran Islampur',NULL,NULL),(1585,'Uravakonda',NULL,NULL),(1586,'Urmar Tanda',NULL,NULL),(1587,'Usilampatti',NULL,NULL),(1588,'Uthamapalayam',NULL,NULL),(1589,'Uthiramerur',NULL,NULL),(1590,'Utraula',NULL,NULL),(1591,'Vadakara',NULL,NULL),(1592,'Vadakkuvalliyur',NULL,NULL),(1593,'Vadalur',NULL,NULL),(1594,'Vadgaon Kasba',NULL,NULL),(1595,'Vadipatti',NULL,NULL),(1596,'Vadnagar',NULL,NULL),(1597,'Vadodara',NULL,NULL),(1598,'Vaijapur',NULL,NULL),(1599,'Vaikom',NULL,NULL),(1600,'Valparai',NULL,NULL),(1601,'Valsad',NULL,NULL),(1602,'Vandavasi',NULL,NULL),(1603,'Vaniyambadi',NULL,NULL),(1604,'Vapi',NULL,NULL),(1605,'Vapi',NULL,NULL),(1606,'Varanasi',NULL,NULL),(1607,'Varkala',NULL,NULL),(1608,'Vasai',NULL,NULL),(1609,'Vedaranyam',NULL,NULL),(1610,'Vellakoil',NULL,NULL),(1611,'Vellore',NULL,NULL),(1612,'Venkatagiri',NULL,NULL),(1613,'Veraval',NULL,NULL),(1614,'Vicarabad',NULL,NULL),(1615,'Vidisha',NULL,NULL),(1616,'Vijainagar',NULL,NULL),(1617,'Vijapur',NULL,NULL),(1618,'Vijaypur',NULL,NULL),(1619,'Vijayapura',NULL,NULL),(1620,'Vijayawada',NULL,NULL),(1621,'Vikramasingapuram',NULL,NULL),(1622,'Viluppuram',NULL,NULL),(1623,'Vinukonda',NULL,NULL),(1624,'Viramgam',NULL,NULL),(1625,'Virar',NULL,NULL),(1626,'Virudhachalam',NULL,NULL),(1627,'Virudhunagar',NULL,NULL),(1628,'Visakhapatnam',NULL,NULL),(1629,'Visnagar',NULL,NULL),(1630,'Viswanatham',NULL,NULL),(1631,'Vita',NULL,NULL),(1632,'Vizianagaram',NULL,NULL),(1633,'Vrindavan',NULL,NULL),(1634,'Vyara',NULL,NULL),(1635,'Wadgaon Road',NULL,NULL),(1636,'Wadhwan',NULL,NULL),(1637,'Wadi',NULL,NULL),(1638,'Wai',NULL,NULL),(1639,'Wanaparthy',NULL,NULL),(1640,'Wani',NULL,NULL),(1641,'Wankaner',NULL,NULL),(1642,'Wara Seoni',NULL,NULL),(1643,'Warangal',NULL,NULL),(1644,'Wardha',NULL,NULL),(1645,'Warhapur',NULL,NULL),(1646,'Warisaliganj',NULL,NULL),(1647,'Warora',NULL,NULL),(1648,'Warud',NULL,NULL),(1649,'Washim',NULL,NULL),(1650,'Wokha',NULL,NULL),(1651,'Yaadhagiri',NULL,NULL),(1652,'Yamunanagar',NULL,NULL),(1653,'Yanam',NULL,NULL),(1654,'Yavatmal',NULL,NULL),(1655,'Yawal',NULL,NULL),(1656,'Yellandu',NULL,NULL),(1657,'Yemmiganur',NULL,NULL),(1658,'Yerraguntla',NULL,NULL),(1659,'Yevla',NULL,NULL),(1660,'Zaid',NULL,NULL),(1661,'Zamania',NULL,NULL),(1662,'Zira',NULL,NULL),(1663,'Zirakpur',NULL,NULL),(1664,'Zunheboto',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostics`
--

DROP TABLE IF EXISTS `diagnostics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comments` text,
  `remarks` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostics`
--

LOCK TABLES `diagnostics` WRITE;
/*!40000 ALTER TABLE `diagnostics` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnostics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diags`
--

DROP TABLE IF EXISTS `diags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comments` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diags`
--

LOCK TABLES `diags` WRITE;
/*!40000 ALTER TABLE `diags` DISABLE KEYS */;
INSERT INTO `diags` VALUES (1,'Diagnostic','Success','2013-12-02 02:02:09','2013-12-02 02:02:09'),(2,'diagnostic','fair','2013-12-01 23:58:49','2013-12-01 23:58:49'),(3,'Pressurize','Normal','2013-12-02 00:53:47','2013-12-02 00:53:47'),(4,'no tests','---','2013-12-02 01:00:20','2013-12-02 01:00:20'),(5,'nothing major','-----','2013-12-02 01:03:47','2013-12-02 01:03:47'),(6,'mali test','no','2013-12-02 01:07:52','2013-12-02 01:07:52'),(7,'major test- apido','normal','2013-12-02 02:06:46','2013-12-02 02:06:46'),(8,'','','2013-12-02 03:16:05','2013-12-02 03:16:05'),(9,'typhoid','negative','2013-12-02 04:04:22','2013-12-02 04:04:22'),(10,'Typhoid','negative','2013-12-02 04:53:19','2013-12-02 04:53:19');
/*!40000 ALTER TABLE `diags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diags_prescriptions`
--

DROP TABLE IF EXISTS `diags_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diags_prescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diag_id` int(11) DEFAULT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_diags_prescriptions_on_diag_id_and_prescription_id` (`diag_id`,`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diags_prescriptions`
--

LOCK TABLES `diags_prescriptions` WRITE;
/*!40000 ALTER TABLE `diags_prescriptions` DISABLE KEYS */;
INSERT INTO `diags_prescriptions` VALUES (1,1,5),(2,2,7),(3,3,8),(4,4,9),(5,5,10),(6,6,11),(7,7,12),(8,8,13),(9,9,15),(10,10,16);
/*!40000 ALTER TABLE `diags_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `specialised_fields` varchar(255) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Mr prashant gupta','M',NULL,'E/102 OBH Gachibowli, Hyderabad','MBBS',NULL,'ENT doctor',4,40000,'Hyderabad','2013-11-16 19:48:58','2013-12-02 03:42:47','9812343234'),(3,'Gaurav Mohanty','M',NULL,'New Market Road, Delhi','Mbbs gold medalist',NULL,'Gastrologist',7,90000,'Delhi','2013-12-02 01:52:44','2013-12-02 01:52:44','8765657654'),(4,'Shubham Rai','M',NULL,'Gachibowli','mbbs',NULL,'Orthopedic',18,90000,'Kolkata','2013-12-02 04:10:24','2013-12-02 04:10:24','8787878787');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors_users`
--

DROP TABLE IF EXISTS `doctors_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_doctors_users_on_doctor_id_and_user_id` (`doctor_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors_users`
--

LOCK TABLES `doctors_users` WRITE;
/*!40000 ALTER TABLE `doctors_users` DISABLE KEYS */;
INSERT INTO `doctors_users` VALUES (1,1,2),(3,3,13),(4,4,20);
/*!40000 ALTER TABLE `doctors_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (5,3,1,'2013-12-02 02:01:10','2013-12-02 02:01:10'),(6,3,3,'2013-12-02 02:01:47','2013-12-02 02:01:47'),(7,1,1,'2013-12-02 02:10:05','2013-12-02 02:10:05'),(8,4,1,'2013-12-02 03:13:38','2013-12-02 03:13:38');
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `quantity` int(11) DEFAULT NULL,
  `sigcode` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'asdf',0,'asdf','2013-11-30 11:36:59','2013-11-30 11:36:59'),(2,'Sinarest',10,'d','2013-12-02 02:02:09','2013-12-02 02:02:09'),(3,'sinarest',2,'pc breakfast','2013-12-01 23:58:49','2013-12-01 23:58:49'),(4,'Naproxen',200,'pc','2013-12-02 00:53:47','2013-12-02 00:53:47'),(5,'Amoxicillin',500,'pc breakfast','2013-12-02 01:00:20','2013-12-02 01:00:20'),(6,'Paracetamol',400,'dc','2013-12-02 01:00:20','2013-12-02 01:00:20'),(7,'soframycin',200,'rf','2013-12-02 01:03:47','2013-12-02 01:03:47'),(8,'Buspar',500,'IU','2013-12-02 01:07:52','2013-12-02 01:07:52'),(9,'Xanax',123,'PM','2013-12-02 02:06:46','2013-12-02 02:06:46'),(10,'Simvastatin',200,'400','2013-12-02 03:16:05','2013-12-02 03:16:05'),(11,'Guaifenesin',200,'per','2013-12-02 03:52:24','2013-12-02 03:52:24'),(12,'Paracetamol',500,'amp','2013-12-02 04:04:22','2013-12-02 04:04:22'),(13,'Amoxicillin',200,'aa','2013-12-02 04:04:22','2013-12-02 04:04:22'),(14,'Paracetamol',500,'aa','2013-12-02 04:53:19','2013-12-02 04:53:19'),(15,'Amoxicillin',300,'DAW','2013-12-02 04:53:19','2013-12-02 04:53:19');
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines_prescriptions`
--

DROP TABLE IF EXISTS `medicines_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicines_prescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_id` int(11) DEFAULT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_medicines_prescriptions_on_medicine_id_and_prescription_id` (`medicine_id`,`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_prescriptions`
--

LOCK TABLES `medicines_prescriptions` WRITE;
/*!40000 ALTER TABLE `medicines_prescriptions` DISABLE KEYS */;
INSERT INTO `medicines_prescriptions` VALUES (1,1,4),(2,2,5),(3,3,7),(4,4,8),(5,5,9),(6,6,9),(7,7,10),(8,8,11),(9,9,12),(10,10,13),(11,11,14),(12,12,15),(13,13,15),(14,14,16),(15,15,16);
/*!40000 ALTER TABLE `medicines_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meds`
--

DROP TABLE IF EXISTS `meds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meds`
--

LOCK TABLES `meds` WRITE;
/*!40000 ALTER TABLE `meds` DISABLE KEYS */;
INSERT INTO `meds` VALUES (1,'Abilify',NULL,NULL),(2,'Acetaminophen',NULL,NULL),(3,'Acyclovir',NULL,NULL),(4,'Adderall',NULL,NULL),(5,'Albuterol',NULL,NULL),(6,'Allegra',NULL,NULL),(7,'Allopurinol',NULL,NULL),(8,'Alprazolam',NULL,NULL),(9,'Ambien',NULL,NULL),(10,'Amiodarone',NULL,NULL),(11,'Amitriptyline',NULL,NULL),(12,'Amlodipine',NULL,NULL),(13,'Amoxicillin',NULL,NULL),(14,'Aricept',NULL,NULL),(15,'Aspirin',NULL,NULL),(16,'Atenolol',NULL,NULL),(17,'Ativan',NULL,NULL),(18,'Atorvastatin',NULL,NULL),(19,'Augmentin',NULL,NULL),(20,'Azithromycin',NULL,NULL),(21,'Baclofen',NULL,NULL),(22,'Bactrim',NULL,NULL),(23,'Bactroban',NULL,NULL),(24,'Belviq',NULL,NULL),(25,'Benadryl',NULL,NULL),(26,'Benicar',NULL,NULL),(27,'Biaxin',NULL,NULL),(28,'Bisoprolol',NULL,NULL),(29,'Boniva',NULL,NULL),(30,'Boniva',NULL,NULL),(31,'Botox',NULL,NULL),(32,'Brilinta',NULL,NULL),(33,'Brovana',NULL,NULL),(34,'Bupropion',NULL,NULL),(35,'Buspar',NULL,NULL),(36,'Buspirone',NULL,NULL),(37,'Butrans',NULL,NULL),(38,'Bydureon',NULL,NULL),(39,'Byetta',NULL,NULL),(40,'Bystolic',NULL,NULL),(41,'Carbamazepine',NULL,NULL),(42,'Carvedilol',NULL,NULL),(43,'Celebrex',NULL,NULL),(44,'Celexa',NULL,NULL),(45,'Cephalexin',NULL,NULL),(46,'Cetirizine',NULL,NULL),(47,'Cialis',NULL,NULL),(48,'Cipro',NULL,NULL),(49,'Ciprofloxacin',NULL,NULL),(50,'Citalopram',NULL,NULL),(51,'Clindamycin',NULL,NULL),(52,'Clonazepam',NULL,NULL),(53,'Clonidine',NULL,NULL),(54,'Codeine',NULL,NULL),(55,'Concerta',NULL,NULL),(56,'Coreg',NULL,NULL),(57,'Coumadin',NULL,NULL),(58,'Crestor',NULL,NULL),(59,'Cyclobenzaprine',NULL,NULL),(60,'Cymbalta',NULL,NULL),(61,'D 1000 IU',NULL,NULL),(62,'D-Alpha Gems',NULL,NULL),(63,'D-Amine-SR',NULL,NULL),(64,'D-Feda II',NULL,NULL),(65,'D-Phen 1000',NULL,NULL),(66,'D-S Caps',NULL,NULL),(67,'D-Tab',NULL,NULL),(68,'D-Tal',NULL,NULL),(69,'D-Tann',NULL,NULL),(70,'D-Tann chewable tablets',NULL,NULL),(71,'D-Tann suspension',NULL,NULL),(72,'D-Tann CT',NULL,NULL),(73,'D-Tann CT suspension',NULL,NULL),(74,'D-Tann HC',NULL,NULL),(75,'D-Tann HC',NULL,NULL),(76,'D-Vert',NULL,NULL),(77,'D-Vi-Sol',NULL,NULL),(78,'D-Vita Drops',NULL,NULL),(79,'D-Worm Combo',NULL,NULL),(80,'D.H.E 45',NULL,NULL),(81,'D.H.E. 45 injection',NULL,NULL),(82,'D.H.E. 45',NULL,NULL),(83,'D.H.E. 45',NULL,NULL),(84,'D2000',NULL,NULL),(85,'D3',NULL,NULL),(86,'D3-5',NULL,NULL),(87,'D3-50',NULL,NULL),(88,'D400',NULL,NULL),(89,'dabigatran',NULL,NULL),(90,'dabigatran',NULL,NULL),(91,'dabigatran',NULL,NULL),(92,'Dabigatran Etexilate Mesylate',NULL,NULL),(93,'Dabigatran Etexilate Mesylate',NULL,NULL),(94,'dabrafenib',NULL,NULL),(95,'dabrafenib',NULL,NULL),(96,'dabrafenib',NULL,NULL),(97,'dacarbazine',NULL,NULL),(98,'Dacarbazine',NULL,NULL),(99,'dacarbazine Intravenous, Injection',NULL,NULL),(100,'dacarbazine',NULL,NULL),(101,'Dacarbazine',NULL,NULL),(102,'Dacarbazine',NULL,NULL),(103,'Dacex-A',NULL,NULL),(104,'Dacex-DM',NULL,NULL),(105,'Dacex-PE',NULL,NULL),(106,'daclizumab',NULL,NULL),(107,'Daclizumab',NULL,NULL),(108,'daclizumab Intravenous',NULL,NULL),(109,'daclizumab',NULL,NULL),(110,'Daclizumab',NULL,NULL),(111,'Dacogen',NULL,NULL),(112,'Dacogen',NULL,NULL),(113,'Dacogen',NULL,NULL),(114,'Dacogen',NULL,NULL),(115,'Dacogen',NULL,NULL),(116,'dactinomycin',NULL,NULL),(117,'Dactinomycin',NULL,NULL),(118,'dactinomycin Intravenous',NULL,NULL),(119,'dactinomycin',NULL,NULL),(120,'Dactinomycin',NULL,NULL),(121,'Dactinomycin Injection',NULL,NULL),(122,'Dairyland CHG Teat Dip',NULL,NULL),(123,'Dairyland Iodine Teat Dip',NULL,NULL),(124,'Dairyland Iodine Teat Dip Controlled',NULL,NULL),(125,'Dairyland Pre-Post Teat Dip',NULL,NULL),(126,'Dairyland Sprayable CHG Teat Dip',NULL,NULL),(127,'Dairyland Teat Dip',NULL,NULL),(128,'Dalacin C Palmitate',NULL,NULL),(129,'dalfampridine',NULL,NULL),(130,'Dalfampridine',NULL,NULL),(131,'dalfampridine',NULL,NULL),(132,'dalfampridine',NULL,NULL),(133,'Dalfampridine',NULL,NULL),(134,'dalfopristin and quinupristin',NULL,NULL),(135,'Daliresp',NULL,NULL),(136,'Daliresp',NULL,NULL),(137,'Daliresp',NULL,NULL),(138,'Daliresp',NULL,NULL),(139,'Daliresp',NULL,NULL),(140,'Dallergy',NULL,NULL),(141,'Dallergy',NULL,NULL),(142,'Dallergy sustained-release and long-acting tablets',NULL,NULL),(143,'Dallergy syrup',NULL,NULL),(144,'Dallergy',NULL,NULL),(145,'Dallergy syrup',NULL,NULL),(146,'Dallergy',NULL,NULL),(147,'Dallergy chewable tablets',NULL,NULL),(148,'Dallergy (obsolete)',NULL,NULL),(149,'Dallergy Chewable Tablets',NULL,NULL),(150,'Dallergy DM',NULL,NULL),(151,'Dallergy Drops',NULL,NULL),(152,'Dallergy JR Sustained-Release Capsules',NULL,NULL),(153,'Dallergy PE Syrup',NULL,NULL),(154,'Dallergy PE Tablets',NULL,NULL),(155,'Dallergy PSE sustained-release tablets',NULL,NULL),(156,'Dallergy Syrup',NULL,NULL),(157,'Dallergy Tablets',NULL,NULL),(158,'Dallergy-JR',NULL,NULL),(159,'Dallergy-JR sustained-release capsules',NULL,NULL),(160,'Dalmane',NULL,NULL),(161,'Effexor',NULL,NULL),(162,'Effient',NULL,NULL),(163,'Elavil',NULL,NULL),(164,'Eliquis',NULL,NULL),(165,'Enablex',NULL,NULL),(166,'Enalapril',NULL,NULL),(167,'Enbrel',NULL,NULL),(168,'Endocet',NULL,NULL),(169,'Ephedrine',NULL,NULL),(170,'Epogen',NULL,NULL),(171,'Erythromycin',NULL,NULL),(172,'Estrace',NULL,NULL),(173,'Estradiol',NULL,NULL),(174,'Etodolac',NULL,NULL),(175,'Evista',NULL,NULL),(176,'Exalgo',NULL,NULL),(177,'Excedrin',NULL,NULL),(178,'Exelon',NULL,NULL),(179,'Exforge',NULL,NULL),(180,'Ezetimibe',NULL,NULL),(181,'Famotidine',NULL,NULL),(182,'Fanapt',NULL,NULL),(183,'Femara',NULL,NULL),(184,'Fenofibrate',NULL,NULL),(185,'Fentanyl',NULL,NULL),(186,'Ferrous Sulfate',NULL,NULL),(187,'Fioricet',NULL,NULL),(188,'Fiorinal',NULL,NULL),(189,'Fish Oil',NULL,NULL),(190,'Flagyl',NULL,NULL),(191,'Flexeril',NULL,NULL),(192,'Flomax',NULL,NULL),(193,'Flonase',NULL,NULL),(194,'Flovent',NULL,NULL),(195,'Fluoxetine',NULL,NULL),(196,'Focalin',NULL,NULL),(197,'Folic Acid',NULL,NULL),(198,'Forteo',NULL,NULL),(199,'Fosamax',NULL,NULL),(200,'Furosemide',NULL,NULL),(201,'Gabapentin',NULL,NULL),(202,'Gablofen',NULL,NULL),(203,'Gammagard',NULL,NULL),(204,'Gamunex',NULL,NULL),(205,'Gardasil',NULL,NULL),(206,'Gazyva',NULL,NULL),(207,'Gelnique',NULL,NULL),(208,'Gemfibrozil',NULL,NULL),(209,'Gemzar',NULL,NULL),(210,'Geodon',NULL,NULL),(211,'Gilenya',NULL,NULL),(212,'Gilotrif',NULL,NULL),(213,'Gleevec',NULL,NULL),(214,'Glipizide',NULL,NULL),(215,'Glucophage',NULL,NULL),(216,'Glucotrol',NULL,NULL),(217,'Glucovance',NULL,NULL),(218,'Glyburide',NULL,NULL),(219,'Gralise',NULL,NULL),(220,'Guaifenesin',NULL,NULL),(221,'Halaven',NULL,NULL),(222,'HalfLytely',NULL,NULL),(223,'Havrix',NULL,NULL),(224,'Hcg',NULL,NULL),(225,'Heparin',NULL,NULL),(226,'Herceptin',NULL,NULL),(227,'Hizentra',NULL,NULL),(228,'Hoodia',NULL,NULL),(229,'Horizant',NULL,NULL),(230,'Humalog',NULL,NULL),(231,'Humira',NULL,NULL),(232,'Humulin',NULL,NULL),(233,'Humulin N',NULL,NULL),(234,'Hydrochlorothiazide',NULL,NULL),(235,'Hydrocodone',NULL,NULL),(236,'Hydroxychloroquine',NULL,NULL),(237,'Hydroxyzine',NULL,NULL),(238,'Hylenex',NULL,NULL),(239,'Hytrin',NULL,NULL),(240,'Hyzaar',NULL,NULL),(241,'Ibuprofen',NULL,NULL),(242,'Iclusig',NULL,NULL),(243,'Imdur',NULL,NULL),(244,'Imitrex',NULL,NULL),(245,'Imodium',NULL,NULL),(246,'Implanon',NULL,NULL),(247,'Incivek',NULL,NULL),(248,'Inderal',NULL,NULL),(249,'Inlyta',NULL,NULL),(250,'Insulin',NULL,NULL),(251,'Integrilin',NULL,NULL),(252,'Intelence',NULL,NULL),(253,'Intermezzo',NULL,NULL),(254,'Intuniv',NULL,NULL),(255,'Invega',NULL,NULL),(256,'Invokana',NULL,NULL),(257,'Iressa',NULL,NULL),(258,'Isentress',NULL,NULL),(259,'Isosorbide',NULL,NULL),(260,'Istalol',NULL,NULL),(261,'J-Cof DHC',NULL,NULL),(262,'J-COF DHC liquid',NULL,NULL),(263,'J-COF DHC',NULL,NULL),(264,'J-Max',NULL,NULL),(265,'J-Max DHC',NULL,NULL),(266,'J-MAX DHC liquid',NULL,NULL),(267,'J-MAX DHC',NULL,NULL),(268,'J-Tan suspension',NULL,NULL),(269,'J-Tan D',NULL,NULL),(270,'J-Tan D suspension',NULL,NULL),(271,'J-Tan D chewable tablets',NULL,NULL),(272,'J-Tan D HC',NULL,NULL),(273,'J-Tan D SR',NULL,NULL),(274,'J-Tan PD',NULL,NULL),(275,'J-TanD PD',NULL,NULL),(276,'Jack & Jill Cough Syrup',NULL,NULL),(277,'Jakafi',NULL,NULL),(278,'Jakafi',NULL,NULL),(279,'Jakafi',NULL,NULL),(280,'Jakafi',NULL,NULL),(281,'Jakafi',NULL,NULL),(282,'Jalyn',NULL,NULL),(283,'Jalyn',NULL,NULL),(284,'Jalyn',NULL,NULL),(285,'Jalyn',NULL,NULL),(286,'Jantoven',NULL,NULL),(287,'Jantoven',NULL,NULL),(288,'Jantoven',NULL,NULL),(289,'Jantoven tablets',NULL,NULL),(290,'Janumet',NULL,NULL),(291,'Janumet',NULL,NULL),(292,'Janumet',NULL,NULL),(293,'Janumet XR',NULL,NULL),(294,'Janumet XR extended-release tablets',NULL,NULL),(295,'Janumet XR',NULL,NULL),(296,'Januvia',NULL,NULL),(297,'Januvia',NULL,NULL),(298,'Januvia',NULL,NULL),(299,'Januvia',NULL,NULL),(300,'Japanese encephalitis virus vaccine Nakayama',NULL,NULL),(301,'Japanese encephalitis virus vaccine SA14-14-2',NULL,NULL),(302,'Japanese Encephalitis Virus Vaccine',NULL,NULL),(303,'Japanese encephalitis virus vaccine SA14-14-2',NULL,NULL),(304,'japanese encephalitis virus vaccine, inactivated Subcutaneous',NULL,NULL),(305,'japanese encephalitis virus vaccine, inactivated adsorbed Intramuscular',NULL,NULL),(306,'Jay Phyl',NULL,NULL),(307,'Jay-Phyl',NULL,NULL),(308,'Jay-Phyl Syrup',NULL,NULL),(309,'JayCof-HC',NULL,NULL),(310,'Je-Vax Nakayama',NULL,NULL),(311,'Je-Vax',NULL,NULL),(312,'Jencycla',NULL,NULL),(313,'Jenest',NULL,NULL),(314,'Jenloga',NULL,NULL),(315,'Jentadueto',NULL,NULL),(316,'Jentadueto',NULL,NULL),(317,'Jentadueto',NULL,NULL),(318,'Jentadueto',NULL,NULL),(319,'Jetrea',NULL,NULL),(320,'Jetrea',NULL,NULL),(321,'Jetrea',NULL,NULL),(322,'Jevantique',NULL,NULL),(323,'Jevantique',NULL,NULL),(324,'Jevtana',NULL,NULL),(325,'Jevtana',NULL,NULL),(326,'Jevtana',NULL,NULL),(327,'Jevtana',NULL,NULL),(328,'Jevtana',NULL,NULL),(329,'Jinteli HRT',NULL,NULL),(330,'Jinteli',NULL,NULL),(331,'Jinteli',NULL,NULL),(332,'Johnson\'s Baby Cream',NULL,NULL),(333,'Joint Stress',NULL,NULL),(334,'jojoba topical',NULL,NULL),(335,'Jolessa extended-cycle',NULL,NULL),(336,'Jolessa',NULL,NULL),(337,'Jolessa',NULL,NULL),(338,'Jolivette',NULL,NULL),(339,'Jolivette Oral, Parenteral, Vaginal',NULL,NULL),(340,'Jolivette Oral, Implantation, Parenteral',NULL,NULL),(341,'Jolivette',NULL,NULL),(342,'Junel',NULL,NULL),(343,'Junel 1.5/30 birth control',NULL,NULL),(344,'Junel 1.5/30',NULL,NULL),(345,'Junel 1/20',NULL,NULL),(346,'Junel 1/20',NULL,NULL),(347,'Junel Fe 1.5/30',NULL,NULL),(348,'Junel Fe 1/20',NULL,NULL),(349,'Junior Strength Tylenol',NULL,NULL),(350,'Junior Tylenol Meltaways dispersible tablets',NULL,NULL),(351,'Just for Kids gel',NULL,NULL),(352,'Juvisync',NULL,NULL),(353,'Juvisync',NULL,NULL),(354,'Juvisync',NULL,NULL),(355,'Juvisync',NULL,NULL),(356,'Juxtapid',NULL,NULL),(357,'Juxtapid',NULL,NULL),(358,'Juxtapid',NULL,NULL),(359,'Juxtapid Capsules',NULL,NULL),(360,'K-dur',NULL,NULL),(361,'Kadcyla',NULL,NULL),(362,'Kadian',NULL,NULL),(363,'Kaletra',NULL,NULL),(364,'Kalydeco',NULL,NULL),(365,'Kapidex',NULL,NULL),(366,'Kapvay',NULL,NULL),(367,'Kazano',NULL,NULL),(368,'Kcentra',NULL,NULL),(369,'Keflex',NULL,NULL),(370,'Kenalog',NULL,NULL),(371,'Keppra',NULL,NULL),(372,'Ketamine',NULL,NULL),(373,'Kineret',NULL,NULL),(374,'Klonopin',NULL,NULL),(375,'Klor-con',NULL,NULL),(376,'Kombiglyze XR',NULL,NULL),(377,'Krill Oil',NULL,NULL),(378,'Kyprolis',NULL,NULL),(379,'Kytril',NULL,NULL),(380,'Lamictal',NULL,NULL),(381,'Lansoprazole',NULL,NULL),(382,'Lantus',NULL,NULL),(383,'Lasix',NULL,NULL),(384,'Latuda',NULL,NULL),(385,'Levaquin',NULL,NULL),(386,'Levothyroxine',NULL,NULL),(387,'Lexapro',NULL,NULL),(388,'Lidoderm',NULL,NULL),(389,'Linzess',NULL,NULL),(390,'Lipitor',NULL,NULL),(391,'Lisinopril',NULL,NULL),(392,'Lithium',NULL,NULL),(393,'Loratadine',NULL,NULL),(394,'Lorazepam',NULL,NULL),(395,'Lortab',NULL,NULL),(396,'Losartan',NULL,NULL),(397,'Lovenox',NULL,NULL),(398,'Lunesta',NULL,NULL),(399,'Lyrica',NULL,NULL),(400,'Macrobid',NULL,NULL),(401,'Meclizine',NULL,NULL),(402,'Melatonin',NULL,NULL),(403,'Meloxicam',NULL,NULL),(404,'Metformin',NULL,NULL),(405,'Methadone',NULL,NULL),(406,'Methocarbamol',NULL,NULL),(407,'Methotrexate',NULL,NULL),(408,'Methylphenidate',NULL,NULL),(409,'Methylprednisolone',NULL,NULL),(410,'Metoclopramide',NULL,NULL),(411,'Metoprolol',NULL,NULL),(412,'Metronidazole',NULL,NULL),(413,'Minocycline',NULL,NULL),(414,'MiraLax',NULL,NULL),(415,'Mirtazapine',NULL,NULL),(416,'Mobic',NULL,NULL),(417,'Morphine',NULL,NULL),(418,'Motrin',NULL,NULL),(419,'Mucinex',NULL,NULL),(420,'Namenda',NULL,NULL),(421,'Naprosyn',NULL,NULL),(422,'Naproxen',NULL,NULL),(423,'Nasonex',NULL,NULL),(424,'Neupogen',NULL,NULL),(425,'Neurontin',NULL,NULL),(426,'Nexium',NULL,NULL),(427,'Niacin',NULL,NULL),(428,'Niaspan',NULL,NULL),(429,'Nicotine',NULL,NULL),(430,'Nifedipine',NULL,NULL),(431,'Nitrofurantoin',NULL,NULL),(432,'Nizoral',NULL,NULL),(433,'Norco',NULL,NULL),(434,'Nortriptyline',NULL,NULL),(435,'Norvasc',NULL,NULL),(436,'NovoLog',NULL,NULL),(437,'Nucynta',NULL,NULL),(438,'NuvaRing',NULL,NULL),(439,'Nuvigil',NULL,NULL),(440,'Omeprazole',NULL,NULL),(441,'Omnaris',NULL,NULL),(442,'Omnicef',NULL,NULL),(443,'Ondansetron',NULL,NULL),(444,'Onfi',NULL,NULL),(445,'Onglyza',NULL,NULL),(446,'Opana',NULL,NULL),(447,'Opsumit',NULL,NULL),(448,'Oracea',NULL,NULL),(449,'Orapred',NULL,NULL),(450,'Orencia',NULL,NULL),(451,'Orlistat',NULL,NULL),(452,'Ortho Evra',NULL,NULL),(453,'Ortho Tri-Cyclen',NULL,NULL),(454,'Oseltamivir',NULL,NULL),(455,'Osphena',NULL,NULL),(456,'Oxybutynin',NULL,NULL),(457,'Oxycodone',NULL,NULL),(458,'Oxycontin',NULL,NULL),(459,'Oxytrol',NULL,NULL),(460,'Paracetamol',NULL,NULL),(461,'Paroxetine',NULL,NULL),(462,'Paxil',NULL,NULL),(463,'Penicillin',NULL,NULL),(464,'Percocet',NULL,NULL),(465,'Phenergan',NULL,NULL),(466,'Phentermine',NULL,NULL),(467,'Plavix',NULL,NULL),(468,'Potassium Chloride',NULL,NULL),(469,'Pradaxa',NULL,NULL),(470,'Pravastatin',NULL,NULL),(471,'Prednisone',NULL,NULL),(472,'Premarin',NULL,NULL),(473,'Prevacid',NULL,NULL),(474,'Prilosec',NULL,NULL),(475,'Pristiq',NULL,NULL),(476,'Promethazine',NULL,NULL),(477,'Propranolol',NULL,NULL),(478,'Protonix',NULL,NULL),(479,'Prozac',NULL,NULL),(480,'QNASL',NULL,NULL),(481,'Qnexa',NULL,NULL),(482,'Qsymia',NULL,NULL),(483,'Quaaludes',NULL,NULL),(484,'Quillivant XR',NULL,NULL),(485,'Qutenza',NULL,NULL),(486,'Ramipril',NULL,NULL),(487,'Ranexa',NULL,NULL),(488,'Ranitidine',NULL,NULL),(489,'Rapaflo',NULL,NULL),(490,'Reclast',NULL,NULL),(491,'Reglan',NULL,NULL),(492,'Relafen',NULL,NULL),(493,'Relpax',NULL,NULL),(494,'Remeron',NULL,NULL),(495,'Remicade',NULL,NULL),(496,'Renvela',NULL,NULL),(497,'Requip',NULL,NULL),(498,'Restasis',NULL,NULL),(499,'Restoril',NULL,NULL),(500,'Risperdal',NULL,NULL),(501,'risperidone',NULL,NULL),(502,'Ritalin',NULL,NULL),(503,'Robaxin',NULL,NULL),(504,'Rocephin',NULL,NULL),(505,'Roxicet',NULL,NULL),(506,'Saphris',NULL,NULL),(507,'Savella',NULL,NULL),(508,'Senna',NULL,NULL),(509,'Sensipar',NULL,NULL),(510,'Septra',NULL,NULL),(511,'Seroquel',NULL,NULL),(512,'Sertraline',NULL,NULL),(513,'Simvastatin',NULL,NULL),(514,'Singulair',NULL,NULL),(515,'Skelaxin',NULL,NULL),(516,'Soma',NULL,NULL),(517,'Sonata',NULL,NULL),(518,'Spiriva',NULL,NULL),(519,'Spironolactone',NULL,NULL),(520,'Stelara',NULL,NULL),(521,'Strattera',NULL,NULL),(522,'Suboxone',NULL,NULL),(523,'Sudafed',NULL,NULL),(524,'Symbicort',NULL,NULL),(525,'Synthroid',NULL,NULL),(526,'Tamoxifen',NULL,NULL),(527,'Tamsulosin',NULL,NULL),(528,'Tegretol',NULL,NULL),(529,'Temazepam',NULL,NULL),(530,'Tenormin',NULL,NULL),(531,'Terazosin',NULL,NULL),(532,'Testosterone',NULL,NULL),(533,'Tetracycline',NULL,NULL),(534,'Tizanidine',NULL,NULL),(535,'Topamax',NULL,NULL),(536,'Toradol',NULL,NULL),(537,'Tradjenta',NULL,NULL),(538,'Tramadol',NULL,NULL),(539,'Trazodone',NULL,NULL),(540,'Triamcinolone',NULL,NULL),(541,'Triamterene',NULL,NULL),(542,'Tricor',NULL,NULL),(543,'Trileptal',NULL,NULL),(544,'Trilipix',NULL,NULL),(545,'Tylenol',NULL,NULL),(546,'Uceris',NULL,NULL),(547,'Ulesfia',NULL,NULL),(548,'Uloric',NULL,NULL),(549,'Ultane',NULL,NULL),(550,'Ultracet',NULL,NULL),(551,'Ultram',NULL,NULL),(552,'Ultresa',NULL,NULL),(553,'Uroxatral',NULL,NULL),(554,'Valacyclovir',NULL,NULL),(555,'Valium',NULL,NULL),(556,'Valtrex',NULL,NULL),(557,'Vancomycin',NULL,NULL),(558,'Vasotec',NULL,NULL),(559,'Venlafaxine',NULL,NULL),(560,'Ventolin',NULL,NULL),(561,'Verapamil',NULL,NULL),(562,'Vesicare',NULL,NULL),(563,'Viagra',NULL,NULL),(564,'Vicodin',NULL,NULL),(565,'Victoza',NULL,NULL),(566,'Vigamox',NULL,NULL),(567,'Viibryd',NULL,NULL),(568,'Vimpat',NULL,NULL),(569,'Vistaril',NULL,NULL),(570,'Voltaren',NULL,NULL),(571,'Voltaren Gel',NULL,NULL),(572,'Vytorin',NULL,NULL),(573,'Vyvanse',NULL,NULL),(574,'Warfarin',NULL,NULL),(575,'Wellbutrin',NULL,NULL),(576,'Wilate',NULL,NULL),(577,'Xalatan',NULL,NULL),(578,'Xalkori',NULL,NULL),(579,'Xanax',NULL,NULL),(580,'Xanax XR',NULL,NULL),(581,'Xarelto',NULL,NULL),(582,'Xeljanz',NULL,NULL),(583,'Xeloda',NULL,NULL),(584,'Xenazine',NULL,NULL),(585,'Xenical',NULL,NULL),(586,'Xeomin',NULL,NULL),(587,'Xgeva',NULL,NULL),(588,'Xiaflex',NULL,NULL),(589,'Xifaxan',NULL,NULL),(590,'Xofigo',NULL,NULL),(591,'Xolair',NULL,NULL),(592,'Xopenex',NULL,NULL),(593,'Xtandi',NULL,NULL),(594,'Xyntha',NULL,NULL),(595,'Xyrem',NULL,NULL),(596,'Xyzal',NULL,NULL),(597,'Yasmin',NULL,NULL),(598,'Yaz',NULL,NULL),(599,'Yervoy',NULL,NULL),(600,'Yasmin',NULL,NULL),(601,'Yaz',NULL,NULL),(602,'Yervoy',NULL,NULL);
/*!40000 ALTER TABLE `meds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `notification` text,
  `links` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (109,2,'You have a new pending request from Akash Agrawall','/users/show_appointment?end=2013-12-02 09:20:00&start=2013-12-02 09:20:00&submit=Filter','2013-12-02 03:50:50','2013-12-02 03:50:50'),(110,1,'Your appointment on 2013-12-02 09:20:00 UTC with Dr.Mr prashant gupta was canceled','/users/history_appointment_patient?end=2013-12-02 09:20:00&start=2013-12-02 09:20:00&submit=Filter','2013-12-02 03:50:53','2013-12-02 03:50:53'),(111,2,'You have a new pending request from Akash Agrawall','/users/show_appointment?end=2013-12-02 09:20:00&start=2013-12-02 09:20:00&submit=Filter','2013-12-02 03:51:00','2013-12-02 03:51:00'),(112,1,'Your appointment on 2013-12-02 09:20:00 UTC with Dr.Mr prashant gupta was confirmed','/users/history_appointment_patient?end=2013-12-02 09:20:00&start=2013-12-02 09:20:00&submit=Filter','2013-12-02 03:51:32','2013-12-02 03:51:32'),(113,1,'You were prescribed medicine by Dr.Doctor','/users/history_appointment_patient?end=2013-12-02 09:20:00&start=2013-12-02 09:20:00&submit=Filter','2013-12-02 03:52:24','2013-12-02 03:52:24'),(114,2,'You have a new pending request from Akash Agrawall','/users/show_appointment?end=2013-12-02 09:31:00&start=2013-12-02 09:31:00&submit=Filter','2013-12-02 04:01:59','2013-12-02 04:01:59'),(115,1,'Your appointment on 2013-12-02 09:31:00 UTC with Dr.Mr prashant gupta was confirmed','/users/history_appointment_patient?end=2013-12-02 09:31:00&start=2013-12-02 09:31:00&submit=Filter','2013-12-02 04:03:11','2013-12-02 04:03:11'),(116,1,'You were prescribed medicine by Dr.Doctor','/users/history_appointment_patient?end=2013-12-02 09:31:00&start=2013-12-02 09:31:00&submit=Filter','2013-12-02 04:04:22','2013-12-02 04:04:22'),(117,2,'You have a new pending request from Akash Agrawall','/users/show_appointment?end=2013-12-04 10:20:00&start=2013-12-04 10:20:00&submit=Filter','2013-12-02 04:51:02','2013-12-02 04:51:02'),(118,1,'Your appointment on 2013-12-04 10:20:00 UTC with Dr.Mr prashant gupta was confirmed','/users/history_appointment_patient?end=2013-12-04 10:20:00&start=2013-12-04 10:20:00&submit=Filter','2013-12-02 04:51:56','2013-12-02 04:51:56'),(119,1,'You were prescribed medicine by Dr.Doctor','/users/history_appointment_patient?end=2013-12-04 10:20:00&start=2013-12-04 10:20:00&submit=Filter','2013-12-02 04:53:19','2013-12-02 04:53:19');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Akash Agrawall','M',20,'gachibowli','98676555','2013-11-16 19:43:47','2013-12-02 00:14:06'),(2,'Rupinder','M',16,'asdfsad sadfasdf','1231231','2013-11-30 11:41:47','2013-12-02 01:57:51'),(3,'Ayush Khandelwal','M',20,'Old Market Road, Mumbai',NULL,'2013-12-02 01:53:30','2013-12-02 01:53:30'),(5,'Ankit','M',21,'b/17 hyderabad',NULL,'2013-12-02 03:47:27','2013-12-02 03:47:27'),(6,'jaspreet','M',19,'b/213hyderabad',NULL,'2013-12-02 03:58:00','2013-12-02 03:58:00'),(7,'Yash Chamadiy','M',20,'Gachibowli',NULL,'2013-12-02 04:12:59','2013-12-02 04:12:59'),(8,'Arihant Gupta','M',20,'Secundrabad, Hyderabad','87122321212','2013-12-02 10:52:51','2013-12-02 10:58:41');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_users`
--

DROP TABLE IF EXISTS `patients_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_patients_users_on_patient_id_and_user_id` (`patient_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_users`
--

LOCK TABLES `patients_users` WRITE;
/*!40000 ALTER TABLE `patients_users` DISABLE KEYS */;
INSERT INTO `patients_users` VALUES (1,1,1),(2,2,3),(3,3,14),(5,5,18),(6,6,19),(7,7,21),(8,8,25);
/*!40000 ALTER TABLE `patients_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permissions_roles_on_permission_id_and_role_id` (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `prognosis` varchar(255) DEFAULT NULL,
  `diagnostictest` varchar(255) DEFAULT NULL,
  `drugs` varchar(255) DEFAULT NULL,
  `diagnostictest_result` varchar(255) DEFAULT NULL,
  `remarks` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (14,39,NULL,'Leg fracture',NULL,NULL,NULL,'Recovery Expected\r\n','2013-12-02 03:52:24','2013-12-02 03:52:24'),(15,40,NULL,'Viral fever',NULL,NULL,NULL,'good health :)','2013-12-02 04:04:22','2013-12-02 04:04:22'),(16,41,NULL,'Viral Fever',NULL,NULL,NULL,'have a balanced diet :)','2013-12-02 04:53:19','2013-12-02 04:53:19');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'doctor','2013-11-16 19:42:21','2013-11-16 19:42:21'),(2,'patient','2013-11-16 21:32:30','2013-11-16 21:32:30'),(3,'admin','2013-12-01 03:43:30','2013-12-01 03:43:30'),(4,'assistant','2013-12-01 04:32:03','2013-12-01 04:32:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (3,1,2),(9,1,13),(16,1,20),(2,2,1),(4,2,3),(10,2,14),(14,2,18),(15,2,19),(17,2,21),(18,2,25),(5,3,4);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131105084818'),('20131105084831'),('20131105084843'),('20131105084941'),('20131105084954'),('20131105125913'),('20131105130113'),('20131105130300'),('20131105130423'),('20131105130554'),('20131105130737'),('20131108201031'),('20131109193447'),('20131112105125'),('20131114142043'),('20131115182348'),('20131116145901'),('20131116155740'),('20131123164154'),('20131126172229'),('20131130111632'),('20131130111634'),('20131130111635'),('20131130111636'),('20131130111637'),('20131201032400'),('20131202105632');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sigcodes`
--

DROP TABLE IF EXISTS `sigcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sigcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sigcodes`
--

LOCK TABLES `sigcodes` WRITE;
/*!40000 ALTER TABLE `sigcodes` DISABLE KEYS */;
INSERT INTO `sigcodes` VALUES (1,'1°','1 hour, 2 hours, etc.',NULL,NULL),(2,'2°','1 hour, 2 hours, etc.',NULL,NULL),(3,'a','before',NULL,NULL),(4,'aa','of each',NULL,NULL),(5,'ac','before meals (\"before a meal\" if once daily dosing)',NULL,NULL),(6,'ad','right ear',NULL,NULL),(7,'ad','as directed (used occasionally in error)',NULL,NULL),(8,'AM','morning',NULL,NULL),(9,'amp','ampules',NULL,NULL),(10,'apl','applicatorful (for vaginal creams)',NULL,NULL),(11,'aq','water',NULL,NULL),(12,'as','left ear',NULL,NULL),(13,'au','both ears  ',NULL,NULL),(14,'bid','twice daily',NULL,NULL),(15,'c','with',NULL,NULL),(16,'C','100',NULL,NULL),(17,'cap','capsule(s)',NULL,NULL),(18,'cc','cubic centimeter (same as milliliter or ml)',NULL,NULL),(19,'cd','cycle day (menstrual cycle)',NULL,NULL),(20,'cid','fives times daily (rarely used now)',NULL,NULL),(21,'cmpd','compound',NULL,NULL),(22,'cr','cream',NULL,NULL),(23,'d','daily or day',NULL,NULL),(24,'DAW','Dispense as Written (no generic)',NULL,NULL),(25,'DC','discontinue (or discharge from hospital)',NULL,NULL),(26,'dc','discontinue (or discharge from hospital)',NULL,NULL),(27,'d/c','discontinue (or discharge from hospital)',NULL,NULL),(28,'disp','dispense',NULL,NULL),(29,'DS','double strength',NULL,NULL),(30,'dx','diagnosis',NULL,NULL),(31,'elix','elixir',NULL,NULL),(32,'eq','equivalent',NULL,NULL),(33,'et','and',NULL,NULL),(34,'fid','five times daily',NULL,NULL),(35,'5x/d','five times daily',NULL,NULL),(36,'g','gram',NULL,NULL),(37,'gm','gram',NULL,NULL),(38,'gen','generic',NULL,NULL),(39,'gr','grain, about 60 mg ',NULL,NULL),(40,'gtt','drop(s)',NULL,NULL),(41,'h','hour(s)',NULL,NULL),(42,'hr','hour(s)',NULL,NULL),(43,'HD','high dose',NULL,NULL),(44,'hs','at bedtime',NULL,NULL),(45,'H2O','water',NULL,NULL),(46,'IM','intramuscularly (for injectables)',NULL,NULL),(47,'inj','inject, injection',NULL,NULL),(48,'IU','international units',NULL,NULL),(49,'IV','intravenously (for injectables)',NULL,NULL),(50,'kg','kilogram',NULL,NULL),(51,'l','liter(s)',NULL,NULL),(52,'liq','liquid',NULL,NULL),(53,'lot','lotion',NULL,NULL),(54,'max','maximum',NULL,NULL),(55,'MDI','(metered dose) inhaler',NULL,NULL),(56,'meq','milliequivalent(s)',NULL,NULL),(57,'mEq','milliequivalent(s)',NULL,NULL),(58,'mcg','microgram',NULL,NULL),(59,'µg','microgram',NULL,NULL),(60,'mg','milligram(s)',NULL,NULL),(61,'min','minute',NULL,NULL),(62,'min','minimum',NULL,NULL),(63,'ml','milliliter(s)',NULL,NULL),(64,'mm','millimeters',NULL,NULL),(65,'mo','month',NULL,NULL),(66,'neb','nebulizer',NULL,NULL),(67,'noct','night',NULL,NULL),(68,'npo','nothing by mouth',NULL,NULL),(69,'NPO','nothing by mouth',NULL,NULL),(70,'nr','no refills',NULL,NULL),(71,'od','right eye (or once daily)',NULL,NULL),(72,'os','left eye',NULL,NULL),(73,'ou','both eyes',NULL,NULL),(74,'oz','ounce',NULL,NULL),(75,'p','after',NULL,NULL),(76,'pc','after meals  (\"after a meal\" if once daily dosing)',NULL,NULL),(77,'pc breakfast','after breakfast',NULL,NULL),(78,'per','per (per day, week, month or other time period)',NULL,NULL),(79,'per','in (in nebulizer, in rectum, in vagina)',NULL,NULL),(80,'PM','evening or nighttime',NULL,NULL),(81,'po','by mouth',NULL,NULL),(82,'per os','by mouth',NULL,NULL),(83,'PR','rectally (per rectum)',NULL,NULL),(84,'pr','rectally (per rectum)',NULL,NULL),(85,'prn','as needed',NULL,NULL),(86,'PV','in the vagina, vaginally',NULL,NULL),(87,'pv','in the vagina, vaginally',NULL,NULL),(88,'q','every',NULL,NULL),(89,'qam','every morning',NULL,NULL),(90,'qd','every day or once daily',NULL,NULL),(91,'qhs','every night at bedtime, at bedtime nightly',NULL,NULL),(92,'q 4 h','every 4 hours',NULL,NULL),(93,'q 7 PM','every day at 7 PM',NULL,NULL),(94,'qid','four times daily',NULL,NULL),(95,'qn','every night',NULL,NULL),(96,'qod','every other day',NULL,NULL),(97,'qs','sufficient amount',NULL,NULL),(98,'r','rectally',NULL,NULL),(99,'rec','rectally',NULL,NULL),(100,'rept','repeat',NULL,NULL),(101,'rf','refill(s)',NULL,NULL),(102,'s','without',NULL,NULL),(103,'sc','subcutaneous',NULL,NULL),(104,'sid','once daily (written by veterinarians)',NULL,NULL),(105,'Sig','directions',NULL,NULL),(106,'sl','(dissolve) under the tongue',NULL,NULL),(107,'sol','solution',NULL,NULL),(108,'sq','subcutaneous (for injectables)',NULL,NULL),(109,'ss','one-half',NULL,NULL),(110,'ss','sliding scale (for insulin)',NULL,NULL),(111,'stat','immediately',NULL,NULL),(112,'subq','subcutaneous (for injectables)',NULL,NULL),(113,'sub q','subcutaneous (for injectables)',NULL,NULL),(114,'sup','suppository',NULL,NULL),(115,'susp','suspension',NULL,NULL),(116,'sx','symptoms',NULL,NULL),(117,'syr','syrup',NULL,NULL),(118,'tab','tablet(s)',NULL,NULL),(119,'tea','teaspoonful, teaspoonfuls, 5 ml',NULL,NULL),(120,'tbsp','tablespoonful, tablespoonfuls, 15ml',NULL,NULL),(121,'tid','three times daily',NULL,NULL),(122,'tiw','three times weekly (also biw, qiw, etc)',NULL,NULL),(123,'tsp','teaspoonful, teaspoonfuls, 5 ml',NULL,NULL),(124,'tx','treatment',NULL,NULL),(125,'U','unit',NULL,NULL),(126,'u','unit',NULL,NULL),(127,'ud','as directed',NULL,NULL),(128,'utd','as directed',NULL,NULL),(129,'ung','ointment',NULL,NULL),(130,'vag','vaginally, in the vagina',NULL,NULL),(131,'x3d','for 3 days (or maybe 3 doses, caution)',NULL,NULL),(132,'wc','with meals (\"with a meal\" if once daily dosing)',NULL,NULL),(133,'YO','years old',NULL,NULL),(134,'/','per (example - \"Max 5/12 h\" = \"maximum of 5 per 12 hours\")',NULL,NULL),(135,'<','less than',NULL,NULL),(136,'>','greater than',NULL,NULL);
/*!40000 ALTER TABLE `sigcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialisations`
--

DROP TABLE IF EXISTS `specialisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialisations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialisations`
--

LOCK TABLES `specialisations` WRITE;
/*!40000 ALTER TABLE `specialisations` DISABLE KEYS */;
INSERT INTO `specialisations` VALUES (1,'General Physician',NULL,NULL),(2,'Gynecologist',NULL,NULL),(3,'Pediatrician',NULL,NULL),(4,'Ophthalmologist',NULL,NULL),(5,'Dermatologist',NULL,NULL),(6,'ENT doctor',NULL,NULL),(7,'Orthopedic',NULL,NULL),(8,'Cardiologist',NULL,NULL),(9,'Neurologist',NULL,NULL),(10,'Dentist',NULL,NULL),(11,'Urologist',NULL,NULL),(12,'Psychiatrist',NULL,NULL),(13,'Pathologist',NULL,NULL),(14,'Radiologist',NULL,NULL),(15,'Anesthesiologist',NULL,NULL),(16,'General Surgeon',NULL,NULL),(17,'Oncologist',NULL,NULL),(18,'Nephrologist',NULL,NULL),(19,'Endocrinologist',NULL,NULL),(20,'Gastrologist',NULL,NULL);
/*!40000 ALTER TABLE `specialisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aka_007',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-11-16 19:42:10','2013-12-02 02:11:24'),(2,'p_gupta',NULL,'c3c2b0e9ea52693883b276038618df9cced8cd96','2013-11-16 22:01:06','2013-12-02 03:45:50'),(3,'rsk',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-11-30 11:41:47','2013-12-02 01:55:21'),(4,'akash_rupinder',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-01 03:44:09','2013-12-01 03:44:09'),(6,'ashish',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:05:50','2013-12-02 01:05:50'),(7,'ashish',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:06:58','2013-12-02 01:06:58'),(8,'ashish',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:07:11','2013-12-02 01:07:11'),(9,'ashish',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:07:21','2013-12-02 01:07:21'),(10,'ashish',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:09:37','2013-12-02 01:09:37'),(13,'gaurav',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:52:44','2013-12-02 01:52:44'),(14,'ayush',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 01:53:30','2013-12-02 01:53:30'),(18,'killer',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 03:47:27','2013-12-02 03:47:27'),(19,'krimer',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 03:58:00','2013-12-02 03:58:00'),(20,'shubham',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 04:10:24','2013-12-02 04:10:24'),(21,'yash',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 04:12:59','2013-12-02 04:12:59'),(22,'jasi',NULL,'c3c2b0e9ea52693883b276038618df9cced8cd96','2013-12-02 04:49:32','2013-12-02 04:49:32'),(23,'arihant',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 10:46:10','2013-12-02 10:46:10'),(24,'arihant',NULL,'e40ae401681a9ff363742ee1d338a4ea4ebe0524','2013-12-02 10:50:36','2013-12-02 10:50:36'),(25,'arihant',NULL,'3d301e9e81a4e333282701a2a2992b2b8d22c97b','2013-12-02 10:52:51','2013-12-02 10:52:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-02 16:30:43
