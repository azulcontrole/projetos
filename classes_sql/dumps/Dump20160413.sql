CREATE DATABASE  IF NOT EXISTS `azul_erp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `azul_erp`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: azul_erp
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `agencia_bancaria`
--

DROP TABLE IF EXISTS `agencia_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencia_bancaria` (
  `id_agencia_bancaria` int(11) unsigned NOT NULL,
  `id_pessoa` int(11) unsigned DEFAULT NULL,
  `nome_banco` varchar(128) DEFAULT NULL,
  `agencia_banco` varchar(30) DEFAULT NULL,
  `conta_banco` varchar(30) DEFAULT NULL,
  `gerente_banco` varchar(20) DEFAULT NULL,
  `id_bancos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_agencia_bancaria`),
  KEY `k1_pessoa` (`id_pessoa`),
  KEY `k2_idbancos` (`id_bancos`),
  CONSTRAINT `fk_agbanco_bancos` FOREIGN KEY (`id_bancos`) REFERENCES `bancos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agbanco_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencia_bancaria`
--

LOCK TABLES `agencia_bancaria` WRITE;
/*!40000 ALTER TABLE `agencia_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `agencia_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividades`
--

DROP TABLE IF EXISTS `atividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividades` (
  `id_atividades` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `ativo` char(1) DEFAULT '1' COMMENT '1 = ativo, 2 inavito',
  PRIMARY KEY (`id_atividades`),
  KEY `k1_codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividades`
--

LOCK TABLES `atividades` WRITE;
/*!40000 ALTER TABLE `atividades` DISABLE KEYS */;
INSERT INTO `atividades` VALUES (1,111301,'Cultivo de arroz','1'),(2,111302,'Cultivo de milho','1'),(3,111303,'Cultivo de trigo','1'),(4,111399,'Cultivo de outros cereais não especificados anteriormente','1'),(5,112101,'Cultivo de algodão herbáceo','1'),(6,112102,'Cultivo de juta','1'),(7,112199,'Cultivo de outras fibras de lavoura temporária não especificadas anteriormente','1'),(8,113000,'Cultivo de canadeaçúcar','1'),(9,114800,'Cultivo de fumo','1'),(10,115600,'Cultivo de soja','1'),(11,116401,'Cultivo de amendoim','1'),(12,116402,'Cultivo de girassol','1'),(13,116403,'Cultivo de mamona','1'),(14,116499,'Cultivo de outras oleaginosas de lavoura temporária não especificadas anteriormente','1'),(15,119901,'Cultivo de abacaxi','1'),(16,119902,'Cultivo de alho','1'),(17,119903,'Cultivo de batatainglesa','1'),(18,119904,'Cultivo de cebola','1'),(19,119905,'Cultivo de feijão','1'),(20,119906,'Cultivo de mandioca','1'),(21,119907,'Cultivo de melão','1'),(22,119908,'Cultivo de melancia','1'),(23,119909,'Cultivo de tomate rasteiro','1'),(24,119999,'Cultivo de outras plantas de lavoura temporária não especificadas anteriormente','1'),(25,121101,'Horticultura, exceto morango','1'),(26,121102,'Cultivo de morango','1'),(27,122900,'Cultivo de flores e plantas ornamentais','1'),(28,131800,'Cultivo de laranja','1'),(29,132600,'Cultivo de uva','1'),(30,133401,'Cultivo de açaí','1'),(31,133402,'Cultivo de banana','1'),(32,133403,'Cultivo de caju','1'),(33,133404,'Cultivo de cítricos, exceto laranja','1'),(34,133405,'Cultivo de cocodabaía','1'),(35,133406,'Cultivo de guaraná','1'),(36,133407,'Cultivo de maçã','1'),(37,133408,'Cultivo de mamão','1'),(38,133409,'Cultivo de maracujá','1'),(39,133410,'Cultivo de manga','1'),(40,133411,'Cultivo de pêssego','1'),(41,133499,'Cultivo de frutas de lavoura permanente não especificadas anteriormente','1'),(42,134200,'Cultivo de café','1'),(43,135100,'Cultivo de cacau','1'),(44,139301,'Cultivo de chádaíndia','1'),(45,139302,'Cultivo de ervamate','1'),(46,139303,'Cultivo de pimentadoreino','1'),(47,139304,'Cultivo de plantas para condimento, exceto pimentadoreino','1'),(48,139305,'Cultivo de dendê','1'),(49,139306,'Cultivo de seringueira','1'),(50,139399,'Cultivo de outras plantas de lavoura permanente não especificadas anteriormente','1'),(51,141501,'Produção de sementes certificadas, exceto de forrageiras para pasto','1'),(52,141502,'Produção de sementes certificadas de forrageiras para formação de pasto','1'),(53,142300,'Produção de mudas e outras formas de propagação vegetal, certificadas','1'),(54,151201,'Criação de bovinos para corte','1'),(55,151202,'Criação de bovinos para leite','1'),(56,151203,'Criação de bovinos, exceto para corte e leite','1'),(57,152101,'Criação de bufalinos','1'),(58,152102,'Criação de eqüinos','1'),(59,152103,'Criação de asininos e muares','1'),(60,153901,'Criação de caprinos','1'),(61,153902,'Criação de ovinos, inclusive para produção de lã','1'),(62,154700,'Criação de suínos','1'),(63,155501,'Criação de frangos para corte','1'),(64,155502,'Produção de pintos de um dia','1'),(65,155503,'Criação de outros galináceos, exceto para corte','1'),(66,155504,'Criação de aves, exceto galináceos','1'),(67,155505,'Produção de ovos','1'),(68,159801,'Apicultura','1'),(69,159802,'Criação de animais de estimação','1'),(70,159803,'Criação de escargô','1'),(71,159804,'Criação de bichodaseda','1'),(72,159899,'Criação de outros animais não especificados anteriormente','1'),(73,161001,'Serviço de pulverização e controle de pragas agrícolas','1'),(74,161002,'Serviço de poda de árvores para lavouras','1'),(75,161003,'Serviço de preparação de terreno, cultivo e colheita','1'),(76,161099,'Atividades de apoio à agricultura não especificadas anteriormente','1'),(77,162801,'Serviço de inseminação artificial em animais','1'),(78,162802,'Serviço de tosquiamento de ovinos','1'),(79,162803,'Serviço de manejo de animais','1'),(80,162899,'Atividades de apoio à pecuária não especificadas anteriormente','1'),(81,163600,'Atividades de póscolheita','1'),(82,170900,'Caça e serviços relacionados','1'),(83,210101,'Cultivo de eucalipto','1'),(84,210102,'Cultivo de acácianegra','1'),(85,210103,'Cultivo de pinus','1'),(86,210104,'Cultivo de teca','1'),(87,210105,'Cultivo de espécies madeireiras, exceto eucalipto, acácianegra, pinus e teca','1'),(88,210106,'Cultivo de mudas em viveiros florestais','1'),(89,210107,'Extração de madeira em florestas plantadas','1'),(90,210108,'Produção de carvão vegetal  florestas plantadas','1'),(91,210109,'Produção de casca de acácianegra  florestas plantadas','1'),(92,210199,'Produção de produtos nãomadeireiros não especificados anteriormente em florestas plantadas','1'),(93,220901,'Extração de madeira em florestas nativas','1'),(94,220902,'Produção de carvão vegetal  florestas nativas','1'),(95,220903,'Coleta de castanhadopará em florestas nativas','1'),(96,220904,'Coleta de látex em florestas nativas','1'),(97,220905,'Coleta de palmito em florestas nativas','1'),(98,220906,'Conservação de florestas nativas','1'),(99,220999,'Coleta de produtos nãomadeireiros não especificados anteriormente em florestas nativas','1'),(100,230600,'Atividades de apoio à produção florestal','1'),(101,311601,'Pesca de peixes em água salgada','1'),(102,311602,'Pesca de crustáceos e moluscos em água salgada','1'),(103,311603,'Coleta de outros produtos marinhos','1'),(104,311604,'Atividades de apoio à pesca em água salgada','1'),(105,312401,'Pesca de peixes em água doce','1'),(106,312402,'Pesca de crustáceos e moluscos em água doce','1'),(107,312403,'Coleta de outros produtos aquáticos de água doce','1'),(108,312404,'Atividades de apoio à pesca em água doce','1'),(109,321301,'Criação de peixes em água salgada e salobra','1'),(110,321302,'Criação de camarões em água salgada e salobra','1'),(111,321303,'Criação de ostras e mexilhões em água salgada e salobra','1'),(112,321304,'Criação de peixes ornamentais em água salgada e salobra','1'),(113,321305,'Atividades de apoio à aqüicultura em água salgada e salobra','1'),(114,321399,'Cultivos e semicultivos da aqüicultura em água salgada e salobra não especificados anteriormente','1'),(115,322101,'Criação de peixes em água doce','1'),(116,322102,'Criação de camarões em água doce','1'),(117,322103,'Criação de ostras e mexilhões em água doce','1'),(118,322104,'Criação de peixes ornamentais em água doce','1'),(119,322105,'Ranicultura','1'),(120,322106,'Criação de jacaré','1'),(121,322107,'Atividades de apoio à aqüicultura em água doce','1'),(122,322199,'Cultivos e semicultivos da aqüicultura em água doce não especificados anteriormente','1'),(123,500301,'Extração de carvão mineral','1'),(124,500302,'Beneficiamento de carvão mineral','1'),(125,600001,'Extração de petróleo e gás natural','1'),(126,600002,'Extração e beneficiamento de xisto','1'),(127,600003,'Extração e beneficiamento de areias betuminosas','1'),(128,710301,'Extração de minério de ferro','1'),(129,710302,'Pelotização, sinterização e outros beneficiamentos de minério de ferro','1'),(130,721901,'Extração de minério de alumínio','1'),(131,721902,'Beneficiamento de minério de alumínio','1'),(132,722701,'Extração de minério de estanho','1'),(133,722702,'Beneficiamento de minério de estanho','1'),(134,723501,'Extração de minério de manganês','1'),(135,723502,'Beneficiamento de minério de manganês','1'),(136,724301,'Extração de minério de metais preciosos','1'),(137,724302,'Beneficiamento de minério de metais preciosos','1'),(138,725100,'Extração de minerais radioativos','1'),(139,729401,'Extração de minérios de nióbio e titânio','1'),(140,729402,'Extração de minério de tungstênio','1'),(141,729403,'Extração de minério de níquel','1'),(142,729404,'Extração de minérios de cobre, chumbo, zinco e outros minerais metálicos nãoferrosos não especificados anteriormente','1'),(143,729405,'Beneficiamento de minérios de cobre, chumbo, zinco e outros minerais metálicos nãoferrosos não especificados anteriormente','1'),(144,810001,'Extração de ardósia e beneficiamento associado','1'),(145,810002,'Extração de granito e beneficiamento associado','1'),(146,810003,'Extração de mármore e beneficiamento associado','1'),(147,810004,'Extração de calcário e dolomita e beneficiamento associado','1'),(148,810005,'Extração de gesso e caulim','1'),(149,810006,'Extração de areia, cascalho ou pedregulho e beneficiamento associado','1'),(150,810007,'Extração de argila e beneficiamento associado','1'),(151,810008,'Extração de saibro e beneficiamento associado','1'),(152,810009,'Extração de basalto e beneficiamento associado','1'),(153,810010,'Beneficiamento de gesso e caulim associado à extração','1'),(154,810099,'Extração e britamento de pedras e outros materiais para construção e beneficiamento associado','1'),(155,891600,'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos','1'),(156,892401,'Extração de sal marinho','1'),(157,892402,'Extração de salgema','1'),(158,892403,'Refino e outros tratamentos do sal','1'),(159,893200,'Extração de gemas (pedras preciosas e semipreciosas)','1'),(160,899101,'Extração de grafita','1'),(161,899102,'Extração de quartzo','1'),(162,899103,'Extração de amianto','1'),(163,899199,'Extração de outros minerais nãometálicos não especificados anteriormente','1'),(164,910600,'Atividades de apoio à extração de petróleo e gás natural','1'),(165,990401,'Atividades de apoio à extração de minério de ferro','1'),(166,990402,'Atividades de apoio à extração de minerais metálicos nãoferrosos','1'),(167,990403,'Atividades de apoio à extração de minerais nãometálicos','1'),(168,1011201,'Frigorífico  abate de bovinos','1'),(169,1011202,'Frigorífico  abate de eqüinos','1'),(170,1011203,'Frigorífico  abate de ovinos e caprinos','1'),(171,1011204,'Frigorífico  abate de bufalinos','1'),(172,1011205,'Matadouro  abate de reses sob contrato, exceto abate de suínos','1'),(173,1012101,'Abate de aves','1'),(174,1012102,'Abate de pequenos animais','1'),(175,1012103,'Frigorífico  abate de suínos','1'),(176,1012104,'Matadouro  abate de suínos sob contrato','1'),(177,1013901,'Fabricação de produtos de carne','1'),(178,1013902,'Preparação de subprodutos do abate','1'),(179,1020101,'Preservação de peixes, crustáceos e moluscos','1'),(180,1020102,'Fabricação de conservas de peixes, crustáceos e moluscos','1'),(181,1031700,'Fabricação de conservas de frutas','1'),(182,1032501,'Fabricação de conservas de palmito','1'),(183,1032599,'Fabricação de conservas de legumes e outros vegetais, exceto palmito','1'),(184,1033301,'Fabricação de sucos concentrados de frutas, hortaliças e legumes','1'),(185,1033302,'Fabricação de sucos de frutas, hortaliças e legumes, exceto concentrados','1'),(186,1041400,'Fabricação de óleos vegetais em bruto, exceto óleo de milho','1'),(187,1042200,'Fabricação de óleos vegetais refinados, exceto óleo de milho','1'),(188,1043100,'Fabricação de margarina e outras gorduras vegetais e de óleos nãocomestíveis de animais','1'),(189,1051100,'Preparação do leite','1'),(190,1052000,'Fabricação de laticínios','1'),(191,1053800,'Fabricação de sorvetes e outros gelados comestíveis','1'),(192,1061901,'Beneficiamento de arroz','1'),(193,1061902,'Fabricação de produtos do arroz','1'),(194,1062700,'Moagem de trigo e fabricação de derivados','1'),(195,1063500,'Fabricação de farinha de mandioca e derivados','1'),(196,1064300,'Fabricação de farinha de milho e derivados, exceto óleos de milho','1'),(197,1065101,'Fabricação de amidos e féculas de vegetais','1'),(198,1065102,'Fabricação de óleo de milho em bruto','1'),(199,1065103,'Fabricação de óleo de milho refinado','1'),(200,1066000,'Fabricação de alimentos para animais','1'),(201,1069400,'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente','1'),(202,1071600,'Fabricação de açúcar em bruto','1'),(203,1072401,'Fabricação de açúcar de cana refinado','1'),(204,1072402,'Fabricação de açúcar de cereais (dextrose) e de beterraba','1'),(205,1081301,'Beneficiamento de café','1'),(206,1081302,'Torrefação e moagem de café','1'),(207,1082100,'Fabricação de produtos à base de café','1'),(208,1091100,'Fabricação de produtos de panificação','1'),(209,1092900,'Fabricação de biscoitos e bolachas','1'),(210,1093701,'Fabricação de produtos derivados do cacau e de chocolates','1'),(211,1093702,'Fabricação de frutas cristalizadas, balas e semelhantes','1'),(212,1094500,'Fabricação de massas alimentícias','1'),(213,1095300,'Fabricação de especiarias, molhos, temperos e condimentos','1'),(214,1096100,'Fabricação de alimentos e pratos prontos','1'),(215,1099601,'Fabricação de vinagres','1'),(216,1099602,'Fabricação de pós alimentícios','1'),(217,1099603,'Fabricação de fermentos e leveduras','1'),(218,1099604,'Fabricação de gelo comum','1'),(219,1099605,'Fabricação de produtos para infusão (chá, mate, etc.)','1'),(220,1099606,'Fabricação de adoçantes naturais e artificiais','1'),(221,1099699,'Fabricação de outros produtos alimentícios não especificados anteriormente','1'),(222,1111901,'Fabricação de aguardente de canadeaçúcar','1'),(223,1111902,'Fabricação de outras aguardentes e bebidas destiladas','1'),(224,1112700,'Fabricação de vinho','1'),(225,1113501,'Fabricação de malte, inclusive malte uísque','1'),(226,1113502,'Fabricação de cervejas e chopes','1'),(227,1121600,'Fabricação de águas envasadas','1'),(228,1122401,'Fabricação de refrigerantes','1'),(229,1122402,'Fabricação de chá mate e outros chás prontos para consumo','1'),(230,1122403,'Fabricação de refrescos, xaropes e pós para refrescos, exceto refrescos de frutas','1'),(231,1122499,'Fabricação de outras bebidas nãoalcoólicas não especificadas anteriormente','1'),(232,1210700,'Processamento industrial do fumo','1'),(233,1220401,'Fabricação de cigarros','1'),(234,1220402,'Fabricação de cigarrilhas e charutos','1'),(235,1220403,'Fabricação de filtros para cigarros','1'),(236,1220499,'Fabricação de outros produtos do fumo, exceto cigarros, cigarrilhas e charutos','1'),(237,1311100,'Preparação e fiação de fibras de algodão','1'),(238,1312000,'Preparação e fiação de fibras têxteis naturais, exceto algodão','1'),(239,1313800,'Fiação de fibras artificiais e sintéticas','1'),(240,1314600,'Fabricação de linhas para costurar e bordar','1'),(241,1321900,'Tecelagem de fios de algodão','1'),(242,1322700,'Tecelagem de fios de fibras têxteis naturais, exceto algodão','1'),(243,1323500,'Tecelagem de fios de fibras artificiais e sintéticas','1'),(244,1330800,'Fabricação de tecidos de malha','1'),(245,1340501,'Estamparia e texturização em fios, tecidos, artefatos têxteis e peças do vestuário','1'),(246,1340502,'Alvejamento, tingimento e torção em fios, tecidos, artefatos têxteis e peças do vestuário','1'),(247,1340599,'Outros serviços de acabamento em fios, tecidos, artefatos têxteis e peças do vestuário','1'),(248,1351100,'Fabricação de artefatos têxteis para uso doméstico','1'),(249,1352900,'Fabricação de artefatos de tapeçaria','1'),(250,1353700,'Fabricação de artefatos de cordoaria','1'),(251,1354500,'Fabricação de tecidos especiais, inclusive artefatos','1'),(252,1359600,'Fabricação de outros produtos têxteis não especificados anteriormente','1'),(253,1411801,'Confecção de roupas íntimas','1'),(254,1411802,'Facção de roupas íntimas','1'),(255,1412601,'Confecção de peças do vestuário, exceto roupas íntimas e as confeccionadas sob medida','1'),(256,1412602,'Confecção, sob medida, de peças do vestuário, exceto roupas íntimas','1'),(257,1412603,'Facção de peças do vestuário, exceto roupas íntimas','1'),(258,1413401,'Confecção de roupas profissionais, exceto sob medida','1'),(259,1413402,'Confecção, sob medida, de roupas profissionais','1'),(260,1413403,'Facção de roupas profissionais','1'),(261,1414200,'Fabricação de acessórios do vestuário, exceto para segurança e proteção','1'),(262,1421500,'Fabricação de meias','1'),(263,1422300,'Fabricação de artigos do vestuário, produzidos em malharias e tricotagens, exceto meias','1'),(264,1510600,'Curtimento e outras preparações de couro','1'),(265,1521100,'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material','1'),(266,1529700,'Fabricação de artefatos de couro não especificados anteriormente','1'),(267,1531901,'Fabricação de calçados de couro','1'),(268,1531902,'Acabamento de calçados de couro sob contrato','1'),(269,1532700,'Fabricação de tênis de qualquer material','1'),(270,1533500,'Fabricação de calçados de material sintético','1'),(271,1539400,'Fabricação de calçados de materiais não especificados anteriormente','1'),(272,1540800,'Fabricação de partes para calçados, de qualquer material','1'),(273,1610201,'Serrarias com desdobramento de madeira','1'),(274,1610202,'Serrarias sem desdobramento de madeira','1'),(275,1621800,'Fabricação de madeira laminada e de chapas de madeira compensada, prensada e aglomerada','1'),(276,1622601,'Fabricação de casas de madeira préfabricadas','1'),(277,1622602,'Fabricação de esquadrias de madeira e de peças de madeira para instalações industriais e comerciais','1'),(278,1622699,'Fabricação de outros artigos de carpintaria para construção','1'),(279,1623400,'Fabricação de artefatos de tanoaria e de embalagens de madeira','1'),(280,1629301,'Fabricação de artefatos diversos de madeira, exceto móveis','1'),(281,1629302,'Fabricação de artefatos diversos de cortiça, bambu, palha, vime e outros materiais trançados, exceto móveis','1'),(282,1710900,'Fabricação de celulose e outras pastas para a fabricação de papel','1'),(283,1721400,'Fabricação de papel','1'),(284,1722200,'Fabricação de cartolina e papelcartão','1'),(285,1731100,'Fabricação de embalagens de papel','1'),(286,1732000,'Fabricação de embalagens de cartolina e papelcartão','1'),(287,1733800,'Fabricação de chapas e de embalagens de papelão ondulado','1'),(288,1741901,'Fabricação de formulários contínuos','1'),(289,1741902,'Fabricação de produtos de papel, cartolina, papelcartão e papelão ondulado para uso comercial e de escritório, exceto formulário contínuo','1'),(290,1742701,'Fabricação de fraldas descartáveis','1'),(291,1742702,'Fabricação de absorventes higiênicos','1'),(292,1742799,'Fabricação de produtos de papel para uso doméstico e higiênicosanitário não especificados anteriormente','1'),(293,1749400,'Fabricação de produtos de pastas celulósicas, papel, cartolina, papelcartão e papelão ondulado não especificados anteriormente','1'),(294,1811301,'Impressão de jornais','1'),(295,1811302,'Impressão de livros, revistas e outras publicações periódicas','1'),(296,1812100,'Impressão de material de segurança','1'),(297,1813001,'Impressão de material para uso publicitário','1'),(298,1813099,'Impressão de material para outros usos','1'),(299,1821100,'Serviços de préimpressão','1'),(300,1822900,'Serviços de acabamentos gráficos','1'),(301,1830001,'Reprodução de som em qualquer suporte','1'),(302,1830002,'Reprodução de vídeo em qualquer suporte','1'),(303,1830003,'Reprodução de software em qualquer suporte','1'),(304,1910100,'Coquerias','1'),(305,1921700,'Fabricação de produtos do refino de petróleo','1'),(306,1922501,'Formulação de combustíveis','1'),(307,1922502,'Rerrefino de óleos lubrificantes','1'),(308,1922599,'Fabricação de outros produtos derivados do petróleo, exceto produtos do refino','1'),(309,1931400,'Fabricação de álcool','1'),(310,1932200,'Fabricação de biocombustíveis, exceto álcool','1'),(311,2011800,'Fabricação de cloro e álcalis','1'),(312,2012600,'Fabricação de intermediários para fertilizantes','1'),(313,2013400,'Fabricação de adubos e fertilizantes','1'),(314,2014200,'Fabricação de gases industriais','1'),(315,2019301,'Elaboração de combustíveis nucleares','1'),(316,2019399,'Fabricação de outros produtos químicos inorgânicos não especificados anteriormente','1'),(317,2021500,'Fabricação de produtos petroquímicos básicos','1'),(318,2022300,'Fabricação de intermediários para plastificantes, resinas e fibras','1'),(319,2029100,'Fabricação de produtos químicos orgânicos não especificados anteriormente','1'),(320,2031200,'Fabricação de resinas termoplásticas','1'),(321,2032100,'Fabricação de resinas termofixas','1'),(322,2033900,'Fabricação de elastômeros','1'),(323,2040100,'Fabricação de fibras artificiais e sintéticas','1'),(324,2051700,'Fabricação de defensivos agrícolas','1'),(325,2052500,'Fabricação de desinfestantes domissanitários','1'),(326,2061400,'Fabricação de sabões e detergentes sintéticos','1'),(327,2062200,'Fabricação de produtos de limpeza e polimento','1'),(328,2063100,'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal','1'),(329,2071100,'Fabricação de tintas, vernizes, esmaltes e lacas','1'),(330,2072000,'Fabricação de tintas de impressão','1'),(331,2073800,'Fabricação de impermeabilizantes, solventes e produtos afins','1'),(332,2091600,'Fabricação de adesivos e selantes','1'),(333,2092401,'Fabricação de pólvoras, explosivos e detonantes','1'),(334,2092402,'Fabricação de artigos pirotécnicos','1'),(335,2092403,'Fabricação de fósforos de segurança','1'),(336,2093200,'Fabricação de aditivos de uso industrial','1'),(337,2094100,'Fabricação de catalisadores','1'),(338,2099101,'Fabricação de chapas, filmes, papéis e outros materiais e produtos químicos para fotografia','1'),(339,2099199,'Fabricação de outros produtos químicos não especificados anteriormente','1'),(340,2110600,'Fabricação de produtos farmoquímicos','1'),(341,2121101,'Fabricação de medicamentos alopáticos para uso humano','1'),(342,2121102,'Fabricação de medicamentos homeopáticos para uso humano','1'),(343,2121103,'Fabricação de medicamentos fitoterápicos para uso humano','1'),(344,2122000,'Fabricação de medicamentos para uso veterinário','1'),(345,2123800,'Fabricação de preparações farmacêuticas','1'),(346,2211100,'Fabricação de pneumáticos e de câmarasdear','1'),(347,2212900,'Reforma de pneumáticos usados','1'),(348,2219600,'Fabricação de artefatos de borracha não especificados anteriormente','1'),(349,2221800,'Fabricação de laminados planos e tubulares de material plástico','1'),(350,2222600,'Fabricação de embalagens de material plástico','1'),(351,2223400,'Fabricação de tubos e acessórios de material plástico para uso na construção','1'),(352,2229301,'Fabricação de artefatos de material plástico para uso pessoal e doméstico','1'),(353,2229302,'Fabricação de artefatos de material plástico para usos industriais','1'),(354,2229303,'Fabricação de artefatos de material plástico para uso na construção, exceto tubos e acessórios','1'),(355,2229399,'Fabricação de artefatos de material plástico para outros usos não especificados anteriormente','1'),(356,2311700,'Fabricação de vidro plano e de segurança','1'),(357,2312500,'Fabricação de embalagens de vidro','1'),(358,2319200,'Fabricação de artigos de vidro','1'),(359,2320600,'Fabricação de cimento','1'),(360,2330301,'Fabricação de estruturas prémoldadas de concreto armado, em série e sob encomenda','1'),(361,2330302,'Fabricação de artefatos de cimento para uso na construção','1'),(362,2330303,'Fabricação de artefatos de fibrocimento para uso na construção','1'),(363,2330304,'Fabricação de casas prémoldadas de concreto','1'),(364,2330305,'Preparação de massa de concreto e argamassa para construção','1'),(365,2330399,'Fabricação de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes','1'),(366,2341900,'Fabricação de produtos cerâmicos refratários','1'),(367,2342701,'Fabricação de azulejos e pisos','1'),(368,2342702,'Fabricação de artefatos de cerâmica e barro cozido para uso na construção, exceto azulejos e pisos','1'),(369,2349401,'Fabricação de material sanitário de cerâmica','1'),(370,2349499,'Fabricação de produtos cerâmicos nãorefratários não especificados anteriormente','1'),(371,2391501,'Britamento de pedras, exceto associado à extração','1'),(372,2391502,'Aparelhamento de pedras para construção, exceto associado à extração','1'),(373,2391503,'Aparelhamento de placas e execução de trabalhos em mármore, granito, ardósia e outras pedras','1'),(374,2392300,'Fabricação de cal e gesso','1'),(375,2399101,'Decoração, lapidação, gravação, vitrificação e outros trabalhos em cerâmica, louça, vidro e cristal','1'),(376,2399199,'Fabricação de outros produtos de minerais nãometálicos não especificados anteriormente','1'),(377,2411300,'Produção de ferrogusa','1'),(378,2412100,'Produção de ferroligas','1'),(379,2421100,'Produção de semiacabados de aço','1'),(380,2422901,'Produção de laminados planos de aço ao carbono, revestidos ou não','1'),(381,2422902,'Produção de laminados planos de aços especiais','1'),(382,2423701,'Produção de tubos de aço sem costura','1'),(383,2423702,'Produção de laminados longos de aço, exceto tubos','1'),(384,2424501,'Produção de arames de aço','1'),(385,2424502,'Produção de relaminados, trefilados e perfilados de aço, exceto arames','1'),(386,2431800,'Produção de tubos de aço com costura','1'),(387,2439300,'Produção de outros tubos de ferro e aço','1'),(388,2441501,'Produção de alumínio e suas ligas em formas primárias','1'),(389,2441502,'Produção de laminados de alumínio','1'),(390,2442300,'Metalurgia dos metais preciosos','1'),(391,2443100,'Metalurgia do cobre','1'),(392,2449101,'Produção de zinco em formas primárias','1'),(393,2449102,'Produção de laminados de zinco','1'),(394,2449103,'Produção de soldas e ânodos para galvanoplastia','1'),(395,2449199,'Metalurgia de outros metais nãoferrosos e suas ligas não especificados anteriormente','1'),(396,2451200,'Fundição de ferro e aço','1'),(397,2452100,'Fundição de metais nãoferrosos e suas ligas','1'),(398,2511000,'Fabricação de estruturas metálicas','1'),(399,2512800,'Fabricação de esquadrias de metal','1'),(400,2513600,'Fabricação de obras de caldeiraria pesada','1'),(401,2521700,'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central','1'),(402,2522500,'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos','1'),(403,2531401,'Produção de forjados de aço','1'),(404,2531402,'Produção de forjados de metais nãoferrosos e suas ligas','1'),(405,2532201,'Produção de artefatos estampados de metal','1'),(406,2532202,'Metalurgia do pó','1'),(407,2539000,'Serviços de usinagem, solda, tratamento e revestimento em metais','1'),(408,2541100,'Fabricação de artigos de cutelaria','1'),(409,2542000,'Fabricação de artigos de serralheria, exceto esquadrias','1'),(410,2543800,'Fabricação de ferramentas','1'),(411,2550101,'Fabricação de equipamento bélico pesado, exceto veículos militares de combate','1'),(412,2550102,'Fabricação de armas de fogo e munições','1'),(413,2591800,'Fabricação de embalagens metálicas','1'),(414,2592601,'Fabricação de produtos de trefilados de metal padronizados','1'),(415,2592602,'Fabricação de produtos de trefilados de metal, exceto padronizados','1'),(416,2593400,'Fabricação de artigos de metal para uso doméstico e pessoal','1'),(417,2599301,'Serviços de confecção de armações metálicas para a construção','1'),(418,2599399,'Fabricação de outros produtos de metal não especificados anteriormente','1'),(419,2610800,'Fabricação de componentes eletrônicos','1'),(420,2621300,'Fabricação de equipamentos de informática','1'),(421,2622100,'Fabricação de periféricos para equipamentos de informática','1'),(422,2631100,'Fabricação de equipamentos transmissores de comunicação, peças e acessórios','1'),(423,2632900,'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação, peças e acessórios','1'),(424,2640000,'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo','1'),(425,2651500,'Fabricação de aparelhos e equipamentos de medida, teste e controle','1'),(426,2652300,'Fabricação de cronômetros e relógios','1'),(427,2660400,'Fabricação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação','1'),(428,2670101,'Fabricação de equipamentos e instrumentos ópticos, peças e acessórios','1'),(429,2670102,'Fabricação de aparelhos fotográficos e cinematográficos, peças e acessórios','1'),(430,2680900,'Fabricação de mídias virgens, magnéticas e ópticas','1'),(431,2710401,'Fabricação de geradores de corrente contínua e alternada, peças e acessórios','1'),(432,2710402,'Fabricação de transformadores, indutores, conversores, sincronizadores e semelhantes, peças e acessórios','1'),(433,2710403,'Fabricação de motores elétricos, peças e acessórios','1'),(434,2721000,'Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores','1'),(435,2722801,'Fabricação de baterias e acumuladores para veículos automotores','1'),(436,2722802,'Recondicionamento de baterias e acumuladores para veículos automotores','1'),(437,2731700,'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica','1'),(438,2732500,'Fabricação de material elétrico para instalações em circuito de consumo','1'),(439,2733300,'Fabricação de fios, cabos e condutores elétricos isolados','1'),(440,2740601,'Fabricação de lâmpadas','1'),(441,2740602,'Fabricação de luminárias e outros equipamentos de iluminação','1'),(442,2751100,'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico, peças e acessórios','1'),(443,2759701,'Fabricação de aparelhos elétricos de uso pessoal, peças e acessórios','1'),(444,2759799,'Fabricação de outros aparelhos eletrodomésticos não especificados anteriormente, peças e acessórios','1'),(445,2790201,'Fabricação de eletrodos, contatos e outros artigos de carvão e grafita para uso elétrico, eletroímãs e isoladores','1'),(446,2790202,'Fabricação de equipamentos para sinalização e alarme','1'),(447,2790299,'Fabricação de outros equipamentos e aparelhos elétricos não especificados anteriormente','1'),(448,2811900,'Fabricação de motores e turbinas, peças e acessórios, exceto para aviões e veículos rodoviários','1'),(449,2812700,'Fabricação de equipamentos hidráulicos e pneumáticos, peças e acessórios, exceto válvulas','1'),(450,2813500,'Fabricação de válvulas, registros e dispositivos semelhantes, peças e acessórios','1'),(451,2814301,'Fabricação de compressores para uso industrial, peças e acessórios','1'),(452,2814302,'Fabricação de compressores para uso nãoindustrial, peças e acessórios','1'),(453,2815101,'Fabricação de rolamentos para fins industriais','1'),(454,2815102,'Fabricação de equipamentos de transmissão para fins industriais, exceto rolamentos','1'),(455,2821601,'Fabricação de fornos industriais, aparelhos e equipamentos nãoelétricos para instalações térmicas, peças e acessórios','1'),(456,2821602,'Fabricação de estufas e fornos elétricos para fins industriais, peças e acessórios','1'),(457,2822401,'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de pessoas, peças e acessórios','1'),(458,2822402,'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas, peças e acessórios','1'),(459,2823200,'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial, peças e acessórios','1'),(460,2824101,'Fabricação de aparelhos e equipamentos de ar condicionado para uso industrial','1'),(461,2824102,'Fabricação de aparelhos e equipamentos de ar condicionado para uso nãoindustrial','1'),(462,2825900,'Fabricação de máquinas e equipamentos para saneamento básico e ambiental, peças e acessórios','1'),(463,2829101,'Fabricação de máquinas de escrever, calcular e outros equipamentos nãoeletrônicos para escritório, peças e acessórios','1'),(464,2829199,'Fabricação de outras máquinas e equipamentos de uso geral não especificados anteriormente, peças e acessórios','1'),(465,2831300,'Fabricação de tratores agrícolas, peças e acessórios','1'),(466,2832100,'Fabricação de equipamentos para irrigação agrícola, peças e acessórios','1'),(467,2833000,'Fabricação de máquinas e equipamentos para a agricultura e pecuária, peças e acessórios, exceto para irrigação','1'),(468,2840200,'Fabricação de máquinasferramenta, peças e acessórios','1'),(469,2851800,'Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo, peças e acessórios','1'),(470,2852600,'Fabricação de outras máquinas e equipamentos para uso na extração mineral, peças e acessórios, exceto na extração de petróleo','1'),(471,2853400,'Fabricação de tratores, peças e acessórios, exceto agrícolas','1'),(472,2854200,'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, peças e acessórios, exceto tratores','1'),(473,2861500,'Fabricação de máquinas para a indústria metalúrgica, peças e acessórios, exceto máquinasferramenta','1'),(474,2862300,'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo, peças e acessórios','1'),(475,2863100,'Fabricação de máquinas e equipamentos para a indústria têxtil, peças e acessórios','1'),(476,2864000,'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados, peças e acessórios','1'),(477,2865800,'Fabricação de máquinas e equipamentos para as indústrias de celulose, papel e papelão e artefatos, peças e acessórios','1'),(478,2866600,'Fabricação de máquinas e equipamentos para a indústria do plástico, peças e acessórios','1'),(479,2869100,'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente, peças e acessórios','1'),(480,2910701,'Fabricação de automóveis, camionetas e utilitários','1'),(481,2910702,'Fabricação de chassis com motor para automóveis, camionetas e utilitários','1'),(482,2910703,'Fabricação de motores para automóveis, camionetas e utilitários','1'),(483,2920401,'Fabricação de caminhões e ônibus','1'),(484,2920402,'Fabricação de motores para caminhões e ônibus','1'),(485,2930101,'Fabricação de cabines, carrocerias e reboques para caminhões','1'),(486,2930102,'Fabricação de carrocerias para ônibus','1'),(487,2930103,'Fabricação de cabines, carrocerias e reboques para outros veículos automotores, exceto caminhões e ônibus','1'),(488,2941700,'Fabricação de peças e acessórios para o sistema motor de veículos automotores','1'),(489,2942500,'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores','1'),(490,2943300,'Fabricação de peças e acessórios para o sistema de freios de veículos automotores','1'),(491,2944100,'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores','1'),(492,2945000,'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias','1'),(493,2949201,'Fabricação de bancos e estofados para veículos automotores','1'),(494,2949299,'Fabricação de outras peças e acessórios para veículos automotores não especificadas anteriormente','1'),(495,2950600,'Recondicionamento e recuperação de motores para veículos automotores','1'),(496,3011301,'Construção de embarcações de grande porte','1'),(497,3011302,'Construção de embarcações para uso comercial e para usos especiais, exceto de grande porte','1'),(498,3012100,'Construção de embarcações para esporte e lazer','1'),(499,3031800,'Fabricação de locomotivas, vagões e outros materiais rodantes','1'),(500,3032600,'Fabricação de peças e acessórios para veículos ferroviários','1'),(501,3041500,'Fabricação de aeronaves','1'),(502,3042300,'Fabricação de turbinas, motores e outros componentes e peças para aeronaves','1'),(503,3050400,'Fabricação de veículos militares de combate','1'),(504,3091100,'Fabricação de motocicletas, peças e acessórios','1'),(505,3092000,'Fabricação de bicicletas e triciclos nãomotorizados, peças e acessórios','1'),(506,3099700,'Fabricação de equipamentos de transporte não especificados anteriormente','1'),(507,3101200,'Fabricação de móveis com predominância de madeira','1'),(508,3102100,'Fabricação de móveis com predominância de metal','1'),(509,3103900,'Fabricação de móveis de outros materiais, exceto madeira e metal','1'),(510,3104700,'Fabricação de colchões','1'),(511,3211601,'Lapidação de gemas','1'),(512,3211602,'Fabricação de artefatos de joalheria e ourivesaria','1'),(513,3211603,'Cunhagem de moedas e medalhas','1'),(514,3212400,'Fabricação de bijuterias e artefatos semelhantes','1'),(515,3220500,'Fabricação de instrumentos musicais, peças e acessórios','1'),(516,3230200,'Fabricação de artefatos para pesca e esporte','1'),(517,3240001,'Fabricação de jogos eletrônicos','1'),(518,3240002,'Fabricação de mesas de bilhar, de sinuca e acessórios não associada à locação','1'),(519,3240003,'Fabricação de mesas de bilhar, de sinuca e acessórios associada à locação','1'),(520,3240099,'Fabricação de outros brinquedos e jogos recreativos não especificados anteriormente','1'),(521,3250701,'Fabricação de instrumentos nãoeletrônicos e utensílios para uso médico, cirúrgico, odontológico e de laboratório','1'),(522,3250702,'Fabricação de mobiliário para uso médico, cirúrgico, odontológico e de laboratório','1'),(523,3250703,'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral sob encomenda','1'),(524,3250704,'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, exceto sob encomenda','1'),(525,3250705,'Fabricação de materiais para medicina e odontologia','1'),(526,3250706,'Serviços de prótese dentária','1'),(527,3250707,'Fabricação de artigos ópticos','1'),(528,3250708,'Fabricação de artefatos de tecido não tecido para uso odontomédicohospitalar','1'),(529,3291400,'Fabricação de escovas, pincéis e vassouras','1'),(530,3292201,'Fabricação de roupas de proteção e segurança e resistentes a fogo','1'),(531,3292202,'Fabricação de equipamentos e acessórios para segurança pessoal e profissional','1'),(532,3299001,'Fabricação de guardachuvas e similares','1'),(533,3299002,'Fabricação de canetas, lápis e outros artigos para escritório','1'),(534,3299003,'Fabricação de letras, letreiros e placas de qualquer material, exceto luminosos','1'),(535,3299004,'Fabricação de painéis e letreiros luminosos','1'),(536,3299005,'Fabricação de aviamentos para costura','1'),(537,3299099,'Fabricação de produtos diversos não especificados anteriormente','1'),(538,3311200,'Manutenção e reparação de tanques, reservatórios metálicos e caldeiras, exceto para veículos','1'),(539,3312101,'Manutenção e reparação de equipamentos transmissores de comunicação','1'),(540,3312102,'Manutenção e reparação de aparelhos e instrumentos de medida, teste e controle','1'),(541,3312103,'Manutenção e reparação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação','1'),(542,3312104,'Manutenção e reparação de equipamentos e instrumentos ópticos','1'),(543,3313901,'Manutenção e reparação de geradores, transformadores e motores elétricos','1'),(544,3313902,'Manutenção e reparação de baterias e acumuladores elétricos, exceto para veículos','1'),(545,3313999,'Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente','1'),(546,3314701,'Manutenção e reparação de máquinas motrizes nãoelétricas','1'),(547,3314702,'Manutenção e reparação de equipamentos hidráulicos e pneumáticos, exceto válvulas','1'),(548,3314703,'Manutenção e reparação de válvulas industriais','1'),(549,3314704,'Manutenção e reparação de compressores','1'),(550,3314705,'Manutenção e reparação de equipamentos de transmissão para fins industriais','1'),(551,3314706,'Manutenção e reparação de máquinas, aparelhos e equipamentos para instalações térmicas','1'),(552,3314707,'Manutenção e reparação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial','1'),(553,3314708,'Manutenção e reparação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas','1'),(554,3314709,'Manutenção e reparação de máquinas de escrever, calcular e de outros equipamentos nãoeletrônicos para escritório','1'),(555,3314710,'Manutenção e reparação de máquinas e equipamentos para uso geral não especificados anteriormente','1'),(556,3314711,'Manutenção e reparação de máquinas e equipamentos para agricultura e pecuária','1'),(557,3314712,'Manutenção e reparação de tratores agrícolas','1'),(558,3314713,'Manutenção e reparação de máquinasferramenta','1'),(559,3314714,'Manutenção e reparação de máquinas e equipamentos para a prospecção e extração de petróleo','1'),(560,3314715,'Manutenção e reparação de máquinas e equipamentos para uso na extração mineral, exceto na extração de petróleo','1'),(561,3314716,'Manutenção e reparação de tratores, exceto agrícolas','1'),(562,3314717,'Manutenção e reparação de máquinas e equipamentos de terraplenagem, pavimentação e construção, exceto tratores','1'),(563,3314718,'Manutenção e reparação de máquinas para a indústria metalúrgica, exceto máquinasferramenta','1'),(564,3314719,'Manutenção e reparação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo','1'),(565,3314720,'Manutenção e reparação de máquinas e equipamentos para a indústria têxtil, do vestuário, do couro e calçados','1'),(566,3314721,'Manutenção e reparação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos','1'),(567,3314722,'Manutenção e reparação de máquinas e aparelhos para a indústria do plástico','1'),(568,3314799,'Manutenção e reparação de outras máquinas e equipamentos para usos industriais não especificados anteriormente','1'),(569,3315500,'Manutenção e reparação de veículos ferroviários','1'),(570,3316301,'Manutenção e reparação de aeronaves, exceto a manutenção na pista','1'),(571,3316302,'Manutenção de aeronaves na pista','1'),(572,3316303,'Manutenção e reparação de embarcações e estruturas flutuantes','1'),(573,3329501,'Serviços de montagem de móveis de qualquer material','1'),(574,3329599,'Instalação de outros equipamentos não especificados anteriormente','1'),(575,3511500,'Geração de energia elétrica','1'),(576,3512300,'Transmissão de energia elétrica','1'),(577,3513100,'Comércio atacadista de energia elétrica','1'),(578,3514000,'Distribuição de energia elétrica','1'),(579,3520401,'Produção de gás; processamento de gás natural','1'),(580,3520402,'Distribuição de combustíveis gasosos por redes urbanas','1'),(581,3530100,'Produção e distribuição de vapor, água quente e ar condicionado','1'),(582,3600601,'Captação, tratamento e distribuição de água','1'),(583,3600602,'Distribuição de água por caminhões','1'),(584,3701100,'Gestão de redes de esgoto','1'),(585,3702900,'Atividades relacionadas a esgoto, exceto a gestão de redes','1'),(586,3811400,'Coleta de resíduos nãoperigosos','1'),(587,3812200,'Coleta de resíduos perigosos','1'),(588,3821100,'Tratamento e disposição de resíduos nãoperigosos','1'),(589,3822000,'Tratamento e disposição de resíduos perigosos','1'),(590,3831901,'Recuperação de sucatas de alumínio','1'),(591,3831999,'Recuperação de materiais metálicos, exceto alumínio','1'),(592,3832700,'Recuperação de materiais plásticos','1'),(593,3839401,'Usinas de compostagem','1'),(594,3839499,'Recuperação de materiais não especificados anteriormente','1'),(595,3900500,'Descontaminação e outros serviços de gestão de resíduos','1'),(596,4110700,'Incorporação de empreendimentos imobiliários','1'),(597,4120400,'Construção de edifícios','1'),(598,4211101,'Construção de rodovias e ferrovias','1'),(599,4211102,'Pintura para sinalização em pistas rodoviárias e aeroportos','1'),(600,4212000,'Construção de obrasdearte especiais','1'),(601,4213800,'Obras de urbanização  ruas, praças e calçadas','1'),(602,4221901,'Construção de barragens e represas para geração de energia elétrica','1'),(603,4221902,'Construção de estações e redes de distribuição de energia elétrica','1'),(604,4221903,'Manutenção de redes de distribuição de energia elétrica','1'),(605,4221904,'Construção de estações e redes de telecomunicações','1'),(606,4221905,'Manutenção de estações e redes de telecomunicações','1'),(607,4222701,'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas, exceto obras de irrigação','1'),(608,4222702,'Obras de irrigação','1'),(609,4223500,'Construção de redes de transportes por dutos, exceto para água e esgoto','1'),(610,4291000,'Obras portuárias, marítimas e fluviais','1'),(611,4292801,'Montagem de estruturas metálicas','1'),(612,4292802,'Obras de montagem industrial','1'),(613,4299501,'Construção de instalações esportivas e recreativas','1'),(614,4299599,'Outras obras de engenharia civil não especificadas anteriormente','1'),(615,4311801,'Demolição de edifícios e outras estruturas','1'),(616,4311802,'Preparação de canteiro e limpeza de terreno','1'),(617,4312600,'Perfurações e sondagens','1'),(618,4313400,'Obras de terraplenagem','1'),(619,4319300,'Serviços de preparação do terreno não especificados anteriormente','1'),(620,4321500,'Instalação e manutenção elétrica','1'),(621,4322301,'Instalações hidráulicas, sanitárias e de gás','1'),(622,4322302,'Instalação e manutenção de sistemas centrais de ar condicionado, de ventilação e refrigeração','1'),(623,4322303,'Instalações de sistema de prevenção contra incêndio','1'),(624,4329101,'Instalação de painéis publicitários','1'),(625,4329102,'Instalação de equipamentos para orientação à navegação marítima, fluvial e lacustre','1'),(626,4329103,'Instalação, manutenção e reparação de elevadores, escadas e esteiras rolantes, exceto de fabricação própria','1'),(627,4329104,'Montagem e instalação de sistemas e equipamentos de iluminação e sinalização em vias públicas, portos e aeroportos','1'),(628,4329105,'Tratamentos térmicos, acústicos ou de vibração','1'),(629,4329199,'Outras obras de instalações em construções não especificadas anteriormente','1'),(630,4330401,'Impermeabilização em obras de engenharia civil','1'),(631,4330402,'Instalação de portas, janelas, tetos, divisórias e armários embutidos de qualquer material','1'),(632,4330403,'Obras de acabamento em gesso e estuque','1'),(633,4330404,'Serviços de pintura de edifícios em geral','1'),(634,4330405,'Aplicação de revestimentos e de resinas em interiores e exteriores','1'),(635,4330499,'Outras obras de acabamento da construção','1'),(636,4391600,'Obras de fundações','1'),(637,4399101,'Administração de obras','1'),(638,4399102,'Montagem e desmontagem de andaimes e outras estruturas temporárias','1'),(639,4399103,'Obras de alvenaria','1'),(640,4399104,'Serviços de operação e fornecimento de equipamentos para transporte e elevação de cargas e pessoas para uso em obras','1'),(641,4399105,'Perfuração e construção de poços de água','1'),(642,4399199,'Serviços especializados para construção não especificados anteriormente','1'),(643,4511101,'Comércio a varejo de automóveis, camionetas e utilitários novos','1'),(644,4511102,'Comércio a varejo de automóveis, camionetas e utilitários usados','1'),(645,4511103,'Comércio por atacado de automóveis, camionetas e utilitários novos e usados','1'),(646,4511104,'Comércio por atacado de caminhões novos e usados','1'),(647,4511105,'Comércio por atacado de reboques e semireboques novos e usados','1'),(648,4511106,'Comércio por atacado de ônibus e microônibus novos e usados','1'),(649,4512901,'Representantes comerciais e agentes do comércio de veículos automotores','1'),(650,4512902,'Comércio sob consignação de veículos automotores','1'),(651,4520001,'Serviços de manutenção e reparação mecânica de veículos automotores','1'),(652,4520002,'Serviços de lanternagem ou funilaria e pintura de veículos automotores','1'),(653,4520003,'Serviços de manutenção e reparação elétrica de veículos automotores','1'),(654,4520004,'Serviços de alinhamento e balanceamento de veículos automotores','1'),(655,4520005,'Serviços de lavagem, lubrificação e polimento de veículos automotores','1'),(656,4520006,'Serviços de borracharia para veículos automotores','1'),(657,4520007,'Serviços de instalação, manutenção e reparação de acessórios para veículos automotores','1'),(658,4530701,'Comércio por atacado de peças e acessórios novos para veículos automotores','1'),(659,4530702,'Comércio por atacado de pneumáticos e câmarasdear','1'),(660,4530703,'Comércio a varejo de peças e acessórios novos para veículos automotores','1'),(661,4530704,'Comércio a varejo de peças e acessórios usados para veículos automotores','1'),(662,4530705,'Comércio a varejo de pneumáticos e câmarasdear','1'),(663,4530706,'Representantes comerciais e agentes do comércio de peças e acessórios novos e usados para veículos automotores','1'),(664,4541201,'Comércio por atacado de motocicletas e motonetas','1'),(665,4541202,'Comércio por atacado de peças e acessórios para motocicletas e motonetas','1'),(666,4541203,'Comércio a varejo de motocicletas e motonetas novas','1'),(667,4541204,'Comércio a varejo de motocicletas e motonetas usadas','1'),(668,4541205,'Comércio a varejo de peças e acessórios para motocicletas e motonetas','1'),(669,4542101,'Representantes comerciais e agentes do comércio de motocicletas e motonetas, peças e acessórios','1'),(670,4542102,'Comércio sob consignação de motocicletas e motonetas','1'),(671,4543900,'Manutenção e reparação de motocicletas e motonetas','1'),(672,4611700,'Representantes comerciais e agentes do comércio de matériasprimas agrícolas e animais vivos','1'),(673,4612500,'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos','1'),(674,4613300,'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens','1'),(675,4614100,'Representantes comerciais e agentes do comércio de máquinas, equipamentos, embarcações e aeronaves','1'),(676,4615000,'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico','1'),(677,4616800,'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem','1'),(678,4617600,'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo','1'),(679,4618401,'Representantes comerciais e agentes do comércio de medicamentos, cosméticos e produtos de perfumaria','1'),(680,4618402,'Representantes comerciais e agentes do comércio de instrumentos e materiais odontomédicohospitalares','1'),(681,4618403,'Representantes comerciais e agentes do comércio de jornais, revistas e outras publicações','1'),(682,4618499,'Outros representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente','1'),(683,4619200,'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado','1'),(684,4621400,'Comércio atacadista de café em grão','1'),(685,4622200,'Comércio atacadista de soja','1'),(686,4623101,'Comércio atacadista de animais vivos','1'),(687,4623102,'Comércio atacadista de couros, lãs, peles e outros subprodutos nãocomestíveis de origem animal','1'),(688,4623103,'Comércio atacadista de algodão','1'),(689,4623104,'Comércio atacadista de fumo em folha não beneficiado','1'),(690,4623105,'Comércio atacadista de cacau','1'),(691,4623106,'Comércio atacadista de sementes, flores, plantas e gramas','1'),(692,4623107,'Comércio atacadista de sisal','1'),(693,4623108,'Comércio atacadista de matériasprimas agrícolas com atividade de fracionamento e acondicionamento associada','1'),(694,4623109,'Comércio atacadista de alimentos para animais','1'),(695,4623199,'Comércio atacadista de matériasprimas agrícolas não especificadas anteriormente','1'),(696,4631100,'Comércio atacadista de leite e laticínios','1'),(697,4632001,'Comércio atacadista de cereais e leguminosas beneficiados','1'),(698,4632002,'Comércio atacadista de farinhas, amidos e féculas','1'),(699,4632003,'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas, com atividade de fracionamento e acondicionamento associada','1'),(700,4633801,'Comércio atacadista de frutas, verduras, raízes, tubérculos, hortaliças e legumes frescos','1'),(701,4633802,'Comércio atacadista de aves vivas e ovos','1'),(702,4633803,'Comércio atacadista de coelhos e outros pequenos animais vivos para alimentação','1'),(703,4634601,'Comércio atacadista de carnes bovinas e suínas e derivados','1'),(704,4634602,'Comércio atacadista de aves abatidas e derivados','1'),(705,4634603,'Comércio atacadista de pescados e frutos do mar','1'),(706,4634699,'Comércio atacadista de carnes e derivados de outros animais','1'),(707,4635401,'Comércio atacadista de água mineral','1'),(708,4635402,'Comércio atacadista de cerveja, chope e refrigerante','1'),(709,4635403,'Comércio atacadista de bebidas com atividade de fracionamento e acondicionamento associada','1'),(710,4635499,'Comércio atacadista de bebidas não especificadas anteriormente','1'),(711,4636201,'Comércio atacadista de fumo beneficiado','1'),(712,4636202,'Comércio atacadista de cigarros, cigarrilhas e charutos','1'),(713,4637101,'Comércio atacadista de café torrado, moído e solúvel','1'),(714,4637102,'Comércio atacadista de açúcar','1'),(715,4637103,'Comércio atacadista de óleos e gorduras','1'),(716,4637104,'Comércio atacadista de pães, bolos, biscoitos e similares','1'),(717,4637105,'Comércio atacadista de massas alimentícias','1'),(718,4637106,'Comércio atacadista de sorvetes','1'),(719,4637107,'Comércio atacadista de chocolates, confeitos, balas, bombons e semelhantes','1'),(720,4637199,'Comércio atacadista especializado em outros produtos alimentícios não especificados anteriormente','1'),(721,4639701,'Comércio atacadista de produtos alimentícios em geral','1'),(722,4639702,'Comércio atacadista de produtos alimentícios em geral, com atividade de fracionamento e acondicionamento associada','1'),(723,4641901,'Comércio atacadista de tecidos','1'),(724,4641902,'Comércio atacadista de artigos de cama, mesa e banho','1'),(725,4641903,'Comércio atacadista de artigos de armarinho','1'),(726,4642701,'Comércio atacadista de artigos do vestuário e acessórios, exceto profissionais e de segurança','1'),(727,4642702,'Comércio atacadista de roupas e acessórios para uso profissional e de segurança do trabalho','1'),(728,4643501,'Comércio atacadista de calçados','1'),(729,4643502,'Comércio atacadista de bolsas, malas e artigos de viagem','1'),(730,4644301,'Comércio atacadista de medicamentos e drogas de uso humano','1'),(731,4644302,'Comércio atacadista de medicamentos e drogas de uso veterinário','1'),(732,4645101,'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, hospitalar e de laboratórios','1'),(733,4645102,'Comércio atacadista de próteses e artigos de ortopedia','1'),(734,4645103,'Comércio atacadista de produtos odontológicos','1'),(735,4646001,'Comércio atacadista de cosméticos e produtos de perfumaria','1'),(736,4646002,'Comércio atacadista de produtos de higiene pessoal','1'),(737,4647801,'Comércio atacadista de artigos de escritório e de papelaria','1'),(738,4647802,'Comércio atacadista de livros, jornais e outras publicações','1'),(739,4649401,'Comércio atacadista de equipamentos elétricos de uso pessoal e doméstico','1'),(740,4649402,'Comércio atacadista de aparelhos eletrônicos de uso pessoal e doméstico','1'),(741,4649403,'Comércio atacadista de bicicletas, triciclos e outros veículos recreativos','1'),(742,4649404,'Comércio atacadista de móveis e artigos de colchoaria','1'),(743,4649405,'Comércio atacadista de artigos de tapeçaria; persianas e cortinas','1'),(744,4649406,'Comércio atacadista de lustres, luminárias e abajures','1'),(745,4649407,'Comércio atacadista de filmes, CDs, DVDs, fitas e discos','1'),(746,4649408,'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar','1'),(747,4649409,'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar, com atividade de fracionamento e acondicionamento associada','1'),(748,4649410,'Comércio atacadista de jóias, relógios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas','1'),(749,4649499,'Comércio atacadista de outros equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente','1'),(750,4651601,'Comércio atacadista de equipamentos de informática','1'),(751,4651602,'Comércio atacadista de suprimentos para informática','1'),(752,4652400,'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação','1'),(753,4661300,'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças','1'),(754,4662100,'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças','1'),(755,4663000,'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças','1'),(756,4664800,'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odontomédicohospitalar; partes e peças','1'),(757,4665600,'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças','1'),(758,4669901,'Comércio atacadista de bombas e compressores; partes e peças','1'),(759,4669999,'Comércio atacadista de outras máquinas e equipamentos não especificados anteriormente; partes e peças','1'),(760,4671100,'Comércio atacadista de madeira e produtos derivados','1'),(761,4672900,'Comércio atacadista de ferragens e ferramentas','1'),(762,4673700,'Comércio atacadista de material elétrico','1'),(763,4674500,'Comércio atacadista de cimento','1'),(764,4679601,'Comércio atacadista de tintas, vernizes e similares','1'),(765,4679602,'Comércio atacadista de mármores e granitos','1'),(766,4679603,'Comércio atacadista de vidros, espelhos e vitrais','1'),(767,4679604,'Comércio atacadista especializado de materiais de construção não especificados anteriormente','1'),(768,4679699,'Comércio atacadista de materiais de construção em geral','1'),(769,4681801,'Comércio atacadista de álcool carburante, biodiesel, gasolina e demais derivados de petróleo, exceto lubrificantes, não realizado por transportador re','1'),(770,4681802,'Comércio atacadista de combustíveis realizado por transportador retalhista (TRR)','1'),(771,4681803,'Comércio atacadista de combustíveis de origem vegetal, exceto álcool carburante','1'),(772,4681804,'Comércio atacadista de combustíveis de origem mineral em bruto','1'),(773,4681805,'Comércio atacadista de lubrificantes','1'),(774,4682600,'Comércio atacadista de gás liqüefeito de petróleo (GLP)','1'),(775,4683400,'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivos do solo','1'),(776,4684201,'Comércio atacadista de resinas e elastômeros','1'),(777,4684202,'Comércio atacadista de solventes','1'),(778,4684299,'Comércio atacadista de outros produtos químicos e petroquímicos não especificados anteriormente','1'),(779,4685100,'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção','1'),(780,4686901,'Comércio atacadista de papel e papelão em bruto','1'),(781,4686902,'Comércio atacadista de embalagens','1'),(782,4687701,'Comércio atacadista de resíduos de papel e papelão','1'),(783,4687702,'Comércio atacadista de resíduos e sucatas nãometálicos, exceto de papel e papelão','1'),(784,4687703,'Comércio atacadista de resíduos e sucatas metálicos','1'),(785,4689301,'Comércio atacadista de produtos da extração mineral, exceto combustíveis','1'),(786,4689302,'Comércio atacadista de fios e fibras têxteis beneficiados','1'),(787,4689399,'Comércio atacadista especializado em outros produtos intermediários não especificados anteriormente','1'),(788,4691500,'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios','1'),(789,4692300,'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários','1'),(790,4693100,'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agropecuários','1'),(791,4711301,'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  hipermercados','1'),(792,4711302,'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  supermercados','1'),(793,4712100,'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  minimercados, mercearias e armazéns','1'),(794,4713001,'Lojas de departamentos ou magazines','1'),(795,4713002,'Lojas de variedades, exceto lojas de departamentos ou magazines','1'),(796,4713003,'Lojas duty free de aeroportos internacionais','1'),(797,4721101,'Padaria e confeitaria com predominância de produção própria','1'),(798,4721102,'Padaria e confeitaria com predominância de revenda','1'),(799,4721103,'Comércio varejista de laticínios e frios','1'),(800,4721104,'Comércio varejista de doces, balas, bombons e semelhantes','1'),(801,4722901,'Comércio varejista de carnes  açougues','1'),(802,4722902,'Peixaria','1'),(803,4723700,'Comércio varejista de bebidas','1'),(804,4724500,'Comércio varejista de hortifrutigranjeiros','1'),(805,4729601,'Tabacaria','1'),(806,4729699,'Comércio varejista de produtos alimentícios em geral ou especializado em produtos alimentícios não especificados anteriormente','1'),(807,4731800,'Comércio varejista de combustíveis para veículos automotores','1'),(808,4732600,'Comércio varejista de lubrificantes','1'),(809,4741500,'Comércio varejista de tintas e materiais para pintura','1'),(810,4742300,'Comércio varejista de material elétrico','1'),(811,4743100,'Comércio varejista de vidros','1'),(812,4744001,'Comércio varejista de ferragens e ferramentas','1'),(813,4744002,'Comércio varejista de madeira e artefatos','1'),(814,4744003,'Comércio varejista de materiais hidráulicos','1'),(815,4744004,'Comércio varejista de cal, areia, pedra britada, tijolos e telhas','1'),(816,4744005,'Comércio varejista de materiais de construção não especificados anteriormente','1'),(817,4744099,'Comércio varejista de materiais de construção em geral','1'),(818,4751200,'Comércio varejista especializado de equipamentos e suprimentos de informática','1'),(819,4752100,'Comércio varejista especializado de equipamentos de telefonia e comunicação','1'),(820,4753900,'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo','1'),(821,4754701,'Comércio varejista de móveis','1'),(822,4754702,'Comércio varejista de artigos de colchoaria','1'),(823,4754703,'Comércio varejista de artigos de iluminação','1'),(824,4755501,'Comércio varejista de tecidos','1'),(825,4755502,'Comercio varejista de artigos de armarinho','1'),(826,4755503,'Comercio varejista de artigos de cama, mesa e banho','1'),(827,4756300,'Comércio varejista especializado de instrumentos musicais e acessórios','1'),(828,4757100,'Comércio varejista especializado de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação','1'),(829,4759801,'Comércio varejista de artigos de tapeçaria, cortinas e persianas','1'),(830,4759899,'Comércio varejista de outros artigos de uso doméstico não especificados anteriormente','1'),(831,4761001,'Comércio varejista de livros','1'),(832,4761002,'Comércio varejista de jornais e revistas','1'),(833,4761003,'Comércio varejista de artigos de papelaria','1'),(834,4762800,'Comércio varejista de discos, CDs, DVDs e fitas','1'),(835,4763601,'Comércio varejista de brinquedos e artigos recreativos','1'),(836,4763602,'Comércio varejista de artigos esportivos','1'),(837,4763603,'Comércio varejista de bicicletas e triciclos; peças e acessórios','1'),(838,4763604,'Comércio varejista de artigos de caça, pesca e camping','1'),(839,4763605,'Comércio varejista de embarcações e outros veículos recreativos; peças e acessórios','1'),(840,4771701,'Comércio varejista de produtos farmacêuticos, sem manipulação de fórmulas','1'),(841,4771702,'Comércio varejista de produtos farmacêuticos, com manipulação de fórmulas','1'),(842,4771703,'Comércio varejista de produtos farmacêuticos homeopáticos','1'),(843,4771704,'Comércio varejista de medicamentos veterinários','1'),(844,4772500,'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal','1'),(845,4773300,'Comércio varejista de artigos médicos e ortopédicos','1'),(846,4774100,'Comércio varejista de artigos de óptica','1'),(847,4781400,'Comércio varejista de artigos do vestuário e acessórios','1'),(848,4782201,'Comércio varejista de calçados','1'),(849,4782202,'Comércio varejista de artigos de viagem','1'),(850,4783101,'Comércio varejista de artigos de joalheria','1'),(851,4783102,'Comércio varejista de artigos de relojoaria','1'),(852,4784900,'Comércio varejista de gás liqüefeito de petróleo (GLP)','1'),(853,4785701,'Comércio varejista de antigüidades','1'),(854,4785799,'Comércio varejista de outros artigos usados','1'),(855,4789001,'Comércio varejista de suvenires, bijuterias e artesanatos','1'),(856,4789002,'Comércio varejista de plantas e flores naturais','1'),(857,4789003,'Comércio varejista de objetos de arte','1'),(858,4789004,'Comércio varejista de animais vivos e de artigos e alimentos para animais de estimação','1'),(859,4789005,'Comércio varejista de produtos saneantes domissanitários','1'),(860,4789006,'Comércio varejista de fogos de artifício e artigos pirotécnicos','1'),(861,4789007,'Comércio varejista de equipamentos para escritório','1'),(862,4789008,'Comércio varejista de artigos fotográficos e para filmagem','1'),(863,4789009,'Comércio varejista de armas e munições','1'),(864,4789099,'Comércio varejista de outros produtos não especificados anteriormente','1'),(865,4911600,'Transporte ferroviário de carga','1'),(866,4912401,'Transporte ferroviário de passageiros intermunicipal e interestadual','1'),(867,4912402,'Transporte ferroviário de passageiros municipal e em região metropolitana','1'),(868,4912403,'Transporte metroviário','1'),(869,4921301,'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal','1'),(870,4921302,'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal em região metropolitana','1'),(871,4922101,'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, exceto em região metropolitana','1'),(872,4922102,'Transporte rodoviário coletivo de passageiros, com itinerário fixo, interestadual','1'),(873,4922103,'Transporte rodoviário coletivo de passageiros, com itinerário fixo, internacional','1'),(874,4923001,'Serviço de táxi','1'),(875,4923002,'Serviço de transporte de passageiros  locação de automóveis com motorista','1'),(876,4924800,'Transporte escolar','1'),(877,4929901,'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, municipal','1'),(878,4929902,'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional','1'),(879,4929903,'Organização de excursões em veículos rodoviários próprios, municipal','1'),(880,4929904,'Organização de excursões em veículos rodoviários próprios, intermunicipal, interestadual e internacional','1'),(881,4929999,'Outros transportes rodoviários de passageiros não especificados anteriormente','1'),(882,4930201,'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, municipal','1'),(883,4930202,'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, intermunicipal, interestadual e internacional','1'),(884,4930203,'Transporte rodoviário de produtos perigosos','1'),(885,4930204,'Transporte rodoviário de mudanças','1'),(886,4940000,'Transporte dutoviário','1'),(887,4950700,'Trens turísticos, teleféricos e similares','1'),(888,5011401,'Transporte marítimo de cabotagem  Carga','1'),(889,5011402,'Transporte marítimo de cabotagem  passageiros','1'),(890,5012201,'Transporte marítimo de longo curso  Carga','1'),(891,5012202,'Transporte marítimo de longo curso  Passageiros','1'),(892,5021101,'Transporte por navegação interior de carga, municipal, exceto travessia','1'),(893,5021102,'Transporte por navegação interior de carga, intermunicipal, interestadual e internacional, exceto travessia','1'),(894,5022001,'Transporte por navegação interior de passageiros em linhas regulares, municipal, exceto travessia','1'),(895,5022002,'Transporte por navegação interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia','1'),(896,5030101,'Navegação de apoio marítimo','1'),(897,5030102,'Navegação de apoio portuário','1'),(898,5091201,'Transporte por navegação de travessia, municipal','1'),(899,5091202,'Transporte por navegação de travessia, intermunicipal','1'),(900,5099801,'Transporte aquaviário para passeios turísticos','1'),(901,5099899,'Outros transportes aquaviários não especificados anteriormente','1'),(902,5111100,'Transporte aéreo de passageiros regular','1'),(903,5112901,'Serviço de táxi aéreo e locação de aeronaves com tripulação','1'),(904,5112999,'Outros serviços de transporte aéreo de passageiros nãoregular','1'),(905,5120000,'Transporte aéreo de carga','1'),(906,5130700,'Transporte espacial','1'),(907,5211701,'Armazéns gerais  emissão de warrant','1'),(908,5211702,'Guardamóveis','1'),(909,5211799,'Depósitos de mercadorias para terceiros, exceto armazéns gerais e guardamóveis','1'),(910,5212500,'Carga e descarga','1'),(911,5221400,'Concessionárias de rodovias, pontes, túneis e serviços relacionados','1'),(912,5222200,'Terminais rodoviários e ferroviários','1'),(913,5223100,'Estacionamento de veículos','1'),(914,5229001,'Serviços de apoio ao transporte por táxi, inclusive centrais de chamada','1'),(915,5229002,'Serviços de reboque de veículos','1'),(916,5229099,'Outras atividades auxiliares dos transportes terrestres não especificadas anteriormente','1'),(917,5231101,'Administração da infraestrutura portuária','1'),(918,5231102,'Operações de terminais','1'),(919,5232000,'Atividades de agenciamento marítimo','1'),(920,5239700,'Atividades auxiliares dos transportes aquaviários não especificadas anteriormente','1'),(921,5240101,'Operação dos aeroportos e campos de aterrissagem','1'),(922,5240199,'Atividades auxiliares dos transportes aéreos, exceto operação dos aeroportos e campos de aterrissagem','1'),(923,5250801,'Comissaria de despachos','1'),(924,5250802,'Atividades de despachantes aduaneiros','1'),(925,5250803,'Agenciamento de cargas, exceto para o transporte marítimo','1'),(926,5250804,'Organização logística do transporte de carga','1'),(927,5250805,'Operador de transporte multimodal  OTM','1'),(928,5310501,'Atividades do Correio Nacional','1'),(929,5310502,'Atividades de franqueadas e permissionárias do Correio Nacional','1'),(930,5320201,'Serviços de malote não realizados pelo Correio Nacional','1'),(931,5320202,'Serviços de entrega rápida','1'),(932,5510801,'Hotéis','1'),(933,5510802,'Aparthotéis','1'),(934,5510803,'Motéis','1'),(935,5590601,'Albergues, exceto assistenciais','1'),(936,5590602,'Campings','1'),(937,5590603,'Pensões (alojamento)','1'),(938,5590699,'Outros alojamentos não especificados anteriormente','1'),(939,5611201,'Restaurantes e similares','1'),(940,5611202,'Bares e outros estabelecimentos especializados em servir bebidas','1'),(941,5611203,'Lanchonetes, casas de chá, de sucos e similares','1'),(942,5612100,'Serviços ambulantes de alimentação','1'),(943,5620101,'Fornecimento de alimentos preparados preponderantemente para empresas','1'),(944,5620102,'Serviços de alimentação para eventos e recepções  bufê','1'),(945,5620103,'Cantinas  serviços de alimentação privativos','1'),(946,5620104,'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar','1'),(947,5811500,'Edição de livros','1'),(948,5812300,'Edição de jornais','1'),(949,5813100,'Edição de revistas','1'),(950,5819100,'Edição de cadastros, listas e outros produtos gráficos','1'),(951,5821200,'Edição integrada à impressão de livros','1'),(952,5822100,'Edição integrada à impressão de jornais','1'),(953,5823900,'Edição integrada à impressão de revistas','1'),(954,5829800,'Edição integrada à impressão de cadastros, listas e outros produtos gráficos','1'),(955,5911101,'Estúdios cinematográficos','1'),(956,5911102,'Produção de filmes para publicidade','1'),(957,5911199,'Atividades de produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente','1'),(958,5912001,'Serviços de dublagem','1'),(959,5912002,'Serviços de mixagem sonora em produção audiovisual','1'),(960,5912099,'Atividades de pósprodução cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente','1'),(961,5913800,'Distribuição cinematográfica, de vídeo e de programas de televisão','1'),(962,5914600,'Atividades de exibição cinematográfica','1'),(963,5920100,'Atividades de gravação de som e de edição de música','1'),(964,6010100,'Atividades de rádio','1'),(965,6021700,'Atividades de televisão aberta','1'),(966,6022501,'Programadoras','1'),(967,6022502,'Atividades relacionadas à televisão por assinatura, exceto programadoras','1'),(968,6110801,'Serviços de telefonia fixa comutada  STFC','1'),(969,6110802,'Serviços de redes de transporte de telecomunicações  SRTT','1'),(970,6110803,'Serviços de comunicação multimídia  SCM','1'),(971,6110899,'Serviços de telecomunicações por fio não especificados anteriormente','1'),(972,6120501,'Telefonia móvel celular','1'),(973,6120502,'Serviço móvel especializado  SME','1'),(974,6120599,'Serviços de telecomunicações sem fio não especificados anteriormente','1'),(975,6130200,'Telecomunicações por satélite','1'),(976,6141800,'Operadoras de televisão por assinatura por cabo','1'),(977,6142600,'Operadoras de televisão por assinatura por microondas','1'),(978,6143400,'Operadoras de televisão por assinatura por satélite','1'),(979,6190601,'Provedores de acesso às redes de comunicações','1'),(980,6190602,'Provedores de voz sobre protocolo internet  VOIP','1'),(981,6190699,'Outras atividades de telecomunicações não especificadas anteriormente','1'),(982,6201500,'Desenvolvimento de programas de computador sob encomenda','1'),(983,6202300,'Desenvolvimento e licenciamento de programas de computador customizáveis','1'),(984,6203100,'Desenvolvimento e licenciamento de programas de computador nãocustomizáveis','1'),(985,6204000,'Consultoria em tecnologia da informação','1'),(986,6209100,'Suporte técnico, manutenção e outros serviços em tecnologia da informação','1'),(987,6311900,'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet','1'),(988,6319400,'Portais, provedores de conteúdo e outros serviços de informação na internet','1'),(989,6391700,'Agências de notícias','1'),(990,6399200,'Outras atividades de prestação de serviços de informação não especificadas anteriormente','1'),(991,6410700,'Banco Central','1'),(992,6421200,'Bancos comerciais','1'),(993,6422100,'Bancos múltiplos, com carteira comercial','1'),(994,6423900,'Caixas econômicas','1'),(995,6424701,'Bancos cooperativos','1'),(996,6424702,'Cooperativas centrais de crédito','1'),(997,6424703,'Cooperativas de crédito mútuo','1'),(998,6424704,'Cooperativas de crédito rural','1'),(999,6431000,'Bancos múltiplos, sem carteira comercial','1'),(1000,6432800,'Bancos de investimento','1'),(1001,6433600,'Bancos de desenvolvimento','1'),(1002,6434400,'Agências de fomento','1'),(1003,6435201,'Sociedades de crédito imobiliário','1'),(1004,6435202,'Associações de poupança e empréstimo','1'),(1005,6435203,'Companhias hipotecárias','1'),(1006,6436100,'Sociedades de crédito, financiamento e investimento  financeiras','1'),(1007,6437900,'Sociedades de crédito ao microempreendedor','1'),(1008,6440900,'Arrendamento mercantil','1'),(1009,6450600,'Sociedades de capitalização','1'),(1010,6461100,'Holdings de instituições financeiras','1'),(1011,6462000,'Holdings de instituições nãofinanceiras','1'),(1012,6463800,'Outras sociedades de participação, exceto holdings','1'),(1013,6470101,'Fundos de investimento, exceto previdenciários e imobiliários','1'),(1014,6470102,'Fundos de investimento previdenciários','1'),(1015,6470103,'Fundos de investimento imobiliários','1'),(1016,6491300,'Sociedades de fomento mercantil  factoring','1'),(1017,6492100,'Securitização de créditos','1'),(1018,6493000,'Administração de consórcios para aquisição de bens e direitos','1'),(1019,6499901,'Clubes de investimento','1'),(1020,6499902,'Sociedades de investimento','1'),(1021,6499903,'Fundo garantidor de crédito','1'),(1022,6499904,'Caixas de financiamento de corporações','1'),(1023,6499905,'Concessão de crédito pelas OSCIP','1'),(1024,6499999,'Outras atividades de serviços financeiros não especificadas anteriormente','1'),(1025,6511101,'Seguros de vida','1'),(1026,6511102,'Planos de auxíliofuneral','1'),(1027,6512000,'Seguros nãovida','1'),(1028,6520100,'Segurossaúde','1'),(1029,6530800,'Resseguros','1'),(1030,6541300,'Previdência complementar fechada','1'),(1031,6542100,'Previdência complementar aberta','1'),(1032,6550200,'Planos de saúde','1'),(1033,6611801,'Bolsa de valores','1'),(1034,6611802,'Bolsa de mercadorias','1'),(1035,6611803,'Bolsa de mercadorias e futuros','1'),(1036,6611804,'Administração de mercados de balcão organizados','1'),(1037,6612601,'Corretoras de títulos e valores mobiliários','1'),(1038,6612602,'Distribuidoras de títulos e valores mobiliários','1'),(1039,6612603,'Corretoras de câmbio','1'),(1040,6612604,'Corretoras de contratos de mercadorias','1'),(1041,6612605,'Agentes de investimentos em aplicações financeiras','1'),(1042,6613400,'Administração de cartões de crédito','1'),(1043,6619301,'Serviços de liquidação e custódia','1'),(1044,6619302,'Correspondentes de instituições financeiras','1'),(1045,6619303,'Representações de bancos estrangeiros','1'),(1046,6619304,'Caixas eletrônicos','1'),(1047,6619305,'Operadoras de cartões de débito','1'),(1048,6619399,'Outras atividades auxiliares dos serviços financeiros não especificadas anteriormente','1'),(1049,6621501,'Peritos e avaliadores de seguros','1'),(1050,6621502,'Auditoria e consultoria atuarial','1'),(1051,6622300,'Corretores e agentes de seguros, de planos de previdência complementar e de saúde','1'),(1052,6629100,'Atividades auxiliares dos seguros, da previdência complementar e dos planos de saúde não especificadas anteriormente','1'),(1053,6630400,'Atividades de administração de fundos por contrato ou comissão','1'),(1054,6810201,'Compra e venda de imóveis próprios','1'),(1055,6810202,'Aluguel de imóveis próprios','1'),(1056,6821801,'Corretagem na compra e venda e avaliação de imóveis','1'),(1057,6821802,'Corretagem no aluguel de imóveis','1'),(1058,6822600,'Gestão e administração da propriedade imobiliária','1'),(1059,6911701,'Serviços advocatícios','1'),(1060,6911702,'Atividades auxiliares da justiça','1'),(1061,6911703,'Agente de propriedade industrial','1'),(1062,6912500,'Cartórios','1'),(1063,6920601,'Atividades de contabilidade','1'),(1064,6920602,'Atividades de consultoria e auditoria contábil e tributária','1'),(1065,7020400,'Atividades de consultoria em gestão empresarial, exceto consultoria técnica específica','1'),(1066,7111100,'Serviços de arquitetura','1'),(1067,7112000,'Serviços de engenharia','1'),(1068,7119701,'Serviços de cartografia, topografia e geodésia','1'),(1069,7119702,'Atividades de estudos geológicos','1'),(1070,7119703,'Serviços de desenho técnico relacionados à arquitetura e engenharia','1'),(1071,7119704,'Serviços de perícia técnica relacionados à segurança do trabalho','1'),(1072,7119799,'Atividades técnicas relacionadas à engenharia e arquitetura não especificadas anteriormente','1'),(1073,7120100,'Testes e análises técnicas','1'),(1074,7210000,'Pesquisa e desenvolvimento experimental em ciências físicas e naturais','1'),(1075,7220700,'Pesquisa e desenvolvimento experimental em ciências sociais e humanas','1'),(1076,7311400,'Agências de publicidade','1'),(1077,7312200,'Agenciamento de espaços para publicidade, exceto em veículos de comunicação','1'),(1078,7319001,'Criação de estandes para feiras e exposições','1'),(1079,7319002,'Promoção de vendas','1'),(1080,7319003,'Marketing direto','1'),(1081,7319004,'Consultoria em publicidade','1'),(1082,7319099,'Outras atividades de publicidade não especificadas anteriormente','1'),(1083,7320300,'Pesquisas de mercado e de opinião pública','1'),(1084,7410201,'Design','1'),(1085,7410202,'Decoração de interiores','1'),(1086,7420001,'Atividades de produção de fotografias, exceto aérea e submarina','1'),(1087,7420002,'Atividades de produção de fotografias aéreas e submarinas','1'),(1088,7420003,'Laboratórios fotográficos','1'),(1089,7420004,'Filmagem de festas e eventos','1'),(1090,7420005,'Serviços de microfilmagem','1'),(1091,7490101,'Serviços de tradução, interpretação e similares','1'),(1092,7490102,'Escafandria e mergulho','1'),(1093,7490103,'Serviços de agronomia e de consultoria às atividades agrícolas e pecuárias','1'),(1094,7490104,'Atividades de intermediação e agenciamento de serviços e negócios em geral, exceto imobiliários','1'),(1095,7490105,'Agenciamento de profissionais para atividades esportivas, culturais e artísticas','1'),(1096,7490199,'Outras atividades profissionais, científicas e técnicas não especificadas anteriormente','1'),(1097,7500100,'Atividades veterinárias','1'),(1098,7711000,'Locação de automóveis sem condutor','1'),(1099,7719501,'Locação de embarcações sem tripulação, exceto para fins recreativos','1'),(1100,7719502,'Locação de aeronaves sem tripulação','1'),(1101,7719599,'Locação de outros meios de transporte não especificados anteriormente, sem condutor','1'),(1102,7721700,'Aluguel de equipamentos recreativos e esportivos','1'),(1103,7722500,'Aluguel de fitas de vídeo, DVDs e similares','1'),(1104,7723300,'Aluguel de objetos do vestuário, jóias e acessórios','1'),(1105,7729201,'Aluguel de aparelhos de jogos eletrônicos','1'),(1106,7729202,'Aluguel de móveis, utensílios e aparelhos de uso doméstico e pessoal; instrumentos musicais','1'),(1107,7729203,'Aluguel de material médico','1'),(1108,7729299,'Aluguel de outros objetos pessoais e domésticos não especificados anteriormente','1'),(1109,7731400,'Aluguel de máquinas e equipamentos agrícolas sem operador','1'),(1110,7732201,'Aluguel de máquinas e equipamentos para construção sem operador, exceto andaimes','1'),(1111,7732202,'Aluguel de andaimes','1'),(1112,7733100,'Aluguel de máquinas e equipamentos para escritório','1'),(1113,7739001,'Aluguel de máquinas e equipamentos para extração de minérios e petróleo, sem operador','1'),(1114,7739002,'Aluguel de equipamentos científicos, médicos e hospitalares, sem operador','1'),(1115,7739003,'Aluguel de palcos, coberturas e outras estruturas de uso temporário, exceto andaimes','1'),(1116,7739099,'Aluguel de outras máquinas e equipamentos comerciais e industriais não especificados anteriormente, sem operador','1'),(1117,7740300,'Gestão de ativos intangíveis nãofinanceiros','1'),(1118,7810800,'Seleção e agenciamento de mãodeobra','1'),(1119,7820500,'Locação de mãodeobra temporária','1'),(1120,7830200,'Fornecimento e gestão de recursos humanos para terceiros','1'),(1121,7911200,'Agências de viagens','1'),(1122,7912100,'Operadores turísticos','1'),(1123,7990200,'Serviços de reservas e outros serviços de turismo não especificados anteriormente','1'),(1124,8011101,'Atividades de vigilância e segurança privada','1'),(1125,8011102,'Serviços de adestramento de cães de guarda','1'),(1126,8012900,'Atividades de transporte de valores','1'),(1127,8020000,'Atividades de monitoramento de sistemas de segurança','1'),(1128,8030700,'Atividades de investigação particular','1'),(1129,8111700,'Serviços combinados para apoio a edifícios, exceto condomínios prediais','1'),(1130,8112500,'Condomínios prediais','1'),(1131,8121400,'Limpeza em prédios e em domicílios','1'),(1132,8122200,'Imunização e controle de pragas urbanas','1'),(1133,8129000,'Atividades de limpeza não especificadas anteriormente','1'),(1134,8130300,'Atividades paisagísticas','1'),(1135,8211300,'Serviços combinados de escritório e apoio administrativo','1'),(1136,8219901,'Fotocópias','1'),(1137,8219999,'Preparação de documentos e serviços especializados de apoio administrativo não especificados anteriormente','1'),(1138,8220200,'Atividades de teleatendimento','1'),(1139,8230001,'Serviços de organização de feiras, congressos, exposições e festas','1'),(1140,8230002,'Casas de festas e eventos','1'),(1141,8291100,'Atividades de cobrança e informações cadastrais','1'),(1142,8292000,'Envasamento e empacotamento sob contrato','1'),(1143,8299701,'Medição de consumo de energia elétrica, gás e água','1'),(1144,8299702,'Emissão de valesalimentação, valestransporte e similares','1'),(1145,8299703,'Serviços de gravação de carimbos, exceto confecção','1'),(1146,8299704,'Leiloeiros independentes','1'),(1147,8299705,'Serviços de levantamento de fundos sob contrato','1'),(1148,8299706,'Casas lotéricas','1'),(1149,8299707,'Salas de acesso à internet','1'),(1150,8299799,'Outras atividades de serviços prestados principalmente às empresas não especificadas anteriormente','1'),(1151,8411600,'Administração pública em geral','1'),(1152,8412400,'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais','1'),(1153,8413200,'Regulação das atividades econômicas','1'),(1154,8421300,'Relações exteriores','1'),(1155,8422100,'Defesa','1'),(1156,8423000,'Justiça','1'),(1157,8424800,'Segurança e ordem pública','1'),(1158,8425600,'Defesa Civil','1'),(1159,8430200,'Seguridade social obrigatória','1'),(1160,8511200,'Educação infantil  creche','1'),(1161,8512100,'Educação infantil  préescola','1'),(1162,8513900,'Ensino fundamental','1'),(1163,8520100,'Ensino médio','1'),(1164,8531700,'Educação superior  graduação','1'),(1165,8532500,'Educação superior  graduação e pósgraduação','1'),(1166,8533300,'Educação superior  pósgraduação e extensão','1'),(1167,8541400,'Educação profissional de nível técnico','1'),(1168,8542200,'Educação profissional de nível tecnológico','1'),(1169,8550301,'Administração de caixas escolares','1'),(1170,8550302,'Atividades de apoio à educação, exceto caixas escolares','1'),(1171,8591100,'Ensino de esportes','1'),(1172,8592901,'Ensino de dança','1'),(1173,8592902,'Ensino de artes cênicas, exceto dança','1'),(1174,8592903,'Ensino de música','1'),(1175,8592999,'Ensino de arte e cultura não especificado anteriormente','1'),(1176,8593700,'Ensino de idiomas','1'),(1177,8599601,'Formação de condutores','1'),(1178,8599602,'Cursos de pilotagem','1'),(1179,8599603,'Treinamento em informática','1'),(1180,8599604,'Treinamento em desenvolvimento profissional e gerencial','1'),(1181,8599605,'Cursos preparatórios para concursos','1'),(1182,8599699,'Outras atividades de ensino não especificadas anteriormente','1'),(1183,8610101,'Atividades de atendimento hospitalar, exceto prontosocorro e unidades para atendimento a urgências','1'),(1184,8610102,'Atividades de atendimento em prontosocorro e unidades hospitalares para atendimento a urgências','1'),(1185,8621601,'UTI móvel','1'),(1186,8621602,'Serviços móveis de atendimento a urgências, exceto por UTI móvel','1'),(1187,8622400,'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências','1'),(1188,8630501,'Atividade médica ambulatorial com recursos para realização de procedimentos cirúrgicos','1'),(1189,8630502,'Atividade médica ambulatorial com recursos para realização de exames complementares','1'),(1190,8630503,'Atividade médica ambulatorial restrita a consultas','1'),(1191,8630504,'Atividade odontológica com recursos para realização de procedimentos cirúrgicos','1'),(1192,8630505,'Atividade odontológica sem recursos para realização de procedimentos cirúrgicos','1'),(1193,8630506,'Serviços de vacinação e imunização humana','1'),(1194,8630507,'Atividades de reprodução humana assistida','1'),(1195,8630599,'Atividades de atenção ambulatorial não especificadas anteriormente','1'),(1196,8640201,'Laboratórios de anatomia patológica e citológica','1'),(1197,8640202,'Laboratórios clínicos','1'),(1198,8640203,'Serviços de diálise e nefrologia','1'),(1199,8640204,'Serviços de tomografia','1'),(1200,8640205,'Serviços de diagnóstico por imagem com uso de radiação ionizante, exceto tomografia','1'),(1201,8640206,'Serviços de ressonância magnética','1'),(1202,8640207,'Serviços de diagnóstico por imagem sem uso de radiação ionizante, exceto ressonância magnética','1'),(1203,8640208,'Serviços de diagnóstico por registro gráfico  ECG, EEG e outros exames análogos','1'),(1204,8640209,'Serviços de diagnóstico por métodos ópticos  endoscopia e outros exames análogos','1'),(1205,8640210,'Serviços de quimioterapia','1'),(1206,8640211,'Serviços de radioterapia','1'),(1207,8640212,'Serviços de hemoterapia','1'),(1208,8640213,'Serviços de litotripsia','1'),(1209,8640214,'Serviços de bancos de células e tecidos humanos','1'),(1210,8640299,'Atividades de serviços de complementação diagnóstica e terapêutica não especificadas anteriormente','1'),(1211,8650001,'Atividades de enfermagem','1'),(1212,8650002,'Atividades de profissionais da nutrição','1'),(1213,8650003,'Atividades de psicologia e psicanálise','1'),(1214,8650004,'Atividades de fisioterapia','1'),(1215,8650005,'Atividades de terapia ocupacional','1'),(1216,8650006,'Atividades de fonoaudiologia','1'),(1217,8650007,'Atividades de terapia de nutrição enteral e parenteral','1'),(1218,8650099,'Atividades de profissionais da área de saúde não especificadas anteriormente','1'),(1219,8660700,'Atividades de apoio à gestão de saúde','1'),(1220,8690901,'Atividades de práticas integrativas e complementares em saúde humana','1'),(1221,8690902,'Atividades de bancos de leite humano','1'),(1222,8690999,'Outras atividades de atenção à saúde humana não especificadas anteriormente','1'),(1223,8711501,'Clínicas e residências geriátricas','1'),(1224,8711502,'Instituições de longa permanência para idosos','1'),(1225,8711503,'Atividades de assistência a deficientes físicos, imunodeprimidos e convalescentes','1'),(1226,8711504,'Centros de apoio a pacientes com câncer e com AIDS','1'),(1227,8711505,'Condomínios residenciais para idosos','1'),(1228,8712300,'Atividades de fornecimento de infraestrutura de apoio e assistência a paciente no domicílio','1'),(1229,8720401,'Atividades de centros de assistência psicossocial','1'),(1230,8720499,'Atividades de assistência psicossocial e à saúde a portadores de distúrbios psíquicos, deficiência mental e dependência química não especificadas ante','1'),(1231,8730101,'Orfanatos','1'),(1232,8730102,'Albergues assistenciais','1'),(1233,8730199,'Atividades de assistência social prestadas em residências coletivas e particulares não especificadas anteriormente','1'),(1234,8800600,'Serviços de assistência social sem alojamento','1'),(1235,9001901,'Produção teatral','1'),(1236,9001902,'Produção musical','1'),(1237,9001903,'Produção de espetáculos de dança','1'),(1238,9001904,'Produção de espetáculos circenses, de marionetes e similares','1'),(1239,9001905,'Produção de espetáculos de rodeios, vaquejadas e similares','1'),(1240,9001906,'Atividades de sonorização e de iluminação','1'),(1241,9001999,'Artes cênicas, espetáculos e atividades complementares não especificados anteriormente','1'),(1242,9002701,'Atividades de artistas plásticos, jornalistas independentes e escritores','1'),(1243,9002702,'Restauração de obras de arte','1'),(1244,9003500,'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas','1'),(1245,9101500,'Atividades de bibliotecas e arquivos','1'),(1246,9102301,'Atividades de museus e de exploração de lugares e prédios históricos e atrações similares','1'),(1247,9102302,'Restauração e conservação de lugares e prédios históricos','1'),(1248,9103100,'Atividades de jardins botânicos, zoológicos, parques nacionais, reservas ecológicas e áreas de proteção ambiental','1'),(1249,9200301,'Casas de bingo','1'),(1250,9200302,'Exploração de apostas em corridas de cavalos','1'),(1251,9200399,'Exploração de jogos de azar e apostas não especificados anteriormente','1'),(1252,9311500,'Gestão de instalações de esportes','1'),(1253,9312300,'Clubes sociais, esportivos e similares','1'),(1254,9313100,'Atividades de condicionamento físico','1'),(1255,9319101,'Produção e promoção de eventos esportivos','1'),(1256,9319199,'Outras atividades esportivas não especificadas anteriormente','1'),(1257,9321200,'Parques de diversão e parques temáticos','1'),(1258,9329801,'Discotecas, danceterias, salões de dança e similares','1'),(1259,9329802,'Exploração de boliches','1'),(1260,9329803,'Exploração de jogos de sinuca, bilhar e similares','1'),(1261,9329804,'Exploração de jogos eletrônicos recreativos','1'),(1262,9329899,'Outras atividades de recreação e lazer não especificadas anteriormente','1'),(1263,9411100,'Atividades de organizações associativas patronais e empresariais','1'),(1264,9412000,'Atividades de organizações associativas profissionais','1'),(1265,9420100,'Atividades de organizações sindicais','1'),(1266,9430800,'Atividades de associações de defesa de direitos sociais','1'),(1267,9491000,'Atividades de organizações religiosas','1'),(1268,9492800,'Atividades de organizações políticas','1'),(1269,9493600,'Atividades de organizações associativas ligadas à cultura e à arte','1'),(1270,9499500,'Atividades associativas não especificadas anteriormente','1'),(1271,9511800,'Reparação e manutenção de computadores e de equipamentos periféricos','1'),(1272,9512600,'Reparação e manutenção de equipamentos de comunicação','1'),(1273,9521500,'Reparação e manutenção de equipamentos eletroeletrônicos de uso pessoal e doméstico','1'),(1274,9529101,'Reparação de calçados, bolsas e artigos de viagem','1'),(1275,9529102,'Chaveiros','1'),(1276,9529103,'Reparação de relógios','1'),(1277,9529104,'Reparação de bicicletas, triciclos e outros veículos nãomotorizados','1'),(1278,9529105,'Reparação de artigos do mobiliário','1'),(1279,9529106,'Reparação de jóias','1'),(1280,9529199,'Reparação e manutenção de outros objetos e equipamentos pessoais e domésticos não especificados anteriormente','1'),(1281,9601701,'Lavanderias','1'),(1282,9601702,'Tinturarias','1'),(1283,9601703,'Toalheiros','1'),(1284,9602501,'Cabeleireiros','1'),(1285,9602502,'Outras atividades de tratamento de beleza','1'),(1286,9603301,'Gestão e manutenção de cemitérios','1'),(1287,9603302,'Serviços de cremação','1'),(1288,9603303,'Serviços de sepultamento','1'),(1289,9603304,'Serviços de funerárias','1'),(1290,9603305,'Serviços de somatoconservação','1'),(1291,9603399,'Atividades funerárias e serviços relacionados não especificados anteriormente','1'),(1292,9609201,'Clínicas de estética e similares','1'),(1293,9609202,'Agências matrimoniais','1'),(1294,9609203,'Alojamento, higiene e embelezamento de animais','1'),(1295,9609204,'Exploração de máquinas de serviços pessoais acionadas por moeda','1'),(1296,9609299,'Outras atividades de serviços pessoais não especificadas anteriormente','1'),(1297,9700500,'Serviços domésticos','1'),(1298,9900800,'Organismos internacionais e outras instituições extraterritoriais','1');
/*!40000 ALTER TABLE `atividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(250) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'banco abc brasil s.a.','246'),(2,'banco abn amro real s.a.','356'),(3,'banco alfa s.a.','025'),(4,'banco alvorada s.a.','641'),(5,'banco banerj s.a.','029'),(6,'banco banestado s.a.','038'),(7,'banco barclays s.a.','740'),(8,'banco bbm s.a.','107'),(9,'banco beg s.a.','031'),(10,'banco bem s.a.','036'),(11,'banco bm&f de serviços de liquidação e custódia s.a','096'),(12,'banco bmc s.a.','394'),(13,'banco bmg s.a.','318'),(14,'banco bnp paribas brasil s.a.','752'),(15,'banco boavista interatlântico s.a.','248'),(16,'banco bradesco s.a.','237'),(17,'banco brascan s.a.','225'),(18,'banco cacique s.a.','263'),(19,'banco calyon brasil s.a.','222'),(20,'banco cargill s.a.','040'),(21,'banco citibank s.a.','745'),(22,'banco comercial e de investimento sudameris s.a.','215'),(23,'banco cooperativo do brasil s.a. – bancoob','756'),(24,'banco cooperativo sicredi s.a. – bansicredi','748'),(25,'banco credit suisse (brasil) s.a.','505'),(26,'banco cruzeiro do sul s.a.','229'),(27,'banco da amazônia s.a.','003'),(28,'banco daycoval s.a.','707'),(29,'banco de pernambuco s.a. – bandepe','024'),(30,'banco de tokyo-mitsubishi ufj brasil s.a.','456'),(31,'banco dibens s.a.','214'),(32,'banco do brasil s.a.','001'),(33,'banco do estado de santa catarina s.a.','027'),(34,'banco do estado de sergipe s.a.','047'),(35,'banco do estado do pará s.a.','037'),(36,'banco do estado do rio grande do sul s.a.','041'),(37,'banco do nordeste do brasil s.a.','004'),(38,'banco fator s.a.','265'),(39,'banco fibra s.a.','224'),(40,'banco finasa s.a.','175'),(41,'banco fininvest s.a.','252'),(42,'banco ge capital s.a.','233'),(43,'banco gerdau s.a.','734'),(44,'banco guanabara s.a.','612'),(45,'banco ibi s.a. banco múltiplo','063'),(46,'banco industrial do brasil s.a.','604'),(47,'banco industrial e comercial s.a.','320'),(48,'banco indusval s.a.','653'),(49,'banco intercap s.a.','630'),(50,'banco investcred unibanco s.a.','249'),(51,'banco itaú bba s.a.','184-8'),(52,'banco itaú holding financeira s.a.','652'),(53,'banco itaú s.a.','341'),(54,'banco itaúbank s.a','479'),(55,'banco j. p. morgan s.a.','376'),(56,'banco j. safra s.a.','074'),(57,'banco luso brasileiro s.a.','600'),(58,'banco mercantil de são paulo s.a.','392'),(59,'banco mercantil do brasil s.a.','389'),(60,'banco merrill lynch de investimentos s.a.','755'),(61,'banco nossa caixa s.a.','151'),(62,'banco opportunity s.a.','045'),(63,'banco panamericano s.a.','623'),(64,'banco paulista s.a.','611'),(65,'banco pine s.a.','643'),(66,'banco prosper s.a.','638'),(67,'banco rabobank international brasil s.a.','747'),(68,'banco rendimento s.a.','633'),(69,'banco rural mais s.a.','072'),(70,'banco rural s.a.','453'),(71,'banco safra s.a.','422'),(72,'banco santander banespa s.a.','008'),(73,'banco schahin s.a.','250'),(74,'banco simples s.a.','749'),(75,'banco société générale brasil s.a.','366'),(76,'banco sofisa s.a.','637'),(77,'banco sudameris brasil s.a.','347'),(78,'banco sumitomo mitsui brasileiro s.a.','464'),(79,'banco triângulo s.a.','634'),(80,'banco ubs pactual s.a.','208'),(81,'banco ubs s.a.','247'),(82,'banco único s.a.','116'),(83,'banco votorantim s.a.','655'),(84,'banco vr s.a.','610'),(85,'banco westlb do brasil s.a.','370'),(86,'banestes s.a. banco do estado do espírito santo','021'),(87,'banif-banco internacional do funchal (brasil)s.a.','719'),(88,'bankpar banco multiplo s.a.','204'),(89,'bb banco popular do brasil s.a.','073-6'),(90,'bpn brasil banco mútiplo s.a.','069-8'),(91,'brb – banco de brasília s.a.','070'),(92,'caixa econômica federal','104'),(93,'citibank n.a.','477'),(94,'deutsche bank s.a. – banco alemão','487'),(95,'dresdner bank brasil s.a. – banco múltiplo','751'),(96,'dresdner bank lateinamerika aktiengesellschaft','210'),(97,'hipercard banco múltiplo s.a.','062'),(98,'hsbc bank brasil s.a. – banco múltiplo','399'),(99,'ing bank n.v.','492'),(100,'jpmorgan chase bank','488'),(101,'lemon bank banco múltiplo s.a.','065'),(102,'unibanco – união de bancos brasileiros s.a.','409'),(103,'unicard banco múltiplo s.a.','230');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartao`
--

DROP TABLE IF EXISTS `cartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartao` (
  `cod_cartao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cartao` varchar(20) DEFAULT NULL,
  `taxa_cartao` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`cod_cartao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartao`
--

LOCK TABLES `cartao` WRITE;
/*!40000 ALTER TABLE `cartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_custo`
--

DROP TABLE IF EXISTS `centro_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro_custo` (
  `id_centro_custo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) unsigned NOT NULL,
  `cod_centro` varchar(6) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `sintetico` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_centro_custo`),
  UNIQUE KEY `idx_cod_centro` (`cod_centro`),
  KEY `idx_id_empresa` (`id_empresa`),
  CONSTRAINT `fk_id_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_custo`
--

LOCK TABLES `centro_custo` WRITE;
/*!40000 ALTER TABLE `centro_custo` DISABLE KEYS */;
/*!40000 ALTER TABLE `centro_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfop`
--

DROP TABLE IF EXISTS `cfop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfop` (
  `cfop_natureza` varchar(4) NOT NULL,
  `cfop_descricao` text,
  PRIMARY KEY (`cfop_natureza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfop`
--

LOCK TABLES `cfop` WRITE;
/*!40000 ALTER TABLE `cfop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque_ncomp`
--

DROP TABLE IF EXISTS `cheque_ncomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque_ncomp` (
  `cod_cheque_ncomp` int(11) NOT NULL AUTO_INCREMENT,
  `num_cheque_ncomp` int(11) DEFAULT NULL,
  `data_cheque_ncomp` date DEFAULT NULL,
  `vlr_cheque_ncomp` double(11,2) DEFAULT NULL,
  `mes_ano_cheque_ncomp` varchar(7) DEFAULT NULL,
  `historico_cheque_ncomp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_cheque_ncomp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque_ncomp`
--

LOCK TABLES `cheque_ncomp` WRITE;
/*!40000 ALTER TABLE `cheque_ncomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheque_ncomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `estados_cod_estados` int(11) DEFAULT NULL,
  `cod_cidades` int(11) DEFAULT NULL,
  `nome` varchar(72) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,1,'acrelândia','69945000'),(1,2,'assis brasil','69935000'),(1,3,'brasiléia','69932000'),(1,4,'bujari','69923000'),(1,5,'capixaba','69922000'),(1,6,'cruzeiro do sul','69980000'),(1,7,'epitaciolândia','69934000'),(1,8,'feijó','69960000'),(1,9,'jordão','69975000'),(1,10,'mâncio lima','69990000'),(1,11,'manoel urbano','69950000'),(1,12,'marechal thaumaturgo','69983000'),(1,13,'plácido de castro','69928000'),(1,14,'porto acre','69921000'),(1,15,'porto walter','69982000'),(1,16,'rio branco','00000000'),(1,17,'rodrigues alves','69985000'),(1,18,'santa rosa','69955000'),(1,19,'sena madureira','69940000'),(1,20,'senador guiomard','69925000'),(1,21,'tarauacá','69970000'),(1,22,'xapuri','69930000'),(1,11059,'campinas','69929000'),(2,23,'água branca','57490000'),(2,24,'alazão','57317000'),(2,25,'alecrim','57405000'),(2,26,'anadia','57660000'),(2,27,'anel','57710000'),(2,28,'anum novo','57610100'),(2,29,'anum velho','57610200'),(2,30,'arapiraca','00000000'),(2,31,'atalaia','57690000'),(2,32,'baixa da onça','57317100'),(2,33,'baixa do capim','57317200'),(2,34,'bálsamo','57317300'),(2,35,'bananeiras','57317400'),(2,36,'barra de santo antônio','57925000'),(2,37,'barra de são miguel','57180000'),(2,38,'barra do bonifácio','57610300'),(2,39,'barra grande','57958000'),(2,40,'batalha','57420000'),(2,41,'batingas','57317500'),(2,42,'belém','57630000'),(2,43,'belo monte','57435000'),(2,44,'boa sorte','57610400'),(2,45,'boa vista','57317600'),(2,46,'boa vista','57610500'),(2,47,'boca da mata','57680000'),(2,48,'bom jardim','57317700'),(2,49,'bonifácio','57610600'),(2,50,'branquinha','57830000'),(2,51,'cacimbinhas','57570000'),(2,52,'cajarana','57317800'),(2,53,'cajueiro','57770000'),(2,54,'caldeirões de cima','57614000'),(2,55,'camadanta','57318000'),(2,56,'campestre','57968000'),(2,57,'campo alegre','57250000'),(2,58,'campo grande','57350000'),(2,59,'canaã','57317900'),(2,60,'canafístula','57613000'),(2,61,'canapi','57530000'),(2,62,'canastra','57895000'),(2,63,'cangandu','57318100'),(2,64,'capela','57780000'),(2,65,'carneiros','57535000'),(2,66,'carrasco','57318200'),(2,67,'chã preta','57760000'),(2,68,'coité do nóia','57325000'),(2,69,'colônia leopoldina','57975000'),(2,70,'coqueiro seco','57140000'),(2,71,'coruripe','57230000'),(2,72,'coruripe da cal','57610900'),(2,73,'craíbas','57320000'),(2,74,'delmiro gouveia','57480000'),(2,75,'dois riachos','57560000'),(2,76,'entremontes','57465000'),(2,77,'estrela de alagoas','57625000'),(2,78,'feira grande','57340000'),(2,79,'feliz deserto','57220000'),(2,81,'flexeiras','57995000'),(2,83,'gaspar','57318300'),(2,84,'girau do ponciano','57360000'),(2,85,'ibateguara','57890000'),(2,86,'igaci','57620000'),(2,87,'igreja nova','57280000'),(2,88,'inhapi','57545000'),(2,89,'jacaré dos homens','57430000'),(2,90,'jacuípe','57960000'),(2,91,'japaratinga','57950000'),(2,92,'jaramataia','57425000'),(2,93,'jenipapo','57318400'),(2,94,'joaquim gomes','57980000'),(2,95,'jundiá','57965000'),(2,96,'junqueiro','57270000'),(2,97,'lagoa da areia','57611200'),(2,98,'lagoa da canoa','57330000'),(2,99,'lagoa da pedra','57318500'),(2,100,'lagoa dantas','57611500'),(2,101,'lagoa do caldeirão','57611300'),(2,102,'lagoa do canto','57611400'),(2,103,'lagoa do exú','57611600'),(2,104,'lagoa do rancho','57318600'),(2,105,'lagoa do rancho','57611700'),(2,106,'lajes do caldeirão','57611800'),(2,107,'laranjal','57318700'),(2,108,'limoeiro de anadia','57260000'),(2,109,'maceió','00000000'),(2,110,'major isidoro','57580000'),(2,111,'mar vermelho','57730000'),(2,112,'maragogi','57955000'),(2,113,'maravilha','57520000'),(2,114,'marechal deodoro','57160000'),(2,115,'maribondo','57670000'),(2,116,'massaranduba','57318800'),(2,117,'mata grande','57540000'),(2,118,'matriz de camaragibe','57910000'),(2,119,'messias','57990000'),(2,120,'minador do negrão','57615000'),(2,121,'monteirópolis','57440000'),(2,122,'moreira','57611900'),(2,123,'munguba','57850000'),(2,124,'murici','57820000'),(2,125,'novo lino','57970000'),(2,126,'olho d\'água grande','57390000'),(2,127,'olho d\'água das flores','57442000'),(2,128,'olho d\'água de cima','57318900'),(2,129,'olho d\'água do casado','57470000'),(2,130,'olho d\'água dos dandanhas','57319000'),(2,131,'olivença','57550000'),(2,132,'ouro branco','57525000'),(2,133,'palestina','57410000'),(2,134,'palmeira de fora','57613500'),(2,135,'palmeira dos índios','00000000'),(2,136,'pão de açúcar','57400000'),(2,137,'pariconha','57475000'),(2,138,'paripueira','57935000'),(2,139,'passo de camaragibe','57930000'),(2,140,'pau d\'arco','57319100'),(2,141,'pau ferro','57319200'),(2,142,'paulo jacinto','57740000'),(2,143,'penedo','57200000'),(2,144,'piaçabuçu','57210000'),(2,145,'pilar','57150000'),(2,146,'pindoba','57720000'),(2,147,'piranhas','57460000'),(2,148,'poção','57319300'),(2,149,'poço da pedra','57319400'),(2,150,'poço das trincheiras','57510000'),(2,151,'porto calvo','57900000'),(2,152,'porto de pedras','57945000'),(2,153,'porto real do colégio','57290000'),(2,154,'poxim','57235000'),(2,155,'quebrangulo','57750000'),(2,156,'riacho do sertão','57585000'),(2,157,'riacho fundo de cima','57611000'),(2,158,'rio largo','57100000'),(2,159,'rocha cavalcante','57810000'),(2,160,'roteiro','57246000'),(2,161,'santa efigênia','57790000'),(2,162,'santa luzia do norte','57130000'),(2,163,'santana do ipanema','57500000'),(2,164,'santana do mundaú','57840000'),(2,165,'santo antônio','57611100'),(2,166,'são brás','57380000'),(2,167,'são josé da laje','57860000'),(2,168,'são josé da tapera','57445000'),(2,169,'são luís do quitunde','57920000'),(2,170,'são miguel dos campos','57240000'),(2,171,'são miguel dos milagres','57940000'),(2,172,'são sebastião','57275000'),(2,173,'sapucaia','57319500'),(2,174,'sapucaia','57693000'),(2,175,'satuba','57120000'),(2,176,'senador rui palmeira','57515000'),(2,177,'serra da mandioca','57612000'),(2,178,'serra do são josé','57612500'),(2,179,'taboleiro do pinto','57110000'),(2,180,'taboquinha','57319600'),(2,181,'tanque d\'arca','57635000'),(2,182,'taquarana','57640000'),(2,183,'tatuamunha','57948000'),(2,184,'teotônio vilela','57265000'),(2,185,'traipu','57370000'),(2,186,'união dos palmares','57800000'),(2,187,'usina camaçari','57233000'),(2,188,'viçosa','57700000'),(2,189,'vila aparecida','57319700'),(2,190,'vila são francisco','57319800'),(2,10089,'jequiá da praia','57244000'),(3,278,'abacate da pedreira','68912350'),(3,279,'serra do navio','68948000'),(3,280,'amapá','68950000'),(3,281,'amapari','68945000'),(3,282,'ambé','68912000'),(3,283,'aporema','68994000'),(3,284,'ariri','68912050'),(3,285,'bailique','68913000'),(3,286,'boca do jari','68923000'),(3,287,'calçoene','68960000'),(3,288,'cantanzal','68912800'),(3,289,'carmo','68912100'),(3,290,'clevelândia do norte','68985000'),(3,291,'corre água','68912600'),(3,292,'cunani','68965000'),(3,293,'curiaú','68912300'),(3,294,'cutias','68973000'),(3,295,'fazendinha','68912250'),(3,296,'ferreira gomes','68915000'),(3,297,'fortaleza','68939000'),(3,298,'gaivota','68912150'),(3,299,'gurupora','68912650'),(3,300,'igarapé do lago','68935000'),(3,301,'ilha de santana','68937000'),(3,302,'inajá','68912750'),(3,303,'itaubal','68976000'),(3,304,'laranjal do jari','68920000'),(3,305,'livramento do pacuí','68912450'),(3,306,'lourenço','68970000'),(3,307,'macapá','00000000'),(3,308,'mazagão','68940000'),(3,309,'mazagão velho','68943000'),(3,310,'oiapoque','68980000'),(3,311,'paredão','68917000'),(3,312,'porto grande','68997000'),(3,313,'pracuúba','68918000'),(3,314,'santa luzia do pacuí','68912530'),(3,315,'santa maria','68912200'),(3,316,'santana','68925000'),(3,317,'são joaquim do pacuí','68912500'),(3,318,'são sebastião do livramento','68912550'),(3,319,'são tomé','68912700'),(3,320,'serra do navio','68914000'),(3,321,'sucuriju','68958000'),(3,322,'tartarugalzinho','68990000'),(3,323,'vila velha','68988000'),(3,324,'vitória do jari','68924000'),(4,191,'alvarães','69475000'),(4,192,'amatari','69105000'),(4,193,'amaturá','69620000'),(4,194,'anamã','69445000'),(4,195,'anori','69440000'),(4,196,'apuí','69265000'),(4,197,'ariaú','69165000'),(4,198,'atalaia do norte','69650000'),(4,199,'augusto montenegro','69182000'),(4,200,'autazes','69240000'),(4,201,'axinim','69210000'),(4,202,'badajós','69452000'),(4,203,'balbina','69736000'),(4,204,'barcelos','69700000'),(4,205,'barreirinha','69160000'),(4,206,'benjamin constant','69630000'),(4,207,'beruri','69430000'),(4,208,'boa vista do ramos','69195000'),(4,209,'boca do acre','69850000'),(4,210,'borba','69200000'),(4,211,'caapiranga','69410000'),(4,212,'cametá','69162000'),(4,213,'canumã','69212000'),(4,214,'canutama','69820000'),(4,215,'carauari','69500000'),(4,216,'careiro','69250000'),(4,217,'careiro da várzea','69255000'),(4,218,'carvoeiro','69725000'),(4,219,'coari','69460000'),(4,220,'codajás','69450000'),(4,221,'cucuí','69765000'),(4,222,'eirunepé','69880000'),(4,223,'envira','69870000'),(4,224,'floriano peixoto','69855000'),(4,225,'fonte boa','69670000'),(4,226,'freguesia do andirá','69170000'),(4,227,'guajará','69895000'),(4,228,'humaitá','69800000'),(4,229,'iauaretê','69790000'),(4,230,'içanã','69760000'),(4,231,'ipixuna','69890000'),(4,232,'iranduba','69405000'),(4,233,'itacoatiara','69100000'),(4,234,'itamarati','69510000'),(4,235,'itapiranga','69120000'),(4,236,'japurá','69495000'),(4,237,'juruá','69520000'),(4,238,'jutaí','69660000'),(4,239,'lábrea','69830000'),(4,240,'lago preto','69196000'),(4,241,'manacapuru','69400000'),(4,242,'manaquiri','69435000'),(4,243,'manaus','00000000'),(4,244,'manicoré','69280000'),(4,245,'maraã','69490000'),(4,246,'massauari','69197000'),(4,247,'maués','69190000'),(4,248,'mocambo','69158000'),(4,249,'moura','69720000'),(4,250,'murutinga','69245000'),(4,251,'nhamundá','69140000'),(4,252,'nova olinda do norte','69230000'),(4,253,'novo airão','69730000'),(4,254,'novo aripuanã','69260000'),(4,255,'osório da fonseca','69192000'),(4,256,'parintins','00000000'),(4,257,'pauini','69860000'),(4,258,'pedras','69175000'),(4,259,'presidente figueiredo','69735000'),(4,260,'repartimento','69193000'),(4,261,'rio preto da eva','69115000'),(4,262,'santa isabel do rio negro','69740000'),(4,263,'santa rita','69610000'),(4,264,'santo antônio do içá','69680000'),(4,265,'são felipe','69752000'),(4,266,'são gabriel da cachoeira','69750000'),(4,267,'são paulo de olivença','69600000'),(4,268,'são sebastião do uatumã','69135000'),(4,269,'silves','69110000'),(4,270,'tabatinga','69640000'),(4,271,'tapauá','69480000'),(4,272,'tefé','69470000'),(4,273,'tonantins','69685000'),(4,274,'uarini','69485000'),(4,275,'urucará','69130000'),(4,276,'urucurituba','69180000'),(4,277,'vila pitinga','69737000'),(4,10471,'cacau pirêra','69408000'),(5,325,'abadia','48320000'),(5,326,'abaíra','46690000'),(5,327,'abaré','48680000'),(5,328,'abelhas','45112000'),(5,329,'abóbora','48912000'),(5,330,'abrantes','42840000'),(5,331,'acajutiba','48360000'),(5,332,'açu da torre','48288000'),(5,333,'açudina','47645000'),(5,334,'acupe','44218000'),(5,335,'adustina','48435000'),(5,336,'afligidos','44338000'),(5,337,'afrânio peixoto','46965000'),(5,338,'água doce','45295000'),(5,339,'água fria','48170000'),(5,340,'águas do paulista','47505000'),(5,341,'aiquara','45220000'),(5,342,'alagoinhas','00000000'),(5,343,'alcobaça','45990000'),(5,344,'alegre','46203000'),(5,345,'algodão','45582000'),(5,346,'algodões','48832000'),(5,347,'almadina','45640000'),(5,348,'alto bonito','44805000'),(5,349,'amado bahia','48282000'),(5,350,'amaniú','47380000'),(5,351,'amargosa','45300000'),(5,352,'amélia rodrigues','44230000'),(5,353,'américa dourada','44910000'),(5,354,'américo alves','47370000'),(5,355,'anagé','45180000'),(5,356,'andaraí','46830000'),(5,357,'andorinha','48990000'),(5,358,'angical','47960000'),(5,359,'angico','44633000'),(5,360,'anguera','44670000'),(5,361,'antas','48420000'),(5,362,'antônio cardoso','44180000'),(5,363,'antônio gonçalves','44780000'),(5,364,'aporá','48350000'),(5,365,'apuarema','45355000'),(5,366,'araçás','48108000'),(5,367,'aracatu','46130000'),(5,368,'araci','48760000'),(5,369,'aramari','48130000'),(5,370,'arapiranga','46177000'),(5,371,'arataca','45695000'),(5,372,'aratuípe','44490000'),(5,373,'areias','42847000'),(5,374,'arembepe','42835000'),(5,375,'argoim','44525000'),(5,376,'argolo','45925000'),(5,377,'aribice','48504000'),(5,378,'aritaguá','45663000'),(5,379,'aurelino leal','45675000'),(5,380,'baianópolis','47830000'),(5,381,'baixa do palmeira','44535000'),(5,382,'baixa grande','44620000'),(5,383,'baixão','45212000'),(5,384,'baixinha','45313000'),(5,385,'baluarte','47270000'),(5,386,'banco central','45673000'),(5,387,'banco da vitória','45661000'),(5,388,'bandeira do almada','45635000'),(5,389,'bandeira do colônia','45705000'),(5,390,'bandiaçu','48745000'),(5,391,'banzaê','48405000'),(5,392,'baraúnas','46920000'),(5,393,'barcelos do sul','45448000'),(5,394,'barra','47100000'),(5,395,'barra da estiva','46650000'),(5,396,'barra do choça','45120000'),(5,397,'barra do jacuípe','42833000'),(5,398,'barra do mendes','44990000'),(5,399,'barra do pojuca','42825000'),(5,400,'barra do rocha','45560000'),(5,401,'barra do tarrachil','48668000'),(5,402,'barracas','44757000'),(5,403,'barreiras','00000000'),(5,404,'barro alto','44895000'),(5,405,'governador lomanto júnior','45625000'),(5,406,'barro vermelho','48935000'),(5,407,'barrocas','48705000'),(5,408,'bastião','46745000'),(5,409,'bate pé','45107000'),(5,410,'batinga','45975000'),(5,411,'bela flor','48113000'),(5,412,'belém da cachoeira','44315000'),(5,413,'belmonte','45800000'),(5,414,'belo campo','45160000'),(5,415,'belo campo','44911000'),(5,416,'bem-bom','47330000'),(5,417,'bendegó','48524000'),(5,418,'bento simões','44258000'),(5,419,'biritinga','48780000'),(5,420,'boa espera','44265000'),(5,421,'boa nova','45250000'),(5,422,'boa união','48103000'),(5,423,'boa vista do lagamar','47525000'),(5,424,'boa vista do tupim','46850000'),(5,425,'boaçu','45209000'),(5,426,'boca do córrego','45805000'),(5,427,'bom jesus da lapa','47600000'),(5,428,'bom jesus da serra','45263000'),(5,429,'bom sossego','47540000'),(5,430,'bonfim da feira','44120000'),(5,431,'boninal','46740000'),(5,432,'bonito','46820000'),(5,433,'boquira','46530000'),(5,434,'botuporã','46570000'),(5,435,'botuquara','46475000'),(5,436,'brejinho das ametistas','46405000'),(5,437,'brejo da serra','47260000'),(5,438,'brejo luíza de brito','46733000'),(5,439,'brejo novo','46855000'),(5,440,'brejões','45325000'),(5,441,'brejolândia','47750000'),(5,442,'brotas de macaúbas','47560000'),(5,443,'brumado','46100000'),(5,444,'bucuituba','46535000'),(5,445,'buerarema','45615000'),(5,446,'buracica','44285000'),(5,447,'buranhém','45845000'),(5,448,'buril','48483000'),(5,449,'buris de abrantes','42845000'),(5,450,'buritirama','47120000'),(5,451,'caatiba','45130000'),(5,452,'cabaceiras do paraguaçu','44345000'),(5,453,'cabrália','46768000'),(5,454,'cacha pregos','44478000'),(5,455,'cachoeira','44300000'),(5,456,'cachoeira do mato','45999000'),(5,457,'caculé','46300000'),(5,458,'caém','44730000'),(5,459,'caetanos','45265000'),(5,460,'caeté-açu','46940000'),(5,461,'caetité','46400000'),(5,462,'cafarnaum','44880000'),(5,463,'caiçara','45118000'),(5,464,'caimbé','48506000'),(5,465,'cairu','45420000'),(5,466,'caiubi','45858000'),(5,467,'cajuí','47390000'),(5,468,'caldas do jorro','48793000'),(5,469,'caldeirão','48955000'),(5,470,'caldeirão grande','44750000'),(5,471,'caldeiras','46420000'),(5,472,'camacan','45880000'),(5,473,'camaçari','00000000'),(5,474,'camamu','45445000'),(5,475,'camassandi','44482000'),(5,476,'camirim','44860000'),(5,477,'campinhos','44215000'),(5,478,'campo alegre de lourdes','47220000'),(5,479,'campo formoso','44790000'),(5,480,'campo formoso','44935000'),(5,481,'camurugi','45434000'),(5,482,'canabravinha','46195000'),(5,483,'canápolis','47730000'),(5,484,'canarana','44890000'),(5,485,'canatiba','46510000'),(5,486,'canavieiras','45860000'),(5,487,'canché','48560000'),(5,488,'candeal','48710000'),(5,489,'candeias','00000000'),(5,490,'candiba','46380000'),(5,491,'cândido sales','45157000'),(5,492,'canoão','44965000'),(5,493,'cansanção','48840000'),(5,494,'canto do sol','42830000'),(5,495,'canudos','48520000'),(5,496,'canudos','44889000'),(5,497,'capão','45495000'),(5,498,'capela do alto alegre','44645000'),(5,499,'capim grosso','44695000'),(5,500,'caraguataí','46680000'),(5,501,'caraíbas','45177000'),(5,502,'caraibuna','46630000'),(5,503,'caraípe','44555000'),(5,504,'caraiva','45819000'),(5,505,'caravelas','45900000'),(5,506,'cardeal da silva','48390000'),(5,507,'carinhanha','46445000'),(5,508,'caripare','47980000'),(5,509,'carnaíba do sertão','48922000'),(5,510,'carrapichel','48985000'),(5,511,'casa nova','47300000'),(5,512,'castelo novo','45667000'),(5,513,'castro alves','44500000'),(5,514,'catinga do moura','44704000'),(5,515,'catingal','45245000'),(5,516,'catolândia','47815000'),(5,517,'catolés','46695000'),(5,518,'catolezinho','45145000'),(5,519,'catu','48110000'),(5,520,'catu de abrantes','42841000'),(5,521,'caturama','46575000'),(5,522,'cavunge','44685000'),(5,523,'central','44940000'),(5,524,'ceraima','46433000'),(5,525,'chorrochó','48660000'),(5,526,'cícero dantas','48410000'),(5,527,'cinco rios','43860000'),(5,528,'cipó','48450000'),(5,529,'coaraci','45638000'),(5,530,'cocos','47680000'),(5,531,'colônia','45832000'),(5,532,'comércio','44545000'),(5,533,'conceição da feira','44320000'),(5,534,'conceição do almeida','44540000'),(5,535,'conceição do coité','48730000'),(5,536,'conceição do jacuípe','44245000'),(5,537,'conde','48300000'),(5,538,'condeúba','46200000'),(5,539,'contendas do sincorá','46620000'),(5,540,'copixaba','47430000'),(5,541,'coqueiros','44430000'),(5,542,'coquinhos','45185000'),(5,543,'coração de maria','44250000'),(5,544,'cordeiros','46280000'),(5,545,'coribe','47690000'),(5,546,'coronel joão sá','48590000'),(5,547,'correntina','47650000'),(5,548,'corta mão','45301000'),(5,549,'cotegipe','47900000'),(5,550,'coutos','45664000'),(5,551,'cravolândia','45330000'),(5,552,'crisópolis','48480000'),(5,553,'cristalândia','46108000'),(5,554,'cristópolis','47950000'),(5,555,'crussaí','44505000'),(5,556,'cruz das almas','44380000'),(5,557,'cumuruxatiba','45983000'),(5,558,'cunhangi','44488000'),(5,559,'curaçá','48930000'),(5,560,'curral falso','48403000'),(5,561,'dário meira','45590000'),(5,562,'delfino','44795000'),(5,563,'descoberto','47695000'),(5,564,'dias coelho','44855000'),(5,565,'dias d\'ávila','42850000'),(5,566,'diógenes sampaio','45302000'),(5,567,'dom basílio','46165000'),(5,568,'dom macedo costa','44560000'),(5,569,'dona maria','48473000'),(5,570,'duas barras do morro','44865000'),(5,571,'elísio medrado','45305000'),(5,572,'encruzilhada','45150000'),(5,573,'engenheiro frança','45312000'),(5,574,'engenheiro pontes','45498000'),(5,575,'entre rios','48180000'),(5,576,'érico cardoso','46180000'),(5,577,'esplanada','48370000'),(5,578,'euclides da cunha','48500000'),(5,579,'eunápolis','00000000'),(5,580,'fátima','48415000'),(5,581,'feira da mata','46446000'),(5,582,'feira de santana','00000000'),(5,583,'ferradas','00000000'),(5,584,'filadélfia','44775000'),(5,585,'filanésia','45358000'),(5,586,'firmino alves','45720000'),(5,587,'floresta azul','45740000'),(5,588,'formosa do rio preto','47990000'),(5,589,'frança','44837000'),(5,590,'gabiarra','45831000'),(5,591,'galeão','45422000'),(5,592,'gamboa','45424000'),(5,593,'gameleira da lapa','47620000'),(5,594,'gameleira do assuruá','47470000'),(5,595,'gandu','45450000'),(5,596,'gavião','44650000'),(5,597,'gentio do ouro','47450000'),(5,598,'geolândia','44349000'),(5,599,'glória','48610000'),(5,600,'gongogi','45540000'),(5,601,'governador joão durval carneiro','44130000'),(5,602,'governador mangabeira','44350000'),(5,603,'guagirus','42837000'),(5,604,'guaí','44423000'),(5,605,'guajeru','46205000'),(5,606,'guanambi','46430000'),(5,607,'guapira','44425000'),(5,608,'guarajuba','42827000'),(5,609,'guaratinga','45840000'),(5,610,'guerém','45413000'),(5,611,'guiné','46753000'),(5,612,'guirapa','46370000'),(5,613,'gurupá mirim','45795000'),(5,614,'heliópolis','48445000'),(5,615,'helvecia','45923000'),(5,616,'hidrolândia','44955000'),(5,617,'humildes','44135000'),(5,618,'iaçu','46860000'),(5,619,'ibatui','48185000'),(5,620,'ibiaçu','45523000'),(5,621,'ibiajara','46560000'),(5,622,'ibiapora','44825000'),(5,623,'ibiassucê','46390000'),(5,624,'ibicaraí','45745000'),(5,625,'ibicoara','46760000'),(5,626,'ibicuí','45290000'),(5,627,'ibipeba','44970000'),(5,628,'ibipetum','47595000'),(5,629,'ibipitanga','46540000'),(5,630,'ibiquera','46840000'),(5,631,'ibiraba','47110000'),(5,632,'ibirajá','45972000'),(5,633,'ibiranhém','45938000'),(5,634,'ibirapitanga','45500000'),(5,635,'ibirapuã','45940000'),(5,636,'ibirataia','45580000'),(5,637,'ibitiara','46700000'),(5,638,'ibitiguira','45378000'),(5,639,'ibitira','46225000'),(5,640,'ibititá','44960000'),(5,641,'ibitunane','47480000'),(5,642,'ibitupa','45298000'),(5,643,'ibó','48685000'),(5,644,'ibotirama','47520000'),(5,645,'ichu','48725000'),(5,646,'icó','44852000'),(5,647,'igaporã','46490000'),(5,648,'igará','48975000'),(5,649,'igarité','47105000'),(5,650,'igatu','46834000'),(5,651,'igrapiúna','45443000'),(5,652,'iguá','45105000'),(5,653,'iguaí','45280000'),(5,654,'iguaibi','45285000'),(5,655,'iguatemi','46150000'),(5,656,'iguira','47410000'),(5,657,'iguitu','44975000'),(5,658,'ilha de maré','42500000'),(5,659,'ilhéus','00000000'),(5,660,'indaí','44810000'),(5,661,'inema','45669000'),(5,662,'inhambupe','48490000'),(5,663,'inhata','44235000'),(5,664,'inhaúmas','47648000'),(5,665,'inhobim','45110000'),(5,666,'inúbia','46766000'),(5,667,'ipecaetá','44680000'),(5,668,'ipiaú','45570000'),(5,669,'ipirá','44600000'),(5,670,'ipiúna','45347000'),(5,671,'ipucaba','47550000'),(5,672,'ipupiara','47590000'),(5,673,'irajuba','45370000'),(5,674,'iramaia','46770000'),(5,675,'iraporanga','46985000'),(5,676,'iraquara','46980000'),(5,677,'irará','44255000'),(5,678,'irecê','44900000'),(5,679,'irundiara','46315000'),(5,680,'ita-azul','45838000'),(5,681,'itabela','45848000'),(5,682,'itaberaba','46880000'),(5,683,'itabuna','00000000'),(5,684,'itacaré','45530000'),(5,685,'itacava','44253000'),(5,686,'itachama','45303000'),(5,687,'itacimirim','42823000'),(5,688,'itaeté','46790000'),(5,689,'itagi','45230000'),(5,690,'itagibá','45585000'),(5,691,'itagimirim','45850000'),(5,692,'itaguaçu da bahia','47440000'),(5,693,'itaia','45723000'),(5,694,'itaibó','45213000'),(5,695,'itaipu','45116000'),(5,696,'itaítu','44702000'),(5,697,'itajaí','45275000'),(5,698,'itaju do colônia','45730000'),(5,699,'itajubaquara','47460000'),(5,700,'itajuípe','45630000'),(5,701,'itajuru','45211000'),(5,702,'itamaraju','45836000'),(5,703,'itamari','45455000'),(5,704,'itambé','45140000'),(5,705,'itamira','48355000'),(5,706,'itamotinga','48920000'),(5,707,'itanagé','46143000'),(5,708,'itanagra','48290000'),(5,709,'itanhém','45970000'),(5,710,'itanhi','48315000'),(5,711,'itaparica','44460000'),(5,712,'itapé','45750000'),(5,713,'itapebi','45855000'),(5,714,'itapeipu','44708000'),(5,715,'itapetinga','45700000'),(5,716,'itapicuru','48475000'),(5,717,'itapirema','45117000'),(5,718,'itapitanga','45645000'),(5,719,'itapora','44343000'),(5,720,'itapura','44727000'),(5,721,'itaquara','45340000'),(5,722,'itaquaraí','46103000'),(5,723,'itarantim','45780000'),(5,724,'itati','45714000'),(5,725,'itatim','46875000'),(5,726,'itatingui','45698000'),(5,727,'itiruçu','45350000'),(5,728,'itiúba','48850000'),(5,729,'itororó','45710000'),(5,730,'ituaçu','46640000'),(5,731,'ituberá','45435000'),(5,732,'itupeva','45968000'),(5,733,'iuiu','46438000'),(5,734,'jaborandi','47655000'),(5,735,'jacaraci','46310000'),(5,736,'jacobina','44700000'),(5,737,'jacu','44273000'),(5,738,'jacuípe','43870000'),(5,739,'jacuruna','44484000'),(5,740,'jaguaquara','45345000'),(5,741,'jaguara','44125000'),(5,742,'jaguarari','48960000'),(5,743,'jaguaripe','44480000'),(5,744,'jaíba','44115000'),(5,745,'jandaíra','48310000'),(5,746,'japomirim','45588000'),(5,747,'japu','45665000'),(5,748,'jauá','42843000'),(5,749,'jequié','00000000'),(5,750,'jequiriçá','45470000'),(5,751,'jeremoabo','48540000'),(5,752,'jiribatuba','44475000'),(5,753,'jitaúna','45225000'),(5,754,'joão amaro','46865000'),(5,755,'joão correia','46755000'),(5,756,'joão dourado','44920000'),(5,757,'josé gonçalves','45115000'),(5,758,'juacema','48965000'),(5,759,'juazeiro','00000000'),(5,760,'jucuruçu','45834000'),(5,761,'juerana','45910000'),(5,762,'junco','48910000'),(5,763,'jupaguá','47920000'),(5,764,'juraci','46785000'),(5,765,'juremal','48915000'),(5,766,'jussara','44925000'),(5,767,'jussari','45610000'),(5,768,'jussiape','46670000'),(5,769,'km sete','44133000'),(5,770,'lafaiete coutinho','45215000'),(5,771,'lagoa clara','46520000'),(5,772,'lagoa de melquíades','45114000'),(5,773,'lagoa do boi','44898000'),(5,774,'lagoa grande','45158000'),(5,775,'lagoa grande','44972000'),(5,776,'lagoa josé luís','45113000'),(5,777,'lagoa preta','45175000'),(5,778,'lagoa real','46425000'),(5,779,'laje','45490000'),(5,780,'laje do banco','45676000'),(5,781,'lajedão','45950000'),(5,782,'lajedinho','46825000'),(5,783,'lajedo alto','46868000'),(5,784,'lajedo do tabocal','45365000'),(5,785,'lamarão','48720000'),(5,786,'lamarão do passe','43855000'),(5,787,'lapão','44905000'),(5,788,'largo','44835000'),(5,789,'lauro de freitas','42700000'),(5,790,'lençóis','46960000'),(5,791,'licínio de almeida','46330000'),(5,792,'limoeiro do bom viver','44137000'),(5,793,'livramento de nossa senhora','46140000'),(5,794,'lucaia','45195000'),(5,795,'luís viana','47340000'),(5,796,'lustosa','44283000'),(5,797,'macajuba','46805000'),(5,798,'macarani','45760000'),(5,799,'macaúbas','46500000'),(5,800,'macururé','48650000'),(5,801,'madre de deus','42600000'),(5,802,'maetinga','46255000'),(5,803,'maiquinique','45770000'),(5,804,'mairi','44630000'),(5,805,'malhada','46440000'),(5,806,'malhada de pedras','46110000'),(5,807,'mandiroba','46455000'),(5,808,'mangue seco','48325000'),(5,809,'maniaçu','46410000'),(5,810,'manoel vitorino','45240000'),(5,811,'mansidão','47160000'),(5,812,'mantiba','44117000'),(5,813,'mar grande','44473000'),(5,814,'maracás','45360000'),(5,815,'maragogipe','44420000'),(5,816,'maragogipinho','44495000'),(5,817,'maraú','45520000'),(5,818,'marcionílio souza','46780000'),(5,819,'marcolino moura','46175000'),(5,820,'maria quitéria','44110000'),(5,821,'maricoabo','45412000'),(5,822,'mariquita','47770000'),(5,823,'mascote','45870000'),(5,824,'massacara','48510000'),(5,825,'massaroca','48918000'),(5,826,'mata da aliança','44240000'),(5,827,'mata de são joão','48280000'),(5,828,'mataripe','43970000'),(5,829,'matina','46480000'),(5,830,'matinha','44118000'),(5,831,'medeiros neto','45960000'),(5,832,'miguel calmon','44720000'),(5,833,'milagres','45315000'),(5,834,'luís eduardo magalhães','47850000'),(5,835,'minas do espírito santo','44995000'),(5,836,'minas do mimoso','47375000'),(5,837,'mirandela','48409000'),(5,838,'miranga','48126000'),(5,839,'mirangaba','44745000'),(5,840,'mirante','45255000'),(5,841,'mocambo','46720000'),(5,842,'mogiquiçaba','45803000'),(5,843,'monte cruzeiro','45306000'),(5,844,'monte gordo','42820000'),(5,845,'monte recôncavo','43980000'),(5,846,'monte santo','48800000'),(5,847,'morpará','47580000'),(5,848,'morrinhos','44127000'),(5,849,'morro das flores','46802000'),(5,850,'morro de são paulo','45428000'),(5,851,'morro do chapéu','44850000'),(5,852,'mortugaba','46290000'),(5,853,'mucugê','46750000'),(5,854,'mucuri','45930000'),(5,855,'mulungu do morro','44885000'),(5,856,'mundo novo','44800000'),(5,857,'muniz ferreira','44575000'),(5,858,'muquém de são francisco','47115000'),(5,859,'muritiba','44340000'),(5,860,'mutas','46436000'),(5,861,'mutuípe','45480000'),(5,862,'nagé','44432000'),(5,863,'narandiba','48107000'),(5,864,'nazaré','44400000'),(5,865,'nilo peçanha','45440000'),(5,866,'nordestina','48870000'),(5,867,'nova alegria','45838500'),(5,868,'nova brasília','45156000'),(5,869,'nova canaã','45270000'),(5,870,'nova fátima','44642000'),(5,871,'nova ibiá','45452000'),(5,872,'nova itaipê','45380000'),(5,873,'nova itarana','45390000'),(5,874,'nova lídice','45965000'),(5,875,'nova redenção','46835000'),(5,876,'nova soure','48460000'),(5,877,'nova viçosa','45920000'),(5,878,'novo acre','46775000'),(5,879,'novo horizonte','46730000'),(5,880,'novo triunfo','48455000'),(5,881,'núcleo residencial pilar','48967000'),(5,882,'nuguaçu','44747000'),(5,883,'olhos d\'água do seco','46715000'),(5,884,'olhos d\'água do serafim','46735000'),(5,885,'olindina','48470000'),(5,886,'oliveira dos brejinhos','47530000'),(5,887,'olivença','45668000'),(5,888,'onha','44578000'),(5,889,'oriente novo','45210000'),(5,890,'ouricana','45863000'),(5,891,'ouriçangas','48150000'),(5,892,'ouricuri do ouro','47565000'),(5,893,'ourolândia','44718000'),(5,894,'outeiro redondo','44365000'),(5,895,'paiol','46320000'),(5,896,'pajeú do vento','46402000'),(5,897,'palame','48380000'),(5,898,'palmas de monte alto','46460000'),(5,899,'palmeiras','46930000'),(5,900,'parafuso','42849000'),(5,901,'paramirim','46190000'),(5,902,'parateca','46443000'),(5,903,'paratinga','47500000'),(5,904,'paripiranga','48430000'),(5,905,'pataíba','48175000'),(5,906,'patamuté','48945000'),(5,907,'pau a pique','47320000'),(5,908,'pau brasil','45890000'),(5,909,'paulo afonso','00000000'),(5,910,'pé de serra','44655000'),(5,911,'pedrão','48140000'),(5,912,'pedras altas do mirim','44697000'),(5,913,'pedro alexandre','48580000'),(5,914,'peixe','47230000'),(5,915,'petim','44510000'),(5,916,'piabanha','45525000'),(5,917,'piatã','46765000'),(5,918,'piçarrão','47360000'),(5,919,'pilão arcado','47240000'),(5,920,'pimenteira','45672000'),(5,921,'pindaí','46360000'),(5,922,'pindobaçu','44770000'),(5,923,'pinhões','48924000'),(5,924,'pintadas','44610000'),(5,925,'piragi','45837500'),(5,926,'piraí do norte','45436000'),(5,927,'pirajá','45837000'),(5,928,'pirajuia','44486000'),(5,929,'piri','47355000'),(5,930,'piripá','46270000'),(5,931,'piritiba','44830000'),(5,932,'pituba','47454000'),(5,933,'planaltino','45375000'),(5,934,'planalto','45190000'),(5,935,'poço central','45678000'),(5,936,'poço de fora','48940000'),(5,937,'poções','45260000'),(5,938,'poços','47210000'),(5,939,'pojuca','48120000'),(5,940,'polo petroquímico de camaçari','00000000'),(5,941,'ponta da areia','45905000'),(5,942,'ponto novo','44755000'),(5,943,'porto novo','47710000'),(5,944,'porto seguro','45810000'),(5,945,'posto da mata','45928000'),(5,946,'potiraguá','45790000'),(5,947,'poxim do sul','45862000'),(5,948,'prado','45980000'),(5,949,'presidente dutra','44930000'),(5,950,'presidente jânio quadros','46250000'),(5,951,'presidente tancredo neves','45416000'),(5,952,'prevenido','44912000'),(5,953,'quaraçu','45159000'),(5,954,'queimadas','48860000'),(5,955,'quijingue','48830000'),(5,956,'quixabá','47585000'),(5,957,'quixabeira','44713000'),(5,958,'rafael jambeiro','44520000'),(5,959,'recife','44927000'),(5,960,'remanso','47200000'),(5,961,'remédios','46738000'),(5,962,'retirolândia','48750000'),(5,963,'riachão das neves','47970000'),(5,964,'riachão do jacuípe','44640000'),(5,965,'riachão do utinga','46815000'),(5,966,'riacho da guia','48105000'),(5,967,'riacho de santana','46470000'),(5,968,'riacho seco','48933000'),(5,969,'ribeira do amparo','48440000'),(5,970,'ribeira do pombal','48400000'),(5,971,'ribeirão do largo','45155000'),(5,972,'ribeirão do salto','45785000'),(5,973,'rio da dona','44548000'),(5,974,'rio de contas','46170000'),(5,975,'rio do antônio','46220000'),(5,976,'rio do braço','45666000'),(5,977,'rio do meio','45712000'),(5,978,'rio do pires','46550000'),(5,979,'rio fundo','44275000'),(5,980,'rio real','48330000'),(5,981,'rodelas','48630000'),(5,982,'ruy barbosa','46800000'),(5,983,'saldanha','47250000'),(5,984,'salgadália','48740000'),(5,985,'salinas da margarida','44450000'),(5,986,'salobrinho','45662000'),(5,987,'salobro','44892000'),(5,988,'salvador','00000000'),(5,989,'sambaíba','48476000'),(5,990,'santa bárbara','44150000'),(5,991,'santa brígida','48570000'),(5,992,'santa cruz cabrália','45807000'),(5,993,'santa cruz da vitória','45725000'),(5,994,'santa inês','45320000'),(5,995,'santa luzia','45865000'),(5,996,'santa maria da vitória','47640000'),(5,997,'santa rita de cássia','47150000'),(5,998,'santa terezinha','44590000'),(5,999,'santaluz','48880000'),(5,1000,'santana','47700000'),(5,1001,'santana do sobrado','47310000'),(5,1002,'santanópolis','44260000'),(5,1003,'santiago do iguapé','44310000'),(5,1004,'santo amaro','44200000'),(5,1005,'santo antônio de barcelona','45915000'),(5,1006,'santo antônio de jesus','00000000'),(5,1007,'santo estevão','44190000'),(5,1008,'santo inácio','47490000'),(5,1009,'são desidério','47820000'),(5,1010,'são domingos','48895000'),(5,1011,'são felipe','44550000'),(5,1012,'são félix','44360000'),(5,1013,'são félix do coribe','47665000'),(5,1014,'são francisco do conde','43900000'),(5,1015,'são gabriel','44915000'),(5,1016,'são gonçalo dos campos','44330000'),(5,1017,'são joão da fortaleza','48413000'),(5,1018,'são joão da vitória','45111000'),(5,1019,'são josé da vitória','45620000'),(5,1020,'são josé do colônia','45142000'),(5,1021,'são josé do jacuípe','44698000'),(5,1022,'são josé do prado','45958000'),(5,1023,'são josé do rio grande','47975000'),(5,1024,'são miguel das matas','44580000'),(5,1025,'são paulinho','45839000'),(5,1026,'são roque do paraguaçu','44428000'),(5,1027,'são sebastião do passe','43850000'),(5,1028,'são timóteo','46145000'),(5,1029,'sapeaçu','44530000'),(5,1030,'sátiro dias','48485000'),(5,1031,'saubara','44220000'),(5,1032,'saudável','47570000'),(5,1033,'saúde','44740000'),(5,1034,'seabra','46900000'),(5,1035,'sebastião laranjeiras','46450000'),(5,1036,'senhor do bonfim','48970000'),(5,1037,'sento sé','47350000'),(5,1038,'sergi','44335000'),(5,1039,'serra da canabrava','48953000'),(5,1040,'serra do ramalho','47630000'),(5,1041,'serra dourada','47740000'),(5,1042,'serra grande','48414000'),(5,1043,'serra grande','45414000'),(5,1044,'serra preta','44660000'),(5,1045,'serrinha','48700000'),(5,1046,'serrolândia','44710000'),(5,1047,'simões filho','43700000'),(5,1048,'sítio da baraúna','48993000'),(5,1049,'sítio do mato','47610000'),(5,1050,'sítio do meio','44508000'),(5,1051,'sítio do quinto','48565000'),(5,1052,'sítio grande','47825000'),(5,1053,'sítio novo','48115000'),(5,1054,'soares','44913000'),(5,1055,'sobradinho','48925000'),(5,1056,'souto soares','46990000'),(5,1057,'subaúma','48190000'),(5,1058,'sussuarana','46605000'),(5,1059,'tabocas do brejo velho','47760000'),(5,1060,'taboleiro do castro','44568000'),(5,1061,'taboquinhas','45534000'),(5,1062,'taguá','47930000'),(5,1063,'tamburil','44862000'),(5,1064,'tanhaçu','46600000'),(5,1065,'tanque novo','46580000'),(5,1066,'tanquinho','44160000'),(5,1067,'tanquinho do poço','48994000'),(5,1068,'taperoá','45430000'),(5,1069,'tapiraípe','46804000'),(5,1070,'tapirama','45543000'),(5,1071,'tapiramutá','44840000'),(5,1072,'tapiranga','44723000'),(5,1073,'tapúia','45449000'),(5,1074,'taquarendi','44748000'),(5,1075,'taquarinha','45935000'),(5,1076,'tartaruga','45318000'),(5,1077,'tauapé','46335000'),(5,1078,'teixeira de freitas','00000000'),(5,1079,'teodoro sampaio','44280000'),(5,1080,'teofilândia','48770000'),(5,1081,'teolândia','45465000'),(5,1082,'terra nova','44270000'),(5,1083,'tijuaçú','48980000'),(5,1084,'tiquaruçu','44140000'),(5,1085,'tremedal','45170000'),(5,1086,'triunfo do sincorá','46660000'),(5,1087,'tucano','48790000'),(5,1088,'uauá','48950000'),(5,1089,'ubaíra','45310000'),(5,1090,'ubaitaba','45545000'),(5,1091,'ubatã','45550000'),(5,1092,'ubiracaba','46105000'),(5,1093,'ubiraitá','46833000'),(5,1094,'uibaí','44950000'),(5,1095,'umburanas','44798000'),(5,1096,'umbuzeiro','48474000'),(5,1097,'una','45690000'),(5,1098,'urandi','46350000'),(5,1099,'uruçuca','45680000'),(5,1100,'utinga','46810000'),(5,1101,'vale verde','45817000'),(5,1102,'valença','45400000'),(5,1103,'valente','48890000'),(5,1104,'várzea da roça','44635000'),(5,1105,'várzea do caldas','46910000'),(5,1106,'várzea do cerco','44888000'),(5,1107,'várzea do poço','44715000'),(5,1108,'várzea nova','44690000'),(5,1109,'várzeas','47840000'),(5,1110,'varzedo','44565000'),(5,1111,'velha boipeba','45426000'),(5,1112,'ventura','44875000'),(5,1113,'vera cruz','44470000'),(5,1114,'vereda','45955000'),(5,1115,'vila do café','45153000'),(5,1116,'vitória da conquista','00000000'),(5,1117,'volta grande','44845000'),(5,1118,'wagner','46970000'),(5,1119,'wanderley','47940000'),(5,1120,'wenceslau guimarães','45460000'),(5,1121,'xique-xique','47400000'),(5,10209,'arraial d\'ajuda','45816000'),(5,10210,'trancoso','45818000'),(5,10211,'itabatã','45936000'),(5,10611,'ilha de bom jesus dos passos','42510000'),(5,10612,'ilha dos frades','42505000'),(5,10859,'pilões','46388000'),(5,10860,'pedra alta','48767000'),(6,1122,'abaiara','63240000'),(6,1123,'abílio martins','62252000'),(6,1124,'acarape','62785000'),(6,1125,'acaraú','62580000'),(6,1126,'acopiara','63560000'),(6,1127,'adrianópolis','62435000'),(6,1128,'água verde','61895000'),(6,1129,'aguaí','62602000'),(6,1130,'aiuá','62143000'),(6,1131,'aiuaba','63575000'),(6,1132,'alagoinha','63174000'),(6,1133,'alagoinha','62686000'),(6,1134,'alcântaras','62120000'),(6,1135,'algodões','63655000'),(6,1136,'almofala','62592000'),(6,1137,'altaneira','63195000'),(6,1138,'alto santo','62970000'),(6,1139,'amanaiara','62263000'),(6,1140,'amanari','61979000'),(6,1141,'amaniutuba','63306000'),(6,1142,'amarelas','62405000'),(6,1143,'amaro','63144000'),(6,1144,'américa','62240000'),(6,1145,'amontada','62540000'),(6,1146,'anauá','63217000'),(6,1147,'aningás','62882000'),(6,1148,'anjinhos','63193000'),(6,1149,'antonina do norte','63570000'),(6,1150,'antônio bezerra','00000000'),(6,1151,'antônio diogo','62791000'),(6,1152,'antônio marques','61994000'),(6,1153,'aprazível','62114000'),(6,1154,'apuiarés','62630000'),(6,1155,'aquinópolis','63479000'),(6,1156,'aquiraz','61700000'),(6,1157,'araçás','62682000'),(6,1158,'aracati','62800000'),(6,1159,'aracatiaçu','62111000'),(6,1160,'aracatiara','62548000'),(6,1161,'aracoiaba','62750000'),(6,1162,'arajara','63183000'),(6,1163,'aranaú','62585000'),(6,1164,'arapá','62328000'),(6,1165,'arapari','62508000'),(6,1166,'araporanga','63194000'),(6,1167,'araquém','62165000'),(6,1168,'ararendá','62210000'),(6,1169,'araripe','63170000'),(6,1170,'arariús','62186000'),(6,1171,'aratama','63143000'),(6,1172,'araticum','62352000'),(6,1173,'aratuba','62762000'),(6,1174,'areial','62290000'),(6,1175,'ariscos dos marianos','62759000'),(6,1176,'arneiroz','63670000'),(6,1177,'aroeiras','62163000'),(6,1178,'arrojado','63305000'),(6,1179,'aruaru','62951000'),(6,1180,'assaré','63140000'),(6,1181,'assunção','62505000'),(6,1182,'assunção','63625000'),(6,1183,'aurora','63360000'),(6,1184,'baixa grande','62605000'),(6,1185,'baixio','63320000'),(6,1186,'baixio da donana','63582000'),(6,1187,'banabuiú','63960000'),(6,1188,'bandeira','62723000'),(6,1189,'barão de aquiraz','63153000'),(6,1190,'barbalha','63180000'),(6,1191,'barra','63578000'),(6,1192,'barra','62816000'),(6,1193,'barra','63506000'),(6,1194,'barra do sotero','62393000'),(6,1195,'barra nova','63667000'),(6,1196,'barreira','62795000'),(6,1197,'barreira dos vianas','62802000'),(6,1198,'barreiras','63508000'),(6,1199,'barreiros','63785000'),(6,1200,'barreiros','63163000'),(6,1201,'barreiros','62374000'),(6,1202,'barrento','62515000'),(6,1203,'barro','63380000'),(6,1204,'barro alto','63509000'),(6,1205,'barroquinha','62410000'),(6,1206,'baturité','62760000'),(6,1207,'baú','63512000'),(6,1208,'beberibe','62840000'),(6,1209,'bela cruz','62570000'),(6,1210,'bela vista','62510000'),(6,1211,'betânia','62392000'),(6,1212,'betânia','62273000'),(6,1213,'betânia','63623000'),(6,1214,'bitupitá','62414000'),(6,1215,'bixopa','62935000'),(6,1216,'boa água','62953000'),(6,1217,'boa esperança','63770000'),(6,1218,'boa viagem','63870000'),(6,1219,'boa vista','63615000'),(6,1220,'boa vista','62687000'),(6,1221,'boa vista do caxitoré','62623000'),(6,1222,'bonfim','63601000'),(6,1223,'bonfim','62102000'),(6,1224,'bonhu','62905000'),(6,1225,'bonito','62705000'),(6,1226,'borges','62835000'),(6,1227,'brejinho','63176000'),(6,1228,'brejo grande','63192000'),(6,1229,'brejo santo','63260000'),(6,1230,'brotas','62533000'),(6,1231,'buritizal','62227000'),(6,1232,'buritizinho','63213000'),(6,1233,'cabreiro','62806000'),(6,1234,'cachoeira','62728000'),(6,1235,'cachoeira grande','62228000'),(6,1236,'caiçara','62597000'),(6,1237,'caiçarinha','63957000'),(6,1238,'caio prado','62742000'),(6,1239,'caioca','62109000'),(6,1240,'caipu','63538000'),(6,1241,'calabaça','63545000'),(6,1242,'caldeirão','63157000'),(6,1243,'califórnia','63920000'),(6,1244,'camará','61753000'),(6,1245,'camboas','62688000'),(6,1246,'camilos','62132000'),(6,1247,'camocim','62400000'),(6,1248,'campanário','62468000'),(6,1249,'campestre','62817000'),(6,1250,'campos sales','63150000'),(6,1251,'canaan','62692000'),(6,1252,'canafistula','62638000'),(6,1253,'canafistula','63583000'),(6,1254,'cangati','63612000'),(6,1255,'cangati','63624000'),(6,1256,'canindé','62700000'),(6,1257,'canindezinho','62203000'),(6,1258,'canindezinho','62995000'),(6,1259,'canindezinho','63555000'),(6,1260,'capistrano','62748000'),(6,1261,'caponga','62852000'),(6,1262,'caponga da bernarda','61754000'),(6,1263,'caracará','62112000'),(6,1264,'caridade','62730000'),(6,1265,'cariré','62184000'),(6,1266,'caririaçu','63220000'),(6,1267,'cariús','63530000'),(6,1268,'cariutaba','63189000'),(6,1269,'carmelópolis','63151000'),(6,1270,'carnaubal','62375000'),(6,1271,'carnaúbas','63616000'),(6,1272,'carnaubinha','63637000'),(6,1273,'carquejo','62175000'),(6,1274,'carrapateiras','63662000'),(6,1275,'caruataí','62325000'),(6,1276,'carvalho','63768000'),(6,1277,'carvoeiro','62594000'),(6,1278,'cascavel','62850000'),(6,1279,'castanhão','62975000'),(6,1280,'catarina','63595000'),(6,1281,'catolé','63613000'),(6,1282,'catuana','61680000'),(6,1283,'catunda','62297000'),(6,1284,'caucaia','00000000'),(6,1285,'caxitoré','62614000'),(6,1286,'caxitoré','62664000'),(6,1287,'cedro','63400000'),(6,1288,'cemoaba','62657000'),(6,1289,'chaval','62420000'),(6,1290,'choró','63950000'),(6,1291,'chorozinho','62875000'),(6,1292,'cipó dos anjos','63925000'),(6,1293,'cococi','63685000'),(6,1294,'codiá','63603000'),(6,1295,'coité','63212000'),(6,1296,'colina','62774000'),(6,1297,'conceição','62275000'),(6,1298,'coreaú','62160000'),(6,1299,'córrego dos fernandes','62807000'),(6,1300,'crateús','63700000'),(6,1301,'crato','00000000'),(6,1302,'crioulos','63465000'),(6,1303,'cristais','62859000'),(6,1304,'croatá','62390000'),(6,1305,'croatá','62676000'),(6,1306,'croatá','62269000'),(6,1307,'cruxati','62525000'),(6,1308,'cruz','62595000'),(6,1309,'cruz','62603000'),(6,1310,'cruz de pedra','63513000'),(6,1311,'cruzeirinho','63440000'),(6,1312,'cuncas','63395000'),(6,1313,'curatis','63755000'),(6,1314,'curupira','62758000'),(6,1315,'custódio','63915000'),(6,1316,'daniel de queirós','63930000'),(6,1317,'delmiro gouveia','62258000'),(6,1318,'deputado irapuan pinheiro','63645000'),(6,1319,'deserto','62502000'),(6,1320,'dom leme','63191000'),(6,1321,'dom maurício','63945000'),(6,1322,'dom quintino','63137000'),(6,1323,'domingos da costa','63880000'),(6,1324,'donato','62259000'),(6,1325,'dourados','62884000'),(6,1326,'ebron','63567000'),(6,1327,'ema','62988000'),(6,1328,'ematuba','63641000'),(6,1329,'encantado','63810000'),(6,1330,'engenheiro joão tomé','62233000'),(6,1331,'engenheiro josé lopes','63602000'),(6,1332,'engenho velho','63383000'),(6,1333,'ererê','63470000'),(6,1334,'espacinha','62207000'),(6,1335,'esperança','62708000'),(6,1336,'espinho','62388000'),(6,1337,'eusébio','61760000'),(6,1338,'farias brito','63185000'),(6,1339,'fátima','62772000'),(6,1340,'feiticeiro','63477000'),(6,1341,'feitosa','63225000'),(6,1342,'felizardo','63345000'),(6,1343,'flamengo','63592000'),(6,1344,'flores','62253000'),(6,1345,'flores','62903000'),(6,1346,'forquilha','62115000'),(6,1347,'fortaleza','00000000'),(6,1348,'fortim','62815000'),(6,1349,'frecheirinha','62340000'),(6,1350,'gado','62782000'),(6,1351,'gado dos rodrigues','62784000'),(6,1352,'gameleira de são sebastião','63208000'),(6,1353,'garças','62541000'),(6,1354,'gázea','62235000'),(6,1355,'general sampaio','62738000'),(6,1356,'general tibúrcio','62305000'),(6,1357,'genipapeiro','62754100'),(6,1358,'gereraú','61887000'),(6,1359,'giqui','62830000'),(6,1360,'girau','62807500'),(6,1361,'graça','62365000'),(6,1362,'granja','62430000'),(6,1363,'granjeiro','63230000'),(6,1364,'groairas','62190000'),(6,1365,'guaiúba','61890000'),(6,1366,'guajiru','62818000'),(6,1367,'guanacés','62856000'),(6,1368,'guaraciaba do norte','62380000'),(6,1369,'guaramiranga','62766000'),(6,1370,'guararu','61690000'),(6,1371,'guassi','62794000'),(6,1372,'guassossé','63527000'),(6,1373,'guia','63885000'),(6,1374,'guriú','62408000'),(6,1375,'hidrolândia','62270000'),(6,1376,'holanda','63760000'),(6,1377,'horizonte','62880000'),(6,1378,'iapi','63643000'),(6,1379,'iara','63390000'),(6,1380,'ibaretama','63970000'),(6,1381,'ibiapaba','63725000'),(6,1382,'ibiapina','62360000'),(6,1383,'ibicatu','63558000'),(6,1384,'ibicuã','63608000'),(6,1385,'ibicuitaba','62813000'),(6,1386,'ibicuitinga','62955000'),(6,1387,'iborepi','63303000'),(6,1388,'ibuaçu','63890000'),(6,1389,'ibuguaçu','62448000'),(6,1390,'icapuí','62810000'),(6,1391,'icaraí','62545000'),(6,1392,'icó','63430000'),(6,1393,'icozinho','63445000'),(6,1394,'ideal','62754000'),(6,1395,'igaroi','63528000'),(6,1396,'iguatu','63500000'),(6,1397,'independência','63640000'),(6,1398,'ingazeiras','63370000'),(6,1399,'inhamuns','63666000'),(6,1400,'inhuçu','62373000'),(6,1401,'inhuporanga','62734000'),(6,1402,'ipaporanga','62215000'),(6,1403,'ipaumirim','63340000'),(6,1404,'ipu','62250000'),(6,1405,'ipueiras','62230000'),(6,1406,'ipueiras dos gomes','62715000'),(6,1407,'iracema','62980000'),(6,1408,'irajá','62278000'),(6,1409,'irapuã','63728000'),(6,1410,'iratinga','62608000'),(6,1411,'irauçuba','62620000'),(6,1412,'isidoro','63563000'),(6,1413,'itacima','61893000'),(6,1414,'itaguá','63152000'),(6,1415,'itaiçaba','62820000'),(6,1416,'itaipaba','62872000'),(6,1417,'itaitinga','61880000'),(6,1418,'itans','62746000'),(6,1419,'itapagé','62600000'),(6,1420,'itapebussu','61988000'),(6,1421,'itapeim','62843000'),(6,1422,'itapipoca','62500000'),(6,1423,'itapiúna','62740000'),(6,1424,'itapó','61877000'),(6,1425,'itarema','62590000'),(6,1426,'itatira','62720000'),(6,1427,'jaburuna','62354000'),(6,1428,'jacampari','63895000'),(6,1429,'jacarecoara','62855000'),(6,1430,'jacaúna','61752000'),(6,1431,'jaguarão','62754050'),(6,1432,'jaguaretama','63480000'),(6,1433,'jaguaribara','63490000'),(6,1434,'jaguaribe','63475000'),(6,1435,'jaguaruana','62823000'),(6,1436,'jaibaras','62107000'),(6,1437,'jamacaru','63207000'),(6,1438,'jandrangoeira','63642000'),(6,1439,'jardim','63290000'),(6,1440,'jardim','62684000'),(6,1441,'jardimirim','63295000'),(6,1442,'jati','63275000'),(6,1443,'jijoca de jericoacoara','62598000'),(6,1444,'joão cordeiro','62158000'),(6,1445,'jordão','62108000'),(6,1446,'josé de alencar','63505000'),(6,1447,'juá','62628000'),(6,1448,'juá','63940000'),(6,1449,'juatama','63910000'),(6,1450,'juazeiro de baixo','62945000'),(6,1451,'juazeiro do norte','00000000'),(6,1452,'jubaia','61955000'),(6,1453,'jucás','63580000'),(6,1454,'jurema','00000000'),(6,1455,'justiniano serpa','61751000'),(6,1456,'lacerda','63820000'),(6,1457,'ladeira grande','61953000'),(6,1458,'lagoa de são josé','62754150'),(6,1459,'lagoa do juvenal','61991000'),(6,1460,'lagoa do mato','62725000'),(6,1461,'lagoa dos crioulos','63158000'),(6,1462,'lagoa grande','62542000'),(6,1463,'lagoa grande','62942000'),(6,1464,'lagoa grande','62902000'),(6,1465,'lagoinha','62922000'),(6,1466,'lambedouro','62308000'),(6,1467,'lameiro','63134000'),(6,1468,'lavras da mangabeira','63300000'),(6,1469,'lima campos','63435000'),(6,1470,'limoeiro do norte','62930000'),(6,1471,'lisieux','62293000'),(6,1472,'livramento','62238000'),(6,1473,'logradouro','62292000'),(6,1474,'macambira','62225000'),(6,1475,'macaóca','63865000'),(6,1476,'macaraú','62285000'),(6,1477,'maceió','62819000'),(6,1478,'madalena','63860000'),(6,1479,'major simplício','62208000'),(6,1480,'majorlândia','62809000'),(6,1481,'malhada grande','62294000'),(6,1482,'mangabeira','63307000'),(6,1483,'manibu','62814000'),(6,1484,'manituba','63830000'),(6,1485,'mapuá','63476000'),(6,1486,'maracanaú','00000000'),(6,1487,'maraguá','63218000'),(6,1488,'maranguape','00000000'),(6,1489,'mararupá','63216000'),(6,1490,'marco','62560000'),(6,1491,'marinheiros','62520000'),(6,1492,'marrecas','63664000'),(6,1493,'marrocos','63084000'),(6,1494,'marruás','63665000'),(6,1495,'martinópole','62450000'),(6,1496,'massapê','62140000'),(6,1497,'mata fresca','62808000'),(6,1498,'matias','62645000'),(6,1499,'matriz','62232000'),(6,1500,'mauriti','63210000'),(6,1501,'mel','63587000'),(6,1502,'meruoca','62130000'),(6,1503,'messejana','00000000'),(6,1504,'miguel xavier','63228000'),(6,1505,'milagres','63250000'),(6,1506,'milhã','63635000'),(6,1507,'milton belo','62754200'),(6,1508,'mineirolândia','63632000'),(6,1509,'miragem','63223000'),(6,1510,'miraíma','62530000'),(6,1511,'mirambé','61685000'),(6,1512,'missão nova','63203000'),(6,1513,'missão velha','63200000'),(6,1514,'missi','62625000'),(6,1515,'moitas','62543000'),(6,1516,'mombaça','63610000'),(6,1517,'mondubim','00000000'),(6,1518,'monguba','61860000'),(6,1519,'monsenhor tabosa','63780000'),(6,1520,'monte alegre','63389000'),(6,1521,'monte alegre','62703000'),(6,1522,'monte castelo','63154100'),(6,1523,'monte grave','63639000'),(6,1524,'monte sion','63695000'),(6,1525,'montenebo','63715000'),(6,1526,'morada nova','62940000'),(6,1527,'moraújo','62480000'),(6,1528,'morrinhos','62550000'),(6,1529,'morrinhos novos','62386000'),(6,1530,'morro branco','62727000'),(6,1531,'mucambo','62170000'),(6,1532,'mulungu','62764000'),(6,1533,'mulungu','63606000'),(6,1534,'mumbaba','62142000'),(6,1535,'mundau','62695000'),(6,1536,'muribeca','62296000'),(6,1537,'muriti','00000000'),(6,1538,'mutambeiras','62154000'),(6,1539,'naraniu','63550000'),(6,1540,'nascente','62544000'),(6,1541,'nenenlândia','63814000'),(6,1542,'nossa senhora do livramento','63790000'),(6,1543,'nova betânia','63187000'),(6,1544,'nova betânia','62205000'),(6,1545,'nova fátima','62245000'),(6,1546,'nova floresta','63478000'),(6,1547,'nova olinda','63165000'),(6,1548,'nova russas','62200000'),(6,1549,'nova vida','63980000'),(6,1550,'novo assis','63690000'),(6,1551,'novo oriente','63740000'),(6,1552,'novo oriente','62759100'),(6,1553,'ocara','62755000'),(6,1554,'oiticica','63730000'),(6,1555,'oiticica','63984000'),(6,1556,'olho-d\'água','62113000'),(6,1557,'olho-d\'água da bica','62964000'),(6,1558,'oliveiras','63775000'),(6,1559,'orós','63520000'),(6,1560,'pacajus','62870000'),(6,1561,'pacatuba','61800000'),(6,1562,'pacoti','62770000'),(6,1563,'pacujá','62180000'),(6,1564,'padre cícero','63082000'),(6,1565,'padre linhares','62146000'),(6,1566,'padre vieira','62315000'),(6,1567,'pajeú','63172000'),(6,1569,'palestina','63215000'),(6,1570,'palestina','63525000'),(6,1571,'palestina do norte','62134000'),(6,1572,'palhano','62910000'),(6,1573,'palmácia','62780000'),(6,1574,'palmatória','62744000'),(6,1575,'panacuí','62565000'),(6,1576,'paracuá','62465000'),(6,1577,'paracuru','62680000'),(6,1578,'paraipaba','62685000'),(6,1579,'parajuru','62848000'),(6,1580,'parambu','63680000'),(6,1581,'paramoti','62736000'),(6,1582,'parangaba','00000000'),(6,1583,'parapuí','62156000'),(6,1584,'parazinho','62437000'),(6,1585,'paripueira','62844000'),(6,1586,'passagem','62425000'),(6,1587,'passagem','63835000'),(6,1588,'passagem funda','62754350'),(6,1589,'pasta','63622000'),(6,1590,'patacas','61756000'),(6,1591,'patriarca','62104000'),(6,1592,'pavuna','61870000'),(6,1593,'pecém','62674000'),(6,1594,'pedra branca','63630000'),(6,1595,'pedra branca','62754250'),(6,1596,'pedras','62943000'),(6,1597,'pedrinhas','63455000'),(6,1598,'peixe','62907000'),(6,1599,'peixe gordo','62962000'),(6,1600,'penaforte','63280000'),(6,1601,'pentecoste','62640000'),(6,1602,'pereiro','63460000'),(6,1603,'pernambuquinho','62768000'),(6,1604,'pessoa anta','62445000'),(6,1605,'pindoguaba','62330000'),(6,1606,'pindoretama','62860000'),(6,1607,'pio x','63315000'),(6,1608,'piquet carneiro','63605000'),(6,1609,'pirabibu','63802000'),(6,1610,'pirangi','63982000'),(6,1611,'pires ferreira','62255000'),(6,1612,'pitombeira','62606000'),(6,1613,'pitombeiras','62858000'),(6,1614,'plácido martins','62754300'),(6,1615,'poço','63268000'),(6,1616,'poço comprido','62546000'),(6,1617,'poço comprido','63495000'),(6,1618,'poço grande','63588000'),(6,1619,'podimirim','63255000'),(6,1620,'ponta da serra','63138000'),(6,1621,'poranga','62220000'),(6,1622,'porfirio sampaio','62648000'),(6,1623,'porteiras','63270000'),(6,1624,'potengi','63160000'),(6,1625,'poti','63720000'),(6,1626,'potiretama','62990000'),(6,1627,'prata','62575000'),(6,1628,'prudente de morais','63815000'),(6,1629,'quatiguaba','62310000'),(6,1630,'queimadas','62886000'),(6,1631,'quimami','63205000'),(6,1632,'quincoé','63562000'),(6,1633,'quincuncá','63188000'),(6,1634,'quitaiús','63308000'),(6,1635,'quiterianópolis','63650000'),(6,1636,'quixadá','63900000'),(6,1637,'quixariú','63154000'),(6,1638,'quixelô','63515000'),(6,1639,'quixeramobim','63800000'),(6,1640,'quixeré','62920000'),(6,1641,'quixoá','63502000'),(6,1642,'raimundo martins','62295000'),(6,1643,'redenção','62790000'),(6,1644,'reriutaba','62260000'),(6,1645,'riachão do banabuiú','63631000'),(6,1646,'riacho grande','63178000'),(6,1647,'riacho verde','63548000'),(6,1648,'riacho vermelho','63511000'),(6,1649,'rinaré','63965000'),(6,1650,'roldão','62948000'),(6,1651,'russas','62900000'),(6,1652,'sabiaguaba','62547000'),(6,1653,'saboeiro','63590000'),(6,1654,'sacramento','62218000'),(6,1655,'salão','62475000'),(6,1656,'salitre','63155000'),(6,1657,'sambaíba','62433000'),(6,1658,'santa ana','62776000'),(6,1659,'santa fé','63136000'),(6,1660,'santa felícia','63565000'),(6,1661,'santa luzia','62652000'),(6,1662,'santa quitéria','62280000'),(6,1663,'santa tereza','62808500'),(6,1664,'santa tereza','63668000'),(6,1665,'santana','63735000'),(6,1666,'santana do acaraú','62150000'),(6,1667,'santana do cariri','63190000'),(6,1668,'santarém','63523000'),(6,1669,'santo antônio','63561000'),(6,1670,'santo antônio','62213000'),(6,1671,'santo antônio','63385000'),(6,1672,'santo antônio','63705000'),(6,1673,'santo antônio da pindoba','62363000'),(6,1674,'santo antônio dos fernandes','62138000'),(6,1675,'são bartolomeu','63533000'),(6,1676,'são benedito','62370000'),(6,1677,'são domingos','62732000'),(6,1678,'são felipe','63265000'),(6,1679,'são francisco','63652000'),(6,1680,'são francisco','62136000'),(6,1681,'são gerardo','62792000'),(6,1682,'são gonçalo do amarante','62670000'),(6,1683,'são gonçalo do umari','63617000'),(6,1684,'são joão de deus','62908000'),(6,1685,'são joão do jaguaribe','62965000'),(6,1686,'são joão dos queiroz','63948000'),(6,1687,'são joaquim','62663000'),(6,1688,'são joaquim do salgado','63604000'),(6,1689,'são josé','63245000'),(6,1690,'são josé','62984000'),(6,1691,'são josé','62825000'),(6,1692,'são josé','62913000'),(6,1693,'são josé das lontras','62248000'),(6,1694,'são josé de solonópole','63621000'),(6,1695,'são josé do torto','62105000'),(6,1696,'são luís do curu','62665000'),(6,1697,'são miguel','63219000'),(6,1698,'são miguel','63825000'),(6,1699,'são paulo','63568000'),(6,1700,'são pedro','63585000'),(6,1701,'são pedro','62209000'),(6,1702,'são romão','63198000'),(6,1703,'são sebastião','63535000'),(6,1704,'são vicente','63450000'),(6,1705,'são vicente','63618000'),(6,1706,'sapo','62152000'),(6,1707,'sapupara','61950000'),(6,1708,'sebastião de abreu','62642000'),(6,1709,'senador carlos jereissati','61865000'),(6,1710,'senador pompeu','63600000'),(6,1711,'senador sá','62470000'),(6,1712,'sereno de cima','62759200'),(6,1713,'serra do félix','62846000'),(6,1714,'serragem','62759300'),(6,1715,'serrota','63392000'),(6,1716,'serrota','62477000'),(6,1717,'serrote','63507000'),(6,1718,'serrote','62678000'),(6,1719,'sitiá','63962000'),(6,1720,'sítios novos','61695000'),(6,1721,'siupê','62675000'),(6,1722,'sobral','00000000'),(6,1723,'soledade','62607000'),(6,1724,'solonópole','63620000'),(6,1725,'suassurana','63510000'),(6,1726,'sucatinga','62842000'),(6,1727,'sucesso','63765000'),(6,1728,'sussuanha','62385000'),(6,1729,'tabainha','62335000'),(6,1730,'taboleiro','63573000'),(6,1731,'tabuleiro do norte','62960000'),(6,1732,'taíba','62677000'),(6,1733,'tamboril','63750000'),(6,1734,'tanques','61976000'),(6,1735,'tapera','61758000'),(6,1736,'taperuaba','62106000'),(6,1737,'tapuiara','63935000'),(6,1738,'targinos','62713000'),(6,1739,'tarrafas','63145000'),(6,1740,'tauá','63660000'),(6,1741,'tejuçuoca','62610000'),(6,1742,'tianguá','62320000'),(6,1743,'timonha','62440000'),(6,1744,'tipi','63365000'),(6,1745,'tomé','62924000'),(6,1746,'trairi','62690000'),(6,1747,'trapiá','62283000'),(6,1748,'trapiá','62110000'),(6,1749,'trici','63663000'),(6,1750,'tróia','63633000'),(6,1751,'trussu','63564000'),(6,1752,'tucunduba','61688000'),(6,1753,'tucuns','63710000'),(6,1754,'tuína','62141000'),(6,1755,'tururu','62655000'),(6,1756,'ubajara','62350000'),(6,1757,'ubaúna','62168000'),(6,1758,'ubiraçu','62710000'),(6,1759,'uiraponga','62950000'),(6,1760,'umari','63310000'),(6,1761,'umarituba','62672000'),(6,1762,'umburanas','63214000'),(6,1763,'umirim','62660000'),(6,1764,'uruburetama','62650000'),(6,1765,'uruoca','62460000'),(6,1766,'uruquê','63805000'),(6,1767,'varjota','62265000'),(6,1768,'várzea','63405000'),(6,1769,'várzea alegre','63540000'),(6,1770,'várzea da volta','62485000'),(6,1771,'várzea do gilo','62254000'),(6,1772,'vazantes','62752000'),(6,1773,'ventura','62125000'),(6,1774,'vertentes do lagedo','61977000'),(6,1775,'viçosa','62819500'),(6,1776,'viçosa do ceará','62300000'),(6,1777,'vila soares','62635000'),(6,10104,'canaúna','63342000'),(6,10120,'triângulo','62877000'),(6,10121,'cedro','62878500'),(6,10122,'patos dos liberatos','62879000'),(6,10123,'campestre','62879500'),(6,10124,'timbaúba dos marinheiros','62878000'),(6,10771,'penedo','61956000'),(6,10772,'umarizeiras','61959000'),(6,10773,'lages','61962000'),(6,10774,'cachoeira','61973000'),(6,10775,'são joão do amanari','61982000'),(6,10776,'papara','61967000'),(6,10777,'jubaia','61971000'),(6,10778,'manoel guedes','61984000'),(7,1778,'brasília','00000000'),(7,1779,'brazlândia','00000000'),(7,1780,'candangolândia','00000000'),(7,1781,'ceilândia','00000000'),(7,1782,'cruzeiro','00000000'),(7,1783,'gama','00000000'),(7,1784,'guará','00000000'),(7,1785,'lago norte','00000000'),(7,1786,'lago sul','00000000'),(7,1787,'núcleo bandeirante','00000000'),(7,1788,'paranoá','00000000'),(7,1789,'planaltina','00000000'),(7,1790,'recanto das emas','00000000'),(7,1791,'riacho fundo','00000000'),(7,1792,'samambaia','00000000'),(7,1793,'santa maria','00000000'),(7,1794,'são sebastião','00000000'),(7,1795,'sobradinho','00000000'),(7,1796,'taguatinga','00000000'),(8,1797,'acioli','29687000'),(8,1798,'afonso cláudio','29600000'),(8,1799,'aghá','29287000'),(8,1800,'água doce do norte','29820000'),(8,1801,'águia branca','29795000'),(8,1802,'airituba','29477000'),(8,1803,'alegre','29500000'),(8,1804,'alfredo chaves','29240000'),(8,1805,'alto calçado','29475000'),(8,1806,'alto caldeirão','29656000'),(8,1807,'alto mutum preto','29737000'),(8,1808,'alto rio novo','29760000'),(8,1809,'alto santa maria','29662000'),(8,1810,'anchieta','29230000'),(8,1811,'ângelo frechiani','00000000'),(8,1812,'anutiba','29530000'),(8,1813,'apiacá','29450000'),(8,1814,'araçatiba','29138000'),(8,1815,'aracê','29278000'),(8,1816,'aracruz','00000000'),(8,1817,'aracui','29365000'),(8,1818,'araguaia','29258000'),(8,1819,'araraí','29535000'),(8,1820,'argolas','00000000'),(8,1821,'atílio vivácqua','29490000'),(8,1822,'baía nova','00000000'),(8,1823,'baixo guandu','29730000'),(8,1824,'barra de novo brasil','29723000'),(8,1825,'barra de são francisco','29800000'),(8,1826,'barra do itapemirim','29349000'),(8,1827,'barra nova','00000000'),(8,1828,'barra seca','29954000'),(8,1829,'baunilha','00000000'),(8,1830,'bebedouro','00000000'),(8,1831,'boa esperança','29845000'),(8,1832,'boapaba','00000000'),(8,1833,'bom jesus do norte','29460000'),(8,1834,'bonsucesso','29458000'),(8,1835,'braço do rio','29967000'),(8,1836,'brejetuba','29630000'),(8,1837,'burarama','29327000'),(8,1838,'cachoeirinha de itaúna','29805000'),(8,1839,'cachoeiro de itapemirim','00000000'),(8,1840,'café','29515000'),(8,1841,'calogi','00000000'),(8,1842,'câmara','29485000'),(8,1843,'carapina','00000000'),(8,1844,'cariacica','00000000'),(8,1845,'castelo','29360000'),(8,1846,'celina','29510000'),(8,1847,'colatina','00000000'),(8,1848,'conceição da barra','29960000'),(8,1849,'conceição do castelo','29370000'),(8,1850,'conceição do muqui','29410000'),(8,1851,'conduru','29329000'),(8,1852,'praia do coqueiral','00000000'),(8,1853,'córrego dos monos','29328000'),(8,1854,'cotaxé','29855000'),(8,1855,'cristal do norte','29978000'),(8,1856,'crubixá','29242000'),(8,1857,'desengano','00000000'),(8,1858,'divino de são lourenço','29590000'),(8,1859,'divino espírito santo','29479000'),(8,1860,'djalma coutinho','29642000'),(8,1861,'domingos martins','29260000'),(8,1862,'dona américa','29445000'),(8,1863,'dores do rio preto','29580000'),(8,1864,'duas barras','29283000'),(8,1865,'ecoporanga','29850000'),(8,1866,'estrela do norte','29367000'),(8,1867,'fartura','29783000'),(8,1868,'fazenda guandu','29609000'),(8,1869,'fundão','29185000'),(8,1870,'garrafão','29649000'),(8,1871,'gironda','29326000'),(8,1872,'goiabeiras','00000000'),(8,1873,'governador lacerda de aguiar','29826000'),(8,1874,'governador lindenberg','29720000'),(8,1875,'graça aranha','00000000'),(8,1876,'gruta','29324000'),(8,1877,'guaçuí','29560000'),(8,1878,'vila guaraná','00000000'),(8,1879,'guarapari','00000000'),(8,1880,'guararema','29842000'),(8,1881,'ibatiba','29395000'),(8,1882,'ibes','00000000'),(8,1883,'ibicaba','29612000'),(8,1884,'ibiraçu','29670000'),(8,1885,'ibitirama','29540000'),(8,1886,'ibitiruí','29244000'),(8,1887,'ibituba','29740000'),(8,1888,'iconha','29280000'),(8,1889,'imburana','29853000'),(8,1890,'iriritiba','29238000'),(8,1891,'irundi','29189000'),(8,1892,'irupi','29398000'),(8,1893,'isabel','29263000'),(8,1894,'itabaiana','29884000'),(8,1895,'itaçu','29697000'),(8,1896,'itaguaçu','29690000'),(8,1897,'itaicí','29388000'),(8,1898,'itaimbé','29695000'),(8,1899,'itaipava','29338000'),(8,1900,'itamira','29889000'),(8,1901,'itaóca','29325000'),(8,1902,'itapecoá','29335000'),(8,1903,'itapemirim','29330000'),(8,1904,'itaperuna','29812000'),(8,1905,'itapina','00000000'),(8,1906,'itaquari','00000000'),(8,1907,'itarana','29620000'),(8,1908,'itaúnas','29965000'),(8,1909,'itauninhas','29948000'),(8,1910,'iúna','29390000'),(8,1911,'jabaquara','29236000'),(8,1912,'jacaraipe','00000000'),(8,1913,'jaciguá','29297000'),(8,1914,'jacupemba','00000000'),(8,1915,'jaguaré','29950000'),(8,1916,'jerônimo monteiro','29550000'),(8,1917,'joaçuba','29860000'),(8,1918,'joão neiva','29680000'),(8,1919,'joatuba','29617000'),(8,1920,'josé carlos','29455000'),(8,1921,'jucu','00000000'),(8,1922,'lajinha','29755000'),(8,1923,'laranja da terra','29615000'),(8,1924,'limoeiro','29369000'),(8,1925,'linhares','00000000'),(8,1926,'mangaraí','29644000'),(8,1927,'mantenópolis','29770000'),(8,1928,'marataízes','29345000'),(8,1929,'marechal floriano','29255000'),(8,1930,'marilândia','29725000'),(8,1931,'matilde','29248000'),(8,1932,'melgaço','29276000'),(8,1933,'menino jesus','29384000'),(8,1934,'mimoso do sul','29400000'),(8,1935,'montanha','29890000'),(8,1936,'monte carmelo do rio novo','29767000'),(8,1937,'monte pio','29368000'),(8,1938,'monte sinai','29807000'),(8,1939,'mucurici','29880000'),(8,1940,'mundo novo','29585000'),(8,1941,'muniz freire','29380000'),(8,1942,'muqui','29480000'),(8,1943,'nestor gomes','29949000'),(8,1944,'nova almeida','00000000'),(8,1945,'nova canaã','29333000'),(8,1946,'nova venécia','29830000'),(8,1947,'nova verona','29947000'),(8,1948,'novo brasil','29724000'),(8,1949,'novo horizonte','29852000'),(8,1950,'pacotuba','29323000'),(8,1951,'paineiras','29342000'),(8,1952,'palmeira','29699000'),(8,1953,'palmerino','29764000'),(8,1954,'pancas','29750000'),(8,1955,'paraju','29273000'),(8,1956,'paulista','29815000'),(8,1957,'pedro canário','29970000'),(8,1958,'pendanga','29675000'),(8,1959,'pequiá','29392000'),(8,1960,'perdição','29394000'),(8,1961,'piaçu','29386000'),(8,1962,'pinheiros','29980000'),(8,1963,'piracema','29607000'),(8,1964,'piúma','29285000'),(8,1965,'ponte de itabapoana','29440000'),(8,1966,'ponto belo','29885000'),(8,1967,'pontões','29604000'),(8,1968,'porangá','29817000'),(8,1969,'barra do riacho','00000000'),(8,1970,'praia grande','29187000'),(8,1971,'presidente kennedy','29350000'),(8,1972,'princesa','29293000'),(8,1973,'queimado','00000000'),(8,1974,'quilômetro 14 do mutum','29735000'),(8,1975,'regência','00000000'),(8,1976,'riacho','00000000'),(8,1977,'ribeirão do cristo','29250000'),(8,1978,'rio bananal','29920000'),(8,1979,'rio calçado','00000000'),(8,1980,'rio muqui','29340000'),(8,1981,'rio novo do sul','29290000'),(8,1982,'rio preto','29841000'),(8,1983,'rive','29520000'),(8,1984,'sagrada família','29253000'),(8,1985,'santa angélica','29525000'),(8,1986,'santa cruz','00000000'),(8,1987,'santa júlia','29669000'),(8,1988,'santa leopoldina','29640000'),(8,1989,'santa luzia de mantenópolis','29772000'),(8,1990,'santa luzia do azul','29823000'),(8,1991,'santa luzia do norte','29856000'),(8,1992,'santa maria de jetibá','29645000'),(8,1993,'santa marta','29545000'),(8,1994,'santa teresa','29650000'),(8,1995,'santa terezinha','29875000'),(8,1996,'santíssima trindade','29393000'),(8,1997,'santo agostinho','29824000'),(8,1998,'santo antônio','29810000'),(8,1999,'santo antônio do canaã','29654000'),(8,2000,'santo antônio do muqui','29407000'),(8,2001,'santo antônio do pousalegre','29848000'),(8,2002,'santo antônio do quinze','29839000'),(8,2003,'são domingos do norte','29745000'),(8,2004,'são francisco','29748000'),(8,2005,'são francisco xavier do guandu','29613000'),(8,2006,'são gabriel da palha','29780000'),(8,2007,'são geraldo','29776000'),(8,2008,'são jacinto','29667000'),(8,2009,'são joão de petrópolis','29660000'),(8,2010,'são joão de viçosa','29378000'),(8,2011,'são joão do sobrado','29985000'),(8,2013,'são jorge do oliveira','29635000'),(8,2014,'são jorge do tiradentes','29925000'),(8,2015,'são josé das torres','29420000'),(8,2016,'são josé de mantenópolis','29778000'),(8,2017,'são josé do calçado','29470000'),(8,2018,'são josé do sobradinho','29847000'),(8,2019,'são mateus','00000000'),(8,2020,'são pedro','29389000'),(8,2021,'são pedro de itabapoana','29405000'),(8,2022,'são pedro de rates','29564000'),(8,2023,'são rafael','29918000'),(8,2024,'são roque do canaã','29665000'),(8,2025,'são tiago','29562000'),(8,2026,'são torquato','00000000'),(8,2027,'sapucaia','29728000'),(8,2028,'serra','00000000'),(8,2029,'serra pelada','29603000'),(8,2030,'sobreiro','29619000'),(8,2031,'sooretama','29927000'),(8,2032,'timbuí','29188000'),(8,2033,'todos os santos','29228000'),(8,2034,'urânia','29246000'),(8,2035,'vargem alta','29295000'),(8,2036,'vargem grande do soturno','29321000'),(8,2037,'venda nova do imigrante','29375000'),(8,2038,'viana','29135000'),(8,2039,'vieira machado','29383000'),(8,2040,'vila nelita','29822000'),(8,2041,'vila nova de bananal','29742000'),(8,2042,'vila pavão','29843000'),(8,2043,'vila valério','29785000'),(8,2044,'vila velha','00000000'),(8,2045,'vila verde','29752000'),(8,2046,'vinhático','29894000'),(8,2047,'vinte e cinco de julho','29652000'),(8,2048,'vitória','00000000'),(8,10105,'são joão do norte','29537000'),(8,10106,'são raimundo da pedra menina','29588000'),(8,10107,'santa cruz de irupi','29399000'),(8,10108,'são joão do príncipe','29391000'),(8,10109,'nossa senhora de fátima','29957000'),(8,10110,'santa maria de marechal','29259000'),(8,10111,'alto castelinho','29296000'),(8,10112,'prosperidade','29299000'),(8,10113,'são josé de fruteiras','29298000'),(8,10114,'são jorge da barra seca','29790000'),(8,10115,'jurama','29793000'),(8,10711,'barra do sahy','00000000'),(9,7373,'alto alegre','69350000'),(9,7374,'amajari','69343000'),(9,7375,'boa vista','00000000'),(9,7376,'bonfim','69380000'),(9,7377,'cantá','69390000'),(9,7378,'caracaraí','69360000'),(9,7379,'caroebe','69378000'),(9,7380,'iracema','69348000'),(9,7381,'mucajaí','69340000'),(9,7382,'normandia','69355000'),(9,7383,'pacaraima','69345000'),(9,7384,'rorainópolis','69373000'),(9,7385,'são joão da baliza','69375000'),(9,7386,'são luiz','69370000'),(9,7387,'uiramutã','69358000'),(9,10861,'santa cecília','69395000'),(9,10862,'félix pinto','69397000'),(9,10863,'taboca','69399000'),(9,10864,'novo paraíso','69365000'),(10,2049,'abadia de goiás','75345000'),(10,2050,'abadiânia','72940000'),(10,2051,'acreúna','75960000'),(10,2052,'adelândia','76155000'),(10,2053,'água fria de goiás','73780000'),(10,2054,'água limpa','75665000'),(10,2055,'águas lindas de goiás','72910000'),(10,2056,'alexânia','72920000'),(10,2057,'aloândia','75615000'),(10,2058,'alto alvorada','75283000'),(10,2059,'alto horizonte','76560000'),(10,2060,'alto paraíso de goiás','73770000'),(10,2061,'alvorada do norte','73950000'),(10,2062,'amaralina','76493000'),(10,2063,'americano do brasil','76165000'),(10,2064,'amorinópolis','76140000'),(10,2065,'anápolis','00000000'),(10,2066,'anhangüera','75770000'),(10,2067,'anicuns','76170000'),(10,2068,'aparecida','76163000'),(10,2069,'aparecida de goiânia','00000000'),(10,2070,'aparecida de goiás','76363000'),(10,2071,'aparecida do rio claro','76256000'),(10,2072,'aparecida do rio doce','75827000'),(10,2073,'aporé','75825000'),(10,2074,'araçu','75410000'),(10,2075,'aragarças','76240000'),(10,2076,'aragoiânia','75360000'),(10,2077,'araguapaz','76720000'),(10,2078,'arenópolis','76235000'),(10,2079,'aruanã','76710000'),(10,2080,'aurilândia','76120000'),(10,2081,'auriverde','76513000'),(10,2082,'avelinópolis','75395000'),(10,2083,'bacilândia','76222000'),(10,2084,'baliza','76250000'),(10,2085,'bandeirantes','76523000'),(10,2086,'barbosilândia','73907000'),(10,2087,'barro alto','76390000'),(10,2088,'bela vista de goiás','75240000'),(10,2089,'bom jardim de goiás','76245000'),(10,2090,'bom jesus de goiás','75570000'),(10,2091,'bonfinópolis','75195000'),(10,2092,'bonópolis','76555000'),(10,2093,'brazabrantes','75440000'),(10,2094,'britânia','76280000'),(10,2095,'buenolândia','76606000'),(10,2096,'buriti alegre','75660000'),(10,2097,'buriti de goiás','76152000'),(10,2098,'buritinópolis','73975000'),(10,2099,'cabeceiras','73870000'),(10,2100,'cachoeira alta','75870000'),(10,2101,'cachoeira de goiás','76125000'),(10,2102,'cachoeira dourada','75560000'),(10,2103,'caçu','75813000'),(10,2104,'caiapônia','75850000'),(10,2105,'caiçara','76742000'),(10,2106,'calcilândia','76604000'),(10,2107,'caldas novas','75690000'),(10,2108,'caldazinha','75245000'),(10,2109,'calixto','75158000'),(10,2110,'campestre de goiás','75385000'),(10,2111,'campinaçu','76440000'),(10,2112,'campinorte','76410000'),(10,2113,'campo alegre de goiás','75795000'),(10,2114,'campo limpo','75545000'),(10,2115,'campolândia','76133000'),(10,2116,'campos belos','73840000'),(10,2117,'campos verdes','76515000'),(10,2118,'cana brava','76458000'),(10,2119,'canadá','76274000'),(10,2120,'capelinha','76174000'),(10,2121,'caraíba','75263000'),(10,2122,'carmo do rio verde','76340000'),(10,2123,'castelândia','75925000'),(10,2124,'castrinópolis','76313000'),(10,2125,'catalão','00000000'),(10,2126,'caturaí','75430000'),(10,2127,'cavalcante','73790000'),(10,2128,'cavalheiro','75783000'),(10,2129,'cebrasa','75156000'),(10,2130,'ceres','76300000'),(10,2131,'cezarina','76195000'),(10,2132,'chapadão do céu','75828000'),(10,2133,'choupana','76172000'),(10,2134,'cibele','76682000'),(10,2135,'cidade ocidental','72880000'),(10,2136,'cirilândia','76323000'),(10,2137,'cocalzinho de goiás','72975000'),(10,2138,'colinas do sul','73740000'),(10,2139,'córrego do ouro','76145000'),(10,2140,'córrego rico','73759000'),(10,2141,'corumbá de goiás','72960000'),(10,2142,'corumbaíba','75680000'),(10,2143,'cristalina','73850000'),(10,2144,'cristianópolis','75230000'),(10,2145,'crixás','76510000'),(10,2146,'cromínia','75635000'),(10,2147,'cruzeiro do norte','76554000'),(10,2148,'cumari','75760000'),(10,2149,'damianópolis','73980000'),(10,2150,'damolândia','75420000'),(10,2151,'davidópolis','76602000'),(10,2152,'davinópolis','75730000'),(10,2153,'diolândia','76683000'),(10,2154,'diorama','76260000'),(10,2155,'divinópolis de goiás','73865000'),(10,2156,'domiciano ribeiro','75784000'),(10,2157,'doverlândia','75855000'),(10,2158,'edealina','75945000'),(10,2159,'edéia','75940000'),(10,2160,'estrela do norte','76485000'),(10,2161,'faina','76740000'),(10,2162,'fazenda nova','76220000'),(10,2163,'firminópolis','76105000'),(10,2164,'flores de goiás','73890000'),(10,2165,'formosa','00000000'),(10,2166,'formoso','76470000'),(10,2167,'forte','73764000'),(10,2168,'gameleira de goiás','75184000'),(10,2169,'geriaçu','76402000'),(10,2170,'goialândia','75151000'),(10,2171,'goianápolis','75170000'),(10,2172,'goiandira','75740000'),(10,2173,'goianésia','76380000'),(10,2174,'goiânia','00000000'),(10,2175,'goianira','75370000'),(10,2176,'goiás','76600000'),(10,2177,'goiatuba','75600000'),(10,2178,'gouvelândia','75865000'),(10,2179,'guapó','75350000'),(10,2180,'guaraíta','76690000'),(10,2181,'guarani de goiás','73910000'),(10,2182,'guarinos','76385000'),(10,2183,'heitoraí','76670000'),(10,2184,'hidrolândia','75340000'),(10,2185,'hidrolina','76375000'),(10,2186,'iaciara','73920000'),(10,2187,'inaciolândia','75550000'),(10,2188,'indiara','75955000'),(10,2189,'inhumas','75400000'),(10,2190,'interlândia','75152000'),(10,2191,'ipameri','75780000'),(10,2192,'iporá','76200000'),(10,2193,'israelândia','76205000'),(10,2194,'itaberaí','76630000'),(10,2195,'itaguaçu','75893000'),(10,2196,'itaguari','76650000'),(10,2197,'itaguaru','76660000'),(10,2198,'itajá','75815000'),(10,2199,'itapaci','76360000'),(10,2200,'itapirapuã','76290000'),(10,2201,'itapuranga','76680000'),(10,2202,'itarumã','75810000'),(10,2203,'itauçu','75450000'),(10,2204,'itumbiara','00000000'),(10,2205,'ivolândia','76130000'),(10,2206,'jacilândia','76293000'),(10,2207,'jandaia','75950000'),(10,2208,'jaraguá','76330000'),(10,2209,'jataí','00000000'),(10,2210,'jaupaci','76210000'),(10,2211,'jeroaquara','76744000'),(10,2212,'jesúpolis','75495000'),(10,2213,'joanápolis','75157000'),(10,2214,'joviânia','75610000'),(10,2216,'juscelino kubitschek','76478000'),(10,2217,'jussara','76270000'),(10,2218,'lagoa do bauzinho','75912000'),(10,2219,'lagolândia','72984000'),(10,2220,'leopoldo de bulhões','75190000'),(10,2221,'lucilândia','76257000'),(10,2222,'luziânia','00000000'),(10,2223,'mairipotaba','75630000'),(10,2224,'mambaí','73970000'),(10,2225,'mara rosa','76490000'),(10,2226,'marcianópolis','75574000'),(10,2227,'marzagão','75670000'),(10,2228,'matrinchã','76730000'),(10,2229,'maurilândia','75930000'),(10,2230,'meia ponte','75547000'),(10,2231,'messianópolis','76138000'),(10,2232,'mimoso de goiás','73730000'),(10,2233,'minaçu','76450000'),(10,2234,'mineiros','75830000'),(10,2235,'moiporá','76135000'),(10,2236,'monte alegre de goiás','73830000'),(10,2237,'montes claros de goiás','76255000'),(10,2238,'montividiu','75915000'),(10,2239,'montividiu do norte','76465000'),(10,2240,'morrinhos','75650000'),(10,2241,'morro agudo de goiás','76355000'),(10,2242,'mossâmedes','76150000'),(10,2243,'mozarlândia','76700000'),(10,2244,'mundo novo','76530000'),(10,2245,'mutunópolis','76540000'),(10,2246,'natinópolis','76383000'),(10,2247,'nazário','76180000'),(10,2248,'nerópolis','75460000'),(10,2249,'niquelândia','76420000'),(10,2250,'nova américa','76345000'),(10,2251,'nova aurora','75750000'),(10,2252,'nova crixás','76520000'),(10,2253,'nova glória','76305000'),(10,2254,'nova iguaçu de goiás','76495000'),(10,2255,'nova roma','73820000'),(10,2256,'nova veneza','75470000'),(10,2257,'novo brasil','76285000'),(10,2258,'novo gama','00000000'),(10,2259,'novo planalto','76580000'),(10,2260,'olaria do angico','75812000'),(10,2261,'olhos d\'água','75714100'),(10,2262,'orizona','75280000'),(10,2263,'ouro verde de goiás','75165000'),(10,2264,'ouroana','75911000'),(10,2265,'ouvidor','75715000'),(10,2266,'padre bernardo','73700000'),(10,2267,'palestina de goiás','75845000'),(10,2268,'palmeiras de goiás','76190000'),(10,2269,'palmelo','75210000'),(10,2270,'palminópolis','75990000'),(10,2271,'panamá','75580000'),(10,2272,'paranaiguara','75880000'),(10,2273,'paraúna','75980000'),(10,2274,'pau-terra','76412000'),(10,2275,'pedra branca','75714200'),(10,2276,'perolândia','75823000'),(10,2277,'petrolina de goiás','75480000'),(10,2278,'pilar de goiás','76370000'),(10,2279,'piloândia','76208000'),(10,2280,'piracanjuba','75640000'),(10,2281,'piranhas','76230000'),(10,2282,'pirenópolis','72980000'),(10,2283,'pires belo','75714300'),(10,2284,'pires do rio','75200000'),(10,2285,'planaltina de goiás','00000000'),(10,2286,'pontalina','75620000'),(10,2287,'porangatu','76550000'),(10,2288,'porteirão','75603000'),(10,2289,'portelândia','75835000'),(10,2290,'posse','73900000'),(10,2291,'posse d\'abadia','72944000'),(10,2292,'professor jamil','75645000'),(10,2293,'quirinópolis','75860000'),(10,2294,'registro do araguaia','76258000'),(10,2295,'rianápolis','76315000'),(10,2297,'rio quente','75695000'),(10,2298,'rio verde','00000000'),(10,2299,'riverlândia','75914000'),(10,2300,'campo limpo de goiás','75160000'),(10,2301,'rosalândia','76103000'),(10,2302,'rubiataba','76350000'),(10,2303,'sanclerlândia','76160000'),(10,2304,'santa bárbara de goiás','75390000'),(10,2305,'santa cruz das lajes','75913000'),(10,2306,'santa cruz de goiás','75220000'),(10,2307,'santa fé de goiás','76265000'),(10,2308,'santa helena de goiás','75920000'),(10,2309,'santa isabel','76320000'),(10,2310,'santa rita do araguaia','75840000'),(10,2311,'santa rita do novo destino','76395000'),(10,2312,'santa rosa','73819000'),(10,2313,'santa rosa de goiás','75455000'),(10,2314,'santa tereza de goiás','76480000'),(10,2315,'santa terezinha de goiás','76500000'),(10,2316,'santo antônio da barra','75935000'),(10,2317,'santo antônio de goiás','75375000'),(10,2318,'santo antônio do descoberto','72900000'),(10,2319,'santo antônio do rio verde','75714000'),(10,2320,'são domingos','73860000'),(10,2321,'são francisco de goiás','75490000'),(10,2322,'são gabriel de goiás','73758000'),(10,2323,'são joão','76610000'),(10,2324,'são joão d\'aliança','73760000'),(10,2325,'são joão da paraúna','75985000'),(10,2326,'são luís de montes belos','76100000'),(10,2327,'são luiz do norte','76365000'),(10,2328,'são luiz do tocantins','76422000'),(10,2329,'são miguel do araguaia','76590000'),(10,2330,'são miguel do passa quatro','75185000'),(10,2331,'são patrício','76343000'),(10,2332,'são sebastião do rio claro','76278000'),(10,2333,'são simão','75890000'),(10,2334,'são vicente','75159000'),(10,2335,'sarandi','75549000'),(10,2336,'senador canedo','75250000'),(10,2337,'serra dourada','76224000'),(10,2338,'serranópolis','75820000'),(10,2339,'silvânia','75180000'),(10,2340,'simolândia','73930000'),(10,2341,'sítio d\'abadia','73990000'),(10,2342,'sousânia','75154000'),(10,2343,'taquaral de goiás','76640000'),(10,2344,'taveira','76423000'),(10,2345,'teresina de goiás','73795000'),(10,2346,'terezópolis de goiás','75175000'),(10,2347,'lagoa santa','75819000'),(10,2348,'três ranchos','75720000'),(10,2349,'trindade','75380000'),(10,2350,'trombas','76460000'),(10,2351,'tupiracaba','76424000'),(10,2352,'turvânia','76110000'),(10,2353,'turvelândia','75970000'),(10,2354,'uirapuru','76525000'),(10,2355,'uruaçu','76400000'),(10,2356,'uruana','76335000'),(10,2357,'uruita','76338000'),(10,2358,'urutaí','75790000'),(10,2359,'uvá','76608000'),(10,2360,'valdelândia','76352000'),(10,2361,'valparaíso de goiás','00000000'),(10,2362,'varjão','75355000'),(10,2363,'vianópolis','75260000'),(10,2364,'vicentinópolis','75555000'),(10,2365,'vila boa','73825000'),(10,2367,'vila propício','76393000'),(10,2368,'vila sertaneja','76528000'),(10,10090,'ipiranga de goiás','76304000'),(10,10144,'rialma','76310000'),(10,10206,'jk','73818000'),(10,10207,'bezerra','73817000'),(10,10237,'são jorge','73778000'),(10,10238,'campo lindo','73858000'),(10,10469,'girassol','72979000'),(10,10470,'edilândia','72978000'),(10,10591,'juscelândia','76384000'),(10,10691,'jardim abc de goiás','72889000'),(10,10819,'olhos d\'água','72935000'),(10,10979,'planalmira','72950000'),(11,2369,'açailândia','65930000'),(11,2370,'afonso cunha','65505000'),(11,2371,'água doce do maranhão','65578000'),(11,2372,'alcântara','65250000'),(11,2373,'aldeias altas','65610000'),(11,2374,'altamira do maranhão','65310000'),(11,2375,'alto alegre do maranhão','65413000'),(11,2376,'alto alegre do pindaré','65398000'),(11,2377,'alto parnaíba','65810000'),(11,2378,'amapá do maranhão','65293000'),(11,2379,'amarante do maranhão','65923000'),(11,2380,'anajatuba','65490000'),(11,2381,'anapurus','65525000'),(11,2382,'anil','00000000'),(11,2383,'apicum-açu','65275000'),(11,2384,'araguanã','65368000'),(11,2385,'araióses','65570000'),(11,2386,'arame','65945000'),(11,2387,'arari','65480000'),(11,2388,'aurizona','65287000'),(11,2389,'axixá','65108000'),(11,2390,'bacabal','65700000'),(11,2391,'bacabeira','65103000'),(11,2392,'bacatuba','65688000'),(11,2393,'bacuri','65270000'),(11,2394,'bacurituba','65233000'),(11,2395,'balsas','65800000'),(11,2396,'barão de grajaú','65660000'),(11,2397,'barão de tromai','65281000'),(11,2398,'barra do corda','65950000'),(11,2399,'barreirinhas','65590000'),(11,2400,'barro duro','65582000'),(11,2401,'bela vista do maranhão','65335000'),(11,2402,'belágua','65535000'),(11,2403,'benedito leite','65885000'),(11,2404,'bequimão','65248000'),(11,2405,'bernardo do mearim','65723000'),(11,2406,'boa vista do gurupi','65292000'),(11,2407,'boa vista do pindaré','65211000'),(11,2408,'bom jardim','65380000'),(11,2409,'bom jesus das selvas','65395000'),(11,2410,'bom lugar','65704000'),(11,2411,'bonfim do arari','65483000'),(11,2412,'brejo','65520000'),(11,2413,'brejo de areia','65315000'),(11,2414,'brejo de são félix','65643000'),(11,2415,'buriti','65515000'),(11,2416,'buriti bravo','65685000'),(11,2417,'buriti cortado','65639000'),(11,2418,'buriticupu','65393000'),(11,2419,'buritirama','65935500'),(11,2420,'cachoeira grande','65165000'),(11,2421,'cajapió','65230000'),(11,2422,'cajari','65210000'),(11,2423,'campestre do maranhão','65968000'),(11,2424,'cândido mendes','65280000'),(11,2425,'cantanhede','65465000'),(11,2426,'capinzal do norte','65735000'),(11,2427,'caraíba do norte','65655000'),(11,2428,'carolina','65980000'),(11,2429,'carutapera','65295000'),(11,2430,'caxias','00000000'),(11,2431,'cedral','65260000'),(11,2432,'central do maranhão','65267000'),(11,2433,'centro do guilherme','65288000'),(11,2434,'centro novo do maranhão','65299000'),(11,2435,'chapadinha','65500000'),(11,2436,'cidelândia','65921000'),(11,2437,'codó','65400000'),(11,2438,'codozinho','65405000'),(11,2439,'coelho neto','65620000'),(11,2440,'colinas','65690000'),(11,2441,'conceição do lago-açu','65340000'),(11,2442,'coroatá','65415000'),(11,2443,'curupa','65815000'),(11,2444,'cururupu','65268000'),(11,2445,'curva grande','65209000'),(11,2446,'custódio lima','65565000'),(11,2447,'davinópolis','65927000'),(11,2448,'dom pedro','65765000'),(11,2449,'duque bacelar','65625000'),(11,2450,'esperantinópolis','65750000'),(11,2451,'estandarte','65282000'),(11,2452,'estreito','65975000'),(11,2453,'feira nova do maranhão','65995000'),(11,2454,'fernando falcão','65964000'),(11,2455,'formosa da serra negra','65943000'),(11,2456,'fortaleza dos nogueiras','65805000'),(11,2457,'fortuna','65695000'),(11,2458,'frecheiras','65575000'),(11,2459,'godofredo viana','65285000'),(11,2460,'gonçalves dias','65775000'),(11,2461,'governador archer','65770000'),(11,2462,'governador edson lobão','65928000'),(11,2463,'governador eugênio barros','65780000'),(11,2464,'governador luiz rocha','65795000'),(11,2465,'governador newton bello','65363000'),(11,2466,'governador nunes freire','65284000'),(11,2467,'graça aranha','65785000'),(11,2468,'grajaú','65940000'),(11,2469,'guimarães','65255000'),(11,2470,'humberto de campos','65180000'),(11,2471,'ibipira','65855000'),(11,2472,'icatu','65170000'),(11,2473,'igarapé do meio','65345000'),(11,2474,'igarapé grande','65720000'),(11,2475,'imperatriz','00000000'),(11,2476,'itaipava do grajaú','65948000'),(11,2477,'itamataré','65298000'),(11,2478,'itapecuru mirim','65485000'),(11,2479,'itapera','65175000'),(11,2480,'itinga do maranhão','65939000'),(11,2481,'jatobá','65693000'),(11,2482,'jenipapo dos vieiras','65962000'),(11,2483,'joão lisboa','65922000'),(11,2484,'joselândia','65755000'),(11,2485,'junco do maranhão','65294000'),(11,2486,'lago da pedra','65715000'),(11,2487,'lago do junco','65710000'),(11,2488,'lago dos rodrigues','65712000'),(11,2489,'lago verde','65705000'),(11,2490,'lagoa do mato','65683000'),(11,2491,'lagoa grande do maranhão','65718000'),(11,2492,'lajeado novo','65937000'),(11,2493,'lapela','65355000'),(11,2494,'leandro','65957000'),(11,2495,'lima campos','65728000'),(11,2496,'loreto','65895000'),(11,2497,'luís domingues','65290000'),(11,2498,'magalhães de almeida','65560000'),(11,2499,'maioba','65137000'),(11,2500,'maracaçumé','65289000'),(11,2501,'marajá do sena','65714000'),(11,2502,'maranhãozinho','65283000'),(11,2503,'marianópolis','65726000'),(11,2504,'mata','65115000'),(11,2505,'mata roma','65510000'),(11,2506,'matinha','65218000'),(11,2507,'matões','65645000'),(11,2508,'matões do norte','65468000'),(11,2509,'milagres do maranhão','65545000'),(11,2510,'mirador','65850000'),(11,2511,'miranda do norte','65495000'),(11,2512,'mirinzal','65265000'),(11,2513,'monção','65360000'),(11,2514,'montes altos','65936000'),(11,2515,'morros','65160000'),(11,2516,'nina rodrigues','65450000'),(11,2517,'nova colinas','65808000'),(11,2518,'nova iorque','65880000'),(11,2519,'nova olinda do maranhão','65274000'),(11,2520,'olho d\'água das cunhãs','65706000'),(11,2521,'olinda nova do maranhão','65223000'),(11,2522,'paço do lumiar','65130000'),(11,2523,'palmeirândia','65238000'),(11,2524,'papagaio','65955000'),(11,2525,'paraibano','65670000'),(11,2526,'parnarama','65640000'),(11,2527,'passagem franca','65680000'),(11,2528,'pastos bons','65870000'),(11,2529,'paulino neves','65585000'),(11,2530,'paulo ramos','65716000'),(11,2531,'pedreiras','65725000'),(11,2532,'pedro do rosário','65206000'),(11,2533,'penalva','65213000'),(11,2534,'peri mirim','65245000'),(11,2535,'peritoró','65418000'),(11,2536,'pimentel','65375000'),(11,2537,'pindaré mirim','65370000'),(11,2538,'pinheiro','65200000'),(11,2539,'pio xii','65707000'),(11,2540,'pirapemas','65460000'),(11,2541,'poção de pedras','65740000'),(11,2542,'porto das gabarras','65493000'),(11,2543,'porto franco','65970000'),(11,2544,'porto rico do maranhão','65263000'),(11,2545,'presidente dutra','65760000'),(11,2546,'presidente juscelino','65140000'),(11,2547,'presidente médici','65279000'),(11,2548,'presidente sarney','65204000'),(11,2549,'presidente vargas','65455000'),(11,2550,'primeira cruz','65190000'),(11,2551,'raposa','65138000'),(11,2552,'resplandes','65959000'),(11,2553,'riachão','65990000'),(11,2554,'ribamar fiquene','65938000'),(11,2555,'ribeirão azul','65658000'),(11,2556,'rocado','65875000'),(11,2557,'roque','65202000'),(11,2558,'rosário','65100000'),(11,2559,'sambaíba','65830000'),(11,2560,'santa filomena do maranhão','65768000'),(11,2561,'santa helena','65208000'),(11,2562,'santa inês','65300000'),(11,2563,'santa luzia','65390000'),(11,2564,'santa luzia do paruá','65272000'),(11,2565,'santa quitéria do maranhão','65540000'),(11,2566,'santa rita','65105000'),(11,2567,'santana do maranhão','65555000'),(11,2568,'santo amaro','65195000'),(11,2569,'santo antônio dos lopes','65730000'),(11,2570,'são benedito do rio preto','65440000'),(11,2571,'são bento','65235000'),(11,2572,'são bernardo','65550000'),(11,2573,'são domingos do azeitão','65888000'),(11,2574,'são domingos do maranhão','65790000'),(11,2575,'são félix de balsas','65890000'),(11,2576,'são francisco do brejão','65929000'),(11,2577,'são francisco do maranhão','65650000'),(11,2578,'são joão batista','65225000'),(11,2579,'são joão de cortes','65253000'),(11,2580,'são joão do carú','65385000'),(11,2581,'são joão do paraíso','65973000'),(11,2582,'são joão do sóter','65615000'),(11,2583,'são joão dos patos','65665000'),(11,2584,'são joaquim dos melos','65764000'),(11,2585,'são josé de ribamar','65110000'),(11,2586,'são josé dos basílios','65762000'),(11,2587,'são luís','00000000'),(11,2588,'são luís gonzaga do maranhão','65708000'),(11,2589,'são mateus do maranhão','65470000'),(11,2590,'são pedro da água branca','65920000'),(11,2591,'são pedro dos crentes','65978000'),(11,2592,'são raimundo das mangabeiras','65840000'),(11,2593,'são raimundo de codó','65410000'),(11,2594,'são raimundo do doca bezerra','65753000'),(11,2595,'são roberto','65758000'),(11,2596,'são vicente ferrer','65220000'),(11,2597,'satubinha','65709000'),(11,2598,'senador alexandre costa','65783000'),(11,2599,'senador la roque','65935000'),(11,2600,'serrano do maranhão','65269000'),(11,2601,'sítio novo','65925000'),(11,2602,'sucupira do norte','65860000'),(11,2603,'sucupira do riachão','65668000'),(11,2604,'tasso fragoso','65820000'),(11,2605,'timbiras','65420000'),(11,2606,'timon','00000000'),(11,2607,'trizidela do vale','65727000'),(11,2608,'tufilândia','65378000'),(11,2609,'tuntum','65763000'),(11,2610,'turiaçu','65278000'),(11,2611,'turilândia','65276000'),(11,2612,'tutóia','65580000'),(11,2613,'urbano santos','65530000'),(11,2614,'vargem grande','65430000'),(11,2615,'viana','65215000'),(11,2616,'vila nova dos martírios','65924000'),(11,2617,'vitória do mearim','65350000'),(11,2618,'vitorino freire','65320000'),(11,2619,'zé doca','65365000'),(12,4272,'acorizal','78480000'),(12,4273,'água boa','78635000'),(12,4274,'água fria','78197000'),(12,4275,'aguaçu','78108000'),(12,4276,'aguapeí','78248000'),(12,4277,'águas claras','78572000'),(12,4278,'ainhumas','78751000'),(12,4279,'alcantilado','78762000'),(12,4280,'alta floresta','78580000'),(12,4281,'alto araguaia','78780000'),(12,4282,'alto boa vista','78665000'),(12,4283,'alto coité','78803000'),(12,4284,'alto garças','78770000'),(12,4285,'alto juruena','78318000'),(12,4286,'alto paraguai','78410000'),(12,4287,'alto paraíso','78584000'),(12,4288,'alto taquari','78785000'),(12,4289,'analândia do norte','78534000'),(12,4290,'apiacás','78595000'),(12,4291,'araguaiana','78685000'),(12,4292,'araguainha','78615000'),(12,4293,'araputanga','78260000'),(12,4294,'arenápolis','78420000'),(12,4295,'aripuanã','78325000'),(12,4296,'arruda','78473000'),(12,4297,'assari','78394000'),(12,4298,'barão de melgaço','78190000'),(12,4299,'barra do bugres','78390000'),(12,4300,'barra do garças','78600000'),(12,4301,'batovi','78776000'),(12,4302,'baús','78481000'),(12,4303,'bauxi','78474000'),(12,4304,'bel rios','78401000'),(12,4305,'bezerro branco','78234000'),(12,4306,'boa esperança','78896000'),(12,4307,'boa união','78277000'),(12,4308,'boa vista','78752000'),(12,4309,'bom sucesso','78166000'),(12,4310,'brasnorte','78350000'),(12,4311,'buriti','78782000'),(12,4312,'buriti','78764000'),(12,4313,'cáceres','78200000'),(12,4314,'caite','78186000'),(12,4315,'campinápolis','78630000'),(12,4316,'campo novo do parecis','78360000'),(12,4317,'campo verde','78840000'),(12,4318,'campos de júlio','78307000'),(12,4319,'campos novos','78411000'),(12,4320,'canabrava do norte','78658000'),(12,4321,'canarana','78640000'),(12,4322,'cangas','78178000'),(12,4323,'capão grande','78164000'),(12,4324,'capão verde','78413000'),(12,4325,'caramujo','78236000'),(12,4326,'caravagio','78894000'),(12,4327,'carlinda','78587000'),(12,4328,'cassununga','78778000'),(12,4329,'castanheira','78345000'),(12,4330,'catuai','78437000'),(12,4331,'chapada dos guimarães','78195000'),(12,4332,'cidade morena','78326000'),(12,4333,'cláudia','78540000'),(12,4334,'cocalinho','78680000'),(12,4335,'colíder','78500000'),(12,4336,'colorado do norte','78518000'),(12,4337,'comodoro','78310000'),(12,4338,'confresa','78652000'),(12,4339,'coronel ponce','78843000'),(12,4340,'cotrel','78522000'),(12,4341,'cotriguaçu','78330000'),(12,4342,'coxipó açu','78101000'),(12,4343,'coxipó da ponte','00000000'),(12,4344,'coxipó do ouro','78102000'),(12,4345,'cristinópolis','78272000'),(12,4346,'cristo rei','00000000'),(12,4347,'cuiabá','00000000'),(12,4348,'curvelândia','78237000'),(12,4349,'del rios','78405000'),(12,4350,'denise','78380000'),(12,4351,'diamantino','78400000'),(12,4352,'dom aquino','78830000'),(12,4353,'engenho','78483000'),(12,4354,'engenho velho','78182000'),(12,4355,'entre rios','78833000'),(12,4356,'estrela do leste','78768000'),(12,4357,'faval','78171000'),(12,4358,'fazenda de cima','78176000'),(12,4359,'feliz natal','78885000'),(12,4360,'figueirópolis d\'oeste','78290000'),(12,4361,'filadélfia','78321000'),(12,4362,'flor da serra','78524000'),(12,4363,'fontanilhas','78348000'),(12,4364,'gaúcha do norte','78875000'),(12,4365,'general carneiro','78620000'),(12,4366,'glória d\'oeste','78293000'),(12,4367,'guarantã do norte','78520000'),(12,4368,'guarita','78169000'),(12,4369,'guiratinga','78760000'),(12,4370,'horizonte do oeste','78235000'),(12,4371,'indianápolis','78603000'),(12,4372,'indiavaí','78295000'),(12,4373,'irenópolis','78813000'),(12,4374,'itamarati norte','78361000'),(12,4375,'itaúba','78510000'),(12,4376,'itiquira','78790000'),(12,4377,'jaciara','78820000'),(12,4378,'jangada','78490000'),(12,4379,'jarudore','78806000'),(12,4380,'jatobá','78823000'),(12,4381,'jauru','78255000'),(12,4382,'joselândia','78192000'),(12,4383,'juara','78575000'),(12,4384,'juína','78320000'),(12,4385,'juruena','78340000'),(12,4386,'juscimeira','78810000'),(12,4387,'lambari d\'oeste','78278000'),(12,4388,'lavouras','78414000'),(12,4389,'lucas do rio verde','78455000'),(12,4390,'lucialva','78258000'),(12,4391,'luciara','78660000'),(12,4392,'machado','78103000'),(12,4393,'marcelândia','78535000'),(12,4394,'marzagão','78478000'),(12,4395,'mata dentro','78107000'),(12,4396,'matupá','78525000'),(12,4397,'mimoso','78188000'),(12,4398,'mirassol d\'oeste','78280000'),(12,4399,'nobres','78460000'),(12,4400,'nonoai do norte','78502000'),(12,4401,'nortelândia','78430000'),(12,4402,'nossa senhora da guia','78104000'),(12,4403,'nossa senhora do livramento','78170000'),(12,4404,'nova alvorada','78314000'),(12,4405,'nova bandeirantes','78565000'),(12,4406,'nova brasilândia','78860000'),(12,4407,'nova brasília','78691000'),(12,4408,'nova canãa do norte','78515000'),(12,4409,'nova catanduva','78755000'),(12,4410,'nova galileia','78754000'),(12,4411,'nova guarita','78508000'),(12,4412,'nova lacerda','78243000'),(12,4413,'nova marilândia','78415000'),(12,4414,'nova maringá','78445000'),(12,4415,'nova monte verde','78593000'),(12,4416,'nova mutum','78450000'),(12,4417,'nova olímpia','78370000'),(12,4418,'nova ubiratã','78888000'),(12,4419,'nova xavantina','78690000'),(12,4420,'novo diamantino','78402000'),(12,4421,'novo eldorado','78574000'),(12,4422,'novo horizonte do norte','78570000'),(12,4423,'novo mundo','78528000'),(12,4424,'novo paraná','78562000'),(12,4425,'novo são joaquim','78625000'),(12,4426,'padronal','78316000'),(12,4427,'pai andré','78167000'),(12,4428,'paraíso do leste','78808000'),(12,4429,'paranaitá','78590000'),(12,4430,'paranatinga','78870000'),(12,4431,'passagem da conceição','78168000'),(12,4432,'pedra preta','78795000'),(12,4433,'peixoto de azevedo','78530000'),(12,4434,'pirizal','78172000'),(12,4435,'placa de santo antônio','78811000'),(12,4436,'planalto da serra','78855000'),(12,4437,'poconé','78175000'),(12,4438,'pombas','78834000'),(12,4439,'pontal do araguaia','78698000'),(12,4440,'ponte branca','78610000'),(12,4441,'ponte de pedra','78759000'),(12,4442,'pontes e lacerda','78250000'),(12,4443,'pontinópolis','78672000'),(12,4444,'porto alegre do norte','78655000'),(12,4445,'porto dos gaúchos','78560000'),(12,4446,'porto esperidião','78240000'),(12,4447,'porto estrela','78398000'),(12,4448,'poxoréo','78800000'),(12,4449,'praia rica','78198000'),(12,4450,'primavera','78898000'),(12,4451,'primavera do leste','78850000'),(12,4452,'progresso','78305000'),(12,4453,'querência','78643000'),(12,4454,'rancharia','78868000'),(12,4455,'reserva do cabaçal','78265000'),(12,4456,'ribeirão cascalheira','78675000'),(12,4457,'ribeirão dos cocais','78173000'),(12,4458,'ribeirãozinho','78613000'),(12,4459,'rio branco','78275000'),(12,4460,'rio manso','78863000'),(12,4461,'riolândia','78866000'),(12,4462,'rondonópolis','00000000'),(12,4463,'rosário oeste','78470000'),(12,4464,'salto do céu','78270000'),(12,4465,'sangradouro','78623000'),(12,4466,'santa carmem','78545000'),(12,4467,'santa elvira','78816000'),(12,4468,'santa fé','78288000'),(12,4469,'santa rita','78463000'),(12,4470,'santa terezinha','78650000'),(12,4471,'santaninha','78648000'),(12,4472,'santo afonso','78425000'),(12,4473,'santo antônio do leverger','78180000'),(12,4474,'santo antônio do rio bonito','78891000'),(12,4475,'são cristovão','78551000'),(12,4476,'vale de são domingos','78253000'),(12,4477,'são félix do araguaia','78670000'),(12,4478,'são joaquim','78306000'),(12,4479,'são jorge','78311000'),(12,4480,'são josé','78313000'),(12,4481,'são josé do apuí','78583000'),(12,4482,'são josé do planalto','78798000'),(12,4483,'são josé do povo','78773000'),(12,4484,'são josé do rio claro','78435000'),(12,4485,'são josé do xingu','78663000'),(12,4486,'são josé dos quatro marcos','78285000'),(12,4487,'são lourenço de fátima','78818000'),(12,4488,'são pedro da cipa','78835000'),(12,4489,'são vicente','78106000'),(12,4490,'sapezal','78365000'),(12,4491,'selma','78828000'),(12,4492,'serra nova dourada','78668000'),(12,4493,'sinop','78550000'),(12,4494,'sonho azul','78284000'),(12,4495,'sorriso','78890000'),(12,4496,'sumidouro','78404000'),(12,4497,'tabaporã','78563000'),(12,4498,'tangará da serra','78300000'),(12,4499,'tapirapua','78396000'),(12,4500,'tapurah','78573000'),(12,4501,'terra nova do norte','78505000'),(12,4502,'terra roxa','78322000'),(12,4503,'tesouro','78775000'),(12,4504,'toricueyje','78606000'),(12,4505,'torixoréu','78695000'),(12,4506,'três pontes','78756000'),(12,4507,'união do sul','78543000'),(12,4508,'vale dos sonhos','78608000'),(12,4509,'vale rico','78766000'),(12,4510,'varginha','78184000'),(12,4511,'várzea grande','00000000'),(12,4512,'vera','78880000'),(12,4513,'vila atlântica','78536000'),(12,4514,'vila bela da santíssima trindade','78245000'),(12,4515,'vila bueno','78757000'),(12,4516,'vila mutum','78585000'),(12,4517,'vila operária','78758000'),(12,4518,'vila paulista','78753000'),(12,4519,'vila progresso','78274000'),(12,4520,'vila rica','78645000'),(12,4521,'novo santo antônio','78674000'),(12,10091,'conquista d\'oeste','78254000'),(12,10092,'colniza','78335000'),(12,10093,'rondolândia','78338000'),(12,10094,'santa rita do trivelato','78453000'),(12,10095,'nova santa helena','78548000'),(12,10096,'santo antônio do leste','78628000'),(12,10097,'nova nazaré','78638000'),(12,10098,'santa cruz do xingu','78664000'),(12,10099,'bom jesus do araguaia','78678000'),(12,11020,'ipiranga do norte','78578000'),(12,11021,'itanhangá','78579000'),(13,4102,'água boa','79452000'),(13,4103,'água clara','79680000'),(13,4104,'albuquerque','79362000'),(13,4105,'alcinópolis','79530000'),(13,4106,'alto sucuriú','79682000'),(13,4107,'amambaí','79990000'),(13,4108,'amandina','79742000'),(13,4109,'amolar','79357000'),(13,4110,'anastácio','79210000'),(13,4111,'anaurilândia','79770000'),(13,4112,'angélica','79785000'),(13,4113,'anhandui','79125000'),(13,4114,'antônio joão','79910000'),(13,4115,'aparecida do taboado','79570000'),(13,4116,'aquidauana','79200000'),(13,4117,'aral moreira','79930000'),(13,4118,'arapuã','79654000'),(13,4119,'areado','79492000'),(13,4120,'árvore grande','79502000'),(13,4121,'baianópolis','79462000'),(13,4122,'bálsamo','79182000'),(13,4123,'bandeirantes','79430000'),(13,4124,'bataguassu','79780000'),(13,4125,'bataiporã','79760000'),(13,4126,'baús','79554000'),(13,4127,'bela vista','79260000'),(13,4128,'bocajá','79886000'),(13,4129,'bocajá','79923000'),(13,4130,'bodoquena','79390000'),(13,4131,'bom fim','79442000'),(13,4132,'bonito','79290000'),(13,4133,'boqueirão','79242000'),(13,4134,'brasilândia','79670000'),(13,4135,'caarapó','79940000'),(13,4136,'cabeceira do apá','79908000'),(13,4137,'cachoeira','79504000'),(13,4138,'camapuã','79420000'),(13,4139,'camisão','79202000'),(13,4140,'campestre','79912000'),(13,4141,'campo grande','00000000'),(13,4142,'capão seco','79174000'),(13,4143,'caracol','79270000'),(13,4144,'carumbé','79892000'),(13,4145,'cassilândia','79540000'),(13,4146,'chapadão do sul','79560000'),(13,4147,'cipolândia','79208000'),(13,4148,'coimbra','79368000'),(13,4149,'congonhas','79432000'),(13,4150,'corguinho','79460000'),(13,4151,'coronel sapucaia','79995000'),(13,4152,'corumbá','00000000'),(13,4153,'costa rica','79550000'),(13,4154,'coxim','79400000'),(13,4155,'cristalina','79944000'),(13,4156,'cruzaltina','79883000'),(13,4157,'culturama','79702000'),(13,4158,'cupins','79573000'),(13,4159,'debrasa','79677000'),(13,4160,'deodápolis','79790000'),(13,4161,'dois irmãos do buriti','79215000'),(13,4162,'douradina','79880000'),(13,4163,'dourados','00000000'),(13,4164,'eldorado','79970000'),(13,4165,'fátima do sul','79700000'),(13,4166,'figueirão','79428000'),(13,4167,'garcias','79656000'),(13,4168,'glória de dourados','79730000'),(13,4169,'guaçu','79874000'),(13,4170,'guaçulândia','79734000'),(13,4171,'guadalupe do alto paraná','79658000'),(13,4172,'guia lopes da laguna','79230000'),(13,4173,'iguatemi','79960000'),(13,4174,'ilha comprida','79652000'),(13,4175,'ilha grande','79578000'),(13,4176,'indaiá do sul','79542000'),(13,4177,'indaiá grande','79506000'),(13,4178,'indápolis','79868000'),(13,4179,'inocência','79580000'),(13,4180,'ipezal','79787000'),(13,4181,'itahum','79864000'),(13,4182,'itaporã','79890000'),(13,4183,'itaquiraí','79965000'),(13,4184,'ivinhema','79740000'),(13,4185,'jabuti','79292000'),(13,4186,'jacareí','79988000'),(13,4187,'japorã','79985000'),(13,4188,'jaraguari','79440000'),(13,4189,'jardim','79240000'),(13,4190,'jateí','79720000'),(13,4191,'jauru','79406000'),(13,4192,'juscelândia','79482000'),(13,4193,'jutí','79955000'),(13,4194,'ladário','79370000'),(13,4195,'lagoa bonita','79792000'),(13,4196,'laguna carapã','79920000'),(13,4197,'maracaju','79150000'),(13,4198,'miranda','79380000'),(13,4199,'montese','79896000'),(13,4200,'morangas','79584000'),(13,4201,'morraria do sul','79392000'),(13,4202,'morumbi','79972000'),(13,4203,'mundo novo','79980000'),(13,4204,'naviraí','79950000'),(13,4205,'nhecolândia','79364000'),(13,4206,'nioaque','79220000'),(13,4207,'nossa senhora de fátima','79262000'),(13,4208,'nova alvorada do sul','79140000'),(13,4209,'nova américa','79942000'),(13,4210,'nova andradina','79750000'),(13,4211,'nova esperança','79722000'),(13,4212,'nova esperança','79472000'),(13,4213,'nova jales','79508000'),(13,4214,'novo horizonte do sul','79745000'),(13,4215,'oriente','79576000'),(13,4216,'paiaguás','79359000'),(13,4217,'palmeiras','79217000'),(13,4218,'panambi','79876000'),(13,4219,'paraíso','79552000'),(13,4220,'paranaíba','79500000'),(13,4221,'paranhos','79925000'),(13,4222,'pedro gomes','79410000'),(13,4223,'picadinha','79866000'),(13,4224,'pirapora','79894000'),(13,4225,'piraputanga','79204000'),(13,4226,'ponta porã','79900000'),(13,4227,'ponte vermelha','79494000'),(13,4228,'pontinha do cocho','79424000'),(13,4229,'porto esperança','79366000'),(13,4230,'porto murtinho','79280000'),(13,4231,'porto vilma','79794000'),(13,4232,'porto xv de novembro','79782000'),(13,4233,'presidente castelo','79798000'),(13,4234,'prudêncio thomaz','79134000'),(13,4235,'quebra côco','79173000'),(13,4236,'quebracho','79774000'),(13,4237,'ribas do rio pardo','79180000'),(13,4238,'rio brilhante','79130000'),(13,4239,'rio negro','79470000'),(13,4240,'rio verde de mato grosso','79480000'),(13,4241,'rochedinho','79127000'),(13,4242,'rochedo','79450000'),(13,4243,'sanga puitã','79902000'),(13,4244,'santa rita do pardo','79690000'),(13,4245,'santa terezinha','79898000'),(13,4246,'são gabriel do oeste','79490000'),(13,4247,'são joão do apore','79512000'),(13,4248,'são josé','79712000'),(13,4249,'são josé do sucuriú','79586000'),(13,4250,'são pedro','79862000'),(13,4251,'são pedro','79582000'),(13,4252,'são romão','79402000'),(13,4253,'selvíria','79590000'),(13,4254,'sete quedas','79935000'),(13,4255,'sidrolândia','79170000'),(13,4256,'sonora','79415000'),(13,4257,'tacuru','79975000'),(13,4258,'tamandaré','79514000'),(13,4259,'taquari','79405000'),(13,4260,'taquarussu','79765000'),(13,4261,'taunay','79206000'),(13,4262,'terenos','79190000'),(13,4263,'três lagoas','00000000'),(13,4264,'velhacaria','79516000'),(13,4265,'vicentina','79710000'),(13,4266,'vila formosa','79872000'),(13,4267,'vila marques','79932000'),(13,4268,'vila rica','79714000'),(13,4269,'vila união','79796000'),(13,4270,'vila vargas','79878000'),(13,4271,'vista alegre','79152000'),(14,2620,'abadia dos dourados','38540000'),(14,2621,'abaeté','35620000'),(14,2622,'abaeté dos mendes','38812000'),(14,2623,'abaíba','36704000'),(14,2624,'abre campo','35365000'),(14,2625,'abreus','36263000'),(14,2626,'acaiaca','35438000'),(14,2627,'açucena','35150000'),(14,2628,'acuruí','35451000'),(14,2629,'adão colares','39597000'),(14,2630,'água boa','39790000'),(14,2631,'água branca de minas','39629000'),(14,2632,'água comprida','38110000'),(14,2633,'água viva','36728000'),(14,2634,'aguanil','37273000'),(14,2635,'águas de araxá','00000000'),(14,2636,'águas de contendas','37435000'),(14,2637,'águas férreas','35362000'),(14,2638,'águas formosas','39880000'),(14,2639,'águas vermelhas','39990000'),(14,2640,'aimorés','35200000'),(14,2641,'aiuruoca','37450000'),(14,2642,'alagoa','37458000'),(14,2643,'albertina','37596000'),(14,2644,'alberto isaacson','35608000'),(14,2645,'albertos','35576000'),(14,2646,'aldeia','35245000'),(14,2647,'alegre','38560000'),(14,2648,'alegria','36935000'),(14,2649,'além paraíba','36660000'),(14,2650,'alexandrita','38282000'),(14,2651,'alfenas','37130000'),(14,2652,'alfredo vasconcelos','36272000'),(14,2653,'almeida','35835000'),(14,2654,'almenara','39900000'),(14,2655,'alpercata','35138000'),(14,2656,'alpinópolis','37940000'),(14,2657,'alterosa','37145000'),(14,2658,'alto caparaó','36979000'),(14,2659,'alto capim','35210000'),(14,2660,'alto de santa helena','35102000'),(14,2661,'alto jequitibá','36976000'),(14,2662,'alto maranhão','36417000'),(14,2663,'alto rio doce','36260000'),(14,2664,'altolândia','38985000'),(14,2665,'alvação','39347000'),(14,2666,'alvarenga','35249000'),(14,2667,'alvinópolis','35950000'),(14,2668,'alvorada','36803000'),(14,2669,'alvorada de minas','39140000'),(14,2670,'amanda','35708000'),(14,2671,'amanhece','38455000'),(14,2672,'amarantina','35412000'),(14,2673,'amparo da serra','35444000'),(14,2674,'andiroba','35745000'),(14,2675,'andradas','37795000'),(14,2676,'andrelândia','37300000'),(14,2677,'andrequicé','39207000'),(14,2678,'angaturama','36746000'),(14,2679,'angelândia','39685000'),(14,2680,'angicos de minas','39332000'),(14,2681,'angueretá','35793000'),(14,2682,'angustura','36664000'),(14,2683,'antônio carlos','36220000'),(14,2684,'antônio dias','35177000'),(14,2685,'antônio dos santos','34960000'),(14,2686,'antônio ferreira','39697000'),(14,2687,'antônio pereira','35411000'),(14,2688,'antônio prado de minas','36850000'),(14,2689,'antunes','35698000'),(14,2690,'aparecida de minas','38205000'),(14,2691,'araçaí','35777000'),(14,2692,'aracati de minas','36776000'),(14,2693,'aracitaba','36255000'),(14,2694,'araçuaí','39600000'),(14,2695,'araguari','00000000'),(14,2696,'aramirim','35151000'),(14,2697,'aranha','35462000'),(14,2698,'arantina','37360000'),(14,2699,'araponga','36594000'),(14,2700,'araporã','38435000'),(14,2701,'arapuá','38860000'),(14,2702,'araújos','35603000'),(14,2703,'araúna','37180000'),(14,2704,'araxá','00000000'),(14,2705,'arcângelo','36318000'),(14,2706,'arceburgo','37820000'),(14,2707,'arcos','35588000'),(14,2708,'areado','37140000'),(14,2709,'argenita','38955000'),(14,2710,'argirita','36710000'),(14,2711,'aricanduva','39678000'),(14,2712,'arinos','38680000'),(14,2713,'aristides batista','39341000'),(14,2714,'ascenção','35665000'),(14,2715,'assaraí','36966000'),(14,2716,'astolfo dutra','36780000'),(14,2717,'ataléia','39850000'),(14,2718,'augusto de lima','39220000'),(14,2719,'avaí do jacinto','39931000'),(14,2720,'azurita','35672000'),(14,2721,'babilônia','37915000'),(14,2722,'bação','35453000'),(14,2723,'baependi','37443000'),(14,2724,'baguari','35105000'),(14,2725,'baiões','35575000'),(14,2726,'baixa','38101000'),(14,2727,'balbinópolis','39877000'),(14,2728,'baldim','35706000'),(14,2729,'bambuí','38900000'),(14,2730,'bandeira','39917000'),(14,2731,'bandeira do sul','37740000'),(14,2732,'bandeirantes','35423000'),(14,2733,'barão de cocais','35970000'),(14,2734,'barão de monte alto','36870000'),(14,2735,'barbacena','00000000'),(14,2736,'barra alegre','35165000'),(14,2737,'barra da figueira','36963000'),(14,2738,'barra do ariranha','35295000'),(14,2739,'barra do cuieté','35243000'),(14,2740,'barra feliz','35963000'),(14,2741,'barra longa','35447000'),(14,2742,'barranco alto','37131000'),(14,2743,'barreiro','00000000'),(14,2744,'barreiro branco','39526700'),(14,2745,'barreiro da raiz','39442000'),(14,2746,'barreiro do rio verde','39441000'),(14,2747,'barretos de alvinópolis','35952000'),(14,2748,'barrocão','39572000'),(14,2749,'barroso','36212000'),(14,2750,'baú','35615000'),(14,2751,'bela vista de minas','35938000'),(14,2752,'belisário','36888000'),(14,2753,'belmiro braga','36126000'),(14,2754,'belo horizonte','00000000'),(14,2755,'belo oriente','35195000'),(14,2756,'belo oriente','39806000'),(14,2757,'belo vale','35473000'),(14,2758,'bentópolis de minas','39325000'),(14,2759,'berilo','39640000'),(14,2760,'berizal','39555000'),(14,2761,'bertópolis','39875000'),(14,2762,'betim','00000000'),(14,2763,'bias fortes','36230000'),(14,2764,'bicas','36600000'),(14,2765,'bicuíba','35352000'),(14,2766,'biquinhas','35621000'),(14,2767,'bituri','35497000'),(14,2768,'boa esperança','37170000'),(14,2769,'boa família','36891000'),(14,2770,'boa união de itabirinha','35285000'),(14,2771,'boa vista de minas','35517000'),(14,2772,'bocaina de minas','37340000'),(14,2773,'bocaiúva','39390000'),(14,2774,'bom despacho','35600000'),(14,2775,'bom jardim de minas','37310000'),(14,2776,'bom jesus da cachoeira','36892000'),(14,2777,'bom jesus da penha','37948000'),(14,2778,'bom jesus de cardosos','35381000'),(14,2779,'bom jesus do amparo','35908000'),(14,2780,'bom jesus do divino','36825000'),(14,2781,'bom jesus do galho','35340000'),(14,2782,'bom jesus do madeira','36817000'),(14,2783,'bom pastor','35233000'),(14,2784,'bom repouso','37610000'),(14,2785,'bom retiro','36218000'),(14,2786,'bom sucesso','37220000'),(14,2787,'bom sucesso de patos','38712000'),(14,2788,'bonança','39456000'),(14,2789,'bonfim','35521000'),(14,2790,'bonfinópolis de minas','38650000'),(14,2791,'bonito de minas','39490000'),(14,2792,'borba gato','35803000'),(14,2793,'borda da mata','37564000'),(14,2794,'botelhos','37720000'),(14,2795,'botumirim','39596000'),(14,2796,'brás pires','36542000'),(14,2797,'brasilândia de minas','38779000'),(14,2798,'brasília de minas','39330000'),(14,2799,'brasópolis','37530000'),(14,2800,'braúnas','35169000'),(14,2801,'brejaúba','35858000'),(14,2802,'brejaubinha','35106000'),(14,2803,'brejo bonito','38738000'),(14,2804,'brejo do amparo','39482000'),(14,2805,'brumadinho','35460000'),(14,2806,'brumal','35966000'),(14,2807,'buarque de macedo','36413000'),(14,2808,'bueno','35244000'),(14,2809,'bueno brandão','37578000'),(14,2810,'buenópolis','39230000'),(14,2811,'bugre','35193000'),(14,2812,'buritis','38660000'),(14,2813,'buritizeiro','39280000'),(14,2814,'caatinga','38778000'),(14,2815,'cabeceira grande','38625000'),(14,2816,'cabo verde','37880000'),(14,2817,'caburu','36317000'),(14,2818,'caçaratiba','39662000'),(14,2819,'caçarema','39448000'),(14,2820,'cachoeira alegre','36876000'),(14,2821,'cachoeira da prata','35765000'),(14,2822,'cachoeira de minas','37545000'),(14,2823,'cachoeira de pajeú','39980000'),(14,2824,'cachoeira de santa cruz','36574000'),(14,2825,'cachoeira do brumado','35424000'),(14,2826,'cachoeira do campo','35410000'),(14,2827,'cachoeira do manteiga','39288000'),(14,2828,'cachoeira do vale','00000000'),(14,2829,'cachoeira dos antunes','35523000'),(14,2830,'cachoeira dourada','38370000'),(14,2831,'cachoeirinha','38995000'),(14,2832,'caetano lopes','35499000'),(14,2833,'caetanópolis','35770000'),(14,2834,'caeté','34800000'),(14,2835,'caeté','36102000'),(14,2836,'caiana','36832000'),(14,2837,'caiapó','36735000'),(14,2838,'cajuri','36560000'),(14,2839,'caldas','37780000'),(14,2840,'calixto','35232000'),(14,2841,'camacho','35555000'),(14,2842,'camanducaia','37650000'),(14,2843,'camargos','35427000'),(14,2844,'cambuí','37600000'),(14,2845,'cambuquira','37420000'),(14,2846,'campanário','39835000'),(14,2847,'campanha','37400000'),(14,2848,'campestre','37730000'),(14,2849,'campestrinho','37797000'),(14,2850,'campina verde','38270000'),(14,2851,'campo alegre de minas','39457000'),(14,2852,'campo alegre de minas','35238000'),(14,2853,'campo azul','39338000'),(14,2854,'campo belo','37270000'),(14,2855,'campo do meio','37165000'),(14,2856,'campo florido','38130000'),(14,2857,'campo redondo','39452000'),(14,2858,'campolide','36237000'),(14,2859,'campos altos','38970000'),(14,2860,'campos gerais','37160000'),(14,2861,'cana verde','37267000'),(14,2862,'canaã','36592000'),(14,2863,'canabrava','39581000'),(14,2864,'canabrava','38773000'),(14,2865,'canápolis','38380000'),(14,2866,'canastrão','38890000'),(14,2867,'candeias','37280000'),(14,2868,'canoeiros','38792000'),(14,2869,'cantagalo','39703000'),(14,2870,'caparaó','36834000'),(14,2871,'capela nova','36290000'),(14,2872,'capelinha','39680000'),(14,2873,'capetinga','37993000'),(14,2874,'capim branco','35730000'),(14,2875,'capinópolis','38360000'),(14,2876,'capitânia','39499000'),(14,2877,'capitão andrade','35123000'),(14,2878,'capitão enéas','39445000'),(14,2879,'capitólio','37930000'),(14,2880,'caputira','36925000'),(14,2881,'caraí','39810000'),(14,2882,'caranaíba','36428000'),(14,2883,'carandaí','36280000'),(14,2884,'carangola','36800000'),(14,2885,'caratinga','00000000'),(14,2886,'carbonita','39665000'),(14,2887,'cardeal mota','35847000'),(14,2888,'careaçu','37556000'),(14,2889,'carioca','35665300'),(14,2890,'carlos alves','36686000'),(14,2891,'carlos chagas','39864000'),(14,2892,'carmésia','35878000'),(14,2893,'carmo da cachoeira','37225000'),(14,2894,'carmo da mata','35547000'),(14,2895,'carmo de minas','37472000'),(14,2896,'carmo do cajuru','35510000'),(14,2897,'carmo do paranaíba','38840000'),(14,2898,'carmo do rio claro','37150000'),(14,2899,'carmópolis de minas','35534000'),(14,2900,'carneirinho','38290000'),(14,2901,'carrancas','37245000'),(14,2902,'carvalho de brito','00000000'),(14,2903,'carvalhópolis','37760000'),(14,2904,'carvalhos','37456000'),(14,2905,'casa grande','36422000'),(14,2906,'cascalho rico','38460000'),(14,2907,'cássia','37980000'),(14,2908,'cataguarino','36779000'),(14,2909,'cataguases','00000000'),(14,2910,'catajás','39937000'),(14,2911,'catas altas','35969000'),(14,2912,'catas altas da noruega','36450000'),(14,2913,'catiara','38762000'),(14,2914,'catuji','39816000'),(14,2915,'catuné','36846000'),(14,2916,'catuni','39585000'),(14,2917,'catuti','39526000'),(14,2918,'caxambu','37440000'),(14,2919,'cedro do abaeté','35624000'),(14,2920,'centenário','36957000'),(14,2921,'central de minas','35260000'),(14,2922,'central de santa helena','35267000'),(14,2923,'centralina','38390000'),(14,2924,'cervo','37565000'),(14,2925,'chácara','36110000'),(14,2926,'chalé','36985000'),(14,2927,'chapada de minas','38528000'),(14,2928,'chapada do norte','39648000'),(14,2929,'chapada gaúcha','39314000'),(14,2930,'chaveslândia','38325000'),(14,2931,'chiador','36630000'),(14,2932,'chonim','35109000'),(14,2933,'chumbo','38713000'),(14,2934,'cipotânea','36265000'),(14,2935,'cisneiros','36753000'),(14,2936,'citrolândia','32800000'),(14,2937,'claraval','37997000'),(14,2938,'claro de minas','38782000'),(14,2939,'claro dos poções','39380000'),(14,2940,'cláudio','35530000'),(14,2941,'cláudio manuel','35429000'),(14,2942,'cocais','35975000'),(14,2943,'coco','35472000'),(14,2944,'coimbra','36550000'),(14,2945,'coluna','39770000'),(14,2946,'comendador gomes','38250000'),(14,2947,'comercinho','39628000'),(14,2948,'conceição da aparecida','37148000'),(14,2949,'conceição da barra de minas','36360000'),(14,2950,'conceição da boa vista','36743000'),(14,2951,'conceição da brejaúba','39721000'),(14,2952,'conceição da ibitipoca','36144000'),(14,2953,'conceição das alagoas','38120000'),(14,2954,'conceição das pedras','37527000'),(14,2955,'conceição de ipanema','36947000'),(14,2956,'conceição de itaguá','35466000'),(14,2957,'conceição de minas','35985000'),(14,2958,'conceição de piracicaba','35943000'),(14,2959,'conceição de tronqueiras','39711000'),(14,2960,'conceição do capim','35202000'),(14,2961,'conceição do formoso','36248000'),(14,2962,'conceição do mato dentro','35860000'),(14,2963,'conceição do pará','35668000'),(14,2964,'conceição do rio acima','35968000'),(14,2965,'conceição do rio verde','37430000'),(14,2966,'conceição dos ouros','37548000'),(14,2967,'concórdia de mucuri','39826000'),(14,2968,'condado do norte','39435000'),(14,2969,'cônego joão pio','35993000'),(14,2970,'cônego marinho','39489000'),(14,2971,'confins','33500000'),(14,2972,'congonhal','37557000'),(14,2973,'congonhas','36415000'),(14,2974,'congonhas do norte','35850000'),(14,2975,'conquista','38195000'),(14,2976,'conselheiro lafaiete','36400000'),(14,2977,'conselheiro mata','39106000'),(14,2978,'conselheiro pena','35240000'),(14,2979,'consolação','37670000'),(14,2980,'contagem','00000000'),(14,2981,'contrato','39676000'),(14,2982,'contria','39202000'),(14,2983,'coqueiral','37235000'),(14,2984,'coração de jesus','39340000'),(14,2985,'cordisburgo','35780000'),(14,2986,'cordislândia','37498000'),(14,2987,'corinto','39200000'),(14,2988,'coroaci','39710000'),(14,2989,'coromandel','38550000'),(14,2990,'coronel fabriciano','00000000'),(14,2991,'coronel murta','39635000'),(14,2992,'coronel pacheco','36155000'),(14,2993,'coronel xavier chaves','36330000'),(14,2994,'córrego danta','38990000'),(14,2995,'córrego do barro','35665200'),(14,2996,'córrego do bom jesus','37605000'),(14,2997,'córrego do ouro','37163000'),(14,2998,'córrego fundo','35578000'),(14,2999,'córrego novo','35345000'),(14,3000,'córregos','35864000'),(14,3001,'correia de almeida','36208000'),(14,3002,'correntinho','39741000'),(14,3003,'costa sena','35859000'),(14,3004,'costas','37665000'),(14,3005,'costas da mantiqueira','36206000'),(14,3006,'couto de magalhães de minas','39188000'),(14,3007,'crisólia','37572000'),(14,3008,'crisólita','39885000'),(14,3009,'crispim jaques','39809000'),(14,3010,'cristais','37275000'),(14,3011,'cristália','39598000'),(14,3012,'cristiano otoni','36426000'),(14,3013,'cristina','37476000'),(14,3014,'crucilândia','35520000'),(14,3015,'cruzeiro da fortaleza','38735000'),(14,3016,'cruzeiro dos peixotos','38416000'),(14,3017,'cruzília','37445000'),(14,3018,'cubas','35806000'),(14,3019,'cuité velho','35242000'),(14,3020,'cuparaque','35246000'),(14,3021,'curimataí','39235000'),(14,3022,'curral de dentro','39998000'),(14,3023,'curvelo','35790000'),(14,3024,'datas','39130000'),(14,3025,'delfim moreira','37514000'),(14,3026,'delfinópolis','37910000'),(14,3027,'delta','38108000'),(14,3028,'deputado augusto clementino','39152000'),(14,3029,'derribadinha','35103000'),(14,3030,'descoberto','36690000'),(14,3031,'desembargador otoni','39113000'),(14,3032,'desemboque','38193000'),(14,3033,'desterro de entre rios','35494000'),(14,3034,'desterro do melo','36210000'),(14,3035,'diamante de ubá','36506000'),(14,3036,'diamantina','39100000'),(14,3037,'dias','37532000'),(14,3038,'dias tavares/siderúrgica','36105000'),(14,3039,'diogo de vasconcelos','35437000'),(14,3040,'dionísio','35984000'),(14,3041,'divinésia','36546000'),(14,3042,'divino','36820000'),(14,3043,'divino das laranjeiras','35265000'),(14,3044,'divino de virgolândia','39716000'),(14,3045,'divino espírito santo','37147000'),(14,3046,'divinolândia de minas','39735000'),(14,3047,'divinópolis','00000000'),(14,3048,'divisa alegre','39995000'),(14,3049,'divisa nova','37134000'),(14,3050,'divisópolis','39912000'),(14,3051,'dois de abril','39948000'),(14,3052,'dom bosco','38654000'),(14,3053,'dom cavati','35148000'),(14,3054,'dom joaquim','35865000'),(14,3055,'dom lara','35314000'),(14,3056,'dom modesto','35313000'),(14,3057,'dom silvério','35440000'),(14,3058,'dom viçoso','37474000'),(14,3059,'dona euzébia','36784000'),(14,3060,'dores da vitória','36792000'),(14,3061,'dores de campos','36213000'),(14,3062,'dores de guanhães','35894000'),(14,3063,'dores do indaiá','35610000'),(14,3064,'dores do paraibuna','36243000'),(14,3065,'dores do turvo','36513000'),(14,3066,'doresópolis','37926000'),(14,3067,'douradinho','37755000'),(14,3068,'douradoquara','38530000'),(14,3069,'doutor campolina','35768000'),(14,3070,'doutor lund','33650000'),(14,3071,'durandé','36974000'),(14,3072,'edgard melo','35122000'),(14,3073,'elói mendes','37110000'),(14,3074,'emboabas','36319000'),(14,3075,'engenheiro caldas','35130000'),(14,3076,'engenheiro correia','35416000'),(14,3077,'engenheiro navarro','39417000'),(14,3078,'engenheiro schnoor','39602000'),(14,3079,'engenho do ribeiro','35602000'),(14,3080,'engenho novo','36643000'),(14,3081,'entre folhas','35324000'),(14,3082,'entre rios de minas','35490000'),(14,3083,'epaminondas otoni','39866000'),(14,3084,'ermidinha','39410000'),(14,3085,'ervália','36555000'),(14,3086,'esmeraldas','35740000'),(14,3087,'esmeraldas de ferros','35804000'),(14,3088,'espera feliz','36830000'),(14,3089,'espinosa','39510000'),(14,3090,'espírito santo do dourado','37566000'),(14,3091,'esteios','35596000'),(14,3092,'estevão de araújo','36596000'),(14,3093,'estiva','37542000'),(14,3094,'estrela da barra','38294000'),(14,3095,'estrela dalva','36725000'),(14,3096,'estrela de jordânia','39923000'),(14,3097,'estrela do indaiá','35613000'),(14,3098,'estrela do sul','38525000'),(14,3099,'eugenópolis','36855000'),(14,3100,'euxenita','39751000'),(14,3101,'ewbank da câmara','36108000'),(14,3102,'expedicionário alício','35204000'),(14,3103,'extração','39105000'),(14,3104,'extrema','37640000'),(14,3105,'fama','37138000'),(14,3106,'faria lemos','36840000'),(14,3107,'farias','39744000'),(14,3108,'fechados','35788000'),(14,3109,'felicina','35152000'),(14,3110,'felício dos santos','39180000'),(14,3111,'felisburgo','39895000'),(14,3112,'felixlândia','35794000'),(14,3113,'fernandes tourinho','35135000'),(14,3114,'fernão dias','39334000'),(14,3115,'ferreiras','37493000'),(14,3116,'ferreirópolis','39562000'),(14,3117,'ferros','35800000'),(14,3118,'ferruginha','35245500'),(14,3119,'fervedouro','36815000'),(14,3120,'fidalgo','33620000'),(14,3121,'fidelândia','39851000'),(14,3122,'flor de minas','38315000'),(14,3123,'florália','35961000'),(14,3124,'floresta','35263000'),(14,3125,'florestal','35690000'),(14,3126,'florestina','38450000'),(14,3127,'fonseca','35955000'),(14,3128,'formiga','35570000'),(14,3129,'formoso','38690000'),(14,3130,'fortaleza de minas','37905000'),(14,3131,'fortuna de minas','35760000'),(14,3132,'francisco badaró','39644000'),(14,3133,'francisco dumont','39387000'),(14,3134,'francisco sá','39580000'),(14,3135,'franciscópolis','39695000'),(14,3136,'frei eustáquio','37237000'),(14,3137,'frei gaspar','39840000'),(14,3138,'frei inocêncio','35112000'),(14,3139,'frei lagonegro','39708000'),(14,3140,'frei orlando','35629000'),(14,3141,'frei serafim','39832000'),(14,3142,'freire cardoso','39637000'),(14,3143,'fronteira','38230000'),(14,3144,'fronteira dos vales','39870000'),(14,3145,'fruta de leite','39558000'),(14,3146,'frutal','38200000'),(14,3147,'funchal','38802000'),(14,3148,'funilândia','35709000'),(14,3149,'furnas','37943000'),(14,3150,'furquim','35426000'),(14,3151,'galego','36206100'),(14,3152,'galena','38753000'),(14,3153,'galiléia','35250000'),(14,3154,'gama','35153000'),(14,3155,'gameleiras','39505000'),(14,3156,'garapuava','38615000'),(14,3157,'gavião','36858000'),(14,3158,'glaucilândia','39592000'),(14,3159,'glaura','35408000'),(14,3160,'glucínio','39782000'),(14,3161,'goiabeira','35248000'),(14,3162,'goianá','36152000'),(14,3163,'goianases','37994000'),(14,3164,'gonçalves','37680000'),(14,3165,'gonzaga','39720000'),(14,3166,'gororós','35868000'),(14,3167,'gorutuba','39522500'),(14,3168,'gouvea','39120000'),(14,3169,'governador valadares','00000000'),(14,3170,'gramínea','37796000'),(14,3171,'granada','35365700'),(14,3172,'grão mogol','39570000'),(14,3173,'grota','35395000'),(14,3174,'grupiara','38470000'),(14,3175,'guaçuí','39265000'),(14,3176,'guaipava','37125000'),(14,3177,'guanhães','39740000'),(14,3178,'guapé','37177000'),(14,3179,'guaraciaba','35436000'),(14,3180,'guaraciama','39397000'),(14,3181,'guaranésia','37810000'),(14,3182,'guarani','36160000'),(14,3183,'guaranilândia','39965000'),(14,3184,'guarará','36606000'),(14,3185,'guarataia','39833000'),(14,3186,'guarda dos ferreiros','38803000'),(14,3187,'guarda-mor','38570000'),(14,3188,'guardinha','37952000'),(14,3189,'guaxima','38198000'),(14,3190,'guaxupé','37800000'),(14,3191,'guidoval','36515000'),(14,3192,'guimarânia','38730000'),(14,3193,'guinda','39103000'),(14,3194,'guiricema','36525000'),(14,3195,'gurinhatã','38310000'),(14,3196,'heliodora','37484000'),(14,3197,'hematita','35178000'),(14,3198,'hermilo alves','36285000'),(14,3199,'honorópolis','38272000'),(14,3200,'iapu','35190000'),(14,3201,'ibertioga','36225000'),(14,3202,'ibiá','38950000'),(14,3203,'ibiaí','39350000'),(14,3204,'ibiracatu','39455000'),(14,3205,'ibiraci','37990000'),(14,3206,'ibirité','32400000'),(14,3207,'ibitira','35607000'),(14,3208,'ibitiúra de minas','37790000'),(14,3209,'ibituruna','37223000'),(14,3210,'icaraí de minas','39318000'),(14,3211,'igarapé','32900000'),(14,3212,'igaratinga','35695000'),(14,3213,'iguatama','38910000'),(14,3214,'ijaci','37205000'),(14,3215,'ilhéus do prata','35994000'),(14,3216,'ilicínea','37175000'),(14,3217,'imbé de minas','35323000'),(14,3218,'inconfidentes','37576000'),(14,3219,'indaiabira','39536000'),(14,3220,'independência','35236000'),(14,3221,'indianópolis','38490000'),(14,3222,'ingaí','37215000'),(14,3223,'inhaí','39111000'),(14,3224,'inhapim','35330000'),(14,3225,'inhaúma','35710000'),(14,3226,'inimutaba','35796000'),(14,3227,'ipaba','35198000'),(14,3228,'ipanema','36950000'),(14,3229,'ipatinga','00000000'),(14,3230,'ipiaçu','38350000'),(14,3231,'ipoema','35905000'),(14,3232,'ipuiúna','37559000'),(14,3233,'iraí de minas','38510000'),(14,3234,'itabira','00000000'),(14,3235,'itabirinha','35280000'),(14,3236,'itabirito','35450000'),(14,3237,'itaboca','36138000'),(14,3238,'itacambira','39594000'),(14,3239,'itacarambi','39470000'),(14,3240,'itaci','37155000'),(14,3241,'itacolomi','35861000'),(14,3242,'itaguara','35514000'),(14,3243,'itaim','37546000'),(14,3244,'itaipé','39815000'),(14,3245,'itajubá','00000000'),(14,3246,'itajutiba','35331000'),(14,3247,'itamarandiba','39670000'),(14,3248,'itamarati','39993000'),(14,3249,'itamarati de minas','36788000'),(14,3250,'itambacuri','39830000'),(14,3251,'itambé do mato dentro','35820000'),(14,3252,'itamirim','39515000'),(14,3253,'itamogi','37955000'),(14,3254,'itamonte','37466000'),(14,3255,'itamuri','36886000'),(14,3256,'itanhandu','37464000'),(14,3257,'itanhomi','35120000'),(14,3258,'itaobim','39625000'),(14,3259,'itapagipe','38240000'),(14,3260,'itapanhoacanga','39145000'),(14,3261,'itapecerica','35550000'),(14,3262,'itapeva','37655000'),(14,3263,'itapiru','39955000'),(14,3264,'itapirucu','36756000'),(14,3265,'itatiaiuçu','35685000'),(14,3266,'itaú de minas','37975000'),(14,3267,'itaúna','00000000'),(14,3268,'itauninha','35915000'),(14,3269,'itaverava','36440000'),(14,3270,'itererê','37513000'),(14,3271,'itinga','39610000'),(14,3272,'itira','39605000'),(14,3273,'itueta','35220000'),(14,3274,'ituí','36684000'),(14,3275,'ituiutaba','00000000'),(14,3276,'itumirim','37210000'),(14,3277,'iturama','38280000'),(14,3278,'itutinga','36390000'),(14,3279,'jaboticatubas','35830000'),(14,3280,'jacarandira','36342000'),(14,3281,'jacaré','39613000'),(14,3282,'jacinto','39930000'),(14,3283,'jacuí','37965000'),(14,3284,'jacutinga','37590000'),(14,3285,'jaguaraçu','35188000'),(14,3286,'jaguarão','39933000'),(14,3287,'jaguaritira','39692000'),(14,3288,'jaíba','39508000'),(14,3289,'jampruca','39837000'),(14,3290,'janaúba','39440000'),(14,3291,'januária','39480000'),(14,3292,'japaraíba','35580000'),(14,3293,'japonvar','39335000'),(14,3294,'jardinésia','38142000'),(14,3295,'jeceaba','35498000'),(14,3296,'jenipapo de minas','39645000'),(14,3297,'jequeri','35390000'),(14,3298,'jequitaí','39370000'),(14,3299,'jequitibá','35767000'),(14,3300,'jequitinhonha','39960000'),(14,3301,'jesuânia','37485000'),(14,3302,'joaíma','39890000'),(14,3303,'joanésia','35168000'),(14,3304,'joão monlevade','00000000'),(14,3305,'joão pinheiro','38770000'),(14,3306,'joaquim felício','39240000'),(14,3307,'jordânia','39920000'),(14,3308,'josé gonçalves de minas','39642000'),(14,3309,'josé raydan','39775000'),(14,3310,'joselândia','36435000'),(14,3311,'josenópolis','39575000'),(14,3312,'juatuba','35675000'),(14,3313,'jubaí','38196000'),(14,3314,'juiraçu','35996000'),(14,3315,'juiz de fora','00000000'),(14,3316,'junco de minas','39693500'),(14,3317,'juramento','39590000'),(14,3318,'juréia','37117000'),(14,3319,'juruaia','37805000'),(14,3320,'jurumirim','35375000'),(14,3321,'justinópolis','00000000'),(14,3322,'juvenília','39467000'),(14,3323,'lacerdinha','36802000'),(14,3324,'ladainha','39825000'),(14,3325,'lagamar','38785000'),(14,3326,'lagoa bonita','35782000'),(14,3327,'lagoa da prata','35590000'),(14,3328,'lagoa dos patos','39360000'),(14,3329,'lagoa dourada','36345000'),(14,3330,'lagoa formosa','38720000'),(14,3331,'lagoa grande','38755000'),(14,3332,'lagoa santa','33400000'),(14,3333,'lajinha','36980000'),(14,3334,'lambari','37480000'),(14,3335,'lamim','36455000'),(14,3336,'lamounier','35551000'),(14,3337,'lapinha','33450000'),(14,3338,'laranjal','36760000'),(14,3339,'laranjeiras de caldas','37782000'),(14,3340,'lassance','39250000'),(14,3341,'lavras','37200000'),(14,3342,'leandro ferreira','35657000'),(14,3343,'leme do prado','39655000'),(14,3344,'leopoldina','36700000'),(14,3345,'levinópolis','39485000'),(14,3346,'liberdade','37350000'),(14,3347,'lima duarte','36140000'),(14,3348,'limeira do oeste','38295000'),(14,3349,'limeira de mantena','35296000'),(14,3350,'lobo leite','36419000'),(14,3351,'lontra','39437000'),(14,3352,'lourenço velho','37507000'),(14,3353,'lufa','39824000'),(14,3354,'luisburgo','36923000'),(14,3355,'luislândia','39336000'),(14,3356,'luiz pires de minas','39344000'),(14,3357,'luizlândia do oeste','38776000'),(14,3358,'luminárias','37240000'),(14,3359,'luminosa','37535000'),(14,3360,'luz','35595000'),(14,3361,'macaia','37221000'),(14,3362,'machacalis','39873000'),(14,3363,'machado','37750000'),(14,3364,'macuco','36891500'),(14,3365,'macuco de minas','37212000'),(14,3366,'madre de deus de minas','37305000'),(14,3367,'mãe dos homens','39797000'),(14,3368,'major ezequiel','35953000'),(14,3369,'major porto','38710000'),(14,3370,'malacacheta','39690000'),(14,3371,'mamonas','39516000'),(14,3372,'manga','39460000'),(14,3373,'manhuaçu','36900000'),(14,3374,'manhumirim','36970000'),(14,3375,'mantena','35290000'),(14,3376,'mantiqueira','36242000'),(14,3377,'mantiqueira do palmital','36206300'),(14,3378,'mar de espanha','36640000'),(14,3379,'marambainha','39813000'),(14,3380,'maravilhas','35666000'),(14,3381,'maria da fé','37517000'),(14,3382,'mariana','35420000'),(14,3383,'marilac','35115000'),(14,3384,'marilândia','35553000'),(14,3385,'mário campos','32470000'),(14,3386,'maripá de minas','36608000'),(14,3387,'marliéria','35185000'),(14,3388,'marmelópolis','37516000'),(14,3389,'martinésia','38419000'),(14,3390,'martinho campos','35606000'),(14,3391,'martins guimarães','35593000'),(14,3392,'martins soares','36972000'),(14,3393,'mata verde','39915000'),(14,3394,'materlândia','39755000'),(14,3395,'mateus leme','35670000'),(14,3396,'mathias lobato','35110000'),(14,3397,'matias barbosa','36120000'),(14,3398,'matias cardoso','39478000'),(14,3399,'matipó','35367000'),(14,3400,'mato verde','39527000'),(14,3401,'matozinhos','35720000'),(14,3402,'matutina','38870000'),(14,3403,'medeiros','38930000'),(14,3404,'medina','39620000'),(14,3405,'melo viana','35750000'),(14,3406,'mendanha','39101000'),(14,3407,'mendes pimentel','35270000'),(14,3408,'mendonça','39664000'),(14,3409,'mercês','36190000'),(14,3410,'mercês de água limpa','36352000'),(14,3411,'mesquita','35166000'),(14,3412,'mestre caetano','34750000'),(14,3413,'miguel burnier','35414000'),(14,3414,'milagre','37959000'),(14,3415,'milho verde','39155000'),(14,3416,'minas novas','39650000'),(14,3417,'minduri','37447000'),(14,3418,'mirabela','39420000'),(14,3419,'miradouro','36893000'),(14,3420,'miragaia','36507000'),(14,3421,'miraí','36790000'),(14,3422,'miralta','39415000'),(14,3423,'mirantão','37345000'),(14,3424,'miraporanga','38418000'),(14,3425,'miravânia','39465000'),(14,3426,'missionário','36262000'),(14,3427,'mocambeiro','35725000'),(14,3428,'mocambinho','39524000'),(14,3429,'moeda','35470000'),(14,3430,'moema','35604000'),(14,3431,'monjolinho de minas','38722000'),(14,3432,'monjolos','39215000'),(14,3433,'monsenhor horta','35425000'),(14,3434,'monsenhor isidro','36445000'),(14,3435,'monsenhor joão alexandre','35532000'),(14,3436,'monsenhor paulo','37405000'),(14,3437,'montalvânia','39495000'),(14,3438,'monte alegre de minas','38420000'),(14,3439,'monte azul','39500000'),(14,3440,'monte belo','37115000'),(14,3441,'monte carmelo','38500000'),(14,3442,'monte celeste','36532000'),(14,3443,'monte formoso','39893000'),(14,3444,'monte rei','39468000'),(14,3445,'monte santo de minas','37958000'),(14,3446,'monte sião','37580000'),(14,3447,'monte verde','37653000'),(14,3448,'montes claros','00000000'),(14,3449,'montezuma','39547000'),(14,3450,'morada nova de minas','35628000'),(14,3451,'morro','39313000'),(14,3452,'morro da garça','35798000'),(14,3453,'morro do ferro','35541000'),(14,3454,'morro do pilar','35875000'),(14,3455,'morro vermelho','34940000'),(14,3456,'mucuri','39809800'),(14,3457,'mundo novo de minas','35208000'),(14,3458,'munhoz','37620000'),(14,3459,'muquém','39423000'),(14,3460,'muriaé','36880000'),(14,3461,'mutum','36955000'),(14,3462,'muzambinho','37890000'),(14,3463,'nacip raydan','39718000'),(14,3464,'nanuque','39860000'),(14,3465,'naque','35157000'),(14,3466,'naque-nanuque','35149000'),(14,3467,'natalândia','38658000'),(14,3468,'natércia','37524000'),(14,3469,'nazaré de minas','37253000'),(14,3470,'nazareno','36370000'),(14,3471,'nelson de sena','39706000'),(14,3472,'neolândia','35552000'),(14,3473,'nepomuceno','37250000'),(14,3474,'nhandutiba','39463000'),(14,3475,'nicolândia','35235000'),(14,3476,'ninheira','39553000'),(14,3477,'nova belém','35298000'),(14,3478,'nova era','35920000'),(14,3479,'nova esperança','39414000'),(14,3480,'nova lima','34000000'),(14,3481,'nova minda','39335700'),(14,3482,'nova módica','35113000'),(14,3483,'nova ponte','38160000'),(14,3484,'nova porteirinha','39525000'),(14,3485,'nova resende','37860000'),(14,3486,'nova serrana','35519000'),(14,3487,'nova união','34990000'),(14,3488,'novilhona','39821000'),(14,3489,'novo cruzeiro','39820000'),(14,3490,'novo horizonte','39853000'),(14,3491,'novo oriente de minas','39817000'),(14,3492,'novorizonte','39568000'),(14,3493,'ocidente','36959000'),(14,3494,'olaria','36145000'),(14,3495,'olegário maciel','37509000'),(14,3496,'olhos d\'água do oeste','38772000'),(14,3497,'olhos d\'água','39398000'),(14,3498,'olímpio campos','39433000'),(14,3499,'olímpio noronha','37488000'),(14,3500,'oliveira','35540000'),(14,3501,'oliveira fortes','36250000'),(14,3502,'onça de pitangui','35655000'),(14,3503,'oratórios','35439000'),(14,3504,'orizânia','36828000'),(14,3505,'ouro branco','36420000'),(14,3506,'ouro fino','37570000'),(14,3507,'ouro preto','35400000'),(14,3508,'ouro verde de minas','39855000'),(14,3509,'paciência','39524500'),(14,3510,'padre brito','36209000'),(14,3511,'padre carvalho','39573000'),(14,3512,'padre felisberto','35445000'),(14,3513,'padre fialho','35367700'),(14,3514,'padre joão afonso','39672000'),(14,3515,'padre júlio maria','36978000'),(14,3516,'padre paraíso','39818000'),(14,3517,'padre pinto','35945000'),(14,3518,'padre viegas','35422000'),(14,3519,'pai pedro','39517000'),(14,3520,'paineiras','35622000'),(14,3521,'pains','35582000'),(14,3522,'paiolinho','37758000'),(14,3523,'paiva','36195000'),(14,3524,'palma','36750000'),(14,3525,'palmeiral','37725000'),(14,3526,'palmeirinha','38613000'),(14,3527,'palmital dos carvalhos','36278000'),(14,3528,'palmópolis','39945000'),(14,3529,'pântano','37543000'),(14,3530,'papagaios','35669000'),(14,3531,'pará de minas','00000000'),(14,3532,'paracatu','38600000'),(14,3533,'paraguaçu','37120000'),(14,3534,'paraguai','36565000'),(14,3535,'paraíso garcia','36236000'),(14,3536,'paraisópolis','37660000'),(14,3537,'paraopeba','35774000'),(14,3538,'paredão de minas','39285000'),(14,3539,'parque durval de barros','32440000'),(14,3540,'parque industrial','00000000'),(14,3541,'passa dez','35343000'),(14,3542,'passa quatro','37460000'),(14,3543,'passa tempo','35537000'),(14,3544,'passa vinte','37330000'),(14,3545,'passabém','35810000'),(14,3546,'passagem de mariana','35421000'),(14,3547,'passos','00000000'),(14,3548,'patis','39425000'),(14,3549,'patos de minas','00000000'),(14,3550,'patrimônio','38145000'),(14,3551,'patrocínio','38740000'),(14,3552,'patrocínio do muriaé','36860000'),(14,3553,'paula cândido','36544000'),(14,3554,'paula lima','36103000'),(14,3555,'paulistas','39765000'),(14,3556,'pavão','39814000'),(14,3557,'pé do morro','37462000'),(14,3558,'peçanha','39700000'),(14,3559,'pedra azul','39970000'),(14,3560,'pedra bonita','35364000'),(14,3561,'pedra corrida','35155000'),(14,3562,'pedra do anta','36585000'),(14,3563,'pedra do indaiá','35565000'),(14,3564,'pedra do sino','36282000'),(14,3565,'pedra dourada','36847000'),(14,3566,'pedra grande','39910000'),(14,3567,'pedra menina','39175000'),(14,3568,'pedralva','37520000'),(14,3569,'pedras de maria da cruz','39492000'),(14,3570,'pedrinópolis','38178000'),(14,3571,'pedro leopoldo','33600000'),(14,3572,'pedro lessa','39158000'),(14,3573,'pedro teixeira','36148000'),(14,3574,'pedro versiani','39809300'),(14,3575,'penédia','34930000'),(14,3576,'penha de frança','39675000'),(14,3577,'penha do capim','35212000'),(14,3578,'penha do cassiano','35107000'),(14,3579,'penha do norte','35241000'),(14,3580,'penha longa','36635000'),(14,3581,'pequeri','36610000'),(14,3582,'pequi','35667000'),(14,3583,'perdigão','35515000'),(14,3584,'perdilândia','38328000'),(14,3585,'perdizes','38170000'),(14,3586,'perdões','37260000'),(14,3587,'pereirinhas','35492000'),(14,3588,'periquito','35156000'),(14,3589,'perpétuo socorro','35196000'),(14,3590,'pescador','35114000'),(14,3591,'petúnia','37865000'),(14,3592,'piacatuba','36708000'),(14,3593,'pião','37776000'),(14,3594,'piau','36157000'),(14,3595,'pic sagarana','38686000'),(14,3596,'piedade de caratinga','35325000'),(14,3597,'piedade de ponte nova','35382000'),(14,3598,'piedade do paraopeba','35464000'),(14,3599,'piedade do rio grande','36227000'),(14,3600,'piedade dos gerais','35526000'),(14,3601,'pilar','38717000'),(14,3602,'pimenta','35585000'),(14,3603,'pindaíbas','38715000'),(14,3604,'pingo-d\'água','35348000'),(14,3605,'pinheirinhos','37461000'),(14,3606,'pinheiros altos','36490000'),(14,3607,'pinhotiba','36857000'),(14,3608,'pintópolis','39317000'),(14,3609,'pintos negreiros','37518000'),(14,3610,'piracaiba','38452000'),(14,3611,'piracema','35536000'),(14,3612,'pirajuba','38210000'),(14,3613,'piranga','36480000'),(14,3614,'piranguçu','37511000'),(14,3615,'piranguinho','37508000'),(14,3616,'piranguita','36462000'),(14,3617,'pirapanema','36889000'),(14,3618,'pirapetinga','36730000'),(14,3619,'pirapora','39270000'),(14,3620,'piraúba','36170000'),(14,3621,'pires e albuquerque','39394000'),(14,3622,'piscamba','35393000'),(14,3623,'pitangui','35650000'),(14,3624,'pitarana','39498000'),(14,3625,'piumhi','37925000'),(14,3626,'planalto de minas','39114000'),(14,3627,'planura','38220000'),(14,3628,'plautino soares','35144000'),(14,3629,'poaia','39783000'),(14,3630,'poço fundo','37757000'),(14,3631,'poções de paineiras','35623000'),(14,3632,'poços de caldas','00000000'),(14,3633,'pocrane','36960000'),(14,3634,'pompéu','35640000'),(14,3635,'poncianos','38126000'),(14,3636,'pontalete','37192000'),(14,3637,'ponte alta','38106000'),(14,3638,'ponte alta de minas','36805000'),(14,3639,'ponte dos ciganos','39343000'),(14,3640,'ponte firme','38754000'),(14,3641,'ponte nova','00000000'),(14,3642,'ponte segura','37618000'),(14,3643,'pontevila','35577000'),(14,3644,'ponto chique','39328000'),(14,3645,'ponto chique do martelo','36206500'),(14,3646,'ponto do marambaia','39812000'),(14,3647,'ponto dos volantes','39615000'),(14,3648,'porteirinha','39520000'),(14,3649,'porto agrário','39469000'),(14,3650,'porto das flores','36128000'),(14,3651,'porto dos mendes','37271000'),(14,3652,'porto firme','36576000'),(14,3653,'poté','39827000'),(14,3654,'pouso alegre','37550000'),(14,3655,'pouso alto','37468000'),(14,3656,'prados','36320000'),(14,3657,'prata','38140000'),(14,3658,'pratápolis','37970000'),(14,3659,'pratinha','38960000'),(14,3660,'presidente bernardes','36475000'),(14,3661,'presidente juscelino','35797000'),(14,3662,'presidente kubitschek','39135000'),(14,3663,'presidente olegário','38750000'),(14,3664,'presidente pena','39865000'),(14,3665,'professor sperber','36988000'),(14,3666,'providência','36706000'),(14,3667,'prudente de morais','35715000'),(14,3668,'quartel de são joão','35626000'),(14,3669,'quartel do sacramento','35342000'),(14,3670,'quartel geral','35625000'),(14,3671,'quatituba','35222000'),(14,3672,'queixada','39823000'),(14,3673,'queluzita','36424000'),(14,3674,'quem-quem','39443000'),(14,3675,'quilombo','39753000'),(14,3676,'quintinos','38845000'),(14,3677,'raposos','34400000'),(14,3678,'raul soares','35350000'),(14,3679,'ravena','34740000'),(14,3680,'realeza','36905000'),(14,3681,'recreio','36740000'),(14,3682,'reduto','36920000'),(14,3683,'resende costa','36340000'),(14,3684,'resplendor','35230000'),(14,3685,'ressaquinha','36270000'),(14,3686,'riachinho','38640000'),(14,3687,'riacho da cruz','39483000'),(14,3688,'riacho dos machados','39529000'),(14,3689,'ribeirão das neves','00000000'),(14,3690,'ribeirão de são domingos','36915000'),(14,3691,'ribeirão vermelho','37264000'),(14,3692,'ribeiro junqueira','36707000'),(14,3693,'ribeiros','37492000'),(14,3694,'rio acima','34300000'),(14,3695,'rio casca','35370000'),(14,3696,'rio das mortes','36315000'),(14,3697,'rio do prado','39940000'),(14,3698,'rio doce','35442000'),(14,3699,'rio espera','36460000'),(14,3700,'rio manso','35525000'),(14,3701,'rio melo','36465000'),(14,3702,'rio novo','36150000'),(14,3703,'rio paranaíba','38810000'),(14,3704,'rio pardo de minas','39530000'),(14,3705,'rio piracicaba','35940000'),(14,3706,'rio pomba','36180000'),(14,3707,'rio pretinho','39808000'),(14,3708,'rio preto','36130000'),(14,3709,'rio vermelho','39170000'),(14,3710,'ritápolis','36335000'),(14,3711,'roça grande','36682000'),(14,3712,'roças novas','34950000'),(14,3713,'rochedo de minas','36604000'),(14,3714,'rodeador','39218000'),(14,3715,'rodeiro','36510000'),(14,3716,'rodrigo silva','35407000'),(14,3717,'romaria','38520000'),(14,3718,'rosário da limeira','36878000'),(14,3719,'rosário de minas','36106000'),(14,3720,'rosário do pontal','35435500'),(14,3721,'roseiral','36958000'),(14,3722,'rubelita','39565000'),(14,3723,'rubim','39950000'),(14,3724,'sabará','00000000'),(14,3725,'sabinópolis','39750000'),(14,3726,'sacramento','38190000'),(14,3727,'salinas','39560000'),(14,3728,'salitre de minas','38743000'),(14,3729,'salto da divisa','39925000'),(14,3730,'sanatório santa fé','37412000'),(14,3731,'santa bárbara','35960000'),(14,3732,'santa bárbara do leste','35328000'),(14,3733,'santa bárbara do monte verde','36132000'),(14,3734,'santa bárbara do tugúrio','36215000'),(14,3735,'santa cruz da aparecida','37119000'),(14,3736,'santa cruz de botumirim','39595000'),(14,3737,'santa cruz de minas','36328000'),(14,3738,'santa cruz de salinas','39563000'),(14,3739,'santa cruz do escalvado','35384000'),(14,3740,'santa cruz do prata','37815000'),(14,3741,'santa da pedra','39368000'),(14,3742,'santa efigênia','35319000'),(14,3743,'santa efigênia de minas','39725000'),(14,3744,'santa fé de minas','39295000'),(14,3745,'santa filomena','36945000'),(14,3746,'santa helena de minas','39874000'),(14,3748,'santa juliana','38175000'),(14,3749,'santa luzia','00000000'),(14,3750,'santa luzia da serra','38774000'),(14,3751,'santa margarida','36910000'),(14,3752,'santa maria de itabira','35910000'),(14,3753,'santa maria do salto','39928000'),(14,3754,'santa maria do suaçuí','39780000'),(14,3755,'santa rita da estrela','38526000'),(14,3756,'santa rita de caldas','37775000'),(14,3757,'santa rita de jacutinga','36135000'),(14,3758,'santa rita de minas','35326000'),(14,3759,'santa rita de ouro preto','35409000'),(14,3760,'santa rita do cedro','35791000'),(14,3761,'santa rita do ibitipoca','36235000'),(14,3762,'santa rita do itueto','35225000'),(14,3763,'santa rita do rio do peixe','35807000'),(14,3764,'santa rita do sapucaí','37540000'),(14,3765,'santa rita durão','35428000'),(14,3766,'santa rosa da serra','38805000'),(14,3767,'santa rosa de lima','39412000'),(14,3768,'santa rosa dos dourados','38555000'),(14,3769,'santa teresa do bonito','39702000'),(14,3770,'santa terezinha de minas','35688000'),(14,3771,'santa vitória','38320000'),(14,3772,'santana da vargem','37195000'),(14,3773,'santana de caldas','37785000'),(14,3774,'santana de cataguases','36795000'),(14,3775,'santana de patos','38711000'),(14,3776,'santana de pirapama','35785000'),(14,3777,'santana do alfié','35997000'),(14,3778,'santana do araçuaí','39618000'),(14,3779,'santana do campestre','36783000'),(14,3780,'santana do capivari','37469000'),(14,3781,'santana do deserto','36620000'),(14,3782,'santana do garambéu','36146000'),(14,3783,'santana do jacaré','37278000'),(14,3784,'santana do manhuaçu','36940000'),(14,3785,'santana do paraíso','35167000'),(14,3786,'santana do paraopeba','35475000'),(14,3787,'santana do riacho','35845000'),(14,3788,'santana do tabuleiro','35358000'),(14,3789,'santana dos montes','36430000'),(14,3790,'santo antônio da boa vista','39434000'),(14,3791,'santo antônio da fortaleza','35801000'),(14,3792,'santo antônio da vargem alegre','35522000'),(14,3793,'santo antônio do amparo','37262000'),(14,3794,'santo antônio do aventureiro','36670000'),(14,3795,'santo antônio do boqueirão','38620000'),(14,3796,'santo antônio do cruzeiro','37255000'),(14,3797,'santo antônio do glória','36897000'),(14,3798,'santo antônio do grama','35388000'),(14,3799,'santo antônio do itambé','39160000'),(14,3800,'santo antônio do jacinto','39935000'),(14,3801,'santo antônio do leite','35413000'),(14,3802,'santo antônio do manhuaçu','35321000'),(14,3803,'santo antônio do monte','35560000'),(14,3804,'santo antônio do mucuri','39691000'),(14,3805,'santo antônio do norte','35863000'),(14,3806,'santo antônio do pirapetinga','36485000'),(14,3807,'santo antônio do retiro','39538000'),(14,3808,'santo antônio do rio abaixo','35880000'),(14,3809,'santo antônio dos araújos','39796000'),(14,3810,'santo antônio dos campos','35505000'),(14,3811,'santo hilário','35586000'),(14,3812,'santo hipólito','39210000'),(14,3813,'santos dumont','36240000'),(14,3814,'são bartolomeu','35406000'),(14,3815,'são benedito','00000000'),(14,3816,'são bento abade','37414000'),(14,3817,'são bento de caldas','37778000'),(14,3818,'são brás do suaçuí','35495000'),(14,3819,'são braz','38788000'),(14,3820,'são cândido','35320000'),(14,3821,'são domingos','36675000'),(14,3822,'são domingos da bocaina','36142000'),(14,3823,'são domingos das dores','35335000'),(14,3824,'são domingos do prata','35995000'),(14,3825,'são félix de minas','35275000'),(14,3826,'são francisco','39300000'),(14,3827,'são francisco de paula','35543000'),(14,3828,'são francisco de sales','38260000'),(14,3829,'são francisco do glória','36810000'),(14,3830,'são francisco do humaitá','36956000'),(14,3831,'são geraldo','36530000'),(14,3832,'são geraldo','39342000'),(14,3833,'são geraldo da piedade','39723000'),(14,3834,'são geraldo de tumiritinga','35126000'),(14,3835,'são geraldo do baguari','39704000'),(14,3836,'são geraldo do baixio','35258000'),(14,3837,'são gonçalo de botelhos','37723000'),(14,3838,'são gonçalo do abaeté','38790000'),(14,3839,'são gonçalo do monte','35455000'),(14,3840,'são gonçalo do pará','35516000'),(14,3841,'são gonçalo do rio abaixo','35935000'),(14,3842,'são gonçalo do rio das pedras','39153000'),(14,3843,'são gonçalo do rio preto','39185000'),(14,3844,'são gonçalo do sapucaí','37490000'),(14,3845,'são gotardo','38800000'),(14,3846,'são jerônimo dos poções','38975000'),(14,3847,'são joão batista do glória','37920000'),(14,3848,'são joão da chapada','39110000'),(14,3849,'são joão da lagoa','39355000'),(14,3850,'são joão da mata','37568000'),(14,3851,'são joão da ponte','39430000'),(14,3852,'são joão da sapucaia','36765000'),(14,3853,'são joão da serra','36245000'),(14,3854,'são joão da serra negra','38748000'),(14,3855,'são joão da vereda','39413000'),(14,3856,'são joão das missões','39475000'),(14,3857,'são joão del rei','00000000'),(14,3858,'são joão do bonito','39528000'),(14,3859,'são joão do jacutinga','35322000'),(14,3860,'são joão do manhuaçu','36918000'),(14,3861,'são joão do manteninha','35277000'),(14,3862,'são joão do oriente','35146000'),(14,3863,'são joão do pacuí','39365000'),(14,3864,'são joão do paraíso','39540000'),(14,3865,'são joão evangelista','39705000'),(14,3866,'são joão nepomuceno','36680000'),(14,3867,'são joaquim','39348000'),(14,3868,'são joaquim','39488000'),(14,3869,'são joaquim de bicas','32920000'),(14,3870,'são josé da barra','37945000'),(14,3871,'são josé da bela vista','38804000'),(14,3872,'são josé da lapa','33350000'),(14,3873,'são josé da pedra menina','36831000'),(14,3874,'são josé da safira','39785000'),(14,3875,'são josé da varginha','35694000'),(14,3876,'são josé das tronqueiras','35108000'),(14,3877,'são josé do acácio','35133000'),(14,3878,'são josé do alegre','37510000'),(14,3879,'são josé do barreiro','37927000'),(14,3880,'são josé do batatal','35339000'),(14,3881,'são josé do buriti','35795000'),(14,3882,'são josé do divino','39848000'),(14,3883,'são josé do goiabal','35986000'),(14,3884,'são josé do itueto','35228000'),(14,3885,'são josé do jacuri','39707000'),(14,3886,'são josé do mantimento','36990000'),(14,3887,'são josé do mato dentro','37574000'),(14,3888,'são josé do pântano','37549000'),(14,3889,'são josé do paraopeba','35468000'),(14,3890,'são josé dos lopes','36141000'),(14,3891,'são josé dos salgados','35512000'),(14,3892,'são lourenço','37470000'),(14,3893,'são manoel do guaiaçu','36787000'),(14,3894,'são mateus de minas','37652000'),(14,3895,'são miguel do anta','36590000'),(14,3896,'são pedro da garça','39411000'),(14,3897,'são pedro da união','37855000'),(14,3898,'são pedro das tabocas','39494000'),(14,3899,'são pedro de caldas','37787000'),(14,3900,'são pedro do avaí','36906000'),(14,3901,'são pedro do glória','36819000'),(14,3902,'são pedro do jequitinhonha','39961000'),(14,3903,'são pedro do suaçuí','39784000'),(14,3904,'são pedro dos ferros','35360000'),(14,3905,'são roberto','39358000'),(14,3906,'são romão','39290000'),(14,3907,'são roque de minas','37928000'),(14,3908,'são sebastião da barra','35192000'),(14,3909,'são sebastião da bela vista','37567000'),(14,3910,'são sebastião da vala','35215000'),(14,3911,'são sebastião da vargem alegre','36793000'),(14,3912,'são sebastião da vitória','36316000'),(14,3913,'são sebastião de braúnas','35197000'),(14,3914,'são sebastião do anta','35334000'),(14,3915,'são sebastião do baixio','35154000'),(14,3916,'são sebastião do barreado','36131000'),(14,3917,'são sebastião do barreiro','39839000'),(14,3918,'são sebastião do bonsucesso','35862000'),(14,3919,'são sebastião do bugre','39712000'),(14,3920,'são sebastião do gil','35493000'),(14,3921,'são sebastião do maranhão','39795000'),(14,3922,'são sebastião do óculo','35356000'),(14,3923,'são sebastião do oeste','35506000'),(14,3924,'são sebastião do paraíso','37950000'),(14,3925,'são sebastião do pontal','38292000'),(14,3926,'são sebastião do rio preto','35815000'),(14,3927,'são sebastião do rio verde','37467000'),(14,3928,'são sebastião do sacramento','36908000'),(14,3929,'são sebastião do soberbo','35387000'),(14,3930,'são sebastião dos poções','39497000'),(14,3931,'são sebastião dos robertos','37592000'),(14,3932,'são sebastião dos torres','36206700'),(14,3933,'são tiago','36350000'),(14,3934,'são tomás de aquino','37960000'),(14,3935,'são thomé das letras','37418000'),(14,3936,'são vicente','35707000'),(14,3937,'são vicente da estrela','35355000'),(14,3938,'são vicente de minas','37370000'),(14,3939,'são vicente do grama','35398000'),(14,3940,'são vicente do rio doce','35143000'),(14,3941,'são vítor','35104000'),(14,3942,'sapucaí','37594000'),(14,3943,'sapucaí-mirim','37690000'),(14,3944,'sapucaia','35311000'),(14,3945,'sapucaia de guanhães','39742000'),(14,3946,'sapucaia do norte','35255000'),(14,3947,'sarandira','36104000'),(14,3948,'sardoá','39728000'),(14,3949,'sarzedo','32450000'),(14,3950,'saudade','36645000'),(14,3951,'sem peixe','35441000'),(14,3952,'senador amaral','37615000'),(14,3953,'senador cortes','36650000'),(14,3954,'senador firmino','36540000'),(14,3955,'senador josé bento','37558000'),(14,3956,'senador melo viana','00000000'),(14,3957,'senador modestino gonçalves','39190000'),(14,3958,'senador mourão','39112000'),(14,3959,'senhora da glória','39212000'),(14,3960,'senhora da penha','35136000'),(14,3961,'senhora das dores','36207000'),(14,3962,'senhora de oliveira','36470000'),(14,3963,'senhora do carmo','35907000'),(14,3964,'senhora do porto','39745000'),(14,3965,'senhora dos remédios','36275000'),(14,3966,'sereno','36777000'),(14,3967,'sericita','35368000'),(14,3968,'seritinga','37454000'),(14,3969,'serra azul','35674000'),(14,3970,'serra azul de minas','39165000'),(14,3971,'serra bonita','38665000'),(14,3972,'serra da canastra','37929000'),(14,3973,'serra da saudade','35617000'),(14,3974,'serra das araras','39310000'),(14,3975,'serra do camapuã','35491000'),(14,3976,'serra do salitre','38760000'),(14,3977,'serra dos aimorés','39868000'),(14,3978,'serra dos lemes','37885000'),(14,3979,'serra nova','39532000'),(14,3980,'serrania','37136000'),(14,3981,'serranópolis de minas','39518000'),(14,3982,'serranos','37452000'),(14,3983,'serro','39150000'),(14,3984,'sertãozinho','37565500'),(14,3985,'sete cachoeiras','35802000'),(14,3986,'sete lagoas','00000000'),(14,3987,'setubinha','39688000'),(14,3988,'silva campos','35645000'),(14,3989,'silva xavier','35705000'),(14,3990,'silvano','38744000'),(14,3991,'silveira carvalho','36873000'),(14,3992,'silveirânia','36185000'),(14,3993,'silvestre','36572000'),(14,3994,'silvianópolis','37560000'),(14,3995,'simão campos','39432000'),(14,3996,'simão pereira','36123000'),(14,3997,'simonésia','36930000'),(14,3998,'sobral pinto','36782000'),(14,3999,'sobrália','35145000'),(14,4000,'soledade de minas','37478000'),(14,4001,'sopa','39102000'),(14,4002,'tabajara','35333000'),(14,4003,'tabaúna','35206000'),(14,4004,'tabuão','37315000'),(14,4005,'tabuleiro','36165000'),(14,4006,'taiobeiras','39550000'),(14,4007,'taparuba','36953000'),(14,4008,'tapira','38185000'),(14,4009,'tapiraí','38980000'),(14,4010,'tapuirama','38417000'),(14,4011,'taquaraçu de minas','33980000'),(14,4012,'taruaçu','36688000'),(14,4013,'tarumirim','35140000'),(14,4014,'tebas','36702000'),(14,4015,'teixeiras','36580000'),(14,4016,'tejuco','39484000'),(14,4017,'teófilo otoni','00000000'),(14,4018,'terra branca','39393000'),(14,4019,'timóteo','00000000'),(14,4020,'tiradentes','36325000'),(14,4021,'tiros','38880000'),(14,4022,'tobati','38953000'),(14,4023,'tocandira','39523000'),(14,4024,'tocantins','36512000'),(14,4025,'tocos do moji','37563000'),(14,4026,'toledo','37630000'),(14,4027,'tomás gonzaga','35789000'),(14,4028,'tombos','36844000'),(14,4029,'topázio','39807000'),(14,4030,'torneiros','35665100'),(14,4031,'torreões','36107000'),(14,4032,'três corações','37410000'),(14,4033,'três ilhas','36127000'),(14,4034,'três marias','39205000'),(14,4035,'três pontas','37190000'),(14,4036,'trimonte','36723000'),(14,4037,'tuiutinga','36528000'),(14,4038,'tumiritinga','35125000'),(14,4039,'tupaciguara','38430000'),(14,4040,'tuparecê','39623000'),(14,4041,'turmalina','39660000'),(14,4042,'turvolândia','37496000'),(14,4043,'ubá','36500000'),(14,4044,'ubaí','39320000'),(14,4045,'ubaporanga','35338000'),(14,4046,'ubari','36508000'),(14,4047,'uberaba','00000000'),(14,4048,'uberlândia','00000000'),(14,4049,'umburatiba','39878000'),(14,4050,'umbuzeiro','39439000'),(14,4051,'unaí','38610000'),(14,4052,'união de minas','38288000'),(14,4053,'uruana de minas','38630000'),(14,4054,'urucânia','35380000'),(14,4055,'urucuia','39315000'),(14,4056,'usina monte alegre','37118000'),(14,4057,'vai-volta','35142000'),(14,4058,'valadares','36101000'),(14,4059,'valão','39829000'),(14,4060,'vale verde de minas','35198500'),(14,4061,'valo fundo','39213000'),(14,4062,'vargem alegre','35199000'),(14,4063,'vargem bonita','37922000'),(14,4064,'vargem grande do rio pardo','39535000'),(14,4065,'vargem linda','35998000'),(14,4066,'varginha','00000000'),(14,4067,'varjão de minas','38794000'),(14,4068,'várzea da palma','39260000'),(14,4069,'varzelândia','39450000'),(14,4070,'vau-açu','35435000'),(14,4071,'vazante','38780000'),(14,4072,'vera cruz de minas','33680000'),(14,4073,'verdelândia','39458000'),(14,4074,'vereda do paraíso','39545000'),(14,4075,'veredas','38775000'),(14,4076,'veredinha','39663000'),(14,4077,'veríssimo','38150000'),(14,4078,'vermelho','36890000'),(14,4079,'vermelho novo','35359000'),(14,4080,'vermelho velho','35354000'),(14,4081,'vespasiano','33200000'),(14,4082,'viçosa','36570000'),(14,4083,'vieiras','36895000'),(14,4084,'vila bom jesus','38688000'),(14,4085,'vila costina','35583000'),(14,4086,'vila nova de minas','39416000'),(14,4087,'vila nova dos poções','39444000'),(14,4088,'vila pereira','39862000'),(14,4089,'vilas boas','36526000'),(14,4090,'virgem da lapa','39630000'),(14,4091,'virgínia','37465000'),(14,4092,'virginópolis','39730000'),(14,4093,'virgolândia','39715000'),(14,4094,'visconde do rio branco','36520000'),(14,4095,'vista alegre','36778000'),(14,4096,'vista alegre','39385000'),(14,4097,'vitorinos','36264000'),(14,4098,'volta grande','36720000'),(14,4099,'wenceslau braz','37512000'),(14,4100,'zelândia','38176000'),(14,4101,'zito soares','35383000'),(14,10117,'sucanga','39828000'),(14,10205,'chonin de baixo','35109500'),(14,10236,'taquaral de guanhães','39743000'),(15,4522,'abaetetuba','68440000'),(15,4523,'abel figueiredo','68527000'),(15,4524,'acará','68690000'),(15,4525,'afuá','68890000'),(15,4526,'agrópolis bela vista','68111000'),(15,4527,'água azul do norte','68533000'),(15,4528,'água fria','68559300'),(15,4529,'alenquer','68200000'),(15,4530,'algodoal','68712000'),(15,4531,'almeirim','68230000'),(15,4532,'almoço','68608000'),(15,4533,'alta pará','68112000'),(15,4534,'altamira','00000000'),(15,4535,'alter do chão','68109000'),(15,4536,'alvorada','68191700'),(15,4537,'americano','68792000'),(15,4538,'anajás','68810000'),(15,4539,'ananindeua','00000000'),(15,4540,'anapu','68365000'),(15,4541,'antônio lemos','68803000'),(15,4542,'apeú','68747000'),(15,4544,'apinagés','68519000'),(15,4545,'arapixuna','68128000'),(15,4546,'araquaim','68752000'),(15,4547,'arco-íris','68631200'),(15,4548,'areias','68495000'),(15,4549,'arumanduba','68235000'),(15,4550,'aruri','68191500'),(15,4551,'aturiaí','68612000'),(15,4552,'augusto corrêa','68610000'),(15,4553,'aurora do pará','68658000'),(15,4554,'aveiro','68150000'),(15,4555,'bagre','68475000'),(15,4556,'baião','68465000'),(15,4557,'bannach','68388000'),(15,4558,'barcarena','68445000'),(15,4559,'barreira branca','68568000'),(15,4560,'barreira dos campos','68562000'),(15,4561,'barreiras','68192000'),(15,4562,'baturité','68892000'),(15,4563,'beja','68444000'),(15,4564,'bela vista do caracol','68191600'),(15,4565,'belém','00000000'),(15,4566,'belterra','68143000'),(15,4567,'benevides','68795000'),(15,4568,'benfica','68797000'),(15,4569,'boa esperança','68718000'),(15,4570,'boa esperança','68113000'),(15,4571,'boa fé','68114000'),(15,4572,'boa sorte','68549100'),(15,4573,'boa vista do iririteua','68751000'),(15,4574,'boim','68115000'),(15,4575,'bom jardim','68713000'),(15,4576,'bom jesus do tocantins','68525000'),(15,4577,'bonito','68645000'),(15,4578,'bragança','68600000'),(15,4579,'brasil novo','68148000'),(15,4580,'brasília legal','68160000'),(15,4581,'brejo do meio','68514200'),(15,4582,'brejo grande do araguaia','68521000'),(15,4583,'breu branco','68488000'),(15,4584,'breves','68800000'),(15,4585,'bujaru','68670000'),(15,4586,'cachoeira do piriá','68617000'),(15,4587,'cachoeira do arari','68840000'),(15,4588,'cafezal','68723000'),(15,4589,'cairari','68453000'),(15,4590,'caju','68661000'),(15,4591,'câmara do marajó','68845000'),(15,4592,'cambuquira','68116000'),(15,4593,'cametá','68400000'),(15,4594,'camiranga','68624000'),(15,4595,'canaã dos carajás','68537000'),(15,4596,'capanema','00000000'),(15,4597,'capitão poço','68650000'),(15,4598,'caracará do arari','68848000'),(15,4599,'carajás','68516000'),(15,4600,'carapajó','68404000'),(15,4601,'caraparu','68791000'),(15,4602,'caratateua','68609000'),(15,4603,'caripi','68726000'),(15,4604,'carrazedo','68310000'),(15,4605,'castanhal','00000000'),(15,4606,'castelo dos sonhos','68379200'),(15,4607,'chaves','68880000'),(15,4608,'colares','68785000'),(15,4609,'conceição','68631400'),(15,4610,'conceição do araguaia','68540000'),(15,4611,'concórdia do pará','68685000'),(15,4612,'condeixa','68862000'),(15,4613,'coqueiro','67000000'),(15,4614,'cripurizão','68192200'),(15,4615,'cripurizinho','68192300'),(15,4616,'cuiú-cuiú','68192400'),(15,4617,'cumaru do norte','68398000'),(15,4618,'curionópolis','68523000'),(15,4619,'curralinho','68815000'),(15,4620,'curuá','68210000'),(15,4621,'curuaí','68125000'),(15,4622,'curuçá','68750000'),(15,4623,'curuçambaba','68406000'),(15,4624,'curumu','68805000'),(15,4625,'dom eliseu','68633000'),(15,4626,'eldorado dos carajás','68524000'),(15,4627,'emboraí','68614000'),(15,4628,'espírito santo do tauá','68787000'),(15,4629,'faro','68280000'),(15,4630,'fernandes belo','68622000'),(15,4631,'flexal','68260000'),(15,4632,'floresta','68192500'),(15,4633,'floresta do araguaia','68543000'),(15,4634,'garrafão do norte','68665000'),(15,4635,'goianésia do pará','68639000'),(15,4636,'gradaus','68394000'),(15,4637,'guajará-açú','68672000'),(15,4638,'guajará-miri','68692000'),(15,4639,'gurupá','68300000'),(15,4640,'gurupizinho','68631000'),(15,4641,'hidrelétrica tucuruí','68464000'),(15,4642,'iataí','68379100'),(15,4643,'icoaraci','00000000'),(15,4644,'igarapé da lama','68117000'),(15,4645,'igarapé-açu','68725000'),(15,4646,'igarapé-miri','68430000'),(15,4647,'inanu','68118000'),(15,4648,'inhangapi','68770000'),(15,4649,'ipixuna do pará','68637000'),(15,4650,'irituia','68655000'),(15,4651,'itaituba','00000000'),(15,4652,'itapixuna','68615000'),(15,4653,'itatupã','68320000'),(15,4654,'itupiranga','68580000'),(15,4655,'jacareacanga','68195000'),(15,4656,'jacundá','68590000'),(15,4657,'jaguarari','68693000'),(15,4658,'jamanxinzinho','68192600'),(15,4659,'jambuaçu','68749000'),(15,4660,'jandiaí','68772000'),(15,4661,'japerica','68708000'),(15,4662,'joana coeli','68412000'),(15,4663,'joana peres','68468000'),(15,4664,'joanes','68864000'),(15,4665,'juabá','68402000'),(15,4666,'jubim','68866000'),(15,4667,'juruti','68170000'),(15,4668,'km 19','68714000'),(15,4669,'km 26','68715000'),(15,4670,'lauro sodré','68753000'),(15,4671,'ligação do pará','68631600'),(15,4672,'limoeiro do ajuru','68415000'),(15,4673,'mãe do rio','68675000'),(15,4674,'magalhães barata','68722000'),(15,4675,'maiauata','68435000'),(15,4676,'manjeiro','68425000'),(15,4677,'marabá','00000000'),(15,4678,'maracanã','68710000'),(15,4679,'marajoara','68549300'),(15,4680,'marapanim','68760000'),(15,4681,'marituba','67200000'),(15,4682,'marudá','68768000'),(15,4683,'mata geral','68549200'),(15,4684,'matapiquara','68762000'),(15,4685,'medicilândia','68145000'),(15,4686,'melgaço','68490000'),(15,4687,'menino deus do anapu','68433000'),(15,4688,'meruú','68438000'),(15,4689,'mirasselvas','68706000'),(15,4690,'miritituba','68191400'),(15,4691,'mocajuba','68420000'),(15,4692,'moiraba','68408000'),(15,4693,'moju','68450000'),(15,4694,'monsaras','68868000'),(15,4695,'monte alegre','68220000'),(15,4696,'monte alegre do mau','68764000'),(15,4697,'monte dourado','68240000'),(15,4698,'morada nova','68514300'),(15,4699,'mosqueiro','00000000'),(15,4700,'muaná','68825000'),(15,4701,'mujuí dos campos','68120000'),(15,4702,'murajá','68754000'),(15,4703,'murucupi','68448000'),(15,4704,'murumuru','68514400'),(15,4705,'muta','68835000'),(15,4706,'mutucal','68755000'),(15,4707,'nazaré de mocajuba','68756000'),(15,4708,'nazaré dos patos','68462000'),(15,4709,'nova esperança do piriá','68618000'),(15,4710,'nova ipixuna','68585000'),(15,4711,'nova mocajuba','68604000'),(15,4712,'nova timboteua','68730000'),(15,4713,'novo planalto','68549400'),(15,4714,'novo progresso','68193000'),(15,4715,'novo repartimento','68473000'),(15,4716,'núcleo urbano quilômetro 30','68192700'),(15,4717,'óbidos','68250000'),(15,4718,'oeiras do pará','68470000'),(15,4719,'oriximiná','68270000'),(15,4720,'osvaldilândia','68549500'),(15,4721,'otelo','66000000'),(15,4722,'ourém','68640000'),(15,4723,'ourilândia do norte','68390000'),(15,4724,'outeiro','00000000'),(15,4725,'pacajá','68485000'),(15,4726,'pacoval','68135000'),(15,4727,'palestina do pará','68535000'),(15,4728,'paragominas','00000000'),(15,4729,'paratins','68514500'),(15,4730,'parauapebas','68515000'),(15,4731,'pau d\'arco','68545000'),(15,4732,'pedreira','68478000'),(15,4733,'peixe-boi','68734000'),(15,4734,'penhalonga','68781000'),(15,4735,'perseverança','68776000'),(15,4736,'pesqueiro','68875000'),(15,4737,'piabas','68607000'),(15,4738,'piçarra','68575000'),(15,4739,'piçarra','68559400'),(15,4740,'pinhal','68155000'),(15,4741,'piraquara','68119000'),(15,4742,'piriá','68818000'),(15,4743,'placas','68138000'),(15,4744,'ponta de pedras','68830000'),(15,4745,'ponta de ramos','68758000'),(15,4746,'portel','68480000'),(15,4747,'porto de moz','68330000'),(15,4748,'porto salvo','68782000'),(15,4749,'porto trombetas','68275000'),(15,4750,'prainha','68130000'),(15,4751,'primavera','68707000'),(15,4752,'quatipuru','68709000'),(15,4753,'quatro bocas','68682000'),(15,4754,'redenção','00000000'),(15,4755,'remansão','68461000'),(15,4756,'repartimento','68463000'),(15,4757,'rio maria','68530000'),(15,4758,'rio vermelho','68559500'),(15,4759,'riozinho','68191300'),(15,4760,'rondon do pará','68638000'),(15,4761,'rurópolis','68165000'),(15,4762,'salinópolis','68721000'),(15,4763,'salvaterra','68860000'),(15,4764,'santa bárbara do pará','68798000'),(15,4765,'santa cruz do arari','68850000'),(15,4766,'santa isabel do pará','68790000'),(15,4767,'santa luzia do pará','68644000'),(15,4768,'santa maria','68716000'),(15,4769,'santa maria das barreiras','68565000'),(15,4770,'santa maria do pará','68738000'),(15,4771,'santa rosa da vigia','68783000'),(15,4772,'santa terezinha','68747500'),(15,4773,'santana do araguaia','68560000'),(15,4774,'santarém','00000000'),(15,4775,'santarém novo','68720000'),(15,4776,'santo antônio','68549000'),(15,4777,'santo antônio do tauá','68786000'),(15,4778,'são caetano de odivelas','68775000'),(15,4779,'são domingos do araguaia','68520000'),(15,4780,'são domingos do capim','68635000'),(15,4781,'são félix do xingu','68380000'),(15,4782,'são francisco','68559600'),(15,4783,'são francisco da jararaca','68828000'),(15,4784,'são francisco do pará','68748000'),(15,4785,'são geraldo do araguaia','68570000'),(15,4786,'são joão da ponta','68774000'),(15,4787,'são joão de pirabas','68719000'),(15,4788,'são joão do acangata','68482000'),(15,4789,'são joão do araguaia','68518000'),(15,4790,'são joão do piriá','68631800'),(15,4791,'são joão dos ramos','68778000'),(15,4792,'são joaquim do tapará','68124000'),(15,4793,'são jorge','68126000'),(15,4794,'são josé do gurupi','68623000'),(15,4795,'são josé do piriá','68621000'),(15,4796,'são luiz do tapajós','68190000'),(15,4797,'são miguel do guamá','68660000'),(15,4798,'são miguel dos macacos','68808000'),(15,4799,'são pedro de viseu','68428000'),(15,4800,'são pedro do capim','68636000'),(15,4801,'são raimundo de borralhos','68788000'),(15,4802,'são raimundo do araguaia','68522000'),(15,4803,'são raimundo dos furtados','68410000'),(15,4804,'são roberto','68711000'),(15,4805,'são sebastião da boa vista','68820000'),(15,4806,'são sebastião de viçosa','68885000'),(15,4807,'sapucaia','68548000'),(15,4808,'senador josé porfírio','68360000'),(15,4809,'serra pelada','68514000'),(15,4810,'soure','68870000'),(15,4811,'tailândia','68695000'),(15,4812,'tatuteua','68717000'),(15,4813,'tauari','68705000'),(15,4814,'tauarizinho','68735000'),(15,4815,'tentugal','68642000'),(15,4816,'terra alta','68773000'),(15,4817,'terra santa','68285000'),(15,4818,'tijoca','68606000'),(15,4819,'timboteua','68732000'),(15,4820,'tomé-açú','68680000'),(15,4821,'tracuateua','68647000'),(15,4822,'trairão','68198000'),(15,4823,'tucumã','68385000'),(15,4824,'tucuruí','00000000'),(15,4825,'ulianópolis','68632000'),(15,4826,'uruará','68140000'),(15,4827,'urucuri','68663000'),(15,4828,'urucuriteua','68662000'),(15,4829,'val-de-cães','00000000'),(15,4830,'veiros','68350000'),(15,4831,'vigia','68780000'),(15,4832,'vila do carmo do tocantins','68409000'),(15,4833,'vila dos cabanos','68447000'),(15,4834,'vila frança','68121000'),(15,4835,'vila goreth','68122000'),(15,4836,'vila isol','68191200'),(15,4837,'vila nova','68779000'),(15,4838,'vila planalto','68191000'),(15,4839,'vila santa fé','68514100'),(15,4840,'vila socorro','68123000'),(15,4841,'vilarinho do monte','68340000'),(15,4842,'viseu','68620000'),(15,4843,'vista alegre','68759000'),(15,4844,'vista alegre do pará','68765000'),(15,4845,'vitória do xingu','68383000'),(15,4846,'xinguara','00000000'),(15,4847,'xinguarinha','68559200'),(16,4848,'água branca','58748000'),(16,4849,'aguiar','58778000'),(16,4850,'alagoa grande','58388000'),(16,4851,'alagoa nova','58125000'),(16,4852,'alagoinha','58390000'),(16,4853,'alcantil','58460000'),(16,4854,'algodão de jandaíra','58399000'),(16,4855,'alhandra','58320000'),(16,4856,'amparo','58548000'),(16,4857,'aparecida','58823000'),(16,4858,'araçagi','58270000'),(16,4859,'arara','58396000'),(16,4860,'araruna','58233000'),(16,4861,'areia','58397000'),(16,4862,'areia de baraúnas','58732000'),(16,4863,'areial','58140000'),(16,4864,'areias','58916000'),(16,4865,'aroeiras','58400000'),(16,4866,'riachão do bacamarte','58382000'),(16,4867,'assunção','58685000'),(16,4868,'baía da traição','58295000'),(16,4869,'balanços','58937000'),(16,4870,'bananeiras','58220000'),(16,4871,'baraúna','58188000'),(16,4872,'barra de santa rosa','58170000'),(16,4873,'barra de santana','58458000'),(16,4874,'barra de são miguel','58470000'),(16,4875,'barra do camaratuba','58293000'),(16,4876,'bayeux','00000000'),(16,4877,'belém','58255000'),(16,4878,'belém do brejo do cruz','58895000'),(16,4879,'bernardino batista','58922000'),(16,4880,'boa ventura','58993000'),(16,4881,'boa vista','58123000'),(16,4882,'bom jesus','58930000'),(16,4883,'bom sucesso','58887000'),(16,4884,'bom sucesso','58156000'),(16,4885,'bonito de santa fé','58960000'),(16,4886,'boqueirão','58450000'),(16,4887,'borborema','58394000'),(16,4888,'brejo do cruz','58890000'),(16,4889,'brejo dos santos','58880000'),(16,4890,'caaporã','58326000'),(16,4891,'cabaceiras','58480000'),(16,4892,'cabedelo','58310000'),(16,4893,'cachoeira','58205000'),(16,4894,'cachoeira dos índios','58935000'),(16,4895,'cachoeirinha','58983000'),(16,4896,'cacimba de areia','58730000'),(16,4897,'cacimba de dentro','58230000'),(16,4898,'cacimbas','58698000'),(16,4899,'caiçara','58253000'),(16,4900,'cajazeiras','58900000'),(16,4901,'cajazeirinhas','58855000'),(16,4902,'caldas brandão','58350000'),(16,4903,'camalaú','58530000'),(16,4904,'campina grande','00000000'),(16,4905,'campo alegre','58813000'),(16,4906,'campo grande','58362000'),(16,4907,'camurupim','58299000'),(16,4908,'capim','58287000'),(16,4909,'caraúbas','58595000'),(16,4910,'cardoso','58973000'),(16,4911,'carrapateira','58945000'),(16,4912,'casinha do homem','58826000'),(16,4913,'casserengue','58238000'),(16,4914,'catingueira','58715000'),(16,4915,'catolé','58114000'),(16,4916,'catolé do rocha','58884000'),(16,4917,'caturité','58455000'),(16,4918,'cepilho','58397500'),(16,4919,'conceição','58970000'),(16,4920,'condado','58714000'),(16,4921,'conde','58322000'),(16,4922,'congo','58535000'),(16,4923,'coremas','58770000'),(16,4924,'coronel maia','58885000'),(16,4925,'coxixola','58588000'),(16,4926,'cruz do espírito santo','58337000'),(16,4927,'cubati','58167000'),(16,4928,'cuité','58175000'),(16,4929,'cuité de mamanguape','58289000'),(16,4930,'cuitegi','58208000'),(16,4931,'cupissura','58327000'),(16,4932,'curral de cima','58291000'),(16,4933,'curral velho','58990000'),(16,4934,'damião','58173000'),(16,4935,'desterro','58695000'),(16,4936,'diamante','58994000'),(16,4937,'dona inês','58228000'),(16,4938,'duas estradas','58265000'),(16,4939,'emas','58763000'),(16,4940,'engenheiro ávidos','58905000'),(16,4941,'esperança','58135000'),(16,4942,'fagundes','58430000'),(16,4943,'fátima','58936000'),(16,4944,'fazenda nova','58918000'),(16,4945,'forte velho','58304300'),(16,4946,'frei martinho','58195000'),(16,4947,'gado bravo','58405000'),(16,4948,'galante','58110000'),(16,4949,'guarabira','58200000'),(16,4950,'guarita','58364000'),(16,4951,'gurinhém','58356000'),(16,4952,'gurjão','58670000'),(16,4953,'ibiara','58980000'),(16,4954,'igaracy','58775000'),(16,4955,'imaculada','58745000'),(16,4956,'ingá','58380000'),(16,4957,'itabaiana','58360000'),(16,4958,'itajubatiba','58718000'),(16,4959,'itaporanga','58780000'),(16,4960,'itapororoca','58275000'),(16,4961,'itatuba','58378000'),(16,4962,'jacaraú','58278000'),(16,4963,'jericó','58830000'),(16,4964,'joão pessoa','00000000'),(16,4965,'juarez távora','58387000'),(16,4966,'juazeirinho','58660000'),(16,4967,'junco do seridó','58640000'),(16,4968,'juripiranga','58330000'),(16,4969,'juru','58750000'),(16,4970,'lagoa','58835000'),(16,4971,'lagoa de dentro','58250000'),(16,4972,'lagoa de dentro','58114200'),(16,4973,'lagoa seca','58117000'),(16,4974,'lastro','58820000'),(16,4975,'lerolândia','58304400'),(16,4976,'livramento','58690000'),(16,4977,'logradouro','58254000'),(16,4978,'lucena','58315000'),(16,4979,'mãe d\'água','58740000'),(16,4980,'maia','58222000'),(16,4981,'malta','58713000'),(16,4982,'mamanguape','58280000'),(16,4983,'manaíra','58995000'),(16,4984,'marcação','58294000'),(16,4985,'mari','58345000'),(16,4986,'marizópolis','58819000'),(16,4987,'massaranduba','58120000'),(16,4988,'mata limpa','58397600'),(16,4989,'mata virgem','58425000'),(16,4990,'mataraca','58292000'),(16,4991,'matinhas','58128000'),(16,4992,'mato grosso','58832000'),(16,4993,'maturéia','58737000'),(16,4994,'melo','58176000'),(16,4995,'mogeiro','58375000'),(16,4996,'montadas','58145000'),(16,4997,'monte horebe','58950000'),(16,4998,'monteiro','58500000'),(16,4999,'montevidéu','58975000'),(16,5000,'mulungu','58354000'),(16,5001,'muquém','58397700'),(16,5002,'natuba','58410000'),(16,5003,'nazaré','58152000'),(16,5004,'nazarezinho','58817000'),(16,5005,'nossa senhora do livramento','58304000'),(16,5006,'nova floresta','58178000'),(16,5007,'nova olinda','58798000'),(16,5008,'nova palmeira','58184000'),(16,5009,'núcleo n 2','58814500'),(16,5010,'núcleo n 3','58814600'),(16,5011,'odilândia','58304600'),(16,5012,'olho d\'água','58760000'),(16,5013,'olivedos','58160000'),(16,5014,'ouro velho','58560000'),(16,5015,'parari','58575000'),(16,5016,'passagem','58734000'),(16,5017,'patos','00000000'),(16,5018,'paulista','58860000'),(16,5019,'pedra branca','58790000'),(16,5020,'pedra lavrada','58180000'),(16,5021,'pedras de fogo','58328000'),(16,5022,'pedro régis','58273000'),(16,5023,'pelo sinal','58996000'),(16,5024,'pereiros','58814700'),(16,5025,'piancó','58765000'),(16,5026,'picuí','58187000'),(16,5027,'pilar','58338000'),(16,5028,'pilões','58393000'),(16,5029,'pilõezinhos','58210000'),(16,5030,'pindurão','58533000'),(16,5031,'pio x','58545000'),(16,5032,'pirauá','58415000'),(16,5033,'pirpirituba','58213000'),(16,5034,'pitanga de estrada','58286000'),(16,5035,'pitimbu','58324000'),(16,5036,'pocinhos','58150000'),(16,5037,'poço dantas','58933000'),(16,5038,'poço de josé de moura','58908000'),(16,5039,'pombal','58840000'),(16,5040,'porteirinha de pedra','58114400'),(16,5041,'prata','58550000'),(16,5042,'princesa isabel','58755000'),(16,5043,'puxinanã','58115000'),(16,5044,'queimadas','58440000'),(16,5045,'quixabá','58733000'),(16,5046,'quixadá','58917000'),(16,5047,'remígio','58398000'),(16,5048,'riachão','58235000'),(16,5049,'riachão do poço','58348000'),(16,5050,'riacho de santo antônio','58465000'),(16,5051,'riacho dos cavalos','58870000'),(16,5052,'ribeira','58304700'),(16,5053,'rio tinto','58297000'),(16,5054,'rua nova','58257000'),(16,5055,'salema','58298000'),(16,5056,'salgadinho','58650000'),(16,5057,'salgado de são félix','58370000'),(16,5058,'santa cecília de umbuzeiro','58428000'),(16,5059,'santa cruz','58824000'),(16,5060,'santa gertrudes','58709000'),(16,5061,'santa helena','58925000'),(16,5062,'santa inês','58978000'),(16,5063,'santa luzia','58600000'),(16,5064,'santa luzia do cariri','58582000'),(16,5065,'santa maria','58525000'),(16,5066,'santa rita','00000000'),(16,5067,'santa rita','58919000'),(16,5068,'santa teresinha','58720000'),(16,5069,'santa terezinha','58114600'),(16,5070,'santana de mangueira','58985000'),(16,5071,'santana dos garrotes','58795000'),(16,5072,'santarém','58928000'),(16,5073,'santo andré','58675000'),(16,5074,'são bento','58865000'),(16,5075,'são bentinho','58857000'),(16,5076,'são domingos de pombal','58853000'),(16,5077,'são domingos do cariri','58485000'),(16,5078,'são francisco','58818000'),(16,5079,'são gonçalo','58814000'),(16,5080,'são joão bosco','58916500'),(16,5081,'são joão do cariri','58590000'),(16,5082,'são joão do rio do peixe','58910000'),(16,5083,'são joão do tigre','58520000'),(16,5084,'são josé da lagoa tapada','58815000'),(16,5085,'são josé da mata','58113000'),(16,5086,'são josé de caiana','58784000'),(16,5087,'são josé de espinharas','58723000'),(16,5088,'são josé de marimbas','58938000'),(16,5089,'são josé de piranhas','58940000'),(16,5090,'são josé de princesa','58758000'),(16,5091,'são josé do bonfim','58725000'),(16,5092,'são josé do brejo do cruz','58893000'),(16,5093,'são josé do sabugi','58610000'),(16,5094,'são josé dos cordeiros','58570000'),(16,5095,'são josé dos ramos','58339000'),(16,5096,'são mamede','58625000'),(16,5097,'são miguel de taipu','58334000'),(16,5098,'são pedro','58828000'),(16,5099,'são sebastião de lagoa de roça','58119000'),(16,5100,'são sebastião do umbuzeiro','58510000'),(16,5101,'sapé','58340000'),(16,5102,'seridó','58159000'),(16,5103,'são vicente do seridó','58158000'),(16,5104,'serra branca','58580000'),(16,5105,'serra da raiz','58260000'),(16,5106,'serra grande','58955000'),(16,5107,'serra redonda','58385000'),(16,5108,'serraria','58395000'),(16,5109,'sertãozinho','58268000'),(16,5110,'sobrado','58342000'),(16,5111,'solânea','58225000'),(16,5112,'soledade','58155000'),(16,5113,'sossego','58177000'),(16,5114,'sousa','00000000'),(16,5115,'sucuru','58586000'),(16,5116,'sumé','58540000'),(16,5117,'campo de santana','58240000'),(16,5119,'tambauzinho','58304800'),(16,5120,'taperoá','58680000'),(16,5121,'tavares','58753000'),(16,5122,'teixeira','58735000'),(16,5123,'tenório','58665000'),(16,5124,'triunfo','58920000'),(16,5125,'uiraúna','58915000'),(16,5126,'umari','58913000'),(16,5127,'umbuzeiro','58420000'),(16,5128,'várzea','58620000'),(16,5129,'várzea comprida','58850000'),(16,5130,'várzea nova','58304500'),(16,5131,'vazante','58997000'),(16,5132,'vieirópolis','58822000'),(16,5133,'vista serrana','58710000'),(16,5134,'zabelê','58515000'),(17,5730,'abapã','84185000'),(17,5731,'abatiá','86460000'),(17,5732,'acampamento das minas','84277500'),(17,5733,'açungui','83550000'),(17,5734,'adhemar de barros','87895000'),(17,5735,'adrianópolis','83490000'),(17,5736,'agostinho','84194200'),(17,5737,'água azul','83770000'),(17,5738,'água boa','87145000'),(17,5739,'água branca','85139500'),(17,5741,'água mineral','85126000'),(17,5742,'água vermelha','84197700'),(17,5743,'agudos do sul','83850000'),(17,5744,'alecrim','84284000'),(17,5745,'alexandra','83250000'),(17,5746,'almirante tamandaré','00000000'),(17,5747,'altamira do paraná','85280000'),(17,5748,'altaneira','87108000'),(17,5749,'alto alegre','86695000'),(17,5750,'alto alegre','87523200'),(17,5751,'alto alegre do iguaçu','85794000'),(17,5752,'alto amparo','84277700'),(17,5753,'alto do amparo','84305000'),(17,5754,'alto pará','85823950'),(17,5755,'alto paraná','87750000'),(17,5756,'alto piquiri','87580000'),(17,5757,'alto porã','86875000'),(17,5758,'alto sabiá','85138400'),(17,5759,'alto santa fé','85931000'),(17,5760,'alto são joão','87323000'),(17,5761,'altônia','87550000'),(17,5762,'alvorada do iguaçu','85872000'),(17,5763,'alvorada do sul','86150000'),(17,5764,'amaporã','87850000'),(17,5765,'amorinha','84910000'),(17,5766,'ampére','85640000'),(17,5767,'anahy','85425000'),(17,5768,'andirá','86380000'),(17,5769,'andorinhas','84194500'),(17,5770,'angai','84538000'),(17,5771,'ângulo','86755000'),(17,5772,'antas','85322000'),(17,5773,'antas','84277000'),(17,5774,'antonina','83370000'),(17,5775,'antônio brandão de oliveira','86213000'),(17,5776,'antônio olinto','83980000'),(17,5777,'anunciação','85654000'),(17,5778,'aparecida do oeste','87455000'),(17,5779,'apiaba','84433000'),(17,5780,'apucarana','00000000'),(17,5781,'aquidaban','86995000'),(17,5782,'aranha','83419000'),(17,5783,'arapongas','00000000'),(17,5784,'arapoti','84990000'),(17,5785,'arapuã','86884000'),(17,5786,'arapuan','87385000'),(17,5787,'ararapira','83393000'),(17,5788,'araruna','87260000'),(17,5789,'araucária','00000000'),(17,5790,'areia branca dos assis','83810000'),(17,5791,'areias','84198400'),(17,5792,'aricanduva','86719000'),(17,5793,'ariranha do ivaí','86880000'),(17,5794,'aroeira','85822800'),(17,5795,'arquimedes','85824750'),(17,5796,'assaí','86220000'),(17,5797,'assis chateaubriand','85935000'),(17,5798,'astorga','86730000'),(17,5799,'atalaia','87630000'),(17,5800,'aurora do iguaçu','85878000'),(17,5801,'bairro cachoeira','85137600'),(17,5802,'bairro do felisberto','84277300'),(17,5803,'bairro limoeiro','86102000'),(17,5804,'balsa nova','83650000'),(17,5805,'bandeirantes','86360000'),(17,5806,'bandeirantes d\'oeste','87368000'),(17,5807,'banhado','85138700'),(17,5808,'barão de lucena','87610000'),(17,5809,'barbosa ferraz','86960000'),(17,5810,'barra bonita','85609100'),(17,5811,'barra bonita','85245000'),(17,5812,'barra do jacaré','86385000'),(17,5813,'barra grande','85584000'),(17,5815,'barra grande','85752000'),(17,5816,'barra grande','84125900'),(17,5818,'barra santa salete','85265000'),(17,5819,'barracão','85700000'),(17,5820,'barras','87316600'),(17,5821,'barreiro','85822950'),(17,5822,'barreiro','85136000'),(17,5823,'barreiro','84380000'),(17,5824,'barreiro das frutas','87315600'),(17,5825,'barreiros','86817500'),(17,5826,'barrinha','84197200'),(17,5827,'barro preto','85822700'),(17,5828,'barro preto','86119000'),(17,5829,'barro preto','83153000'),(17,5830,'bateias','83648000'),(17,5831,'baulândia','85613000'),(17,5832,'bela vista','85406000'),(17,5833,'bela vista','85267000'),(17,5834,'bela vista do caroba','85745000'),(17,5835,'bela vista do ivaí','86953000'),(17,5836,'bela vista do paraíso','86130000'),(17,5837,'bela vista do piquiri','87347000'),(17,5838,'bela vista do tapiracui','87440000'),(17,5839,'bentópolis','86625000'),(17,5840,'bernardelli','87805000'),(17,5841,'betaras','83531000'),(17,5842,'bituruna','84640000'),(17,5843,'boa esperança','87390000'),(17,5844,'boa esperança','87317000'),(17,5845,'boa esperança do iguaçu','85680000'),(17,5846,'boa ventura de são roque','85225000'),(17,5847,'boa vista','83649000'),(17,5848,'boa vista','85514400'),(17,5849,'boa vista','84125400'),(17,5850,'boa vista','85926850'),(17,5851,'boa vista','85258000'),(17,5852,'boa vista da aparecida','85780000'),(17,5853,'bocaina','84125200'),(17,5854,'bocaiúva do sul','83450000'),(17,5855,'bom jardim do sul','84465000'),(17,5856,'bom jesus do sul','85708000'),(17,5857,'bom progresso','86728000'),(17,5858,'bom retiro','85823700'),(17,5859,'bom retiro','85122000'),(17,5860,'bom retiro','85514250'),(17,5861,'bom retiro','85175000'),(17,5862,'bom sucesso','86940000'),(17,5863,'bom sucesso','85139900'),(17,5864,'bom sucesso do sul','85515000'),(17,5865,'borda do campo','83425000'),(17,5867,'borman','85405000'),(17,5868,'borrazópolis','86925000'),(17,5869,'botuquara','84126600'),(17,5870,'bourbonia','86963000'),(17,5871,'braganey','85430000'),(17,5872,'bragantina','85937000'),(17,5873,'brasilândia do sul','87595000'),(17,5874,'bugre','83660000'),(17,5875,'bulcão','84193800'),(17,5876,'cabrito','87729800'),(17,5877,'cacatu','83375000'),(17,5878,'cachoeira','85823750'),(17,5879,'cachoeira de cima','83380000'),(17,5880,'cachoeira de são josé','83181000'),(17,5881,'cachoeira do espírito santo','86415000'),(17,5882,'cachoeirinha','85139300'),(17,5883,'cachoeirinha','85514500'),(17,5884,'cadeadinho','84518000'),(17,5885,'caetano mendes','84315000'),(17,5886,'cafeara','86640000'),(17,5887,'cafeeiros','87405000'),(17,5888,'cafelândia','85415000'),(17,5889,'cafezal do sul','87565000'),(17,5890,'caitá','83920000'),(17,5892,'califórnia','86820000'),(17,5893,'calógeras','84995000'),(17,5894,'cambará','86390000'),(17,5895,'cambé','00000000'),(17,5896,'cambiju','84127700'),(17,5897,'cambira','86890000'),(17,5898,'campestrinho','83729900'),(17,5899,'campina','83649350'),(17,5900,'campina','85107000'),(17,5901,'campina','83159000'),(17,5902,'campina da lagoa','87345000'),(17,5903,'campina do miranguava','83154000'),(17,5904,'campina do simão','85148000'),(17,5905,'campina dos furtados','83161000'),(17,5906,'campina grande do sul','83430000'),(17,5907,'campinas','83649900'),(17,5908,'campo bonito','85450000'),(17,5909,'campo do meio','84128400'),(17,5910,'campo do tenente','83870000'),(17,5911,'campo largo','00000000'),(17,5912,'campo largo da roseira','83183000'),(17,5913,'campo magro','83535000'),(17,5914,'campo mourão','00000000'),(17,5915,'cândido de abreu','84470000'),(17,5916,'candói','85140000'),(17,5917,'canela','85612000'),(17,5918,'cantagalo','85160000'),(17,5919,'canzianópolis','85735000'),(17,5920,'capanema','85760000'),(17,5921,'capão alto','84196000'),(17,5922,'capão alto','85138800'),(17,5923,'capão bonito','85138500'),(17,5924,'capão da lagoa','85120000'),(17,5925,'capão grande','84127500'),(17,5926,'capão rico','85121000'),(17,5927,'capitão leônidas marques','85790000'),(17,5928,'capivara','83534000'),(17,5929,'capoeirinha','84199400'),(17,5930,'cara pintado','85106000'),(17,5931,'cará-cará','84126900'),(17,5932,'carajá','85837000'),(17,5933,'carambeí','84145000'),(17,5934,'caramuru','86199600'),(17,5935,'caratuva','84998000'),(17,5936,'carazinho','84127200'),(17,5937,'carbonera','87483000'),(17,5938,'carlópolis','86420000'),(17,5939,'casa nova','84194400'),(17,5940,'cascatinha','86199400'),(17,5941,'cascavel','00000000'),(17,5942,'castro','00000000'),(17,5943,'catanduvas','85470000'),(17,5944,'catanduvas','84199800'),(17,5945,'catanduvas do sul','83740000'),(17,5946,'catarinenses','87724000'),(17,5947,'caxambu','84194300'),(17,5948,'centenário','84126200'),(17,5949,'centenário do sul','86630000'),(17,5950,'central lupion','85823600'),(17,5951,'centralito','85823500'),(17,5952,'centro novo','85754000'),(17,5953,'cerne','83649450'),(17,5954,'cerrado grande','84126400'),(17,5955,'cerro azul','83570000'),(17,5956,'cerro velho','84127300'),(17,5957,'céu azul','85840000'),(17,5958,'chopinzinho','85560000'),(17,5959,'cianorte','87200000'),(17,5960,'cidade gaúcha','87820000'),(17,5961,'cintra pimentel','87975000'),(17,5962,'clevelândia','85530000'),(17,5963,'coitinho','85137500'),(17,5964,'colombo','00000000'),(17,5965,'colônia acioli','83151000'),(17,5966,'colônia castelhanos','83165000'),(17,5967,'colônia castrolânda','84196200'),(17,5968,'colônia centenário','85822550'),(17,5969,'colônia cristina','83729000'),(17,5970,'colônia dom carlos','85514100'),(17,5971,'colônia esperança','85822900'),(17,5972,'colônia general carneiro','84662000'),(17,5973,'colônia iapó','84193500'),(17,5974,'colônia melissa','85822650'),(17,5975,'colônia murici','83185000'),(17,5976,'colônia padre paulo','83855000'),(17,5977,'colônia pereira','83251850'),(17,5978,'colônia santos andrade','83162000'),(17,5979,'colônia são josé','85823650'),(17,5980,'colônia sapucaí','85822750'),(17,5981,'colônia saúde','86118000'),(17,5982,'colônia tapera','84127100'),(17,5983,'colorado','86690000'),(17,5984,'comur','87870000'),(17,5986,'conceição','84196500'),(17,5987,'conchas velhas','84126000'),(17,5988,'conciolândia','85743000'),(17,5989,'congonhas','86305000'),(17,5990,'congonhinhas','86320000'),(17,5991,'conselheiro mairinck','86480000'),(17,5992,'conselheiro zacarias','86440000'),(17,5993,'contenda','83730000'),(17,5994,'copacabana do norte','87195000'),(17,5995,'corbélia','85420000'),(17,5996,'cornélio procópio','86300000'),(17,5997,'coronel domingos soares','85557000'),(17,5998,'coronel firmino martins','85536000'),(17,5999,'coronel vivida','85550000'),(17,6000,'correia de freitas','86816000'),(17,6001,'corumbataí do sul','86970000'),(17,6002,'corvo','85111000'),(17,6003,'costeira','83729700'),(17,6004,'covó','85545000'),(17,6005,'coxilha rica','85582000'),(17,6006,'cristo rei','85763000'),(17,6007,'cristo rei','87728000'),(17,6008,'cruz machado','84620000'),(17,6009,'cruzeiro do iguaçu','85598000'),(17,6010,'cruzeiro do norte','86285000'),(17,6011,'cruzeiro do oeste','87400000'),(17,6012,'cruzeiro do sul','87650000'),(17,6013,'cruzmaltina','86855000'),(17,6014,'cunhaporanga','84193900'),(17,6015,'curitiba','00000000'),(17,6016,'curiúva','84280000'),(17,6017,'curucaca','85138200'),(17,6018,'deputado josé afonso','87726000'),(17,6019,'despique','83158000'),(17,6021,'dez de maio','85920000'),(17,6023,'diamante d\'oeste','85896000'),(17,6024,'diamante do norte','87990000'),(17,6025,'diamante do sul','85408000'),(17,6026,'doce grande','83843000'),(17,6027,'dois irmãos','85571000'),(17,6028,'dois irmãos','85923000'),(17,6029,'dois marcos','85926550'),(17,6030,'dois vizinhos','85660000'),(17,6031,'dom rodrigo','83649650'),(17,6032,'dorizon','84574000'),(17,6033,'douradina','87485000'),(17,6034,'doutor antônio paranhos','85579000'),(17,6035,'doutor camargo','87155000'),(17,6036,'doutor ernesto','85926500'),(17,6037,'doutor oliveira castro','85985000'),(17,6038,'doutor ulysses','83590000'),(17,6039,'eduardo xavier da silva','84210000'),(17,6040,'emboguaçu','83251250'),(17,6041,'emboque','83319600'),(17,6042,'emboque','83150000'),(17,6043,'encantado d\'oeste','85936000'),(17,6044,'encruzilhada','85138900'),(17,6045,'encruzilhada','85514900'),(17,6046,'enéas marques','85630000'),(17,6047,'engenheiro beltrão','87270000'),(17,6048,'entre rios','85108000'),(17,6049,'entre rios do oeste','85988000'),(17,6050,'esperança do norte','86155000'),(17,6051,'esperança nova','87545000'),(17,6052,'espigão alto do iguaçu','85465000'),(17,6053,'espírito santo','86106000'),(17,6054,'estação general lúcio','83729500'),(17,6055,'estação roça nova','83319000'),(17,6056,'europa','83251400'),(17,6057,'euzébio de oliveira','84912000'),(17,6058,'faisqueira','84279800'),(17,6059,'farol','87325000'),(17,6060,'faxina','83163000'),(17,6061,'faxinal','86840000'),(17,6062,'faxinal do céu','85180000'),(17,6063,'faxinal dos elias','85124000'),(17,6064,'faxinal santa cruz','84128600'),(17,6065,'fazenda do brigadeiro','85824850'),(17,6066,'fazenda dos barbosas','85137200'),(17,6067,'fazenda jangada','85824800'),(17,6068,'fazenda rio grande','83820000'),(17,6069,'fazenda salmo 23','87523700'),(17,6070,'fazendinha','85609700'),(17,6071,'felpudo','83649700'),(17,6072,'fênix','86950000'),(17,6073,'fernandes pinheiro','84535000'),(17,6074,'fernão dias','86765000'),(17,6075,'ferraria','83644000'),(17,6076,'ferreiras','84125700'),(17,6077,'figueira','84285000'),(17,6078,'figueira do oeste','87277000'),(17,6079,'fiusas','85123000'),(17,6080,'flor da serra','85886000'),(17,6081,'flor da serra do sul','85618000'),(17,6082,'floraí','87185000'),(17,6083,'floresta','87120000'),(17,6084,'florestópolis','86165000'),(17,6085,'floriano','87105000'),(17,6086,'flórida','86780000'),(17,6087,'florópolis','87668000'),(17,6088,'fluviópolis','83930000'),(17,6089,'formigone','87523300'),(17,6090,'formosa do oeste','85830000'),(17,6091,'foz do iguaçu','00000000'),(17,6092,'foz do jordão','85145000'),(17,6093,'francisco alves','87570000'),(17,6094,'francisco beltrão','00000000'),(17,6095,'francisco frederico teixeira guimarães','85556000'),(17,6096,'frei timóteo','86215000'),(17,6097,'fueros','85116000'),(17,6098,'fundão','84194900'),(17,6099,'gamadinho','85824600'),(17,6100,'gamela','83156000'),(17,6101,'gaúcha','85609500'),(17,6102,'gavião','85325000'),(17,6103,'gavião','85678000'),(17,6104,'general carneiro','84660000'),(17,6105,'general osório','85927550'),(17,6106,'geremia lunardelli','87333000'),(17,6107,'godoy moreira','86938000'),(17,6108,'goioerê','87360000'),(17,6109,'goioxim','85162000'),(17,6110,'góis','85103000'),(17,6111,'gonçalves júnior','84507000'),(17,6112,'graciosa','87722000'),(17,6113,'grandes rios','86845000'),(17,6114,'guaiporã','87567000'),(17,6115,'guaíra','85980000'),(17,6116,'guairaçá','87880000'),(17,6117,'guairaçá','85113000'),(17,6118,'guairaçá','86114000'),(17,6119,'guajuvira','83725000'),(17,6120,'guamiranga','84435000'),(17,6121,'guamirim','84510000'),(17,6122,'guapirama','86465000'),(17,6123,'guaporé','85407000'),(17,6124,'guaporema','87810000'),(17,6125,'guará','85110000'),(17,6126,'guaraci','86620000'),(17,6127,'guaragi','84120000'),(17,6128,'guaraituba','83418000'),(17,6129,'guarani','85380000'),(17,6130,'guaraniaçu','85400000'),(17,6131,'guarapuava','00000000'),(17,6132,'guarapuavinha','85609150'),(17,6133,'guaraqueçaba','83390000'),(17,6134,'guararema','84193300'),(17,6135,'guaratuba','83280000'),(17,6136,'guaraúna','84534000'),(17,6137,'guaravera','86120000'),(17,6138,'guardamoria','84277800'),(17,6139,'harmonia','84275000'),(17,6140,'herculândia','87527000'),(17,6141,'herval grande','85326000'),(17,6142,'herveira','87348000'),(17,6143,'herveira','85360000'),(17,6144,'hidrelétrica itaipu','85873000'),(17,6145,'honório serpa','85548000'),(17,6146,'iarama','87523600'),(17,6147,'ibaiti','84900000'),(17,6148,'ibema','85478000'),(17,6149,'ibiaci','86143000'),(17,6150,'ibiporã','86200000'),(17,6151,'içara','86744000'),(17,6152,'icaraíma','87530000'),(17,6153,'icatu','87935000'),(17,6154,'igrejinha','85127000'),(17,6155,'iguaraçu','86750000'),(17,6156,'iguatemi','87103000'),(17,6157,'iguatu','85423000'),(17,6158,'iguiporã','85972000'),(17,6159,'ilha do mel','83251000'),(17,6160,'ilha dos valadares','83252000'),(17,6161,'imbaú','84250000'),(17,6162,'imbauzinho','84279300'),(17,6163,'imbituva','84430000'),(17,6164,'inácio martins','85155000'),(17,6165,'inajá','87670000'),(17,6166,'independência','85514600'),(17,6167,'indianópolis','87210000'),(17,6168,'inspetor carvalho','83155000'),(17,6169,'invernada','84197900'),(17,6170,'invernadinha','85129000'),(17,6171,'iolópolis','85578000'),(17,6172,'ipiranga','84450000'),(17,6173,'ipiranga','83729300'),(17,6174,'ipiranga','85926750'),(17,6175,'iporã','87560000'),(17,6176,'iracema do oeste','85833000'),(17,6177,'irapuan','87267000'),(17,6178,'irati','84500000'),(17,6179,'irerê','86115000'),(17,6180,'iretama','87280000'),(17,6181,'itaguajé','86670000'),(17,6182,'itaiacoca','84110000'),(17,6183,'itaipulândia','85880000'),(17,6184,'itambaracá','86375000'),(17,6185,'itambé','87175000'),(17,6186,'itambé','83649150'),(17,6187,'itapanhacanga','84196900'),(17,6188,'itapara','84515000'),(17,6189,'itapejara d\'oeste','85580000'),(17,6190,'itaperuçu','83560000'),(17,6191,'itaqui','83649800'),(17,6192,'itaúna do sul','87980000'),(17,6193,'itinga','83251350'),(17,6194,'ivaí','84460000'),(17,6195,'ivailândia','87275000'),(17,6196,'ivaiporã','86870000'),(17,6197,'ivaitinga','87620000'),(17,6198,'ivaté','87525000'),(17,6199,'ivatuba','87130000'),(17,6200,'jaborandi','87523400'),(17,6201,'jaboti','84930000'),(17,6202,'jaboticabal','84128000'),(17,6203,'jaburu','84126500'),(17,6204,'jacaré','85609450'),(17,6205,'jacarezinho','86400000'),(17,6206,'jaciaba','84420000'),(17,6207,'jacutinga','85607000'),(17,6208,'jacutinga','85164000'),(17,6209,'jacutinga','86878000'),(17,6210,'jacutinga','85653000'),(17,6211,'jaguapitã','86610000'),(17,6212,'jaguariaíva','84200000'),(17,6213,'jandaia do sul','86900000'),(17,6214,'jangada','87569000'),(17,6215,'jangada do sul','84664000'),(17,6216,'janiópolis','87380000'),(17,6217,'japira','84920000'),(17,6218,'japurá','87225000'),(17,6219,'jaracatiá','87364000'),(17,6220,'jardim','86107000'),(17,6221,'jardim alegre','86860000'),(17,6222,'jardim olinda','87690000'),(17,6223,'jardim paredão','87552000'),(17,6225,'jardinópolis','86335000'),(17,6226,'jataizinho','86210000'),(17,6227,'javacaé','83649400'),(17,6228,'jesuítas','85835000'),(17,6229,'joá','86457000'),(17,6230,'joaquim távora','86455000'),(17,6231,'jordãozinho','85138600'),(17,6232,'josé lacerda','84330000'),(17,6233,'juciara','86923000'),(17,6234,'jundiaí do sul','86470000'),(17,6235,'juranda','87355000'),(17,6236,'jussara','87230000'),(17,6237,'juvinópolis','85821000'),(17,6238,'kaloré','86920000'),(17,6239,'km 30','84279100'),(17,6240,'lagoa','84193100'),(17,6241,'lagoa','84279000'),(17,6242,'lagoa bonita','84196400'),(17,6243,'lagoa dos ribas','84197300'),(17,6244,'lagoa dourada','84127800'),(17,6245,'lagoa seca','85137400'),(17,6246,'lagoa verde','83848000'),(17,6247,'lagoinha','84279200'),(17,6248,'lajeado','84198700'),(17,6249,'lajeado','84125300'),(17,6250,'lajeado','83910000'),(17,6251,'lajeado bonito','84360000'),(17,6252,'lajeado grande','85132000'),(17,6253,'lambari','84295000'),(17,6254,'lapa','83750000'),(17,6255,'laranja azeda','84277400'),(17,6256,'laranjal','85275000'),(17,6257,'laranjeiras do sul','00000000'),(17,6258,'lavra','83649300'),(17,6259,'lavrinha','85102000'),(17,6260,'lavrinha','84928000'),(17,6261,'leópolis','86330000'),(17,6262,'lerroville','86123000'),(17,6263,'lidianópolis','86865000'),(17,6264,'lindoeste','85826000'),(17,6265,'linha giacomini','85926650'),(17,6266,'loanda','87900000'),(17,6267,'lobato','86790000'),(17,6268,'londrina','00000000'),(17,6269,'lopei','85927800'),(17,6270,'lovat','87520000'),(17,6271,'luar','86931000'),(17,6272,'luiziana','87290000'),(17,6273,'lunardelli','86935000'),(17,6274,'lupionópolis','86635000'),(17,6275,'macaco','84198600'),(17,6276,'macucos','85134000'),(17,6277,'mairá','86638000'),(17,6278,'maitá','85137100'),(17,6279,'mallet','84570000'),(17,6280,'malu','87245000'),(17,6281,'mamborê','87340000'),(17,6282,'mandaçaia','85138000'),(17,6283,'mandaguaçu','87160000'),(17,6284,'mandaguari','86975000'),(17,6285,'mandiocaba','87729400'),(17,6286,'mandirituba','83800000'),(17,6287,'manfrinópolis','85628000'),(17,6288,'mangueirinha','85540000'),(17,6289,'manoel ribas','85260000'),(17,6290,'marabá','87458000'),(17,6291,'maracanã','84197500'),(17,6292,'marajó','85412000'),(17,6293,'maravilha','86110000'),(17,6294,'maravilha','85775000'),(17,6295,'marcelino','83168000'),(17,6296,'marcionópolis','85720000'),(17,6297,'marechal cândido rondon','85960000'),(17,6298,'margarida','85974000'),(17,6299,'maria helena','87480000'),(17,6300,'maria luiza','83251750'),(17,6301,'marialva','86990000'),(17,6302,'mariental','83760000'),(17,6303,'marilândia do sul','86825000'),(17,6304,'marilena','87960000'),(17,6305,'marilu','87282000'),(17,6306,'mariluz','87470000'),(17,6307,'marimbondo','84943000'),(17,6308,'maringá','00000000'),(17,6309,'mariópolis','85525000'),(17,6310,'maripá','85955000'),(17,6311,'maristela','87753000'),(17,6312,'mariza','86947000'),(17,6313,'marmelândia','85778000'),(17,6314,'marmeleiro','85615000'),(17,6315,'marquês de abrantes','83485000'),(17,6316,'marquinho','85168000'),(17,6317,'marrecas','85112000'),(17,6318,'martins','83729800'),(17,6319,'marumbi','86910000'),(17,6320,'matelândia','85887000'),(17,6321,'matinhos','83260000'),(17,6322,'matinhos','85117000'),(17,6323,'mato queimado','84127400'),(17,6324,'mato rico','85240000'),(17,6325,'mauá da serra','86828000'),(17,6326,'medianeira','85884000'),(17,6327,'meia-lua','83533000'),(17,6328,'memória','85927700'),(17,6329,'mendeslândia','86685000'),(17,6330,'mercedes','85998000'),(17,6331,'mirador','87840000'),(17,6332,'miranda','84279600'),(17,6333,'mirante do piquiri','87590000'),(17,6334,'miraselva','86615000'),(17,6335,'missal','85890000'),(17,6336,'monjolinho','84370000'),(17,6337,'monte real','86435000'),(17,6338,'moreira sales','87370000'),(17,6339,'morretes','83350000'),(17,6340,'morro alto','83157000'),(17,6341,'morro inglês','83251650'),(17,6342,'munhoz de melo','86760000'),(17,6343,'natingui','84390000'),(17,6344,'nilza','87562000'),(17,6345,'nordestina','87855000'),(17,6346,'nossa senhora aparecida','86383000'),(17,6347,'nossa senhora da aparecida','86607000'),(17,6348,'nossa senhora da candelária','86365000'),(17,6349,'nossa senhora das graças','86680000'),(17,6350,'nossa senhora de lourdes','85824650'),(17,6351,'nossa senhora do carmo','85514550'),(17,6352,'nova aliança do ivaí','87790000'),(17,6353,'nova altamira','86842000'),(17,6354,'nova américa da colina','86230000'),(17,6355,'nova amoreira','86826000'),(17,6356,'nova aurora','85410000'),(17,6357,'nova bilac','87188000'),(17,6358,'nova brasília','87262000'),(17,6359,'nova brasília','85926600'),(17,6360,'nova brasília do itararé','86425000'),(17,6361,'nova cantu','87330000'),(17,6362,'nova concórdia','85609000'),(17,6363,'nova concórdia','85927500'),(17,6364,'nova esperança','87600000'),(17,6365,'nova esperança do sudoeste','85635000'),(17,6366,'nova fátima','86310000'),(17,6367,'nova laranjeiras','85350000'),(17,6368,'nova londrina','87970000'),(17,6369,'nova lourdes','85572000'),(17,6370,'nova olímpia','87490000'),(17,6371,'nova prata do iguaçu','85685000'),(17,6372,'nova riqueza','85729000'),(17,6373,'nova santa bárbara','86250000'),(17,6374,'nova santa rosa','85930000'),(17,6375,'nova tebas','85250000'),(17,6376,'nova tirol','83319300'),(17,6377,'nova videira','85926950'),(17,6378,'novo horizonte','85822600'),(17,6379,'novo horizonte','85978000'),(17,6380,'novo itacolomi','86895000'),(17,6381,'novo jardim','84923000'),(17,6382,'novo sarandi','85927000'),(17,6383,'novo sobradinho','85925000'),(17,6384,'novo três passos','85975000'),(17,6385,'olaria','85824500'),(17,6386,'olaria','84277900'),(17,6387,'olho agudo','83160000'),(17,6388,'olho d\'água','84198300'),(17,6389,'oroité','87564000'),(17,6390,'ortigueira','84350000'),(17,6391,'ourilândia','86968000'),(17,6392,'ourizona','87170000'),(17,6393,'ouro verde do oeste','85933000'),(17,6394,'ouro verde do piquiri','85422000'),(17,6395,'padre ponciano','85559000'),(17,6396,'paiçandu','87140000'),(17,6397,'paiol de baixo','83440000'),(17,6398,'paiol queimado','84197000'),(17,6400,'paiquerê','86112000'),(17,6401,'palmas','85555000'),(17,6402,'palmeira','84130000'),(17,6403,'palmeirinha','84196800'),(17,6404,'palmeirinha','85118000'),(17,6405,'palmira','84155000'),(17,6406,'palmital','85270000'),(17,6407,'palmital','84196700'),(17,6408,'palmital de são silvestre','83646000'),(17,6409,'palmitópolis','85413000'),(17,6410,'palotina','85950000'),(17,6411,'panema','86358000'),(17,6412,'pangaré','83845000'),(17,6413,'papagaios novos','84135000'),(17,6414,'paraíso do norte','87780000'),(17,6415,'paraná d\'oeste','87375000'),(17,6416,'paranacity','87660000'),(17,6417,'paranagi','86345000'),(17,6418,'paranaguá','00000000'),(17,6419,'paranapoema','87680000'),(17,6420,'paranavaí','00000000'),(17,6421,'passa una','83729200'),(17,6422,'passo da ilha','85514700'),(17,6423,'passo dos pupos','84126300'),(17,6424,'passo fundo','83649600'),(17,6425,'passo liso','85330000'),(17,6426,'pato bragado','85948000'),(17,6427,'pato branco','00000000'),(17,6428,'patos velhos','84410000'),(17,6429,'pau d\'alho do sul','86224000'),(17,6430,'paula freitas','84630000'),(17,6431,'paulistânia','87588000'),(17,6432,'paulo frontin','84635000'),(17,6433,'peabiru','87250000'),(17,6434,'pedra branca do araraquara','83290000'),(17,6435,'pedras','84193700'),(17,6436,'pedro lustosa','85198000'),(17,6437,'pelado','85128000'),(17,6438,'perobal','87538000'),(17,6439,'pérola','87540000'),(17,6440,'pérola d\'oeste','85740000'),(17,6441,'pérola independente','85958000'),(17,6442,'piassuguera','83251500'),(17,6443,'piên','83860000'),(17,6444,'pinaré','84625000'),(17,6445,'pinhais','00000000'),(17,6446,'pinhal de são bento','85727000'),(17,6448,'pinhalão','84925000'),(17,6449,'pinhalzinho','86818500'),(17,6450,'pinhalzinho','85824700'),(17,6451,'pinhalzinho','85634000'),(17,6452,'pinhalzinho','85167000'),(17,6453,'pinhalzinho','85190000'),(17,6454,'pinhão','85170000'),(17,6455,'pinheiro','85767000'),(17,6456,'piquirivaí','87318000'),(17,6457,'piracema','87729200'),(17,6458,'piraí do sul','84240000'),(17,6459,'pirapó','86818000'),(17,6460,'piraquara','00000000'),(17,6461,'piriquitos','84105000'),(17,6462,'pitanga','85200000'),(17,6463,'pitangueiras','86613000'),(17,6464,'pitangui','84125500'),(17,6465,'planaltina do paraná','87860000'),(17,6466,'planalto','85750000'),(17,6467,'pocinho','86962000'),(17,6468,'pocinho','84125800'),(17,6469,'poema','85255000'),(17,6470,'ponta do pasto','83251300'),(17,6471,'ponta grossa','00000000'),(17,6472,'pontal do paraná','83255000'),(17,6473,'porecatu','86160000'),(17,6474,'portão','85824900'),(17,6475,'porteira preta','86955000'),(17,6476,'porto amazonas','84140000'),(17,6477,'porto barreiro','85345000'),(17,6478,'porto belo','85874000'),(17,6479,'porto brasílio','87940000'),(17,6480,'porto camargo','87532000'),(17,6481,'porto de cima','83360000'),(17,6482,'porto meira','85874400'),(17,6483,'porto mendes','85976000'),(17,6484,'porto rico','87950000'),(17,6485,'porto san juan','85874700'),(17,6486,'porto santana','85348000'),(17,6487,'porto são carlos','87775000'),(17,6488,'porto são josé','87957000'),(17,6489,'porto vitória','84610000'),(17,6490,'prado ferreira','86618000'),(17,6491,'pranchita','85730000'),(17,6492,'prata','86198000'),(17,6493,'prata um','84277200'),(17,6494,'presidente castelo branco','87180000'),(17,6495,'presidente kennedy','85587000'),(17,6496,'primeiro de maio','86140000'),(17,6497,'progresso','85609400'),(17,6498,'prudentópolis','84400000'),(17,6499,'pulinópolis','87165000'),(17,6500,'quatiguá','86450000'),(17,6501,'quatro barras','83420000'),(17,6502,'quatro pontes','85940000'),(17,6503,'quebra freio','85514000'),(17,6504,'quedas do iguaçu','85460000'),(17,6505,'queimados','85137900'),(17,6506,'querência do norte','87930000'),(17,6507,'quinta do sol','87265000'),(17,6508,'quinzópolis','86355000'),(17,6509,'quitandinha','83840000'),(17,6510,'ramilândia','85888000'),(17,6511,'rancho alegre','86290000'),(17,6512,'rancho alegre d\'oeste','87395000'),(17,6513,'realeza','85770000'),(17,6514,'rebouças','84550000'),(17,6515,'região dos valos','84279500'),(17,6516,'reianópolis','84230000'),(17,6517,'renascença','85610000'),(17,6518,'reserva','84320000'),(17,6519,'reserva do iguaçu','85195000'),(17,6520,'retiro','84197800'),(17,6521,'retiro grande','83649500'),(17,6522,'ribeirão bonito','86847000'),(17,6523,'ribeirão claro','86410000'),(17,6524,'ribeirão do pinhal','86490000'),(17,6525,'ribeirão do pinheiro','84194700'),(17,6526,'rio abaixo','84193600'),(17,6527,'rio azul','84560000'),(17,6528,'rio bom','86830000'),(17,6529,'rio bonito','87575000'),(17,6530,'rio bonito do iguaçu','85340000'),(17,6531,'rio branco do ivaí','86848000'),(17,6532,'rio branco do sul','83540000'),(17,6533,'rio claro do sul','84577000'),(17,6534,'rio da prata','85655000'),(17,6535,'rio da prata','85370000'),(17,6536,'rio das antas','85823550'),(17,6537,'rio das mortes','85130000'),(17,6538,'rio das pedras','85131000'),(17,6539,'rio das pedras','83251550'),(17,6540,'rio das pombas','83251800'),(17,6541,'rio do mato','85609200'),(17,6542,'rio do salto','85824000'),(17,6543,'rio negro','83880000'),(17,6544,'rio novo','85822850'),(17,6545,'rio novo','84340000'),(17,6546,'rio pinheiro','85526000'),(17,6547,'rio quatorze','85609600'),(17,6548,'rio saltinho','85823900'),(17,6549,'rio saudade','85609800'),(17,6550,'rio verde','87357000'),(17,6551,'roberto silveira','87524000'),(17,6552,'roça velha','84126700'),(17,6553,'roça velha','83164000'),(17,6554,'rolândia','86600000'),(17,6555,'romeópolis','86887000'),(17,6556,'roncador','87320000'),(17,6557,'rondinha','85119000'),(17,6558,'rondon','87800000'),(17,6559,'rosário do ivaí','86850000'),(17,6560,'sabáudia','86720000'),(17,6561,'sagrada família','85756000'),(17,6562,'salgado filho','85620000'),(17,6563,'salles de oliveira','87349000'),(17,6564,'saltinho do oeste','87585000'),(17,6565,'salto do itararé','84945000'),(17,6566,'salto do lontra','85670000'),(17,6567,'salto portão','85823800'),(17,6568,'samambaia','85138300'),(17,6569,'santa amélia','86370000'),(17,6570,'santa cecília do pavão','86225000'),(17,6571,'santa clara','84194600'),(17,6572,'santa cruz de monte castelo','87920000'),(17,6573,'santa eliza','87521000'),(17,6574,'santa esmeralda','87925000'),(17,6575,'santa fé','86770000'),(17,6576,'santa fé do pirapó','86994000'),(17,6577,'santa helena','85892000'),(17,6578,'santa inês','86660000'),(17,6579,'santa isabel do ivaí','87910000'),(17,6580,'santa izabel do oeste','85650000'),(17,6581,'santa lúcia','85795000'),(17,6582,'santa lurdes','86199200'),(17,6583,'santa luzia da alvorada','86934000'),(17,6584,'santa margarida','86135000'),(17,6585,'santa margarida','86104000'),(17,6586,'santa maria','87755000'),(17,6587,'santa maria do oeste','85230000'),(17,6588,'santa maria do rio do peixe','86323000'),(17,6589,'santa mariana','86350000'),(17,6590,'santa mônica','87915000'),(17,6591,'santa quitéria','83649100'),(17,6592,'santa quitéria','84194000'),(17,6593,'santa rita','84197600'),(17,6594,'santa rita','85514300'),(17,6595,'santa rita do oeste','85995000'),(17,6596,'santa rosa','85609300'),(17,6597,'santa tereza do oeste','85825000'),(17,6598,'santa terezinha de itaipu','85875000'),(17,6599,'santa zélia','86742000'),(17,6600,'santana','84623000'),(17,6601,'santana do itararé','84970000'),(17,6602,'santo antônio','84194800'),(17,6603,'santo antônio','85323000'),(17,6604,'santo antônio da platina','86430000'),(17,6605,'santo antônio do caiuá','87730000'),(17,6606,'santo antônio do iratim','84650000'),(17,6607,'santo antônio do palmital','86835000'),(17,6608,'santo antônio do paraíso','86315000'),(17,6609,'santo antônio do sudoeste','85710000'),(17,6610,'santo inácio','86650000'),(17,6611,'santo rei','87335000'),(17,6612,'são bento','87316000'),(17,6613,'são braz','85823850'),(17,6614,'são braz','85514450'),(17,6615,'são camilo','85952000'),(17,6616,'são carlos do ivaí','87770000'),(17,6617,'são cirilo','84193200'),(17,6618,'são clemente','85894000'),(17,6619,'são cristovão','87729600'),(17,6620,'são cristovão','84609000'),(17,6621,'são domingos','86819500'),(17,6622,'são domingos','86859000'),(17,6623,'são domingos','84608000'),(17,6624,'são francisco','85562000'),(17,6625,'são francisco','85101000'),(17,6626,'são francisco','87523800'),(17,6627,'são francisco de imbaú','86325000'),(17,6628,'são francisco de sales','85534000'),(17,6629,'são gabriel','86199000'),(17,6630,'são gabriel','83419200'),(17,6631,'são gotardo','85514150'),(17,6632,'são jerônimo da serra','86270000'),(17,6633,'são joão','85570000'),(17,6634,'são joão','87553000'),(17,6635,'são joão','87317600'),(17,6636,'são joão','85324000'),(17,6637,'são joão d\'oeste','85823000'),(17,6638,'são joão da boa vista','87523100'),(17,6639,'são joão do caiuá','87740000'),(17,6640,'são joão do ivaí','86930000'),(17,6641,'são joão do pinhal','86273000'),(17,6642,'são joão do triunfo','84150000'),(17,6643,'são joaquim','86718000'),(17,6644,'são joaquim','85139700'),(17,6645,'são joaquim do pontal','86378000'),(17,6646,'são jorge d\'oeste','85575000'),(17,6647,'são jorge do ivaí','87190000'),(17,6648,'são jorge do patrocínio','87555000'),(17,6649,'são josé','86905000'),(17,6650,'são josé','85235000'),(17,6651,'são josé da boa vista','84980000'),(17,6652,'são josé das palmeiras','85898000'),(17,6653,'são josé do iguaçu','85879000'),(17,6654,'são josé do itavo','85883000'),(17,6655,'são josé do ivaí','87913000'),(17,6656,'são josé dos pinhais','00000000'),(17,6657,'são judas tadeu','86318000'),(17,6658,'são leonardo','86103000'),(17,6659,'são lourenço','84196600'),(17,6660,'são lourenço','87205000'),(17,6661,'são luiz','87317300'),(17,6662,'são luiz','85765000'),(17,6663,'são luiz','85563000'),(17,6664,'são luiz','85538000'),(17,6665,'são luiz','86117000'),(17,6666,'são luiz','86998000'),(17,6667,'são luiz','87475000'),(17,6668,'são luiz','83251700'),(17,6669,'são luiz do purunã','83670000'),(17,6670,'são manoel do paraná','87215000'),(17,6671,'são marcos','86101000'),(17,6672,'são marcos','83175000'),(17,6673,'são martinho','86609000'),(17,6674,'são mateus do sul','83900000'),(17,6675,'são miguel','83729100'),(17,6676,'são miguel','85609350'),(17,6677,'são miguel','85924000'),(17,6678,'são miguel do cambui','86996000'),(17,6679,'são miguel do iguaçu','85877000'),(17,6680,'são paulo','85926800'),(17,6681,'são pedro','85645000'),(17,6682,'são pedro','86817000'),(17,6683,'são pedro','83649050'),(17,6684,'são pedro','85109000'),(17,6685,'são pedro','87729000'),(17,6686,'são pedro do florido','85725000'),(17,6687,'são pedro do iguaçu','85929000'),(17,6688,'são pedro do ivaí','86945000'),(17,6689,'são pedro do paraná','87955000'),(17,6690,'são pedro lopei','85822500'),(17,6691,'são pio x','85608000'),(17,6692,'são roque','85667000'),(17,6693,'são roque','85977000'),(17,6694,'são roque','85773000'),(17,6695,'são roque do pinhal','86458000'),(17,6696,'são salvador','85643000'),(17,6697,'são sebastião','84198200'),(17,6698,'são sebastião','83580000'),(17,6699,'são sebastião','85139200'),(17,6700,'são sebastião','83152000'),(17,6701,'são sebastião','84277600'),(17,6702,'são sebastião da amoreira','86240000'),(17,6703,'são silvestre','87408000'),(17,6704,'são tomé','87220000'),(17,6705,'são valentim','85668000'),(17,6706,'são vicente','87263000'),(17,6707,'sapé','84938000'),(17,6708,'sapopema','84290000'),(17,6709,'sarandi','00000000'),(17,6710,'sarandi','85652000'),(17,6711,'saudade do iguaçu','85568000'),(17,6712,'sede alvorada','85822000'),(17,6713,'sede chaparral','85927900'),(17,6714,'sede nova sant\'ana','85577000'),(17,6715,'sede progresso','85609250'),(17,6716,'sede progresso','85588000'),(17,6717,'selva','86108000'),(17,6718,'sengés','84220000'),(17,6719,'senhor bom jesus dos gramados','85528000'),(17,6720,'serra dos dourados','87518000'),(17,6721,'serra negra','83395000'),(17,6722,'serranópolis do iguaçu','85885000'),(17,6723,'serraria klas','84128800'),(17,6724,'serrinha','86199800'),(17,6725,'serrinha','87316800'),(17,6726,'serrinha','84199000'),(17,6727,'sertaneja','86340000'),(17,6728,'sertanópolis','86170000'),(17,6729,'sertãozinho','87272000'),(17,6731,'sete saltos de cima','84127600'),(17,6732,'silvolândia','87315000'),(17,6733,'siqueira belo','85705000'),(17,6734,'siqueira campos','84940000'),(17,6735,'socavão','84190000'),(17,6736,'socorro','85139000'),(17,6737,'sulina','85565000'),(17,6738,'sumaré','87720000'),(17,6739,'sussui','87274000'),(17,6740,'sutis','86122000'),(17,6741,'taipa','85115000'),(17,6742,'tamarana','86125000'),(17,6743,'tambarutaca','83251450'),(17,6744,'tamboara','87760000'),(17,6745,'tanque grande','84196100'),(17,6746,'tapejara','87430000'),(17,6747,'tapira','87830000'),(17,6748,'tapui','85927850'),(17,6749,'taquara','84193000'),(17,6750,'taquari dos polacos','84126100'),(17,6751,'taquari dos russos','84126800'),(17,6752,'taquaruna','86113000'),(17,6753,'teixeira soares','84530000'),(17,6754,'telêmaco borba','00000000'),(17,6755,'teolândia','85514350'),(17,6756,'tereza breda','86964000'),(17,6757,'tereza cristina','84490000'),(17,6758,'terra boa','87240000'),(17,6759,'terra nova','86275000'),(17,6760,'terra rica','87890000'),(17,6761,'terra roxa','85990000'),(17,6762,'tibagi','84300000'),(17,6763,'tijucas do sul','83190000'),(17,6764,'tijuco preto','83532000'),(17,6765,'tijuco preto','84193400'),(17,6766,'timbu velho','83419700'),(17,6767,'tindiquera','83729600'),(17,6768,'tiradentes','85514200'),(17,6769,'tiradentes','85625000'),(17,6770,'toledo','00000000'),(17,6771,'tomaz coelho','83729400'),(17,6772,'tomazina','84935000'),(17,6774,'três barras do paraná','85485000'),(17,6775,'três bicos','84480000'),(17,6776,'três bocas','85926900'),(17,6777,'três capões','85137000'),(17,6778,'três córregos','83642000'),(17,6779,'três lagoas','85874200'),(17,6780,'três pinheiros','85137300'),(17,6781,'três placas','87523000'),(17,6782,'triângulo','87276000'),(17,6783,'trindade','84125600'),(17,6784,'triolândia','86495000'),(17,6785,'tronco','84197400'),(17,6786,'tunas do paraná','83480000'),(17,6787,'tuneiras do oeste','87450000'),(17,6788,'tupãssi','85945000'),(17,6789,'tupinambá','86746000'),(17,6790,'turvo','85150000'),(17,6791,'ubaldino taques','85558000'),(17,6792,'ubauna','86932000'),(17,6793,'ubiratã','85440000'),(17,6794,'umuarama','00000000'),(17,6795,'união','85321000'),(17,6796,'união da vitória','84600000'),(17,6797,'união do oeste','85656000'),(17,6798,'uniflor','87640000'),(17,6799,'uraí','86280000'),(17,6800,'usina','87316300'),(17,6801,'uvaia','84115000'),(17,6802,'valentins','84127000'),(17,6803,'valério','85758000'),(17,6804,'vargeado','84198000'),(17,6805,'vassoural','84916000'),(17,6806,'ventania','84345000'),(17,6807,'vera cruz do oeste','85845000'),(17,6808,'vera guarani','84638000'),(17,6809,'verê','85585000'),(17,6810,'vida nova','84293000'),(17,6811,'vidigal','87208000'),(17,6812,'alto paraíso','87528000'),(17,6813,'vila diniz','86857000'),(17,6814,'vila dos roldos','85514800'),(17,6815,'vila flórida','85926700'),(17,6816,'vila gandhi','86142000'),(17,6817,'vila guay','84914000'),(17,6818,'vila nova','85218000'),(17,6819,'vila nova','85926000'),(17,6820,'vila nova de florença','86278000'),(17,6821,'vila paraíso','85573000'),(17,6822,'vila reis','86819000'),(17,6823,'vila rica do ivaí','87534000'),(17,6824,'vila roberto brzezinski','87315300'),(17,6825,'vila silva jardim','87665000'),(17,6826,'vila velha','84128200'),(17,6827,'virmond','85390000'),(17,6828,'vista alegre','85554000'),(17,6829,'vista alegre','85633000'),(17,6830,'vista bonita','83649250'),(17,6831,'vitória','85139400'),(17,6832,'vitorino','85520000'),(17,6833,'warta','86105000'),(17,6834,'wenceslau braz','84950000'),(17,6835,'xambrê','87535000'),(17,6836,'xaxim','85927600'),(17,6837,'yolanda','85445000'),(17,6838,'4º centenário','87365000'),(17,10389,'jordão','85100000'),(17,10390,'biscaia','84106000'),(17,10391,'campo do bugre','85320000'),(17,10429,'santa cruz','83643000'),(17,10430,'caiva','83645000'),(17,10431,'itambezinho','83647000'),(17,10731,'bananas','85385000'),(17,10732,'candeia','85957000'),(17,10733,'guaraí','85365000'),(17,10734,'ouro verde','84235000'),(17,10735,'são roque do chopim','85514650'),(18,5135,'abreu e lima','00000000'),(18,5136,'afogados da ingazeira','56800000'),(18,5137,'afrânio','56360000'),(18,5138,'agrestina','55495000'),(18,5139,'água fria','55168000'),(18,5140,'água preta','55550000'),(18,5141,'águas belas','55340000'),(18,5142,'airi','56410000'),(18,5143,'alagoinha','55260000'),(18,5144,'albuquerque né','56610000'),(18,5145,'algodões','56625000'),(18,5146,'aliança','55890000'),(18,5147,'altinho','55490000'),(18,5148,'amaraji','55515000'),(18,5149,'ameixas','55658000'),(18,5150,'angelim','55430000'),(18,5151,'apoti','55625000'),(18,5152,'araçoiaba','53690000'),(18,5153,'araripina','56280000'),(18,5154,'arcoverde','00000000'),(18,5155,'aripibu','55524000'),(18,5156,'arizona','56365000'),(18,5157,'barra de farias','55172000'),(18,5158,'barra de guabiraba','55690000'),(18,5159,'barra de são pedro','56205000'),(18,5160,'barra do brejo','55332000'),(18,5161,'barra do chata','55498000'),(18,5162,'barra do jardim','55496000'),(18,5163,'barra do riachão','55672000'),(18,5164,'barra do sirinhaém','55585000'),(18,5165,'barreiros','55560000'),(18,5166,'batateira','55445000'),(18,5167,'belém de maria','55440000'),(18,5168,'belém de são francisco','56440000'),(18,5169,'belo jardim','00000000'),(18,5170,'bengalas','55652000'),(18,5171,'bentivi','55685000'),(18,5172,'bernardo vieira','56922000'),(18,5173,'betânia','56670000'),(18,5174,'bezerros','55660000'),(18,5175,'bizarra','55735000'),(18,5176,'boas novas','55662000'),(18,5177,'bodocó','56220000'),(18,5178,'bom conselho','55330000'),(18,5179,'bom jardim','55730000'),(18,5180,'bom nome','56970000'),(18,5181,'bonfim','56710000'),(18,5182,'bonito','55680000'),(18,5183,'brejão','55325000'),(18,5184,'brejinho','56740000'),(18,5185,'brejo da madre de deus','55170000'),(18,5186,'buenos aires','55845000'),(18,5187,'buíque','56520000'),(18,5188,'cabanas','55383000'),(18,5189,'cabo de santo agostinho','00000000'),(18,5190,'cabrobó','56180000'),(18,5191,'cachoeira do roberto','56370000'),(18,5192,'cachoeirinha','55380000'),(18,5193,'caetés','55360000'),(18,5194,'caiçarinha da penha','56916000'),(18,5195,'calçado','55375000'),(18,5196,'caldeirões','55338000'),(18,5197,'calumbi','56930000'),(18,5198,'camaragibe','00000000'),(18,5199,'camela','55595000'),(18,5200,'camocim de são félix','55665000'),(18,5201,'camutanga','55930000'),(18,5202,'canaã','56880000'),(18,5203,'canhotinho','55420000'),(18,5204,'capoeiras','55365000'),(18,5205,'caraíba','56393000'),(18,5206,'caraibeiras','56485000'),(18,5207,'carapotos','55110000'),(18,5208,'carice','55928000'),(18,5209,'carima','55564000'),(18,5210,'caririmirim','56155000'),(18,5211,'carnaíba','56820000'),(18,5212,'carnaubeira da penha','56420000'),(18,5213,'carneiro','56533000'),(18,5214,'carpina','00000000'),(18,5215,'carqueja','56415000'),(18,5216,'caruaru','00000000'),(18,5217,'casinhas','55755000'),(18,5218,'catende','55400000'),(18,5219,'catimbaú','56537000'),(18,5220,'catolé','55759000'),(18,5222,'cedro','56130000'),(18,5223,'chã de alegria','55835000'),(18,5224,'chã do rocha','55748000'),(18,5225,'chã grande','55636000'),(18,5226,'cimbres','55205000'),(18,5227,'clarana','56227000'),(18,5228,'cocau','56223000'),(18,5229,'cocau','55575000'),(18,5230,'conceição das crioulas','56115000'),(18,5231,'condado','55940000'),(18,5232,'correntes','55315000'),(18,5233,'cortês','55525000'),(18,5234,'couro d\'antas','55121000'),(18,5235,'cristália','56340000'),(18,5236,'cruanji','55875000'),(18,5237,'cruzes','55473000'),(18,5238,'cuiambuca','55533000'),(18,5239,'cumaru','55655000'),(18,5240,'cupira','55460000'),(18,5241,'curral queimado','56335000'),(18,5242,'custódia','56640000'),(18,5243,'dois leões','55633000'),(18,5244,'dormentes','56355000'),(18,5245,'entroncamento','55453000'),(18,5246,'escada','55500000'),(18,5247,'espírito santo','55374000'),(18,5248,'exu','56230000'),(18,5249,'fazenda nova','55175000'),(18,5250,'feira nova','55715000'),(18,5251,'feitoria','56228000'),(18,5252,'fernando de noronha','53990000'),(18,5253,'ferreiros','55880000'),(18,5254,'flores','56850000'),(18,5255,'floresta','56400000'),(18,5256,'frei miguelinho','55780000'),(18,5257,'frexeiras','55505000'),(18,5258,'gameleira','55530000'),(18,5259,'garanhuns','00000000'),(18,5260,'glória do goitá','55620000'),(18,5261,'goiana','55900000'),(18,5262,'gonçalves ferreira','55105000'),(18,5263,'granito','56160000'),(18,5264,'gravatá','00000000'),(18,5265,'gravatá do ibiapina','55795000'),(18,5266,'grotão','55275000'),(18,5267,'guanumbi','56535000'),(18,5268,'henrique dias','56620000'),(18,5269,'iateca','55353000'),(18,5270,'iati','55345000'),(18,5271,'ibimirim','56580000'),(18,5272,'ibirajuba','55390000'),(18,5273,'ibiranga','55929000'),(18,5274,'ibiratinga','55588000'),(18,5275,'ibitiranga','56825000'),(18,5276,'ibó','56450000'),(18,5277,'icaiçara','56165000'),(18,5278,'igapó','55322000'),(18,5279,'igarapeassu','55455000'),(18,5280,'igarapeba','55412000'),(18,5281,'igarassu','00000000'),(18,5282,'iguaraci','56840000'),(18,5283,'inajá','56560000'),(18,5284,'ingazeira','56830000'),(18,5285,'ipojuca','55590000'),(18,5286,'ipubi','56260000'),(18,5287,'ipuera','56145000'),(18,5288,'iraguaçu','56890000'),(18,5289,'irajaí','56845000'),(18,5290,'iratama','55304000'),(18,5291,'itacuruba','56430000'),(18,5292,'itaíba','56550000'),(18,5293,'ilha de itamaracá','53900000'),(18,5294,'itambé','55920000'),(18,5295,'itapetim','56720000'),(18,5296,'itapissuma','53700000'),(18,5297,'itaquitinga','55950000'),(18,5298,'ituguaçu','55493000'),(18,5299,'iuiteporã','55682000'),(18,5300,'jabitaca','56848000'),(18,5302,'jaboatão dos guararapes','00000000'),(18,5303,'japecanga','55287000'),(18,5304,'jaqueira','55409000'),(18,5305,'jataúba','55180000'),(18,5306,'jatiúca','56885000'),(18,5307,'jatobá','56470000'),(18,5308,'jenipapo','55258000'),(18,5309,'joão alfredo','55720000'),(18,5310,'joaquim nabuco','55535000'),(18,5311,'josé da costa','55534000'),(18,5312,'josé mariano','55522000'),(18,5313,'juçaral','54570000'),(18,5314,'jucati','55398000'),(18,5315,'jupi','55395000'),(18,5316,'jurema','55480000'),(18,5317,'jutaí','56390000'),(18,5318,'lagoa','56350000'),(18,5319,'lagoa de são josé','55336000'),(18,5320,'lagoa do barro','56284000'),(18,5321,'lagoa do carro','55820000'),(18,5322,'lagoa do itaenga','55840000'),(18,5323,'lagoa do ouro','55320000'),(18,5324,'lagoa do souza','55458000'),(18,5325,'lagoa dos gatos','55450000'),(18,5326,'lagoa grande','56395000'),(18,5327,'laje de são josé','55465000'),(18,5328,'laje grande','55402000'),(18,5329,'lajedo','55385000'),(18,5330,'lajedo do cedro','55108000'),(18,5331,'limoeiro','55700000'),(18,5332,'livramento do tiúma','55878000'),(18,5333,'luanda','56918000'),(18,5334,'macaparana','55865000'),(18,5335,'machados','55740000'),(18,5336,'macujé','55898000'),(18,5337,'manari','56565000'),(18,5338,'mandacaia','55174000'),(18,5339,'mandacaru','55646000'),(18,5340,'maniçoba','55135000'),(18,5341,'maraial','55405000'),(18,5342,'maravilha','56650000'),(18,5343,'mimoso','55225000'),(18,5344,'miracica','55303000'),(18,5345,'mirandiba','56980000'),(18,5346,'morais','56287000'),(18,5347,'moreilândia','56150000'),(18,5348,'moreno','54800000'),(18,5349,'moxotó','56585000'),(18,5350,'mulungu','55255000'),(18,5351,'murupé','55855000'),(18,5352,'mutuca','55210000'),(18,5353,'nascente','56285000'),(18,5355,'nazaré da mata','55800000'),(18,5356,'negras','56555000'),(18,5357,'nossa senhora da luz','54749000'),(18,5358,'nossa senhora do carmo','55634000'),(18,5359,'nossa senhora do ó','55592000'),(18,5360,'nova cruz','53660000'),(18,5361,'olho d\'água de dentro','55423000'),(18,5362,'olinda','00000000'),(18,5363,'oratório','55758000'),(18,5364,'ori','56148000'),(18,5365,'orobó','55745000'),(18,5366,'orocó','56170000'),(18,5367,'ouricuri','56200000'),(18,5368,'pajeú','56920000'),(18,5369,'palmares','55540000'),(18,5370,'palmeirina','55310000'),(18,5371,'panelas','55470000'),(18,5372,'pão de açúcar','55798000'),(18,5373,'pão de açúcar do poção','55245000'),(18,5374,'papagaio','55215000'),(18,5375,'paquevira','55425000'),(18,5376,'pará','55198000'),(18,5377,'paranatama','55355000'),(18,5379,'parnamirim','56163000'),(18,5380,'passagem do tó','55185000'),(18,5381,'passira','55650000'),(18,5382,'pau ferro','55418000'),(18,5383,'paudalho','55825000'),(18,5384,'paulista','00000000'),(18,5385,'pedra','55280000'),(18,5386,'perpétuo socorro','55265000'),(18,5387,'pesqueira','55200000'),(18,5388,'petrolândia','56460000'),(18,5389,'petrolina','00000000'),(18,5390,'pirituba','55618000'),(18,5391,'poção','55240000'),(18,5392,'poção de afrânio','56375000'),(18,5393,'poço comprido','55317000'),(18,5394,'poço fundo','55195000'),(18,5395,'pombos','55630000'),(18,5396,'pontas de pedra','55908000'),(18,5397,'ponte dos carvalhos','54580000'),(18,5399,'primavera','55510000'),(18,5400,'quipapá','55415000'),(18,5401,'quitimbu','56660000'),(18,5402,'quixabá','56828000'),(18,5403,'rainha isabel','55334000'),(18,5404,'rajada','56345000'),(18,5405,'rancharia','56282000'),(18,5406,'recife','00000000'),(18,5407,'riacho das almas','55120000'),(18,5408,'riacho do meio','56705000'),(18,5409,'riacho fechado','55145000'),(18,5410,'riacho pequeno','56445000'),(18,5411,'ribeirão','55520000'),(18,5412,'rio da barra','56615000'),(18,5413,'rio formoso','55570000'),(18,5414,'sairé','55695000'),(18,5415,'salgadinho','55675000'),(18,5416,'salgueiro','56000000'),(18,5417,'saloá','55350000'),(18,5418,'salobro','55220000'),(18,5419,'sanharó','55250000'),(18,5420,'santa cruz','56215000'),(18,5421,'santa cruz da baixa verde','56895000'),(18,5422,'santa cruz do capibaribe','55190000'),(18,5423,'santa filomena','56210000'),(18,5424,'santa maria da boa vista','56380000'),(18,5425,'santa maria do cambucá','55765000'),(18,5426,'santa rita','56770000'),(18,5427,'santa terezinha','56750000'),(18,5428,'santa terezinha','55552000'),(18,5429,'santana de são joaquim','55674000'),(18,5430,'santo agostinho','54590000'),(18,5431,'santo antônio das queimadas','55485000'),(18,5432,'santo antônio dos palmares','55548000'),(18,5433,'são benedito do sul','55410000'),(18,5434,'são bento do una','55370000'),(18,5435,'são caetano do navio','56680000'),(18,5436,'são caitano','55130000'),(18,5437,'são domingos','55178000'),(18,5438,'são joão','55435000'),(18,5439,'são joaquim do monte','55670000'),(18,5440,'são josé','55475000'),(18,5441,'são josé da coroa grande','55565000'),(18,5442,'são josé do belmonte','56950000'),(18,5443,'são josé do egito','56700000'),(18,5444,'são lázaro','55478000'),(18,5445,'são lourenço da mata','00000000'),(18,5446,'são pedro','55302000'),(18,5447,'são vicente','56730000'),(18,5448,'são vicente ferrer','55860000'),(18,5449,'sapucarana','55661000'),(18,5450,'saué','55572000'),(18,5451,'serra branca','56265000'),(18,5452,'serra do vento','55160000'),(18,5453,'serra talhada','00000000'),(18,5454,'serrita','56140000'),(18,5455,'serrolândia','56270000'),(18,5456,'sertânia','56600000'),(18,5457,'sertãozinho de baixo','55408000'),(18,5458,'siriji','55863000'),(18,5459,'sirinhaém','55580000'),(18,5460,'sítio dos nunes','56860000'),(18,5461,'solidão','56795000'),(18,5462,'surubim','55750000'),(18,5463,'tabira','56780000'),(18,5464,'tabocas','56240000'),(18,5465,'tacaimbó','55140000'),(18,5466,'tacaratu','56480000'),(18,5467,'tamandaré','55578000'),(18,5468,'tamboatá','55733000'),(18,5469,'tapiraim','55138000'),(18,5470,'taquaritinga do norte','55790000'),(18,5471,'tara','55285000'),(18,5472,'tauapiranga','56925000'),(18,5473,'tejucupapo','55905000'),(18,5474,'terezinha','55305000'),(18,5475,'terra nova','56190000'),(18,5476,'timbaúba','55870000'),(18,5477,'timorante','56234000'),(18,5478,'toritama','55125000'),(18,5479,'tracunhaém','55805000'),(18,5480,'trapiá','55122000'),(18,5481,'três ladeiras','53670000'),(18,5482,'trindade','56250000'),(18,5483,'triunfo','56870000'),(18,5484,'tupanaci','56990000'),(18,5485,'tupanatinga','56540000'),(18,5486,'tupaóca','55895000'),(18,5487,'tuparetama','56760000'),(18,5488,'umãs','56105000'),(18,5489,'umburetama','55746000'),(18,5490,'upatininga','55896000'),(18,5491,'urimama','56386000'),(18,5492,'uruçu-mirim','55648000'),(18,5493,'urucubá','55705000'),(18,5494,'vasques','56110000'),(18,5495,'veneza','56168000'),(18,5496,'venturosa','55270000'),(18,5497,'verdejante','56120000'),(18,5498,'vertente do lério','55760000'),(18,5499,'vertentes','55770000'),(18,5500,'vicência','55850000'),(18,5501,'vila nova','55757000'),(18,5502,'viração','56236000'),(18,5503,'vitória de santo antão','00000000'),(18,5504,'volta do moxotó','56475000'),(18,5505,'xexéu','55555000'),(18,5506,'xucuru','55165000'),(18,5507,'zé gomes','56245000'),(18,10164,'jaboatão','00000000'),(18,10184,'navarro','00000000'),(18,10185,'cavaleiro','00000000'),(18,10186,'praia da conceição','00000000'),(18,10187,'paratibe','00000000'),(19,5508,'acauã','64748000'),(19,5509,'agricolândia','64440000'),(19,5510,'água branca','64460000'),(19,5511,'alagoinha do piauí','64655000'),(19,5512,'alegrete do piauí','64675000'),(19,5513,'alto longá','64360000'),(19,5514,'altos','64290000'),(19,5515,'alvorada do gurguéia','64923000'),(19,5516,'amarante','64400000'),(19,5517,'angical do piauí','64410000'),(19,5518,'anísio de abreu','64780000'),(19,5519,'antônio almeida','64855000'),(19,5520,'aroazes','64310000'),(19,5521,'arraial','64480000'),(19,5522,'assunção do piauí','64333000'),(19,5523,'avelino lopes','64965000'),(19,5524,'baixa grande do ribeiro','64868000'),(19,5525,'barra d\'alcântara','64528000'),(19,5526,'barras','64100000'),(19,5527,'barreiras do piauí','64990000'),(19,5528,'barro duro','64455000'),(19,5529,'batalha','64190000'),(19,5530,'bela vista do piauí','64705000'),(19,5531,'belém do piauí','64678000'),(19,5532,'beneditinos','64380000'),(19,5533,'bertolínia','64870000'),(19,5534,'betânia do piauí','64753000'),(19,5535,'boa hora','64108000'),(19,5536,'bocaina','64630000'),(19,5537,'bom jesus','64900000'),(19,5538,'bom princípio do piauí','64225000'),(19,5539,'bonfim do piauí','64775000'),(19,5540,'boqueirão do piauí','64283000'),(19,5541,'brasileira','64265000'),(19,5542,'brejo do piauí','64895000'),(19,5543,'buriti dos lopes','64230000'),(19,5544,'buriti dos montes','64345000'),(19,5545,'cabeceiras do piauí','64105000'),(19,5546,'cajazeiras do piauí','64514000'),(19,5547,'cajueiro da praia','64222000'),(19,5548,'caldeirão grande do piauí','64695000'),(19,5549,'campinas do piauí','64730000'),(19,5550,'campo alegre do fidalgo','64767000'),(19,5551,'campo grande do piauí','64578000'),(19,5552,'campo largo do piauí','64148000'),(19,5553,'campo maior','64280000'),(19,5554,'canavieira','64833000'),(19,5555,'canto do buriti','64890000'),(19,5556,'capitão de campos','64270000'),(19,5557,'capitão gervásio oliveira','64763000'),(19,5558,'caracol','64795000'),(19,5559,'caraúbas do piauí','64233000'),(19,5560,'caridade do piauí','64590000'),(19,5561,'castelo do piauí','64340000'),(19,5562,'caxingó','64228000'),(19,5563,'cocal','64235000'),(19,5564,'cocal de telha','64278000'),(19,5565,'cocal dos alves','64238000'),(19,5566,'coivaras','64335000'),(19,5567,'colônia do gurguéia','64885000'),(19,5568,'colônia do piauí','64516000'),(19,5569,'conceição do canindé','64740000'),(19,5570,'coronel josé dias','64793000'),(19,5571,'corrente','64980000'),(19,5572,'cristalândia do piauí','64995000'),(19,5573,'cristino castro','64920000'),(19,5574,'curimatá','64960000'),(19,5575,'currais','64905000'),(19,5576,'curral novo do piauí','64595000'),(19,5577,'curralinhos','64453000'),(19,5578,'demerval lobão','64390000'),(19,5579,'dirceu arcoverde','64785000'),(19,5580,'dom expedito lopes','64620000'),(19,5581,'dom inocêncio','64790000'),(19,5582,'domingos mourão','64250000'),(19,5583,'elesbão veloso','64325000'),(19,5584,'eliseu martins','64880000'),(19,5585,'esperantina','64180000'),(19,5586,'fartura do piauí','64788000'),(19,5587,'flores do piauí','64815000'),(19,5588,'floresta do piauí','64563000'),(19,5589,'floriano','64800000'),(19,5590,'francinópolis','64520000'),(19,5591,'francisco ayres','64475000'),(19,5592,'francisco macedo','64683000'),(19,5593,'francisco santos','64645000'),(19,5594,'fronteiras','64690000'),(19,5595,'geminiano','64613000'),(19,5596,'gilbués','64930000'),(19,5597,'guadalupe','64840000'),(19,5598,'guaribas','64798000'),(19,5599,'hugo napoleão','64470000'),(19,5600,'ilha grande','64224000'),(19,5601,'inhuma','64535000'),(19,5602,'ipiranga do piauí','64540000'),(19,5603,'isaías coelho','64570000'),(19,5604,'itainópolis','64565000'),(19,5605,'itaueira','64820000'),(19,5606,'jacobina do piauí','64755000'),(19,5607,'jaicós','64575000'),(19,5608,'jardim do mulato','64495000'),(19,5609,'jatobá do piauí','64275000'),(19,5610,'jerumenha','64830000'),(19,5611,'joão costa','64765000'),(19,5612,'joaquim pires','64170000'),(19,5613,'joca marques','64165000'),(19,5614,'josé de freitas','64110000'),(19,5615,'juazeiro do piauí','64343000'),(19,5616,'júlio borges','64963000'),(19,5617,'jurema','64782000'),(19,5618,'lagoa alegre','64138000'),(19,5619,'lagoa de são francisco','64258000'),(19,5620,'lagoa do barro do piauí','64768000'),(19,5621,'lagoa do piauí','64388000'),(19,5622,'lagoa do sítio','64308000'),(19,5623,'lagoinha do piauí','64465000'),(19,5624,'landri sales','64850000'),(19,5625,'luís correia','64220000'),(19,5626,'luzilândia','64160000'),(19,5627,'madeiro','64168000'),(19,5628,'manoel emídio','64875000'),(19,5629,'marcolândia','64685000'),(19,5630,'marcos parente','64845000'),(19,5631,'massapê do piauí','64573000'),(19,5632,'matias olímpio','64150000'),(19,5633,'miguel alves','64130000'),(19,5634,'miguel leão','64445000'),(19,5635,'milton brandão','64253000'),(19,5636,'monsenhor gil','64450000'),(19,5637,'monsenhor hipólito','64650000'),(19,5638,'monte alegre do piauí','64940000'),(19,5639,'morro cabeça no tempo','64968000'),(19,5640,'morro do chapéu do piauí','64178000'),(19,5641,'murici dos portelas','64175000'),(19,5642,'nazaré do piauí','64825000'),(19,5643,'nossa senhora de nazaré','64288000'),(19,5644,'nossa senhora dos remédios','64140000'),(19,5645,'nova santa rita','64764000'),(19,5646,'novo nilo','64125000'),(19,5647,'novo oriente do piauí','64530000'),(19,5648,'novo santo antônio','64365000'),(19,5649,'oeiras','64500000'),(19,5650,'olho d\'água do piauí','64468000'),(19,5651,'padre marcos','64680000'),(19,5652,'paes landim','64710000'),(19,5653,'pajeú do piauí','64898000'),(19,5654,'palmeira do piauí','64925000'),(19,5655,'palmeirais','64420000'),(19,5656,'paquetá','64618000'),(19,5657,'parnaguá','64970000'),(19,5658,'parnaíba','00000000'),(19,5659,'passagem franca do piauí','64395000'),(19,5660,'patos do piauí','64580000'),(19,5661,'paulistana','64750000'),(19,5662,'pavussu','64838000'),(19,5663,'pedro ii','64255000'),(19,5664,'pedro laurentino','64728000'),(19,5665,'picos','64600000'),(19,5666,'pimenteiras','64320000'),(19,5667,'pio ix','64660000'),(19,5668,'piracuruca','64240000'),(19,5669,'piripiri','64260000'),(19,5670,'porto','64145000'),(19,5671,'porto alegre do piauí','64858000'),(19,5672,'prata do piauí','64370000'),(19,5673,'queimada nova','64758000'),(19,5674,'redenção do gurguéia','64915000'),(19,5675,'regeneração','64490000'),(19,5676,'riacho frio','64975000'),(19,5677,'ribeira do piauí','64725000'),(19,5678,'ribeiro gonçalves','64865000'),(19,5679,'rio grande do piauí','64835000'),(19,5680,'santa cruz do piauí','64545000'),(19,5681,'santa cruz dos milagres','64315000'),(19,5682,'santa filomena','64945000'),(19,5683,'santa luz','64910000'),(19,5684,'santa rosa do piauí','64518000'),(19,5685,'santana do piauí','64615000'),(19,5686,'santo antônio de lisboa','64640000'),(19,5687,'santo antônio dos milagres','64438000'),(19,5688,'santo inácio do piauí','64560000'),(19,5689,'são braz do piauí','64783000'),(19,5690,'são félix do piauí','64375000'),(19,5691,'são francisco de assis do piauí','64745000'),(19,5692,'são francisco do piauí','64550000'),(19,5693,'são gonçalo do gurguéia','64993000'),(19,5694,'são gonçalo do piauí','64435000'),(19,5695,'são joão da canabrava','64635000'),(19,5696,'são joão da fronteira','64243000'),(19,5697,'são joão da serra','64350000'),(19,5698,'são joão da varjota','64510000'),(19,5699,'são joão do arraial','64155000'),(19,5700,'são joão do piauí','64760000'),(19,5701,'são josé do divino','64245000'),(19,5702,'são josé do peixe','64555000'),(19,5703,'são josé do piauí','64625000'),(19,5704,'são julião','64670000'),(19,5705,'são lourenço do piauí','64778000'),(19,5706,'são luís do piauí','64638000'),(19,5707,'são miguel da baixa grande','64378000'),(19,5708,'são miguel do fidalgo','64558000'),(19,5709,'são miguel do tapuio','64330000'),(19,5710,'são pedro do piauí','64430000'),(19,5711,'são raimundo nonato','64770000'),(19,5712,'sebastião barros','64985000'),(19,5713,'sebastião leal','64873000'),(19,5714,'sigefredo pacheco','64285000'),(19,5715,'simões','64585000'),(19,5716,'simplício mendes','64700000'),(19,5717,'socorro do piauí','64720000'),(19,5718,'sussuapara','64610000'),(19,5719,'tamboril do piauí','64893000'),(19,5720,'tanque do piauí','64512000'),(19,5721,'teresina','00000000'),(19,5722,'união','64120000'),(19,5723,'uruçuí','64860000'),(19,5724,'valença do piauí','64300000'),(19,5725,'várzea branca','64773000'),(19,5726,'várzea grande','64525000'),(19,5727,'vera mendes','64568000'),(19,5728,'vila nova do piauí','64688000'),(19,5729,'wall ferraz','64548000'),(19,10100,'pau d\'arco do piauí','64295000'),(19,11019,'aroeiras do itaim','64612000'),(20,6839,'abarracamento','27670000'),(20,6840,'ilha grande','23968000'),(20,6841,'afonso arinos','25875000'),(20,6842,'agulhas negras','00000000'),(20,6843,'amparo','00000000'),(20,6844,'andrade pinto','27770000'),(20,6845,'angra dos reis','00000000'),(20,6846,'anta','25882000'),(20,6847,'aperibé','28495000'),(20,6848,'araruama','28970000'),(20,6849,'areal','25845000'),(20,6850,'armação dos búzios','28950000'),(20,6851,'arraial do cabo','28930000'),(20,6852,'arrozal','27185000'),(20,6853,'avelar','26980000'),(20,6854,'bacaxá','28993000'),(20,6855,'baltazar','28473000'),(20,6856,'banquete','28662000'),(20,6857,'barão de juparana','27640000'),(20,6858,'barcelos','28220000'),(20,6859,'barra alegre','28666000'),(20,6860,'barra de macaé','00000000'),(20,6861,'barra de são joão','28880000'),(20,6862,'barra do piraí','00000000'),(20,6863,'barra mansa','00000000'),(20,6864,'barra seca','28240000'),(20,6865,'belford roxo','00000000'),(20,6866,'bemposta','25840000'),(20,6867,'boa esperança','28810000'),(20,6868,'boa sorte','28525000'),(20,6869,'boa ventura','28340000'),(20,6870,'bom jardim','28660000'),(20,6871,'bom jesus do itabapoana','28360000'),(20,6872,'bom jesus do querendo','28388000'),(20,6873,'cabo frio','00000000'),(20,6874,'cabuçu','24860000'),(20,6875,'cachoeiras de macacu','28680000'),(20,6876,'cachoeiros','27990000'),(20,6877,'calheiros','28368000'),(20,6878,'cambiasca','28425000'),(20,6879,'cambuci','28430000'),(20,6880,'campo do coelho','00000000'),(20,6881,'campos dos goytacazes','00000000'),(20,6882,'campos elíseos','00000000'),(20,6883,'cantagalo','28500000'),(20,6884,'carabuçu','28372000'),(20,6885,'carapebus','27998000'),(20,6886,'cardoso moreira','28180000'),(20,6887,'carmo','28640000'),(20,6888,'cascatinha','00000000'),(20,6889,'casimiro de abreu','28860000'),(20,6890,'cava','00000000'),(20,6891,'coelho da rocha','00000000'),(20,6892,'colônia','28420000'),(20,6893,'comendador levy gasparian','25870000'),(20,6894,'comendador venâncio','28348000'),(20,6895,'conceição de jacareí','23885000'),(20,6896,'conceição de macabu','28740000'),(20,6897,'conrado','26920000'),(20,6898,'conselheiro paulino','00000000'),(20,6899,'conservatória','27655000'),(20,6900,'cordeiro','28540000'),(20,6901,'coroa grande','00000000'),(20,6902,'correas','00000000'),(20,6903,'córrego da prata','28642000'),(20,6904,'córrego do ouro','27980000'),(20,6905,'correntezas','28830000'),(20,6906,'cunhambebe','00000000'),(20,6907,'dorândia','27160000'),(20,6908,'dores de macabu','28115000'),(20,6909,'doutor elias','28757000'),(20,6910,'doutor loreti','28772000'),(20,6911,'duas barras','28650000'),(20,6912,'duque de caxias','00000000'),(20,6913,'engenheiro passos','27555000'),(20,6914,'engenheiro paulo de frontin','26650000'),(20,6915,'engenheiro pedreira','00000000'),(20,6916,'estrada nova','28590000'),(20,6917,'euclidelândia','28520000'),(20,6918,'falcão','00000000'),(20,6919,'floriano','00000000'),(20,6920,'fumaça','27550000'),(20,6921,'funil','28440000'),(20,6922,'gaviões','28825000'),(20,6923,'getulândia','27465000'),(20,6924,'glicério','27985000'),(20,6925,'goitacazes','28110000'),(20,6926,'governador portela','26910000'),(20,6927,'guapimirim','25940000'),(20,6928,'guia de pacobaíba','25930000'),(20,6929,'ibitiguaçu','28485000'),(20,6930,'ibitioca','28120000'),(20,6931,'ibituporanga','00000000'),(20,6932,'iguaba grande','28960000'),(20,6933,'imbariê','00000000'),(20,6934,'inconfidência','25865000'),(20,6935,'inhomirim','25935000'),(20,6936,'inoã','24910000'),(20,6937,'ipiabás','27170000'),(20,6938,'ipiiba','00000000'),(20,6939,'ipuca','28405000'),(20,6940,'itabapoana','28245000'),(20,6941,'itaboraí','24800000'),(20,6942,'itacurussá','23880000'),(20,6943,'itaguaí','00000000'),(20,6944,'itaipava','00000000'),(20,6945,'itaipu','00000000'),(20,6946,'itajara','28345000'),(20,6947,'italva','28250000'),(20,6948,'itambi','24850000'),(20,6949,'itaocara','28570000'),(20,6950,'itaperuna','28300000'),(20,6951,'itatiaia','27580000'),(20,6953,'jaguarembé','28575000'),(20,6954,'jamapará','25887000'),(20,6955,'japeri','00000000'),(20,6956,'japuíba','28685000'),(20,6957,'laje do muriaé','28350000'),(20,6958,'laranjais','28580000'),(20,6959,'lídice','27475000'),(20,6960,'lumiar','00000000'),(20,6961,'macabuzinho','28745000'),(20,6962,'macaé','00000000'),(20,6963,'macuco','28545000'),(20,6964,'magé','25900000'),(20,6965,'mambucaba','00000000'),(20,6966,'mangaratiba','23860000'),(20,6967,'maniva','28235000'),(20,6968,'manoel ribeiro','24920000'),(20,6969,'manuel duarte','27690000'),(20,6970,'marangatu','28476000'),(20,6971,'maricá','24900000'),(20,6972,'mendes','26700000'),(20,6973,'mesquita','00000000'),(20,6974,'miguel pereira','26900000'),(20,6975,'miracema','28460000'),(20,6976,'monnerat','28655000'),(20,6977,'monjolo','00000000'),(20,6978,'monte alegre','28490000'),(20,6979,'monte verde','28445000'),(20,6980,'monumento','27190000'),(20,6981,'morangaba','28125000'),(20,6982,'morro do côco','28178000'),(20,6983,'morro grande','28975000'),(20,6984,'mussurepe','28143000'),(20,6985,'natividade','28380000'),(20,6986,'neves','00000000'),(20,6987,'nhunguaçu','25998000'),(20,6988,'nilópolis','00000000'),(20,6989,'niterói','00000000'),(20,6990,'nossa senhora da aparecida','25886000'),(20,6991,'nossa senhora da penha','28335000'),(20,6992,'nossa senhora do amparo','00000000'),(20,6993,'nova friburgo','00000000'),(20,6994,'nova iguaçu','00000000'),(20,6995,'olinda','00000000'),(20,6996,'ourânia','28383000'),(20,6997,'papucaia','28695000'),(20,6998,'paquequer pequeno','25996000'),(20,6999,'paracambi','26600000'),(20,7000,'paraíba do sul','25850000'),(20,7001,'paraíso do tobias','28463000'),(20,7002,'paraoquena','28483000'),(20,7003,'parapeúna','27650000'),(20,7004,'parati','23970000'),(20,7005,'parati mirim','23972000'),(20,7006,'passa três','27470000'),(20,7007,'paty do alferes','26950000'),(20,7008,'pedra selada','27560000'),(20,7009,'pedro do rio','00000000'),(20,7010,'penedo','00000000'),(20,7011,'pentagna','27645000'),(20,7012,'petrópolis','00000000'),(20,7013,'piabetá','25915000'),(20,7014,'pião','25884000'),(20,7015,'pinheiral','27197000'),(20,7016,'pipeiras','28225000'),(20,7017,'piraí','27175000'),(20,7018,'pirangaí','27565000'),(20,7019,'pirapetinga de bom jesus','28365000'),(20,7020,'porciúncula','28390000'),(20,7021,'portela','28595000'),(20,7022,'porto das caixas','24870000'),(20,7023,'porto real','27570000'),(20,7024,'porto velho do cunha','28644000'),(20,7025,'posse','00000000'),(20,7027,'pureza','28415000'),(20,7028,'purilândia','28396000'),(20,7029,'quartéis','28835000'),(20,7030,'quatis','00000000'),(20,7031,'queimados','00000000'),(20,7032,'quissamã','28735000'),(20,7033,'raposo','28333000'),(20,7034,'renascença','28774000'),(20,7035,'resende','00000000'),(20,7036,'retiro do muriaé','28330000'),(20,7037,'rialto','00000000'),(20,7038,'ribeirão de são joaquim','00000000'),(20,7039,'rio bonito','28800000'),(20,7040,'rio claro','27460000'),(20,7041,'rio das flores','27660000'),(20,7042,'rio das ostras','28890000'),(20,7043,'rio de janeiro','00000000'),(20,7044,'riograndina','00000000'),(20,7045,'rosal','28370000'),(20,7046,'sacra família do tinguá','26660000'),(20,7047,'salutaris','25855000'),(20,7048,'sambaetiba','24880000'),(20,7049,'sampaio correia','28997000'),(20,7050,'sana','27995000'),(20,7051,'santa clara','28398000'),(20,7052,'santa cruz','28480000'),(20,7053,'santa cruz da serra','00000000'),(20,7054,'santa isabel','00000000'),(20,7055,'santa isabel do rio preto','27657000'),(20,7056,'santa maria','28155000'),(20,7057,'santa maria madalena','28770000'),(20,7058,'santa rita da floresta','28510000'),(20,7059,'santanésia','27195000'),(20,7060,'santo aleixo','25920000'),(20,7061,'santo amaro de campos','28140000'),(20,7062,'santo antônio de pádua','28470000'),(20,7063,'santo antônio do imbé','28778000'),(20,7064,'santo eduardo','28160000'),(20,7065,'são fidélis','28400000'),(20,7066,'são francisco de itabapoana','28230000'),(20,7067,'são gonçalo','00000000'),(20,7068,'são joão da barra','28200000'),(20,7069,'são joão de meriti','00000000'),(20,7070,'são joão do paraíso','28450000'),(20,7071,'são joão marcos','27472000'),(20,7072,'são joaquim','28195000'),(20,7073,'são josé de ubá','28455000'),(20,7074,'são josé do ribeirão','28664000'),(20,7075,'são josé do turvo','27165000'),(20,7076,'são josé do vale do rio preto','25780000'),(20,7077,'são mateus','00000000'),(20,7078,'são pedro da aldeia','28940000'),(20,7079,'são sebastião de campos','28145000'),(20,7080,'são sebastião do alto','28550000'),(20,7081,'são sebastião do paraíba','28530000'),(20,7082,'são sebastião dos ferreiros','27705000'),(20,7083,'são vicente de paula','28980000'),(20,7084,'sapucaia','25880000'),(20,7085,'saquarema','28990000'),(20,7086,'saracuruna','00000000'),(20,7087,'sebastião de lacerda','27720000'),(20,7088,'seropédica','23890000'),(20,7089,'serrinha','28118000'),(20,7090,'sete pontes','00000000'),(20,7091,'silva jardim','28820000'),(20,7092,'sodrelândia','28760000'),(20,7093,'sossego','28777000'),(20,7094,'subaio','28690000'),(20,7095,'sumidouro','28637000'),(20,7096,'suruí','25925000'),(20,7097,'taboas','27665000'),(20,7098,'tamoios','28927000'),(20,7099,'tanguá','24890000'),(20,7100,'tapera','28767000'),(20,7101,'tarituba','23975000'),(20,7102,'teresópolis','00000000'),(20,7103,'tocos','28148000'),(20,7104,'trajano de morais','28750000'),(20,7105,'travessão','28175000'),(20,7106,'três irmãos','28435000'),(20,7107,'três rios','00000000'),(20,7108,'triunfo','28779000'),(20,7109,'valão do barro','28555000'),(20,7110,'valença','27600000'),(20,7111,'vargem alegre','27155000'),(20,7112,'varre-sai','28375000'),(20,7113,'vassouras','27700000'),(20,7114,'venda das flores','28466000'),(20,7115,'venda das pedras','24885000'),(20,7116,'vila da grama','28765000'),(20,7118,'vila muriqui','23870000'),(20,7119,'vila nova de campos','28165000'),(20,7120,'visconde de imbé','28755000'),(20,7121,'volta redonda','00000000'),(20,7122,'werneck','25860000'),(20,7123,'xerém','00000000'),(20,10208,'são pedro da serra','00000000'),(20,10369,'batatal','28585000'),(20,10409,'serrinha','28374000'),(20,10491,'ipituna','28557000'),(21,7124,'acari','59370000'),(21,7125,'açu','59650000'),(21,7126,'afonso bezerra','59510000'),(21,7127,'água nova','59995000'),(21,7128,'alexandria','59965000'),(21,7129,'almino afonso','59760000'),(21,7130,'alto do rodrigues','59507000'),(21,7131,'angicos','59515000'),(21,7132,'antônio martins','59870000'),(21,7133,'apodi','59700000'),(21,7134,'areia branca','59655000'),(21,7135,'arez','59170000'),(21,7136,'baía formosa','59194000'),(21,7137,'barão de serra branca','59522000'),(21,7138,'baraúna','59695000'),(21,7139,'barcelona','59410000'),(21,7140,'belo horizonte','59558000'),(21,7141,'bento fernandes','59555000'),(21,7142,'boa saúde','59260000'),(21,7143,'bodó','59528000'),(21,7144,'bom jesus','59270000'),(21,7145,'brejinho','59219000'),(21,7146,'caiçara do norte','59592000'),(21,7147,'caiçara do rio do vento','59540000'),(21,7148,'caicó','59300000'),(21,7149,'campo grande','59680000'),(21,7150,'campo redondo','59230000'),(21,7151,'canguaretama','59190000'),(21,7152,'caraúbas','59780000'),(21,7153,'carnaúba dos dantas','59374000'),(21,7154,'carnaubais','59665000'),(21,7155,'ceará-mirim','59570000'),(21,7156,'cerro corá','59395000'),(21,7157,'coronel ezequiel','59220000'),(21,7158,'coronel joão pessoa','59930000'),(21,7159,'córrego de são mateus','59265000'),(21,7160,'cruzeta','59375000'),(21,7161,'currais novos','59380000'),(21,7162,'doutor severiano','59910000'),(21,7163,'encanto','59905000'),(21,7164,'equador','59355000'),(21,7165,'espírito santo','59180000'),(21,7166,'espírito santo do oeste','59660000'),(21,7167,'extremoz','59575000'),(21,7168,'felipe guerra','59795000'),(21,7169,'fernando pedroza','59517000'),(21,7170,'firmamento','59538000'),(21,7171,'florânia','59335000'),(21,7172,'francisco dantas','59902000'),(21,7173,'frutuoso gomes','59890000'),(21,7174,'galinhos','59596000'),(21,7175,'gameleira','59568000'),(21,7176,'goianinha','59173000'),(21,7177,'governador dix-sept rosado','59790000'),(21,7178,'grossos','59675000'),(21,7179,'guamaré','59598000'),(21,7180,'ielmo marinho','59490000'),(21,7181,'igreja nova','59299000'),(21,7182,'ipanguaçu','59508000'),(21,7183,'ipiranga','59275500'),(21,7184,'ipueira','59315000'),(21,7185,'itajá','59513000'),(21,7186,'itaú','59855000'),(21,7187,'jaçanã','59225000'),(21,7188,'jandaíra','59594000'),(21,7189,'janduís','59690000'),(21,7190,'japi','59213000'),(21,7191,'jardim de angicos','59544000'),(21,7192,'jardim de piranhas','59324000'),(21,7193,'jardim do seridó','59343000'),(21,7194,'joão câmara','59550000'),(21,7195,'joão dias','59880000'),(21,7196,'josé da penha','59980000'),(21,7197,'jucurutu','59330000'),(21,7198,'jundiá','59188000'),(21,7199,'lagoa d\'anta','59227000'),(21,7200,'lagoa de pedras','59244000'),(21,7201,'lagoa de velhos','59430000'),(21,7202,'lagoa nova','59390000'),(21,7203,'lagoa salgada','59247000'),(21,7204,'lajes','59535000'),(21,7205,'lajes pintadas','59235000'),(21,7206,'lucrécia','59805000'),(21,7207,'luís gomes','59940000'),(21,7208,'macaíba','59280000'),(21,7209,'macau','59500000'),(21,7210,'major felipe','59985000'),(21,7211,'major sales','59945000'),(21,7212,'marcelino vieira','59970000'),(21,7213,'martins','59800000'),(21,7214,'mata de são braz','59958000'),(21,7215,'maxaranguape','59580000'),(21,7216,'messias targino','59775000'),(21,7217,'montanhas','59198000'),(21,7218,'monte alegre','59182000'),(21,7219,'monte das gameleiras','59217000'),(21,7220,'mossoró','00000000'),(21,7221,'natal','00000000'),(21,7222,'nísia floresta','59164000'),(21,7223,'nova cruz','59215000'),(21,7224,'olho-d\'água do borges','59730000'),(21,7225,'ouro branco','59347000'),(21,7226,'paraná','59950000'),(21,7227,'parazinho','59586000'),(21,7228,'parelhas','59360000'),(21,7229,'parnamirim','00000000'),(21,7230,'passa e fica','59218000'),(21,7231,'passagem','59259000'),(21,7232,'patu','59770000'),(21,7233,'pau dos ferros','59900000'),(21,7234,'pedra grande','59588000'),(21,7235,'pedra preta','59547000'),(21,7236,'pedro avelino','59530000'),(21,7237,'pedro velho','59196000'),(21,7238,'pendências','59504000'),(21,7239,'pilões','59960000'),(21,7240,'poço branco','59560000'),(21,7241,'portalegre','59810000'),(21,7242,'porto do mangue','59668000'),(21,7243,'pureza','59582000'),(21,7244,'rafael fernandes','59990000'),(21,7245,'rafael godeiro','59740000'),(21,7246,'riacho da cruz','59820000'),(21,7247,'riacho de santana','59987000'),(21,7248,'riachuelo','59470000'),(21,7249,'rio do fogo','59578000'),(21,7250,'rodolfo fernandes','59830000'),(21,7251,'rosário','59885000'),(21,7252,'ruy barbosa','59420000'),(21,7253,'salva vida','59803000'),(21,7254,'santa cruz','59200000'),(21,7255,'santa fé','59189000'),(21,7256,'santa maria','59464000'),(21,7257,'santa teresa','59526000'),(21,7258,'santana do matos','59520000'),(21,7259,'santana do seridó','59350000'),(21,7260,'santo antônio','59255000'),(21,7261,'santo antônio do potengi','59298000'),(21,7262,'são bento do norte','59590000'),(21,7263,'são bento do trairi','59210000'),(21,7264,'são bernardo','59943000'),(21,7265,'são fernando','59327000'),(21,7266,'são francisco do oeste','59908000'),(21,7267,'são geraldo','59785000'),(21,7268,'são gonçalo do amarante','59290000'),(21,7269,'são joão do sabugi','59310000'),(21,7270,'são josé da passagem','59524000'),(21,7271,'são josé de mipibu','59162000'),(21,7272,'são josé do campestre','59275000'),(21,7273,'são josé do seridó','59378000'),(21,7274,'são miguel','59920000'),(21,7275,'são miguel de touros','59585000'),(21,7276,'são paulo do potengi','59460000'),(21,7277,'são pedro','59480000'),(21,7278,'são rafael','59518000'),(21,7279,'são tomé','59400000'),(21,7280,'são vicente','59340000'),(21,7281,'senador elói de souza','59250000'),(21,7282,'senador georgino avelino','59168000'),(21,7283,'serra caiada','59245000'),(21,7284,'serra da tapuia','59445000'),(21,7285,'serra de são bento','59214000'),(21,7286,'serra do mel','59663000'),(21,7287,'serra negra do norte','59318000'),(21,7288,'serrinha','59258000'),(21,7289,'serrinha dos pintos','59808000'),(21,7290,'severiano melo','59856000'),(21,7291,'sítio novo','59440000'),(21,7292,'taboleiro grande','59840000'),(21,7293,'taipu','59565000'),(21,7294,'tangará','59240000'),(21,7295,'tenente ananias','59955000'),(21,7296,'tenente laurentino cruz','59338000'),(21,7297,'tibau','59678000'),(21,7298,'tibau do sul','59178000'),(21,7299,'timbaúba dos batistas','59320000'),(21,7300,'touros','59584000'),(21,7301,'trairi','59242000'),(21,7302,'triunfo potiguar','59685000'),(21,7303,'umarizal','59865000'),(21,7304,'upanema','59670000'),(21,7305,'várzea','59185000'),(21,7306,'venha-ver','59925000'),(21,7307,'vera cruz','59184000'),(21,7308,'viçosa','59815000'),(21,7309,'vila flor','59192000'),(22,7388,'aceguá','96445000'),(22,7389,'afonso rodrigues','97825000'),(22,7390,'água santa','99965000'),(22,7391,'águas claras','94760000'),(22,7392,'agudo','96540000'),(22,7393,'ajuricaba','98750000'),(22,7394,'albardão','96670000'),(22,7395,'alecrim','98950000'),(22,7396,'alegrete','00000000'),(22,7397,'alegria','98905000'),(22,7398,'alfredo brenner','98210000'),(22,7399,'almirante tamandaré do sul','99523000'),(22,7400,'alpestre','98480000'),(22,7401,'alto alegre','99430000'),(22,7402,'alto alegre','96380000'),(22,7403,'alto da união','98713000'),(22,7404,'alto feliz','95773000'),(22,7405,'alto paredão','96853000'),(22,7406,'alto recreio','99673000'),(22,7407,'alto uruguai','98630000'),(22,7408,'alvorada','00000000'),(22,7409,'amaral ferrador','96635000'),(22,7410,'ametista do sul','98465000'),(22,7411,'andré da rocha','95310000'),(22,7412,'anta gorda','95980000'),(22,7413,'antônio kerpel','98583000'),(22,7414,'antônio prado','95250000'),(22,7415,'arambaré','96178000'),(22,7416,'araricá','93880000'),(22,7417,'aratiba','99770000'),(22,7418,'arco verde','95186000'),(22,7419,'arco-íris','98393000'),(22,7420,'arroio canoas','95733000'),(22,7421,'arroio do meio','95940000'),(22,7422,'arroio do padre','96155000'),(22,7423,'arroio do sal','95585000'),(22,7424,'arroio do só','97165000'),(22,7425,'arroio do tigre','96950000'),(22,7426,'arroio dos ratos','96740000'),(22,7427,'arroio grande','96330000'),(22,7428,'arroio grande','97120000'),(22,7429,'arroio grande','99455000'),(22,7430,'árvore só','96240000'),(22,7431,'arvorezinha','95995000'),(22,7432,'atafona','98830000'),(22,7433,'atiaçu','99565000'),(22,7434,'augusto pestana','98740000'),(22,7435,'áurea','99835000'),(22,7436,'avelino paranhos','99425000'),(22,7437,'azevedo sodré','97330000'),(22,7438,'bacupari','95549000'),(22,7439,'bagé','00000000'),(22,7440,'baliza','99833000'),(22,7441,'balneário pinhal','95599000'),(22,7442,'banhado do colégio','96188000'),(22,7443,'barão','95730000'),(22,7444,'barão de cotegipe','99740000'),(22,7445,'barão do triunfo','96735000'),(22,7446,'barra do guarita','98530000'),(22,7447,'barra do ouro','95532000'),(22,7448,'barra do quaraí','97538000'),(22,7449,'barra do ribeiro','96790000'),(22,7450,'barra do rio azul','99795000'),(22,7451,'barra funda','99585000'),(22,7452,'barracão','95370000'),(22,7453,'barreirinho','99575000'),(22,7454,'barreiro','98712000'),(22,7455,'barro preto','98753000'),(22,7456,'barro vermelho','96526000'),(22,7457,'barro vermelho','94340000'),(22,7458,'barros cassal','99360000'),(22,7459,'basílio','96320000'),(22,7460,'bela vista','99885000'),(22,7461,'bela vista','99135000'),(22,7462,'bela vista','96912000'),(22,7463,'bela vista','98605000'),(22,7464,'beluno','97620000'),(22,7465,'benjamin constant do sul','99650000'),(22,7466,'bento gonçalves','95700000'),(22,7467,'bexiga','96680000'),(22,7468,'boa esperança','95693000'),(22,7469,'boa vista','95751000'),(22,7470,'boa vista','96850000'),(22,7471,'boa vista','96177000'),(22,7472,'boa vista das missões','98335000'),(22,7473,'boa vista do buricá','98918000'),(22,7474,'boa vista do cadeado','98118000'),(22,7475,'boa vista do incra','98120000'),(22,7476,'boa vista do sul','95727000'),(22,7477,'boca do monte','97170000'),(22,7478,'boi preto','99555000'),(22,7479,'bojuru','96228000'),(22,7480,'bom jardim','96578000'),(22,7481,'bom jesus','95290000'),(22,7482,'bom princípio','95765000'),(22,7483,'bom progresso','98575000'),(22,7484,'bom retiro','95495000'),(22,7485,'bom retiro do guaíba','92800000'),(22,7486,'bom retiro do sul','95870000'),(22,7487,'bonito','96181000'),(22,7488,'boqueirão','95830000'),(22,7489,'boqueirão','96175000'),(22,7490,'boqueirão do leão','95920000'),(22,7491,'bororé','97653000'),(22,7492,'bossoroca','97850000'),(22,7493,'botucaraí','96935000'),(22,7494,'braga','98560000'),(22,7495,'brochier','95790000'),(22,7496,'buriti','98825000'),(22,7497,'butiá','96750000'),(22,7498,'butiás','96293000'),(22,7499,'caçapava do sul','96570000'),(22,7500,'cacequi','97450000'),(22,7501,'cachoeira do sul','00000000'),(22,7502,'cachoeirinha','00000000'),(22,7503,'cacique doble','99860000'),(22,7504,'cadorna','95987000'),(22,7505,'caibaté','97930000'),(22,7506,'caiçara','98440000'),(22,7507,'camaquã','96180000'),(22,7508,'camargo','99165000'),(22,7509,'cambará do sul','95480000'),(22,7510,'camobi','00000000'),(22,7511,'campestre baixo','95752000'),(22,7512,'campestre da serra','95255000'),(22,7513,'campina das missões','98975000'),(22,7514,'campina redonda','99405000'),(22,7515,'campinas','98255000'),(22,7516,'campinas do sul','99660000'),(22,7517,'campo bom','93700000'),(22,7518,'campo branco','95926000'),(22,7519,'campo do meio','99185000'),(22,7520,'campo novo','98570000'),(22,7521,'campo novo','99372000'),(22,7522,'campo santo','98585000'),(22,7523,'campo seco','97592000'),(22,7524,'campo vicente','93893000'),(22,7525,'campos borges','99435000'),(22,7526,'candelária','96930000'),(22,7527,'cândido freire','98880000'),(22,7528,'cândido godói','98970000'),(22,7529,'candiota','96495000'),(22,7530,'canela','95680000'),(22,7531,'canguçu','96600000'),(22,7532,'canhembora','97270000'),(22,7533,'canoas','00000000'),(22,7534,'canudos do vale','95933000'),(22,7535,'capané','96524000'),(22,7536,'capão bonito do sul','95308000'),(22,7537,'capão bonito','99447000'),(22,7538,'capão comprido','96295000'),(22,7539,'capão da canoa','95555000'),(22,7540,'capão da porteira','94770000'),(22,7541,'capão do cedro','95304500'),(22,7542,'capão do cipó','97753000'),(22,7543,'capão do leão','96160000'),(22,7544,'capela de santana','95745000'),(22,7545,'capela velha','96183000'),(22,7546,'capinzal','99686000'),(22,7547,'capitão','95935000'),(22,7548,'capivari do sul','95552000'),(22,7549,'capivarita','96695000'),(22,7550,'capo-erê','99717000'),(22,7551,'capoeira grande','98525000'),(22,7552,'caraá','95515000'),(22,7553,'carajá seival','96580000'),(22,7554,'carazinho','99500000'),(22,7555,'carlos barbosa','95185000'),(22,7556,'carlos gomes','99825000'),(22,7557,'carovi','97733000'),(22,7558,'casca','99260000'),(22,7559,'cascata','98922000'),(22,7560,'cascata','96140000'),(22,7561,'caseiros','95315000'),(22,7562,'castelinho','98405000'),(22,7563,'catuípe','98770000'),(22,7564,'cavajureta','97440000'),(22,7565,'caverá','97594000'),(22,7566,'caxias do sul','00000000'),(22,7567,'cazuza ferreira','95450000'),(22,7568,'cedro marcado','98520000'),(22,7569,'centenário','99838000'),(22,7570,'centenário','98313000'),(22,7571,'centro linha brasil','95808000'),(22,7572,'cerrito','96395000'),(22,7573,'cerrito alegre','96105000'),(22,7574,'cerrito do ouro ou vila do cerrito','97370000'),(22,7575,'cerro alto','98943000'),(22,7576,'cerro branco','96535000'),(22,7577,'cerro claro','97403000'),(22,7578,'cerro do martins','96575000'),(22,7579,'cerro do roque','96753000'),(22,7580,'cerro grande','98340000'),(22,7581,'cerro grande do sul','96770000'),(22,7582,'cerro largo','97900000'),(22,7583,'chapada','99530000'),(22,7584,'chapada','95425000'),(22,7585,'charqueadas','96745000'),(22,7586,'charrua','99960000'),(22,7587,'chiapetta','98760000'),(22,7588,'chicolomã','95508000'),(22,7589,'chimarrão','95312000'),(22,7590,'chorão','98720000'),(22,7591,'chuí','96255000'),(22,7592,'chuvisca','96193000'),(22,7593,'cidreira','95595000'),(22,7594,'cinqüentenário','98946000'),(22,7595,'ciríaco','99970000'),(22,7596,'clara','97415000'),(22,7597,'clemente argolo','95302000'),(22,7598,'coimbra','98868000'),(22,7599,'colinas','95895000'),(22,7600,'colônia das almas','98775000'),(22,7601,'colônia medeiros','98916000'),(22,7602,'colônia municipal','98844000'),(22,7603,'colônia nova','96439000'),(22,7604,'colônia são joão','98122000'),(22,7605,'colônia z-3','96130000'),(22,7606,'coloninha','96980000'),(22,7607,'colorado','99460000'),(22,7608,'comandai','98841000'),(22,7609,'condor','98290000'),(22,7610,'consolata','98914000'),(22,7611,'constantina','99680000'),(22,7612,'coqueiro baixo','95955000'),(22,7613,'coqueiros do sul','99528000'),(22,7614,'cordilheira','96528000'),(22,7615,'coroados','98598000'),(22,7616,'coronel barros','98735000'),(22,7617,'coronel bicaco','98580000'),(22,7618,'coronel finzito','98395000'),(22,7619,'coronel pilar','95726000'),(22,7620,'coronel teixeira','99805000'),(22,7621,'cortado','96550000'),(22,7622,'costa da cadeia','95855000'),(22,7623,'costão','95882000'),(22,7624,'cotiporã','95335000'),(22,7625,'coxilha','99145000'),(22,7626,'coxilha grande','95223000'),(22,7627,'cr-1','95547000'),(22,7628,'crissiumal','98640000'),(22,7629,'cristal','96195000'),(22,7630,'cristal do sul','98368000'),(22,7631,'criúva','95143000'),(22,7632,'cruz alta','00000000'),(22,7633,'cruzaltense','99665000'),(22,7634,'cruzeiro','98478000'),(22,7635,'cruzeiro do sul','95930000'),(22,7636,'curral alto','96245000'),(22,7637,'curumim','95558000'),(22,7638,'daltro filho','95888000'),(22,7639,'daltro filho','95724000'),(22,7640,'daltro filho','98515000'),(22,7641,'dário lassance','96444000'),(22,7642,'david canabarro','99980000'),(22,7643,'delfina','95884000'),(22,7644,'deodoro','95810000'),(22,7645,'depósito','99420000'),(22,7646,'derrubadas','98528000'),(22,7647,'dezesseis de novembro','97845000'),(22,7648,'dilermando de aguiar','97180000'),(22,7649,'divino','98474000'),(22,7650,'dois irmãos','93950000'),(22,7651,'dois irmãos das missões','98385000'),(22,7652,'dois lajeados','99220000'),(22,7653,'são josé do sul','95748000'),(22,7654,'dom feliciano','96190000'),(22,7655,'dom feliciano','94350000'),(22,7656,'dom pedrito','96450000'),(22,7657,'dom pedro de alcântara','95568000'),(22,7658,'dona francisca','97280000'),(22,7659,'dona otília','97973000'),(22,7660,'dourado','99775000'),(22,7661,'bozano','98733000'),(22,7662,'doutor edgardo pereira velho','96280000'),(22,7663,'doutor maurício cardoso','98925000'),(22,7664,'doutor ricardo','95967000'),(22,7665,'eldorado do sul','92990000'),(22,7666,'eletra','95435000'),(22,7667,'encantado','95960000'),(22,7668,'encruzilhada','97665000'),(22,7669,'encruzilhada do sul','96610000'),(22,7670,'engenho velho','99698000'),(22,7671,'entre rios do sul','99645000'),(22,7672,'entre-ijuís','98855000'),(22,7673,'entrepelado','95605000'),(22,7674,'erebango','99920000'),(22,7675,'erechim','99700000'),(22,7676,'ernestina','99140000'),(22,7677,'ernesto alves','97750000'),(22,7678,'erval grande','99750000'),(22,7679,'erval seco','98390000'),(22,7680,'erveiras','96868000'),(22,7681,'esmeralda','95380000'),(22,7682,'esperança do sul','98635000'),(22,7683,'espigão','94740000'),(22,7684,'espigão alto','95375000'),(22,7685,'espinilho grande','98173000'),(22,7686,'espírito santo','98907000'),(22,7687,'espumoso','99400000'),(22,7688,'esquina araújo','98917000'),(22,7689,'esquina bom sucesso','98777000'),(22,7690,'esquina gaúcha','98655000'),(22,7691,'esquina gaúcha','98857000'),(22,7692,'esquina ipiranga','98885000'),(22,7693,'esquina piratini','97865000'),(22,7694,'estação','99930000'),(22,7695,'estância grande','94890000'),(22,7696,'estância velha','93600000'),(22,7697,'esteio','00000000'),(22,7698,'esteira','95218000'),(22,7699,'estreito','96227000'),(22,7700,'estrela','95880000'),(22,7701,'estrela','95227000'),(22,7702,'estrela velha','96990000'),(22,7703,'eugênio de castro','98860000'),(22,7704,'evangelista','99262000'),(22,7705,'fagundes varela','95333000'),(22,7706,'fão','95914000'),(22,7707,'faria lemos','95713000'),(22,7708,'farinhas','98490000'),(22,7709,'farrapos','99872000'),(22,7710,'farroupilha','95180000'),(22,7711,'faxinal','99357000'),(22,7712,'faxinal do soturno','97220000'),(22,7713,'faxinalzinho','99655000'),(22,7714,'fazenda fialho','95608000'),(22,7715,'fazenda souza','95125000'),(22,7716,'fazenda vilanova','95875000'),(22,7717,'feliz','95770000'),(22,7718,'ferreira','96521000'),(22,7719,'flores da cunha','95270000'),(22,7720,'floresta','98710000'),(22,7721,'floresta','98613000'),(22,7722,'floriano peixoto','99910000'),(22,7723,'flórida','97725000'),(22,7724,'fontoura xavier','99370000'),(22,7725,'formigueiro','97210000'),(22,7726,'formosa','96871000'),(22,7727,'forninho','96583000'),(22,7728,'forquetinha','95937000'),(22,7729,'fortaleza dos valos','98125000'),(22,7730,'frederico westphalen','98400000'),(22,7731,'frei sebastião','95551000'),(22,7732,'freire','96390000'),(22,7733,'garibaldi','95720000'),(22,7734,'garibaldina','95723000'),(22,7735,'garruchos','97690000'),(22,7736,'gaurama','99830000'),(22,7737,'general câmara','95820000'),(22,7738,'gentil','99160000'),(22,7739,'getúlio vargas','99900000'),(22,7740,'giruá','98870000'),(22,7741,'glória','95565000'),(22,7742,'glorinha','94380000'),(22,7743,'goio-en','99752000'),(22,7744,'gramado','95670000'),(22,7745,'gramado dos loureiros','99605000'),(22,7746,'gramado são pedro','99375000'),(22,7747,'gramado xavier','96875000'),(22,7748,'gravataí','00000000'),(22,7749,'guabiju','95355000'),(22,7750,'guaíba','92500000'),(22,7751,'guajuviras','92455000'),(22,7752,'guaporé','99200000'),(22,7753,'guarani das missões','97950000'),(22,7754,'guassupi','97408000'),(22,7755,'harmonia','95785000'),(22,7756,'herval','96310000'),(22,7757,'herveiras','96888000'),(22,7758,'hidráulica','96163000'),(22,7759,'horizontina','98920000'),(22,7760,'hulha negra','96460000'),(22,7761,'humaitá','98670000'),(22,7762,'ibarama','96925000'),(22,7763,'ibaré','97395000'),(22,7764,'ibiaçá','99940000'),(22,7765,'ibiraiaras','95305000'),(22,7766,'ibirapuitã','99320000'),(22,7767,'ibirubá','98200000'),(22,7768,'igrejinha','95650000'),(22,7769,'igrejinha','99515000'),(22,7770,'ijucapirama','97763000'),(22,7771,'ijuí','98700000'),(22,7772,'ilha dos marinheiros','96223000'),(22,7773,'ilópolis','95990000'),(22,7774,'imbé','95625000'),(22,7775,'imigrante','95885000'),(22,7776,'independência','98915000'),(22,7777,'inhacorá','98765000'),(22,7778,'ipê','95240000'),(22,7779,'ipiranga','94370000'),(22,7780,'ipiranga do sul','99925000'),(22,7781,'ipuaçu','98445000'),(22,7782,'iraí','98460000'),(22,7783,'iruí','96655000'),(22,7784,'itaara','97185000'),(22,7785,'itacolomi','94330000'),(22,7786,'itacurubi','97685000'),(22,7787,'itacurubi','97720000'),(22,7788,'itaí','98717000'),(22,7789,'itaimbezinho','95296000'),(22,7790,'itão','97660000'),(22,7791,'itapuã','94750000'),(22,7792,'itapucá','95997000'),(22,7793,'itapucá','95983000'),(22,7794,'itaqui','97650000'),(22,7795,'itati','95538000'),(22,7796,'itatiba do sul','99760000'),(22,7797,'itaúba','96960000'),(22,7798,'ituim','95225000'),(22,7799,'ivaí','97855000'),(22,7800,'ivorá','98160000'),(22,7801,'ivoti','93900000'),(22,7802,'jaboticaba','98350000'),(22,7803,'jacuizinho','99457000'),(22,7804,'jacutinga','99730000'),(22,7805,'jaguarão','96300000'),(22,7806,'jaguarete','99715000'),(22,7807,'jaguari','97760000'),(22,7808,'jansen','95181000'),(22,7809,'jaquirana','95420000'),(22,7810,'jari','98175000'),(22,7811,'jazidas ou capela são vicente','97380000'),(22,7812,'joão arregui','97530000'),(22,7813,'joão rodrigues','96665000'),(22,7814,'joça tavares','96435000'),(22,7815,'jóia','98180000'),(22,7816,'josé otávio','96431000'),(22,7817,'juá','95430000'),(22,7818,'júlio de castilhos','98130000'),(22,7819,'lagoa bonita do sul','96920000'),(22,7820,'lagoa dos três cantos','99495000'),(22,7821,'lagoa vermelha','95300000'),(22,7822,'lagoão','99340000'),(22,7823,'lajeado','95900000'),(22,7824,'lajeado bonito','95338000'),(22,7825,'lajeado bonito','98685000'),(22,7826,'lajeado cerne','98845000'),(22,7827,'lajeado do bugre','98320000'),(22,7828,'lajeado grande','98650000'),(22,7829,'lajeado grande','95440000'),(22,7830,'lara','98603000'),(22,7831,'laranjeira','98455000'),(22,7832,'lava-pés','97735000'),(22,7833,'lavras do sul','97390000'),(22,7834,'leonel rocha','98333000'),(22,7835,'liberato salzano','99690000'),(22,7836,'lindolfo collor','93940000'),(22,7837,'linha comprida','95754000'),(22,7838,'linha nova','95768000'),(22,7839,'linha vitória','99513000'),(22,7840,'loreto','97430000'),(22,7841,'maçambará','97645000'),(22,7842,'machadinho','99880000'),(22,7843,'magistério','95597000'),(22,7844,'mampituba','95572000'),(22,7845,'manchinha','98912000'),(22,7846,'mangueiras','97596000'),(22,7847,'manoel viana','97640000'),(22,7848,'maquiné','95530000'),(22,7849,'maratá','95793000'),(22,7850,'marau','99150000'),(22,7851,'marcelino ramos','99800000'),(22,7852,'marcorama','95725000'),(22,7853,'mariana pimentel','92900000'),(22,7854,'mariano moro','99790000'),(22,7855,'mariante','95815000'),(22,7856,'mariápolis','95527000'),(22,7857,'marques de souza','95923000'),(22,7858,'mata','97410000'),(22,7859,'matarazzo','96370000'),(22,7860,'mato castelhano','99180000'),(22,7861,'mato grande','98890000'),(22,7862,'mato leitão','95835000'),(22,7863,'mato queimado','97935000'),(22,7864,'mauá','96335000'),(22,7865,'mauá','98730000'),(22,7866,'maximiliano de almeida','99890000'),(22,7867,'medianeira','98755000'),(22,7868,'minas do leão','96755000'),(22,7869,'miraguaí','98540000'),(22,7870,'miraguaia','95510000'),(22,7871,'mirim','96250000'),(22,7872,'mirim','99815000'),(22,7873,'montauri','99255000'),(22,7874,'monte alegre','95828000'),(22,7875,'monte alegre','97730000'),(22,7876,'monte alegre dos campos','95236000'),(22,7877,'monte alverne','96859000'),(22,7878,'monte belo do sul','95718000'),(22,7879,'monte bonito','96115000'),(22,7880,'montenegro','95780000'),(22,7881,'mormaço','99315000'),(22,7882,'morrinhos','96720000'),(22,7883,'morrinhos do sul','95577000'),(22,7884,'morro alto','95534000'),(22,7885,'morro azul','95583000'),(22,7886,'morro redondo','96150000'),(22,7887,'morro reuter','93990000'),(22,7888,'morungava','94360000'),(22,7889,'mostardas','96270000'),(22,7890,'muçum','95970000'),(22,7891,'muitos capões','95230000'),(22,7892,'muliterno','99990000'),(22,7893,'não-me-toque','99470000'),(22,7894,'nazaré','97745000'),(22,7895,'nicolau vergueiro','99175000'),(22,7896,'nonoai','99600000'),(22,7897,'nossa senhora aparecida','98260000'),(22,7898,'nossa senhora da conceição','95763000'),(22,7899,'nova alvorada','95985000'),(22,7900,'nova araçá','95350000'),(22,7901,'nova bassano','95340000'),(22,7902,'nova boa vista','99580000'),(22,7903,'nova bréscia','95950000'),(22,7904,'nova candelária','98919000'),(22,7905,'nova esperança do sul','97770000'),(22,7906,'nova hartz','93890000'),(22,7907,'nova milano','95182000'),(22,7908,'nova pádua','95275000'),(22,7909,'nova palma','97250000'),(22,7910,'nova petrópolis','95150000'),(22,7911,'nova prata','95320000'),(22,7912,'nova ramada','98758000'),(22,7913,'nova roma do sul','95260000'),(22,7914,'nova santa rita','92480000'),(22,7915,'nova sardenha','95183000'),(22,7916,'novo barreiro','98338000'),(22,7917,'novo cabrais','96545000'),(22,7918,'novo hamburgo','00000000'),(22,7919,'novo horizonte','99448000'),(22,7920,'novo machado','98955000'),(22,7921,'novo planalto','98688000'),(22,7922,'novo tiradentes','98370000'),(22,7923,'vila oliva','95135000'),(22,7924,'oralina','99449000'),(22,7925,'osório','95520000'),(22,7926,'osvaldo cruz','98403000'),(22,7927,'osvaldo kroeff','95485000'),(22,7928,'otávio rocha','95272000'),(22,7929,'pacheca','96185000'),(22,7930,'padilha','95610000'),(22,7931,'padre gonzales','98620000'),(22,7932,'paim filho','99850000'),(22,7933,'palmares do sul','95540000'),(22,7934,'palmas','96437000'),(22,7935,'palmeira das missões','98300000'),(22,7936,'palmitinho','98430000'),(22,7937,'pampeiro','97585000'),(22,7938,'panambi','98280000'),(22,7939,'pântano grande','96690000'),(22,7940,'paraí','95360000'),(22,7941,'paraíso do sul','96530000'),(22,7942,'pareci novo','95783000'),(22,7943,'parobé','95630000'),(22,7944,'passa sete','96908000'),(22,7945,'passinhos','95525000'),(22,7946,'passo burmann','98776000'),(22,7947,'passo da areia','94780000'),(22,7948,'passo da caveira','94335000'),(22,7949,'passo das pedras','96165000'),(22,7950,'passo do adão','96675000'),(22,7951,'passo do sabão','94730000'),(22,7952,'passo do sobrado','96685000'),(22,7953,'passo fundo','00000000'),(22,7954,'passo novo','97555000'),(22,7955,'passo raso','95850000'),(22,7956,'paulo bento','99718000'),(22,7957,'pavão','96168000'),(22,7958,'paverama','95865000'),(22,7959,'pedras altas','96487000'),(22,7960,'pedreiras','96340000'),(22,7961,'pedro garcia','98565000'),(22,7962,'pedro osório','96360000'),(22,7963,'pedro paiva','98593000'),(22,7964,'pejuçara','98270000'),(22,7965,'pelotas','00000000'),(22,7966,'picada café','95175000'),(22,7967,'pinhal','98345000'),(22,7968,'pinhal','95873000'),(22,7969,'pinhal','96898000'),(22,7970,'pinhal','99307000'),(22,7971,'pinhal alto','95160000'),(22,7972,'pinhal da serra','95390000'),(22,7973,'pinhal grande','98150000'),(22,7974,'pinhalzinho','99754000'),(22,7975,'pinhalzinho','99695000'),(22,7976,'pinheirinho do vale','98435000'),(22,7977,'pinheiro machado','96470000'),(22,7978,'pinheiro machado','97990000'),(22,7979,'pinheiro marcado','99520000'),(22,7980,'pinto bandeira','95712000'),(22,7981,'piraí','96443000'),(22,7982,'pirapó','97885000'),(22,7983,'piratini','96490000'),(22,7984,'pitanga','98926000'),(22,7985,'planalto','98470000'),(22,7986,'planalto','98645000'),(22,7987,'plano alto','97515000'),(22,7988,'poço das antas','95740000'),(22,7989,'polígono do erval','99353000'),(22,7990,'pólo petroquímico de triunfo','95853000'),(22,7991,'pontão','99190000'),(22,7992,'ponte preta','99735000'),(22,7993,'portão','93180000'),(22,7994,'porto alegre','00000000'),(22,7995,'porto batista','95845000'),(22,7996,'porto lucena','98980000'),(22,7997,'porto mauá','98947000'),(22,7998,'porto vera cruz','98985000'),(22,7999,'porto xavier','98995000'),(22,8000,'pouso novo','95945000'),(22,8001,'povo novo','96224000'),(22,8002,'povoado tozzo','99763000'),(22,8003,'pranchada','98928000'),(22,8004,'pratos','98936000'),(22,8005,'presidente lucena','93945000'),(22,8006,'progresso','95925000'),(22,8007,'progresso','96970000'),(22,8008,'progresso','98911000'),(22,8009,'progresso','99678000'),(22,8010,'protásio alves','95345000'),(22,8011,'pulador','99130000'),(22,8012,'putinga','95975000'),(22,8013,'quaraí','97560000'),(22,8014,'quaraim','98913000'),(22,8015,'quatro irmãos','99720000'),(22,8016,'quevedos','98140000'),(22,8017,'quilombo','96145000'),(22,8018,'quinta','96222000'),(22,8019,'quintão','95548000'),(22,8020,'quinze de novembro','98230000'),(22,8021,'quitéria','96730000'),(22,8022,'rancho velho','95543000'),(22,8023,'redentora','98550000'),(22,8024,'refugiado','95215000'),(22,8025,'relvado','95965000'),(22,8026,'restinga seca','97200000'),(22,8027,'restinga seca','98829000'),(22,8028,'rincão de são pedro','97815000'),(22,8029,'rincão del rei','96660000'),(22,8030,'rincão do cristóvão pereira','96275000'),(22,8031,'rincão do meio','97680000'),(22,8032,'rincão do segredo','99510000'),(22,8033,'rincão doce','99475000'),(22,8034,'rincão dos kroeff','95410000'),(22,8035,'rincão dos mendes','98832000'),(22,8036,'rincão vermelho','97975000'),(22,8037,'rio azul','99773000'),(22,8038,'rio branco','95322000'),(22,8039,'rio da ilha','95614000'),(22,8040,'rio dos índios','99610000'),(22,8041,'rio grande','00000000'),(22,8042,'rio pardinho','96856000'),(22,8043,'rio pardo','96640000'),(22,8044,'rio telha','99943000'),(22,8045,'rio tigre','99845000'),(22,8046,'rio toldo','99904000'),(22,8047,'riozinho','95695000'),(22,8048,'roca sales','95735000'),(22,8049,'rodeio bonito','98360000'),(22,8050,'rolador','97843000'),(22,8051,'rolante','95690000'),(22,8052,'rolantinho da figueira','95692000'),(22,8053,'ronda alta','99670000'),(22,8054,'rondinha','99590000'),(22,8055,'roque gonzales','97970000'),(22,8056,'rosário','98745000'),(22,8057,'rosário do sul','97590000'),(22,8058,'sagrada família','98330000'),(22,8059,'saicã','97455000'),(22,8060,'saldanha marinho','98250000'),(22,8061,'saltinho','99765000'),(22,8062,'saltinho','98365000'),(22,8063,'salto','98725000'),(22,8064,'salto do jacuí','99440000'),(22,8065,'salvador das missões','97940000'),(22,8066,'salvador do sul','95750000'),(22,8067,'sananduva','99840000'),(22,8068,'sant\'auta','96186000'),(22,8069,'santa bárbara','96585000'),(22,8070,'santa bárbara','99245000'),(22,8071,'santa bárbara do sul','98240000'),(22,8072,'santa catarina','97945000'),(22,8073,'santa cecília do sul','99952000'),(22,8074,'santa clara do ingaí','98234000'),(22,8075,'santa clara do sul','95915000'),(22,8076,'santa cristina','95640000'),(22,8077,'santa cruz','98476000'),(22,8078,'santa cruz da concórdia','95620000'),(22,8079,'santa cruz do sul','00000000'),(22,8080,'santa flora','97160000'),(22,8081,'santa inês','97820000'),(22,8082,'santa izabel do sul','96350000'),(22,8083,'santa lúcia','98722000'),(22,8084,'santa lúcia do piaí','95130000'),(22,8085,'santa luíza','95187000'),(22,8086,'santa luzia','95301000'),(22,8087,'santa maria','00000000'),(22,8088,'santa maria do herval','93995000'),(22,8089,'santa rita do sul','96187000'),(22,8090,'santa rosa','98900000'),(22,8091,'santa rosa','95544000'),(22,8092,'santa silvana','96110000'),(22,8093,'santa teresinha','98319000'),(22,8094,'santa tereza','95715000'),(22,8095,'santa tereza','98778000'),(22,8096,'santa vitória do palmar','96230000'),(22,8097,'santana','99550000'),(22,8098,'santana','99756000'),(22,8099,'santana','98728000'),(22,8100,'santana da boa vista','96590000'),(22,8101,'santana do livramento','00000000'),(22,8102,'santiago','97700000'),(22,8103,'santo amaro do sul','95823000'),(22,8104,'santo ângelo','00000000'),(22,8105,'santo antônio','97915000'),(22,8106,'santo antônio','98718000'),(22,8107,'santo antônio','98594000'),(22,8108,'santo antônio da patrulha','95500000'),(22,8109,'santo antônio das missões','97870000'),(22,8110,'santo antônio de castro','95188000'),(22,8111,'santo antônio do bom retiro','98220000'),(22,8112,'santo antônio do palma','99265000'),(22,8113,'santo antônio do planalto','99525000'),(22,8114,'santo augusto','98590000'),(22,8115,'santo cristo','98960000'),(22,8116,'santo expedito do sul','99895000'),(22,8117,'santo inácio','95298000'),(22,8118,'são bento','99518000'),(22,8119,'são bom jesus','98394000'),(22,8120,'são borja','97670000'),(22,8121,'são carlos','97598000'),(22,8122,'são domingos do sul','99270000'),(22,8123,'são francisco','97913000'),(22,8124,'são francisco de assis','97610000'),(22,8125,'são francisco de paula','95400000'),(22,8126,'são gabriel','97300000'),(22,8127,'são jerônimo','96700000'),(22,8128,'são joão','98555000'),(22,8129,'são joão batista','98853000'),(22,8130,'são joão bosco','99975000'),(22,8131,'são joão da urtiga','99855000'),(22,8132,'são joão do polesine','97230000'),(22,8133,'são jorge','95365000'),(22,8134,'são josé','98477000'),(22,8135,'são josé','97875000'),(22,8136,'são josé da glória','99355000'),(22,8137,'são josé das missões','98325000'),(22,8138,'são josé de castro','95722000'),(22,8139,'são josé do centro','99480000'),(22,8140,'são josé do herval','99380000'),(22,8141,'são josé do hortêncio','95755000'),(22,8142,'são josé do inhacorá','98958000'),(22,8143,'são josé do norte','96225000'),(22,8144,'são josé do ouro','99870000'),(22,8145,'são josé dos ausentes','95280000'),(22,8146,'são leopoldo','00000000'),(22,8147,'são lourenço das missões','97840000'),(22,8148,'são lourenço do sul','96170000'),(22,8149,'são luís rei','99865000'),(22,8150,'são luiz','98472000'),(22,8151,'são luiz gonzaga','97800000'),(22,8152,'são manuel','95220000'),(22,8153,'são marcos','95190000'),(22,8154,'são marcos','97535000'),(22,8155,'são martinho','98690000'),(22,8156,'são martinho da serra','97190000'),(22,8157,'são miguel','99540000'),(22,8158,'são miguel das missões','98865000'),(22,8159,'são nicolau','97880000'),(22,8160,'são paulo','95244000'),(22,8161,'são paulo das missões','97980000'),(22,8162,'são pedro','95714000'),(22,8163,'são pedro das missões','98323000'),(22,8164,'são pedro da serra','95758000'),(22,8165,'são pedro do butiá','97920000'),(22,8166,'são pedro do iraxim','99875000'),(22,8167,'são pedro do sul','97400000'),(22,8168,'são roque','99125000'),(22,8169,'são sebastião','95385000'),(22,8170,'são sebastião','95307000'),(22,8171,'são sebastião do caí','95760000'),(22,8172,'são sepé','97340000'),(22,8173,'são simão','96285000'),(22,8174,'são valentim','99640000'),(22,8175,'são valentim','98917500'),(22,8176,'são valentim do sul','99240000'),(22,8177,'são valério do sul','98595000'),(22,8178,'são vendelino','95795000'),(22,8179,'são vicente do sul','97420000'),(22,8180,'sapiranga','93800000'),(22,8181,'sapucaia do sul','00000000'),(22,8182,'sarandi','99560000'),(22,8183,'scharlau','00000000'),(22,8184,'seberi','98380000'),(22,8185,'vila seca','95140000'),(22,8186,'sede aurora','98232000'),(22,8187,'sede nova','98675000'),(22,8188,'segredo','96910000'),(22,8189,'segredo','95242000'),(22,8190,'seival','96441000'),(22,8191,'selbach','99450000'),(22,8192,'senador salgado filho','98895000'),(22,8193,'sentinela do sul','96765000'),(22,8194,'serafim schmidt','96894000'),(22,8195,'serafina corrêa','99250000'),(22,8196,'sério','95918000'),(22,8197,'serra dos gregórios','95388000'),(22,8198,'serrinha','97810000'),(22,8199,'sertão','99170000'),(22,8200,'sertão santana','92850000'),(22,8201,'sertãozinho','98485000'),(22,8202,'sete de setembro','97960000'),(22,8203,'sete de setembro','99758000'),(22,8204,'sete de setembro','98903000'),(22,8205,'sete lagoas','99768000'),(22,8206,'severiano de almeida','99810000'),(22,8207,'silva jardim','99253000'),(22,8208,'silveira','95285000'),(22,8209,'silveira martins','97195000'),(22,8210,'sinimbu','96890000'),(22,8211,'sírio','98962000'),(22,8212,'sítio gabriel','98543000'),(22,8213,'sobradinho','96900000'),(22,8214,'soledade','99300000'),(22,8215,'souza ramos','99908000'),(22,8216,'suspiro','97320000'),(22,8217,'tabaí','95863000'),(22,8218,'tabajara','99445000'),(22,8219,'taim','96221000'),(22,8220,'tainhas','95405000'),(22,8221,'tamanduá','96915000'),(22,8222,'tanque','99876000'),(22,8223,'tapejara','99950000'),(22,8224,'tapera','99490000'),(22,8225,'tapera','96297000'),(22,8226,'tapes','96760000'),(22,8227,'taquara','95600000'),(22,8228,'taquari','95860000'),(22,8229,'taquarichim','97765000'),(22,8230,'taquaruçu do sul','98410000'),(22,8231,'tavares','96290000'),(22,8232,'tenente portela','98500000'),(22,8233,'terra de areia','95535000'),(22,8234,'tesouras','99535000'),(22,8235,'teutônia','95890000'),(22,8236,'tiaraju','97310000'),(22,8237,'timbaúva','97860000'),(22,8238,'tiradentes do sul','98680000'),(22,8239,'toropi','97418000'),(22,8240,'toroquá','97630000'),(22,8241,'torquato severo','96455000'),(22,8242,'torres','95560000'),(22,8243,'torrinhas','96485000'),(22,8244,'touro passo','97595000'),(22,8245,'tramandaí','95590000'),(22,8246,'travesseiro','95948000'),(22,8247,'trentin','98355000'),(22,8248,'três arroios','99725000'),(22,8249,'três barras','99778000'),(22,8250,'três cachoeiras','95580000'),(22,8251,'três coroas','95660000'),(22,8252,'três de maio','98910000'),(22,8253,'três forquilhas','95575000'),(22,8254,'três palmeiras','99675000'),(22,8255,'três passos','98600000'),(22,8256,'três vendas','96511000'),(22,8257,'trindade do sul','99615000'),(22,8258,'triunfo','95840000'),(22,8259,'tronqueiras','98545000'),(22,8260,'tucunduva','98930000'),(22,8261,'tuiuti','95710000'),(22,8262,'tunas','99330000'),(22,8263,'túnel verde','95598000'),(22,8264,'tupanci do sul','99878000'),(22,8265,'tupanciretã','98170000'),(22,8266,'tupancy ou vila block','97350000'),(22,8267,'tupandi','95775000'),(22,8268,'tupantuba','97743000'),(22,8269,'tuparendi','98940000'),(22,8270,'tupi silveira','96465000'),(22,8271,'tupinambá','95304000'),(22,8272,'turuçu','96148000'),(22,8273,'turvinho','98588000'),(22,8274,'ubiretama','98898000'),(22,8275,'umbu','97460000'),(22,8276,'união da serra','99215000'),(22,8277,'unistalda','97755000'),(22,8278,'uruguaiana','00000000'),(22,8279,'vacacai','97305000'),(22,8280,'vacaria','95200000'),(22,8281,'valdástico','95964000'),(22,8282,'vale do rio cai','95170000'),(22,8283,'vale do sol','96878000'),(22,8284,'vale real','95778000'),(22,8285,'vale veneto','97235000'),(22,8286,'vale verde','95833000'),(22,8287,'vanini','99290000'),(22,8288,'venâncio aires','95800000'),(22,8289,'vera cruz','96880000'),(22,8290,'veranópolis','95330000'),(22,8291,'vertentes','97520000'),(22,8292,'vespasiano correa','95972000'),(22,8293,'viadutos','99820000'),(22,8294,'viamão','00000000'),(22,8295,'vicente dutra','98450000'),(22,8296,'victor graeff','99350000'),(22,8297,'vila bender','98660000'),(22,8298,'vila cruz','97260000'),(22,8299,'vila flores','95334000'),(22,8300,'vila langaro','99955000'),(22,8301,'vila laranjeira','98968000'),(22,8302,'vila maria','99155000'),(22,8303,'vila nova do sul','97385000'),(22,8304,'vila rica','99545000'),(22,8305,'vila seca','98847000'),(22,8306,'vila turvo','98573000'),(22,8307,'vista alegre','98415000'),(22,8308,'vista alegre','99465000'),(22,8309,'vista alegre do prata','95325000'),(22,8310,'vista gaúcha','98535000'),(22,8311,'vitória','99945000'),(22,8312,'vitória das missões','98850000'),(22,8313,'volta alegre','99410000'),(22,8314,'volta fechada','99785000'),(22,8315,'volta grande','98495000'),(22,8316,'xadrez','99522000'),(22,8317,'xangri-lá','95588000'),(22,8318,'novo xingu','99687000'),(22,10101,'westfália','95893000'),(22,10102,'santa margarida do sul','97335000'),(22,10103,'tio hugo','99345000'),(22,10652,'passo do verde','97150000'),(22,10839,'mato perso','95274000'),(23,7310,'abunã','78929000'),(23,7311,'alto alegre dos parecis','78994800'),(23,7312,'alta floresta do oeste','78994000'),(23,7313,'alto paraíso','78956000'),(23,7314,'alvorada d\'oeste','78969000'),(23,7315,'ariquemes','00000000'),(23,7316,'buritis','78967800'),(23,7317,'cabixi','78999000'),(23,7318,'cacaulândia','78944000'),(23,7319,'cacoal','00000000'),(23,7320,'calama','78925000'),(23,7321,'campo novo de rondônia','78967000'),(23,7322,'candeias do jamari','78938000'),(23,7323,'castanheiras','78992000'),(23,7324,'cerejeiras','78997000'),(23,7325,'chupinguaia','78995800'),(23,7326,'colorado do oeste','78996000'),(23,7327,'corumbiara','78966000'),(23,7328,'costa marques','78971000'),(23,7329,'cujubim','78945800'),(23,7330,'espigão d\'oeste','78983000'),(23,7331,'governador jorge teixeira','78946000'),(23,7332,'guajará-mirim','78957000'),(23,7333,'jaci paraná','78927000'),(23,7334,'itapuã do oeste','78937000'),(23,7335,'jaru','78940000'),(23,7336,'ji-paraná','00000000'),(23,7337,'machadinho d\'oeste','78948000'),(23,7338,'marco rondon','78985000'),(23,7339,'ministro andreazza','78981000'),(23,7340,'mirante da serra','78949000'),(23,7341,'monte negro','78965000'),(23,7342,'nova brasilândia d\'oeste','78974000'),(23,7343,'nova mamoré','78939000'),(23,7344,'nova união','78953000'),(23,7345,'nova vida','78935000'),(23,7346,'novo horizonte do oeste','78991000'),(23,7347,'ouro preto do oeste','78950000'),(23,7348,'parecis','78989000'),(23,7349,'pedras negras','78972500'),(23,7350,'pimenta bueno','78984000'),(23,7351,'pimenteiras do oeste','78998000'),(23,7352,'porto velho','00000000'),(23,7353,'presidente médici','78968000'),(23,7354,'primavera de rondônia','78988000'),(23,7355,'príncipe da beira','78972000'),(23,7356,'rio crespo','78945000'),(23,7357,'riozinho','78980000'),(23,7358,'rolim de moura','78987000'),(23,7359,'santa luzia d\'oeste','78993000'),(23,7360,'são felipe d\'oeste','78986000'),(23,7361,'são francisco do guaporé','78973000'),(23,7362,'são miguel do guaporé','78970000'),(23,7363,'seringueiras','78990000'),(23,7364,'tabajara','78936000'),(23,7365,'teixeirópolis','78954000'),(23,7366,'theobroma','78947000'),(23,7367,'urupá','78955000'),(23,7368,'vale do anari','78948800'),(23,7369,'vale do paraíso','78959000'),(23,7370,'vila extrema','78928000'),(23,7371,'vilhena','78995000'),(23,7372,'vista alegre do abunã','78926000'),(24,9791,'abreulândia','77693000'),(24,9792,'aguiarnópolis','77908000'),(24,9793,'aliança do tocantins','77455000'),(24,9794,'almas','77310000'),(24,9795,'alvorada','77480000'),(24,9796,'anajanópolis','77712000'),(24,9797,'ananás','77890000'),(24,9798,'angico','77905000'),(24,9799,'aparecida do rio negro','77620000'),(24,9800,'apinajé','77393000'),(24,9801,'aragaçuí','77683000'),(24,9802,'aragominas','77845000'),(24,9803,'araguacema','77690000'),(24,9804,'araguaçu','77475000'),(24,9805,'araguaína','00000000'),(24,9806,'araguanã','77855000'),(24,9807,'araguatins','77950000'),(24,9808,'arapoema','77780000'),(24,9809,'arraias','77330000'),(24,9810,'augustinópolis','77960000'),(24,9811,'aurora do tocantins','77325000'),(24,9812,'axixá do tocantins','77930000'),(24,9813,'babaçulândia','77870000'),(24,9814,'bandeirantes do tocantins','77783000'),(24,9815,'barra do grota','77835600'),(24,9816,'barra do ouro','77765000'),(24,9817,'barrolândia','77665000'),(24,9818,'bernardo sayão','77755000'),(24,9819,'bom jesus do tocantins','77714000'),(24,9820,'brasilândia','77837400'),(24,9821,'brasilândia do tocantins','77735000'),(24,9822,'brejinho de nazaré','77560000'),(24,9823,'buriti do tocantins','77995000'),(24,9824,'cachoeirinha','77915000'),(24,9825,'campos lindos','77777000'),(24,9826,'cana brava','77333000'),(24,9827,'cariri do tocantins','77453000'),(24,9828,'carmolândia','77840000'),(24,9829,'carrasco bonito','77985000'),(24,9830,'cartucho','77772000'),(24,9831,'caseara','77680000'),(24,9832,'centenário','77723000'),(24,9833,'chapada de areia','77575000'),(24,9834,'chapada da natividade','77378000'),(24,9835,'cocalândia','77836000'),(24,9836,'cocalinho','77839000'),(24,9837,'colinas do tocantins','77760000'),(24,9838,'colméia','77725000'),(24,9839,'combinado','77350000'),(24,9840,'conceição do tocantins','77305000'),(24,9841,'correinha','77836200'),(24,9842,'couto de magalhães','77750000'),(24,9843,'craolândia','77774000'),(24,9844,'cristalândia','77490000'),(24,9845,'crixás','77449000'),(24,9846,'crixás do tocantins','77463000'),(24,9847,'darcinópolis','77910000'),(24,9848,'dianópolis','77300000'),(24,9849,'divinópolis do tocantins','77670000'),(24,9850,'dois irmãos do tocantins','77685000'),(24,9851,'duerê','77485000'),(24,9852,'escondido','77836600'),(24,9853,'esperantina','77993000'),(24,9854,'fátima','77555000'),(24,9855,'figueirópolis','77465000'),(24,9856,'filadélfia','77795000'),(24,9857,'formoso do araguaia','77470000'),(24,9858,'fortaleza do tabocão','77708000'),(24,9859,'goianorte','77695000'),(24,9860,'goiatins','77770000'),(24,9861,'guaraí','77700000'),(24,9862,'gurupi','00000000'),(24,9863,'ilha barreira branca','77837000'),(24,9864,'ipueiras','77553000'),(24,9865,'itacajá','77720000'),(24,9866,'itaguatins','77920000'),(24,9867,'itapiratins','77718000'),(24,9868,'itaporã do tocantins','77740000'),(24,9869,'jaú do tocantins','77450000'),(24,9870,'juarina','77753000'),(24,9871,'jussara','77837100'),(24,9872,'lagoa da confusão','77493000'),(24,9873,'lagoa do tocantins','77613000'),(24,9874,'lajeado','77645000'),(24,9875,'lavandeira','77328000'),(24,9876,'lizarda','77630000'),(24,9877,'luzinópolis','77903000'),(24,9878,'marianópolis do tocantins','77675000'),(24,9879,'mateiros','77593000'),(24,9880,'maurilândia do tocantins','77918000'),(24,9881,'miracema do tocantins','77650000'),(24,9882,'mirandópolis','77702000'),(24,9883,'miranorte','77660000'),(24,9884,'monte do carmo','77585000'),(24,9885,'monte lindo','77776000'),(24,9886,'monte santo do tocantins','77673000'),(24,9887,'palmeiras do tocantins','77913000'),(24,9888,'muricilândia','77850000'),(24,9889,'natal','77953000'),(24,9890,'natividade','77370000'),(24,9891,'nazaré','77895000'),(24,9892,'nova olinda','77790000'),(24,9893,'nova rosalândia','77495000'),(24,9894,'novo acordo','77610000'),(24,9895,'novo alegre','77353000'),(24,9896,'novo horizonte','77839200'),(24,9897,'novo jardim','77318000'),(24,9898,'oliveira de fátima','77558000'),(24,9899,'palmas','00000000'),(24,9900,'palmeirante','77798000'),(24,9901,'palmeirópolis','77365000'),(24,9902,'paraíso do tocantins','77600000'),(24,9903,'paranã','77360000'),(24,9904,'pau d\'arco','77785000'),(24,9905,'pé da serra','77839400'),(24,9906,'pedro afonso','77710000'),(24,9907,'pedro ludovico','77835400'),(24,9908,'peixe','77460000'),(24,9909,'peixe','77835200'),(24,9910,'pequizeiro','77730000'),(24,9911,'pilões','77836400'),(24,9912,'pindorama do tocantins','77380000'),(24,9913,'piraquê','77888000'),(24,9914,'pium','77570000'),(24,9915,'ponte alta do bom jesus','77315000'),(24,9916,'ponte alta do tocantins','77590000'),(24,9917,'pontes','77838200'),(24,9918,'porãozinho','77837200'),(24,9919,'porto alegre do tocantins','77395000'),(24,9920,'porto lemos','77837600'),(24,9921,'porto nacional','77500000'),(24,9922,'praia norte','77970000'),(24,9923,'presidente kennedy','77745000'),(24,9924,'príncipe','77373000'),(24,9925,'pugmil','77603000'),(24,9926,'recursolândia','77733000'),(24,9927,'riachinho','77893000'),(24,9928,'rio da conceição','77303000'),(24,9929,'rio dos bois','77655000'),(24,9930,'rio sono','77635000'),(24,9931,'sampaio','77980000'),(24,9932,'sandolândia','77478000'),(24,9933,'santa fé do araguaia','77848000'),(24,9934,'santa maria do tocantins','77716000'),(24,9935,'santa rita do tocantins','77565000'),(24,9936,'santa rosa do tocantins','77375000'),(24,9937,'santa tereza do tocantins','77615000'),(24,9938,'santa terezinha do tocantins','77885000'),(24,9939,'são bento do tocantins','77958000'),(24,9940,'são félix do tocantins','77605000'),(24,9941,'são miguel do tocantins','77925000'),(24,9942,'são salvador do tocantins','77368000'),(24,9943,'são sebastião do tocantins','77990000'),(24,9944,'são valério da natividade','77390000'),(24,9945,'silvanópolis','77580000'),(24,9946,'sítio novo do tocantins','77940000'),(24,9947,'sucupira','77458000'),(24,9948,'taguatinga','77320000'),(24,9949,'taipas do tocantins','77308000'),(24,9950,'talismã','77483000'),(24,9951,'tamboril','77898000'),(24,9952,'taquaralto','77270000'),(24,9953,'taquarussu do tocantins','77260000'),(24,9954,'tocantínia','77640000'),(24,9955,'tocantinópolis','77900000'),(24,9956,'tupirama','77704000'),(24,9957,'tupiratã','77748000'),(24,9958,'tupiratins','77743000'),(24,9959,'vênus','77838600'),(24,9960,'wanderlândia','77860000'),(24,9961,'xambioá','77880000'),(25,8319,'abdon batista','89636000'),(25,8320,'abelardo luz','89830000'),(25,8321,'agrolândia','88420000'),(25,8322,'agronômica','89188000'),(25,8323,'água doce','89654000'),(25,8324,'águas brancas','88655000'),(25,8325,'águas claras','89320000'),(25,8326,'águas de chapecó','89883000'),(25,8327,'águas frias','89843000'),(25,8328,'águas mornas','88150000'),(25,8329,'aguti','88280000'),(25,8330,'aiurê','88892000'),(25,8331,'alfredo wagner','88450000'),(25,8332,'alto alegre','89666000'),(25,8333,'alto bela vista','89730000'),(25,8334,'alto da serra','89816300'),(25,8335,'anchieta','89970000'),(25,8336,'angelina','88460000'),(25,8337,'anita garibaldi','88590000'),(25,8338,'anitápolis','88475000'),(25,8339,'anta gorda','89564000'),(25,8340,'antônio carlos','88180000'),(25,8341,'apiúna','89135000'),(25,8342,'arabutã','89740000'),(25,8343,'araquari','89245000'),(25,8344,'araranguá','88900000'),(25,8345,'armazém','88740000'),(25,8346,'arnópolis','88452000'),(25,8347,'arroio trinta','89590000'),(25,8348,'arvoredo','89778000'),(25,8349,'ascurra','89138000'),(25,8350,'atalanta','88410000'),(25,8351,'aterrado torto','89173000'),(25,8352,'aurora','89186000'),(25,8353,'azambuja','88725000'),(25,8354,'baia alta','89685000'),(25,8355,'balneário arroio do silva','88914000'),(25,8356,'balneário barra do sul','89247000'),(25,8357,'balneário camboriú','00000000'),(25,8358,'balneário gaivota','88955000'),(25,8359,'balneário morro dos conventos','88911000'),(25,8360,'bandeirante','89905000'),(25,8361,'barra bonita','89909000'),(25,8362,'barra clara','88465000'),(25,8363,'barra da lagoa','00000000'),(25,8364,'barra da prata','89149000'),(25,8365,'barra fria','89615000'),(25,8366,'barra grande','89696000'),(25,8367,'barra velha','88390000'),(25,8368,'barreiros','00000000'),(25,8369,'barro branco','88882000'),(25,8370,'bateias de baixo','89294600'),(25,8371,'bela vista','89628000'),(25,8372,'bela vista do sul','89310000'),(25,8373,'bela vista do toldo','89478000'),(25,8374,'belmonte','89925000'),(25,8375,'benedito novo','89124000'),(25,8376,'biguaçu','88160000'),(25,8377,'blumenau','00000000'),(25,8378,'bocaína do sul','88538000'),(25,8379,'boiteuxburgo','88265000'),(25,8380,'bom jardim da serra','88640000'),(25,8381,'bom jesus','89824000'),(25,8382,'bom jesus do oeste','89873000'),(25,8383,'bom retiro','88680000'),(25,8384,'bom sucesso','89566000'),(25,8385,'bombinhas','88215000'),(25,8386,'botuverá','88370000'),(25,8387,'braço do norte','88750000'),(25,8388,'braço do trombudo','89178000'),(25,8389,'brunópolis','89634000'),(25,8390,'brusque','00000000'),(25,8391,'caçador','89500000'),(25,8392,'cachoeira de fátima','88993000'),(25,8393,'cachoeira do bom jesus','00000000'),(25,8394,'caibi','89888000'),(25,8395,'calmon','89430000'),(25,8396,'camboriú','88340000'),(25,8397,'cambuinzal','89822000'),(25,8398,'campeche','00000000'),(25,8399,'campinas','00000000'),(25,8400,'campo alegre','89294000'),(25,8401,'campo belo do sul','88580000'),(25,8402,'campo erê','89980000'),(25,8403,'campos novos','89620000'),(25,8404,'canasvieiras','00000000'),(25,8405,'canelinha','88230000'),(25,8406,'canoas','88688000'),(25,8407,'canoinhas','89460000'),(25,8408,'capão alto','88548000'),(25,8409,'capinzal','89665000'),(25,8410,'capivari de baixo','88745000'),(25,8411,'caraíba','89772000'),(25,8412,'catanduvas','89670000'),(25,8413,'catuíra','88453000'),(25,8414,'caxambu do sul','89880000'),(25,8415,'cedro alto','89122000'),(25,8416,'celso ramos','88598000'),(25,8417,'cerro negro','88585000'),(25,8418,'chapadão do lageado','88407000'),(25,8419,'chapecó','00000000'),(25,8420,'claraíba','88275000'),(25,8421,'cocal do sul','88845000'),(25,8422,'colônia santa tereza','00000000'),(25,8424,'concórdia','89700000'),(25,8425,'cordilheira alta','89819000'),(25,8426,'coronel freitas','89840000'),(25,8427,'coronel martins','89837000'),(25,8428,'correia pinto','88535000'),(25,8429,'corupá','89278000'),(25,8430,'criciúma','00000000'),(25,8431,'cunha porã','89890000'),(25,8432,'cunhataí','89886000'),(25,8433,'curitibanos','89520000'),(25,8434,'dal pai','89626000'),(25,8435,'dalbérgia','89143000'),(25,8436,'descanso','89910000'),(25,8437,'dionísio cerqueira','89950000'),(25,8438,'dona emma','89155000'),(25,8439,'doutor pedrinho','89126000'),(25,8440,'engenho velho','89720000'),(25,8441,'enseada de brito','88139000'),(25,8442,'entre rios','89862000'),(25,8443,'ermo','88935000'),(25,8444,'erval velho','89613000'),(25,8445,'espinilho','89622000'),(25,8446,'estação cocal','88835000'),(25,8447,'faxinal dos guedes','89694000'),(25,8448,'fazenda zandavalli','89817500'),(25,8449,'felipe schmidt','89473000'),(25,8450,'figueira','89816400'),(25,8451,'flor do sertão','89878000'),(25,8452,'florianópolis','00000000'),(25,8453,'formosa do sul','89859000'),(25,8454,'forquilhinha','88850000'),(25,8455,'fragosos','89294800'),(25,8456,'fraiburgo','89580000'),(25,8457,'frederico wastner','89994000'),(25,8458,'frei rogério','89530000'),(25,8459,'galvão','89838000'),(25,8460,'garcia','88463000'),(25,8461,'garopaba','88495000'),(25,8462,'garuva','89248000'),(25,8463,'gaspar','89110000'),(25,8464,'goio-en','89816200'),(25,8465,'governador celso ramos','88190000'),(25,8466,'grão pará','88890000'),(25,8467,'grápia','89907000'),(25,8468,'gravatal','88735000'),(25,8469,'guabiruba','88360000'),(25,8470,'guaporanga','88165000'),(25,8471,'guaraciaba','89920000'),(25,8472,'guaramirim','89270000'),(25,8473,'guarujá do sul','89940000'),(25,8474,'guatá','88884000'),(25,8475,'guatambú','89817000'),(25,8476,'hercílio luz','88913000'),(25,8477,'herciliópolis','89657000'),(25,8478,'herval d\'oeste','89610000'),(25,8479,'ibiam','89652000'),(25,8480,'ibicaré','89640000'),(25,8481,'ibicuí','89631000'),(25,8482,'ibirama','89140000'),(25,8483,'içara','88820000'),(25,8484,'ilhota','88320000'),(25,8485,'imaruí','88770000'),(25,8486,'imbituba','88780000'),(25,8487,'imbuia','88440000'),(25,8488,'indaial','89130000'),(25,8489,'índios','88533000'),(25,8490,'ingleses do rio vermelho','00000000'),(25,8491,'invernada','88895000'),(25,8492,'iomerê','89558000'),(25,8493,'ipira','89669000'),(25,8494,'ipoméia','89555000'),(25,8495,'iporã do oeste','89899000'),(25,8496,'ipuaçu','89832000'),(25,8497,'ipumirim','89790000'),(25,8498,'iraceminha','89891000'),(25,8499,'irakitan','89646000'),(25,8500,'irani','89680000'),(25,8501,'iraputã','89344000'),(25,8502,'irati','89856000'),(25,8503,'irineópolis','89440000'),(25,8504,'itá','89760000'),(25,8505,'itaió','89348000'),(25,8506,'itaiópolis','89340000'),(25,8507,'itajaí','00000000'),(25,8508,'itajubá','89913000'),(25,8509,'itapema','88220000'),(25,8510,'itapiranga','89896000'),(25,8511,'itapoá','89249000'),(25,8512,'itapocu','89246000'),(25,8513,'itoupava','00000000'),(25,8514,'ituporanga','88400000'),(25,8515,'jaborá','89677000'),(25,8516,'jacinto machado','88950000'),(25,8517,'jaguaruna','88715000'),(25,8518,'jaraguá do sul','00000000'),(25,8519,'jardinópolis','89848000'),(25,8520,'joaçaba','89600000'),(25,8521,'joinville','00000000'),(25,8522,'josé boiteux','89145000'),(25,8523,'jupiá','89839000'),(25,8524,'lacerdópolis','89660000'),(25,8525,'lages','00000000'),(25,8526,'lagoa','00000000'),(25,8527,'lagoa da estiva','88595000'),(25,8528,'laguna','88790000'),(25,8529,'lajeado grande','89828000'),(25,8530,'laurentino','89170000'),(25,8531,'lauro müller','88880000'),(25,8532,'leão','89632000'),(25,8533,'lebon régis','89515000'),(25,8534,'leoberto leal','88445000'),(25,8535,'lindóia do sul','89735000'),(25,8536,'linha das palmeiras','89785000'),(25,8537,'lontras','89182000'),(25,8538,'lourdes','89568000'),(25,8539,'luiz alves','89115000'),(25,8540,'luzerna','89609000'),(25,8541,'machados','88378000'),(25,8542,'macieira','89518000'),(25,8543,'mafra','89300000'),(25,8544,'major gercino','88260000'),(25,8545,'major vieira','89480000'),(25,8546,'maracajá','88915000'),(25,8547,'marari','89648000'),(25,8548,'maratá','89836000'),(25,8549,'maravilha','89874000'),(25,8550,'marcílio dias','89465000'),(25,8551,'marechal bormann','89816100'),(25,8552,'marema','89860000'),(25,8553,'mariflor','89933000'),(25,8554,'marombas','89635000'),(25,8555,'marombas bossardi','89528000'),(25,8556,'massaranduba','89108000'),(25,8557,'matos costa','89420000'),(25,8558,'meleiro','88920000'),(25,8559,'mirador','89153000'),(25,8560,'mirim','88787000'),(25,8561,'mirim doce','89194000'),(25,8562,'modelo','89872000'),(25,8563,'mondaí','89893000'),(25,8564,'monte alegre','88348000'),(25,8565,'monte carlo','89618000'),(25,8566,'monte castelo','89380000'),(25,8567,'morro chato','88934000'),(25,8568,'morro da fumaça','88830000'),(25,8570,'morro grande','88925000'),(25,8571,'navegantes','88375000'),(25,8572,'nossa senhora de caravaggio','88868000'),(25,8573,'nova cultura','89375000'),(25,8574,'nova erechim','89865000'),(25,8575,'nova guarita','88964000'),(25,8576,'nova itaberaba','89818000'),(25,8577,'nova petrópolis','89607000'),(25,8578,'nova teutônia','89775000'),(25,8579,'nova trento','88270000'),(25,8580,'nova veneza','88865000'),(25,8581,'novo horizonte','89998000'),(25,8582,'orleans','88870000'),(25,8583,'otacílio costa','88540000'),(25,8584,'ouro','89663000'),(25,8585,'ouro verde','89834000'),(25,8586,'ouro verde','89923000'),(25,8587,'paial','89765000'),(25,8588,'painel','88543000'),(25,8589,'palhoça','00000000'),(25,8590,'palma sola','89985000'),(25,8591,'palmeira','88545000'),(25,8592,'palmitos','89887000'),(25,8593,'pântano do sul','00000000'),(25,8594,'papanduva','89370000'),(25,8595,'paraíso','89906000'),(25,8596,'passo de torres','88980000'),(25,8597,'passo manso','89192000'),(25,8598,'passos maia','89687000'),(25,8599,'paula pereira','89470000'),(25,8600,'paulo lopes','88490000'),(25,8601,'pedras grandes','88720000'),(25,8602,'penha','88385000'),(25,8603,'pericó','88615000'),(25,8604,'peritiba','89750000'),(25,8605,'pescaria brava','88798000'),(25,8606,'petrolândia','88430000'),(25,8607,'balneário piçarras','88380000'),(25,8608,'pindotiba','88873000'),(25,8609,'pinhalzinho','89870000'),(25,8610,'pinheiral','88268000'),(25,8611,'pinheiro preto','89570000'),(25,8612,'pinheiros','89476000'),(25,8613,'pirabeiraba','00000000'),(25,8614,'piratuba','89667000'),(25,8615,'planalto','89728000'),(25,8616,'planalto alegre','89882000'),(25,8617,'poço preto','89450000'),(25,8618,'pomerode','89107000'),(25,8619,'ponte alta','88550000'),(25,8620,'ponte alta do norte','89535000'),(25,8621,'ponte serrada','89683000'),(25,8622,'porto belo','88210000'),(25,8623,'porto união','89400000'),(25,8624,'pouso redondo','89172000'),(25,8625,'praia grande','88990000'),(25,8626,'prata','89904000'),(25,8627,'presidente castelo branco','89745000'),(25,8628,'presidente getúlio','89150000'),(25,8629,'presidente juscelino','89992000'),(25,8630,'presidente kennedy','89725000'),(25,8631,'presidente nereu','89184000'),(25,8632,'princesa','89935000'),(25,8633,'quarta linha','00000000'),(25,8634,'quilombo','89850000'),(25,8635,'quilômetro doze','00000000'),(25,8636,'rancho queimado','88470000'),(25,8637,'ratones','00000000'),(25,8638,'residência fuck','89384000'),(25,8639,'ribeirão da ilha','00000000'),(25,8640,'ribeirão pequeno','88794000'),(25,8641,'rio antinha','88435000'),(25,8642,'rio bonito','88405000'),(25,8643,'rio d\'una','88775000'),(25,8644,'rio da anta','89346000'),(25,8645,'rio da luz','00000000'),(25,8646,'rio das antas','89550000'),(25,8647,'rio das furnas','88872000'),(25,8648,'rio do campo','89198000'),(25,8649,'rio do oeste','89180000'),(25,8650,'rio do sul','89160000'),(25,8651,'rio dos bugres','88403000'),(25,8652,'rio dos cedros','89121000'),(25,8653,'rio fortuna','88760000'),(25,8654,'rio maina','00000000'),(25,8655,'rio negrinho','89295000'),(25,8656,'rio preto do sul','89315000'),(25,8657,'rio rufino','88658000'),(25,8658,'riqueza','89895000'),(25,8659,'rodeio','89136000'),(25,8660,'romelândia','89908000'),(25,8661,'sai','89243000'),(25,8662,'salete','89196000'),(25,8663,'saltinho','89981000'),(25,8664,'salto veloso','89595000'),(25,8665,'sanga da toca','88912000'),(25,8666,'sangão','88717000'),(25,8667,'santa cecília','89540000'),(25,8668,'santa cruz do timbó','89410000'),(25,8669,'santa helena','89915000'),(25,8670,'santa helena','89608000'),(25,8671,'santa izabel','88620000'),(25,8672,'santa lúcia','89664000'),(25,8673,'santa lúcia','89887500'),(25,8674,'santa maria','89125000'),(25,8675,'santa rosa de lima','88763000'),(25,8676,'santa rosa do sul','88965000'),(25,8677,'santa terezinha','89199000'),(25,8678,'santa terezinha do progresso','89983000'),(25,8679,'santa terezinha do salto','88531000'),(25,8680,'santiago do sul','89854000'),(25,8681,'santo amaro da imperatriz','88140000'),(25,8682,'santo antônio de lisboa','00000000'),(25,8683,'são bento baixo','88867000'),(25,8684,'são bento do sul','89290000'),(25,8685,'são bernardino','89982000'),(25,8686,'são bonifácio','88485000'),(25,8687,'são carlos','89885000'),(25,8688,'são cristóvão','89495000'),(25,8689,'são cristóvão do sul','89533000'),(25,8690,'são defende','00000000'),(25,8691,'são domingos','89835000'),(25,8692,'são francisco do sul','89240000'),(25,8693,'são gabriel','88712000'),(25,8694,'são joão batista','88240000'),(25,8695,'são joão do itaperiú','88395000'),(25,8696,'são joão do oeste','89897000'),(25,8697,'são joão do rio vermelho','00000000'),(25,8698,'são joão do sul','88970000'),(25,8699,'são joaquim','88600000'),(25,8700,'são josé','00000000'),(25,8701,'são josé do cedro','89930000'),(25,8702,'são josé do cerrito','88570000'),(25,8703,'são josé do laranjal','89892000'),(25,8704,'são leonardo','88455000'),(25,8705,'são lourenço do oeste','89990000'),(25,8706,'são ludgero','88730000'),(25,8707,'são martinho','88765000'),(25,8708,'são miguel do oeste','89900000'),(25,8709,'são miguel da boa vista','89879000'),(25,8710,'são miguel da serra','89415000'),(25,8711,'são pedro de alcântara','88125000'),(25,8712,'são pedro tobias','89960000'),(25,8713,'são roque','89996000'),(25,8714,'são sebastião do arvoredo','88610000'),(25,8715,'são sebastião do sul','89517000'),(25,8716,'sapiranga','88923000'),(25,8717,'saudades','89868000'),(25,8718,'schroeder','89275000'),(25,8719,'seara','89770000'),(25,8720,'sede oldemburg','89887700'),(25,8721,'serra alta','89871000'),(25,8723,'siderópolis','88860000'),(25,8724,'sombrio','88960000'),(25,8725,'sorocaba do sul','88170000'),(25,8726,'sul brasil','89855000'),(25,8727,'taió','89190000'),(25,8728,'tangará','89642000'),(25,8729,'taquara verde','89513000'),(25,8730,'taquaras','88474000'),(25,8731,'tigipió','88245000'),(25,8732,'tigrinhos','89875000'),(25,8733,'tijucas','88200000'),(25,8734,'timbé do sul','88940000'),(25,8735,'timbó','89120000'),(25,8736,'timbó grande','89545000'),(25,8737,'três barras','89490000'),(25,8738,'treviso','88862000'),(25,8739,'treze de maio','88710000'),(25,8740,'treze tílias','89650000'),(25,8741,'trombudo central','89176000'),(25,8742,'tubarão','00000000'),(25,8743,'tunápolis','89898000'),(25,8744,'tupitinga','89630000'),(25,8745,'turvo','88930000'),(25,8746,'união do oeste','89845000'),(25,8747,'urubici','88650000'),(25,8748,'uruguai','89668000'),(25,8749,'urupema','88625000'),(25,8750,'urussanga','88840000'),(25,8751,'vargeão','89690000'),(25,8752,'vargem','89638000'),(25,8753,'vargem bonita','89675000'),(25,8754,'vargem do cedro','88766000'),(25,8755,'vidal ramos','88443000'),(25,8756,'videira','89560000'),(25,8757,'vila conceição','88975000'),(25,8758,'vila de volta grande','89298000'),(25,8759,'vila milani','89836500'),(25,8760,'vila nova','88782000'),(25,8761,'vítor meireles','89148000'),(25,8762,'witmarsum','89157000'),(25,8763,'xanxerê','89820000'),(25,8764,'xavantina','89780000'),(25,8765,'xaxim','89825000'),(25,8766,'zortéa','89633000'),(25,10751,'jorge lacerda','89968000'),(25,10752,'idamar','89969000'),(26,8853,'adamantina','17800000'),(26,8854,'adolfo','15230000'),(26,8855,'agisse','19610000'),(26,8856,'água vermelha','13578000'),(26,8857,'aguaí','13860000'),(26,8858,'águas da prata','13890000'),(26,8859,'águas de lindóia','13940000'),(26,8860,'águas de santa bárbara','18770000'),(26,8861,'águas de são pedro','13525000'),(26,8862,'agudos','17120000'),(26,8863,'agulha','15945000'),(26,8864,'ajapi','13508000'),(26,8865,'alambari','18220000'),(26,8866,'alberto moreira','14788000'),(26,8867,'aldeia','00000000'),(26,8868,'aldeia de carapicuíba','00000000'),(26,8869,'alfredo guedes','18688000'),(26,8870,'alfredo marcondes','19180000'),(26,8871,'altair','15430000'),(26,8872,'altinópolis','14350000'),(26,8873,'alto alegre','16310000'),(26,8874,'alto porã','14480000'),(26,8875,'alumínio','18125000'),(26,8876,'álvares florence','15540000'),(26,8877,'álvares machado','19160000'),(26,8878,'álvaro de carvalho','17410000'),(26,8879,'alvinlândia','17430000'),(26,8880,'amadeu amaral','17530000'),(26,8881,'amandaba','16820000'),(26,8882,'ameliópolis','19140000'),(26,8883,'americana','00000000'),(26,8884,'américo brasiliense','14820000'),(26,8885,'américo de campos','15550000'),(26,8886,'amparo','00000000'),(26,8887,'ana dias','11770000'),(26,8888,'analândia','13550000'),(26,8889,'anápolis','17685000'),(26,8890,'andes','14715000'),(26,8891,'andradina','00000000'),(26,8892,'angatuba','18240000'),(26,8893,'anhembi','18620000'),(26,8894,'anhumas','19580000'),(26,8895,'anhumas','13435000'),(26,8896,'aparecida','12570000'),(26,8897,'aparecida d\'oeste','15735000'),(26,8898,'aparecida de monte alto','15915000'),(26,8899,'aparecida de são manuel','18655000'),(26,8900,'aparecida do bonito','15783000'),(26,8901,'apiaí','18320000'),(26,8902,'apiaí-mirim','18309000'),(26,8903,'arabela','17925000'),(26,8904,'aracaçu','18295000'),(26,8905,'araçaíba','18323000'),(26,8906,'araçariguama','18147000'),(26,8907,'araçatuba','00000000'),(26,8908,'araçoiaba da serra','18190000'),(26,8909,'aramina','14550000'),(26,8910,'arandu','18710000'),(26,8911,'arapeí','12870000'),(26,8912,'araraquara','00000000'),(26,8913,'araras','00000000'),(26,8914,'araxás','19310000'),(26,8915,'arcadas','00000000'),(26,8916,'arco-íris','17630000'),(26,8917,'arealva','17160000'),(26,8918,'areias','12820000'),(26,8919,'areiópolis','18670000'),(26,8920,'ariranha','15960000'),(26,8921,'ariri','11995000'),(26,8922,'artemis','13432000'),(26,8923,'artur nogueira','13160000'),(26,8924,'arujá','07400000'),(26,8925,'aspásia','15763000'),(26,8926,'assis','00000000'),(26,8927,'assistência','13509000'),(26,8928,'atibaia','00000000'),(26,8929,'atlântida','17840000'),(26,8930,'auriflama','15350000'),(26,8931,'avaí','16680000'),(26,8932,'avanhandava','16360000'),(26,8933,'avaré','00000000'),(26,8934,'avencas','17532000'),(26,8935,'bacaetava','18565000'),(26,8936,'bacuriti','16520000'),(26,8937,'bady bassitt','15115000'),(26,8938,'baguaçu','15405000'),(26,8939,'bairro alto','12190000'),(26,8940,'balbinos','16640000'),(26,8941,'bálsamo','15140000'),(26,8942,'bananal','12850000'),(26,8943,'bandeirantes d\'oeste','15367000'),(26,8944,'barão ataliba nogueira','13986000'),(26,8945,'barão de antonina','18490000'),(26,8946,'barão de geraldo','00000000'),(26,8947,'barbosa','16350000'),(26,8948,'bariri','17250000'),(26,8949,'barra bonita','17340000'),(26,8950,'barra do chapéu','18325000'),(26,8951,'barra do turvo','11955000'),(26,8952,'barra dourada','15125000'),(26,8953,'barrânia','13775000'),(26,8954,'barretos','00000000'),(26,8955,'barrinha','14860000'),(26,8956,'barueri','00000000'),(26,8957,'bastos','17690000'),(26,8958,'batatais','14300000'),(26,8959,'batatuba','12975000'),(26,8960,'batista botelho','18794000'),(26,8961,'bauru','00000000'),(26,8962,'bebedouro','00000000'),(26,8963,'bela floresta','15374000'),(26,8964,'bela vista são-carlense','00000000'),(26,8965,'bento de abreu','16790000'),(26,8966,'bernardino de campos','18960000'),(26,8967,'bertioga','11250000'),(26,8968,'bilac','16210000'),(26,8969,'birigüi','00000000'),(26,8970,'biritiba-mirim','08940000'),(26,8971,'biritiba-ussu','08890000'),(26,8972,'boa esperança do sul','14930000'),(26,8973,'boa vista dos andradas','15545000'),(26,8974,'boa vista paulista','00000000'),(26,8975,'bocaina','17240000'),(26,8976,'bofete','18590000'),(26,8977,'boituva','18550000'),(26,8978,'bom fim do bom jesus','13319000'),(26,8979,'bom jesus dos perdões','12955000'),(26,8980,'bom retiro da esperança','18243000'),(26,8981,'bom sucesso de itararé','18475000'),(26,8982,'bonfim paulista','14110000'),(26,8983,'borá','19740000'),(26,8984,'boracéia','17270000'),(26,8985,'borborema','14955000'),(26,8986,'borebi','18675000'),(26,8987,'botafogo','14718000'),(26,8988,'botelho','15953000'),(26,8989,'botucatu','00000000'),(26,8990,'botujuru','00000000'),(26,8991,'braço','11980000'),(26,8992,'bragança paulista','00000000'),(26,8993,'brás cubas','00000000'),(26,8994,'brasitânia','15617000'),(26,8995,'braúna','16290000'),(26,8996,'brejo alegre','16265000'),(26,8997,'brodowski','14340000'),(26,8998,'brotas','17380000'),(26,8999,'bueno de andrada','14812000'),(26,9000,'buri','18290000'),(26,9001,'buritama','15290000'),(26,9002,'buritizal','14570000'),(26,9003,'cabrália paulista','17480000'),(26,9004,'cabreúva','13315000'),(26,9005,'caçapava','00000000'),(26,9006,'cachoeira de emas','13645000'),(26,9007,'cachoeira paulista','12630000'),(26,9008,'caconde','13770000'),(26,9009,'cafelândia','16500000'),(26,9010,'cafesópolis','16530000'),(26,9011,'caiabu','19530000'),(26,9012,'caibura','11210000'),(26,9013,'caieiras','07700000'),(26,9014,'caiuá','19450000'),(26,9015,'cajamar','07750000'),(26,9016,'cajati','11950000'),(26,9017,'cajobi','15410000'),(26,9018,'cajuru','14240000'),(26,9019,'cambaquara','11640000'),(26,9020,'cambaratiba','14945000'),(26,9021,'campestrinho','13785000'),(26,9022,'campina de fora','18434000'),(26,9023,'campina do monte alegre','18245000'),(26,9024,'campinal','19490000'),(26,9025,'campinas','00000000'),(26,9026,'campo limpo paulista','00000000'),(26,9027,'campos de cunha','12540000'),(26,9028,'campos do jordão','12460000'),(26,9029,'campos novos paulista','19960000'),(26,9030,'cananéia','11990000'),(26,9031,'canas','12615000'),(26,9032,'candia','14185000'),(26,9033,'cândido mota','19880000'),(26,9034,'cândido rodrigues','15930000'),(26,9035,'canguera','18145000'),(26,9036,'canitar','18990000'),(26,9037,'capão bonito','00000000'),(26,9038,'capela do alto','18195000'),(26,9039,'capivari','13360000'),(26,9040,'capivari da mata','14508000'),(26,9041,'caporanga','18915000'),(26,9042,'capuava','00000000'),(26,9043,'caraguatatuba','00000000'),(26,9044,'carapicuíba','00000000'),(26,9045,'cardeal','13355000'),(26,9046,'cardoso','15570000'),(26,9047,'cardoso','15843000'),(26,9048,'caruara','11200000'),(26,9049,'casa branca','13700000'),(26,9050,'cássia dos coqueiros','14260000'),(26,9051,'castilho','16920000'),(26,9052,'catanduva','00000000'),(26,9053,'catiguá','15870000'),(26,9054,'catucaba','12150000'),(26,9055,'caucaia do alto','00000000'),(26,9056,'cedral','15895000'),(26,9057,'cerqueira césar','18760000'),(26,9058,'cerquilho','18520000'),(26,9059,'cesário lange','18285000'),(26,9060,'cezar de souza','00000000'),(26,9061,'charqueada','13515000'),(26,9062,'chavantes','18970000'),(26,9063,'cipó-guaçu','06930000'),(26,9064,'clarinia','18905000'),(26,9065,'clementina','16250000'),(26,9066,'cocaes','18227000'),(26,9067,'colina','14770000'),(26,9068,'colômbia','14795000'),(26,9069,'conceição de monte alegre','19710000'),(26,9070,'conchal','13835000'),(26,9071,'conchas','18570000'),(26,9072,'cordeirópolis','13490000'),(26,9073,'coroados','16260000'),(26,9074,'coronel goulart','19165000'),(26,9075,'coronel macedo','18745000'),(26,9076,'corredeira','16610000'),(26,9077,'córrego rico','14896000'),(26,9078,'corumbataí','13540000'),(26,9079,'cosmópolis','13150000'),(26,9080,'cosmorama','15530000'),(26,9081,'costa machado','19265000'),(26,9082,'cotia','00000000'),(26,9083,'cravinhos','14140000'),(26,9084,'cristais paulista','14460000'),(26,9085,'cruz das posses','14179000'),(26,9086,'cruzália','19860000'),(26,9087,'cruzeiro','00000000'),(26,9088,'cubatão','00000000'),(26,9089,'cuiabá paulista','19270000'),(26,9090,'cunha','12530000'),(26,9091,'curupá','14915000'),(26,9092,'dalas','15725000'),(26,9093,'descalvado','13690000'),(26,9094,'diadema','00000000'),(26,9095,'dirce reis','15715000'),(26,9096,'dirceu','17537000'),(26,9097,'divinolândia','13780000'),(26,9098,'dobrada','15980000'),(26,9099,'dois córregos','17300000'),(26,9100,'dolcinópolis','15740000'),(26,9101,'domélia','17123000'),(26,9102,'dourado','13590000'),(26,9103,'dracena','17900000'),(26,9104,'duartina','17470000'),(26,9105,'dumont','14120000'),(26,9106,'duplo céu','15472000'),(26,9107,'echaporã','19830000'),(26,9108,'eldorado','11960000'),(26,9109,'eleutério','13988000'),(26,9110,'elias fausto','13350000'),(26,9111,'elisiário','15823000'),(26,9112,'embaúba','15425000'),(26,9113,'embu','00000000'),(26,9114,'embu-guaçu','06900000'),(26,9115,'emilianópolis','19350000'),(26,9116,'eneida','19130000'),(26,9117,'engenheiro balduíno','15154000'),(26,9118,'engenheiro coelho','13165000'),(26,9119,'engenheiro maia','18445000'),(26,9120,'engenheiro schmidt','15104000'),(26,9121,'esmeralda','15795000'),(26,9122,'esperança d\'oeste','19535000'),(26,9123,'espigão','19575000'),(26,9124,'espírito santo do pinhal','13990000'),(26,9125,'espírito santo do turvo','18935000'),(26,9126,'estiva gerbi','13857000'),(26,9127,'estrela d\'oeste','15650000'),(26,9128,'estrela do norte','19230000'),(26,9129,'euclides da cunha paulista','19275000'),(26,9130,'eugênio de melo','00000000'),(26,9131,'fartura','18870000'),(26,9132,'fátima','16490000'),(26,9133,'fátima paulista','15757000'),(26,9134,'fazenda velha','18288000'),(26,9135,'fernando prestes','15940000'),(26,9136,'fernandópolis','15600000'),(26,9137,'fernão','17455000'),(26,9138,'ferraz de vasconcelos','00000000'),(26,9139,'flora rica','17870000'),(26,9140,'floreal','15320000'),(26,9141,'floresta do sul','19120000'),(26,9142,'flórida paulista','17830000'),(26,9143,'florínia','19870000'),(26,9144,'franca','00000000'),(26,9145,'francisco morato','00000000'),(26,9146,'franco da rocha','00000000'),(26,9147,'frutal do campo','19885000'),(26,9148,'gabriel monteiro','16220000'),(26,9149,'gália','17450000'),(26,9150,'garça','17400000'),(26,9151,'gardênia','19620000'),(26,9152,'gastão vidigal','15330000'),(26,9153,'gavião peixoto','14813000'),(26,9154,'general salgado','15300000'),(26,9155,'getulina','16450000'),(26,9156,'glicério','16270000'),(26,9157,'gramadinho','18218000'),(26,9158,'guachos','19510000'),(26,9159,'guaianas','17285000'),(26,9160,'guaiçara','16430000'),(26,9161,'guaimbê','16480000'),(26,9162,'guaíra','14790000'),(26,9163,'guamium','13431000'),(26,9164,'guapiaçu','15110000'),(26,9165,'guapiara','18310000'),(26,9166,'guapiranga','16420000'),(26,9167,'guará','14580000'),(26,9168,'guaraçaí','16980000'),(26,9169,'guaraci','15420000'),(26,9170,'guaraciaba d\'oeste','17935000'),(26,9171,'guarani d\'oeste','15680000'),(26,9172,'guarantã','16570000'),(26,9173,'guarapiranga','13585000'),(26,9174,'guarapuá','17310000'),(26,9175,'guararapes','16700000'),(26,9176,'guararema','08900000'),(26,9177,'guaratinguetá','00000000'),(26,9178,'guareí','18250000'),(26,9179,'guariba','14840000'),(26,9180,'guariroba','15903000'),(26,9181,'guarizinho','18420000'),(26,9182,'guarujá','00000000'),(26,9183,'guarulhos','00000000'),(26,9184,'guatapará','14115000'),(26,9185,'guzolândia','15355000'),(26,9186,'herculândia','17650000'),(26,9187,'holambra','13825000'),(26,9188,'holambra ii','18725000'),(26,9189,'hortolândia','00000000'),(26,9190,'iacanga','17180000'),(26,9191,'iacri','17680000'),(26,9192,'iaras','18775000'),(26,9193,'ibaté','14815000'),(26,9194,'ibiporanga','15175000'),(26,9195,'ibirá','15860000'),(26,9196,'ibirarema','19940000'),(26,9197,'ibitinga','14940000'),(26,9198,'ibitiruna','13434000'),(26,9199,'ibitiúva','14760000'),(26,9200,'ibitu','14789000'),(26,9201,'ibiúna','18150000'),(26,9202,'icém','15460000'),(26,9203,'ida iolanda','15195000'),(26,9204,'iepê','19640000'),(26,9205,'igaçaba','14475000'),(26,9206,'igaraçu do tietê','17350000'),(26,9207,'igaraí','13750000'),(26,9208,'igarapava','14540000'),(26,9209,'igaratá','12350000'),(26,9210,'iguape','11920000'),(26,9211,'ilha comprida','11925000'),(26,9212,'ilha diana','11230000'),(26,9213,'ilha solteira','15385000'),(26,9214,'ilhabela','11630000'),(26,9215,'indaiá do aguapeí','17835000'),(26,9216,'indaiatuba','00000000'),(26,9217,'indiana','19560000'),(26,9218,'indiaporã','15690000'),(26,9219,'ingás','15448000'),(26,9220,'inúbia paulista','17760000'),(26,9221,'ipaussu','18950000'),(26,9222,'iperó','18560000'),(26,9223,'ipeúna','13537000'),(26,9224,'ipiguá','15108000'),(26,9225,'iporanga','18330000'),(26,9226,'ipuã','14610000'),(26,9227,'iracemápolis','13495000'),(26,9228,'irapé','18980000'),(26,9229,'irapuã','14990000'),(26,9230,'irapuru','17880000'),(26,9231,'itaberá','18440000'),(26,9232,'itaboa','18433000'),(26,9233,'itaí','18730000'),(26,9234,'itaiuba','15153000'),(26,9235,'itajobi','15840000'),(26,9236,'itaju','17260000'),(26,9237,'itanhaém','11740000'),(26,9238,'itaóca','18360000'),(26,9239,'itapecerica da serra','00000000'),(26,9240,'itapetininga','00000000'),(26,9241,'itapeuna','11970000'),(26,9242,'itapeva','00000000'),(26,9243,'itapevi','00000000'),(26,9244,'itapira','00000000'),(26,9245,'itapirapuã paulista','18385000'),(26,9246,'itápolis','14900000'),(26,9247,'itaporanga','18480000'),(26,9248,'itapuí','17230000'),(26,9249,'itapura','15390000'),(26,9250,'itaquaquecetuba','00000000'),(26,9251,'itaqueri da serra','13535000'),(26,9252,'itararé','18460000'),(26,9253,'itariri','11760000'),(26,9254,'itatiba','00000000'),(26,9255,'itatinga','18690000'),(26,9256,'itirapina','13530000'),(26,9257,'itirapuã','14420000'),(26,9258,'itobi','13715000'),(26,9259,'itororó do paranapanema','19208000'),(26,9260,'itu','00000000'),(26,9261,'itupeva','13295000'),(26,9262,'ituverava','14500000'),(26,9263,'iubatinga','19540000'),(26,9264,'jaborandi','14775000'),(26,9265,'jaboticabal','00000000'),(26,9266,'jacaré','13318000'),(26,9267,'jacareí','00000000'),(26,9268,'jaci','15155000'),(26,9269,'jaciporã','17910000'),(26,9270,'jacuba','17170000'),(26,9271,'jacupiranga','11940000'),(26,9272,'jafa','17405000'),(26,9273,'jaguariúna','13820000'),(26,9274,'jales','15700000'),(26,9275,'jamaica','17905000'),(26,9276,'jambeiro','12270000'),(26,9277,'jandira','00000000'),(26,9278,'jardim belval','00000000'),(26,9279,'jardim presidente dutra','00000000'),(26,9280,'jardim santa luzia','00000000'),(26,9281,'jardim silveira','00000000'),(26,9282,'jardinópolis','14680000'),(26,9283,'jarinu','13240000'),(26,9284,'jatobá','16330000'),(26,9285,'jaú','00000000'),(26,9286,'jeriquara','14450000'),(26,9287,'joanópolis','12980000'),(26,9288,'joão ramalho','19680000'),(26,9289,'joaquim egídio','00000000'),(26,9290,'jordanésia','07760000'),(26,9291,'josé bonifácio','15200000'),(26,9292,'juliânia','17660000'),(26,9293,'júlio mesquita','17550000'),(26,9294,'jumirim','18535000'),(26,9295,'jundiaí','00000000'),(26,9296,'jundiapeba','00000000'),(26,9297,'junqueira','15152000'),(26,9298,'junqueirópolis','17890000'),(26,9299,'juquiá','11800000'),(26,9300,'juquiratiba','18575000'),(26,9301,'juquitiba','06950000'),(26,9302,'juritis','16280000'),(26,9303,'jurucê','14690000'),(26,9304,'jurupeba','15475000'),(26,9305,'jurupema','15905000'),(26,9306,'lácio','17539000'),(26,9307,'lagoa azul','17705000'),(26,9308,'lagoa branca','13705000'),(26,9309,'lagoinha','12130000'),(26,9310,'laranjal paulista','18500000'),(26,9311,'laras','18505000'),(26,9312,'lauro penteado','16255000'),(26,9313,'lavínia','16850000'),(26,9314,'lavrinhas','12760000'),(26,9315,'leme','00000000'),(26,9316,'lençóis paulista','00000000'),(26,9317,'limeira','00000000'),(26,9318,'lindóia','13950000'),(26,9319,'lins','00000000'),(26,9320,'lobo','18695000'),(26,9321,'lorena','00000000'),(26,9322,'lourdes','15285000'),(26,9323,'louveira','13290000'),(26,9324,'lucélia','17780000'),(26,9325,'lucianópolis','17475000'),(26,9326,'luís antônio','14210000'),(26,9327,'luiziânia','16340000'),(26,9328,'lupércio','17420000'),(26,9329,'lusitânia','14898000'),(26,9330,'lutécia','19750000'),(26,9331,'macatuba','17290000'),(26,9332,'macaubal','15270000'),(26,9333,'macedônia','15620000'),(26,9334,'macucos','16460000'),(26,9335,'mágda','15310000'),(26,9336,'mailasqui','18143000'),(26,9337,'mairinque','18120000'),(26,9338,'mairiporã','07600000'),(26,9339,'major prado','16150000'),(26,9340,'manduri','18780000'),(26,9341,'mangaratu','15442000'),(26,9342,'marabá paulista','19430000'),(26,9343,'maracaí','19840000'),(26,9344,'marapoama','15845000'),(26,9345,'marcondésia','14733000'),(26,9346,'maresias','11620000'),(26,9347,'mariápolis','17810000'),(26,9348,'marília','00000000'),(26,9349,'marinópolis','15730000'),(26,9350,'maristela','18510000'),(26,9351,'martim francisco','00000000'),(26,9352,'martinho prado júnior','13855000'),(26,9353,'martinópolis','19500000'),(26,9354,'matão','00000000'),(26,9355,'mauá','00000000'),(26,9356,'mendonça','15220000'),(26,9357,'meridiano','15625000'),(26,9358,'mesópolis','15748000'),(26,9359,'miguelópolis','14530000'),(26,9360,'mineiros do tietê','17320000'),(26,9361,'mira estrela','15580000'),(26,9362,'miracatu','11850000'),(26,9363,'miraluz','15128000'),(26,9364,'mirandópolis','16800000'),(26,9365,'mirante do paranapanema','19260000'),(26,9366,'mirassol','15130000'),(26,9367,'mirassolândia','15145000'),(26,9368,'mococa','00000000'),(26,9369,'mogi das cruzes','00000000'),(26,9370,'mogi guaçu','00000000'),(26,9371,'mogi mirim','00000000'),(26,9372,'mombuca','13380000'),(26,9373,'monções','15275000'),(26,9374,'mongaguá','11730000'),(26,9375,'montalvão','19110000'),(26,9376,'monte alegre do sul','13910000'),(26,9377,'monte alto','15910000'),(26,9378,'monte aprazível','15150000'),(26,9379,'monte azul paulista','14730000'),(26,9380,'monte cabrão','11220000'),(26,9381,'monte castelo','17960000'),(26,9382,'monte mor','13190000'),(26,9383,'monte verde paulista','15417000'),(26,9384,'monteiro lobato','12250000'),(26,9385,'moreira césar','00000000'),(26,9386,'morro agudo','14640000'),(26,9387,'morro do alto','18219000'),(26,9388,'morungaba','13260000'),(26,9389,'mostardas','13915000'),(26,9390,'motuca','14835000'),(26,9391,'mourão','17815000'),(26,9392,'murutinga do sul','16950000'),(26,9393,'nantes','19645000'),(26,9394,'narandiba','19220000'),(26,9395,'natividade da serra','12180000'),(26,9396,'nazaré paulista','12960000'),(26,9397,'neves paulista','15120000'),(26,9398,'nhandeara','15190000'),(26,9399,'nipoã','15240000'),(26,9400,'nogueira','16690000'),(26,9401,'nossa senhora do remédio','08980000'),(26,9402,'nova alexandria','19882000'),(26,9403,'nova aliança','15210000'),(26,9404,'nova américa','14904000'),(26,9405,'nova aparecida','00000000'),(26,9406,'nova campina','18435000'),(26,9407,'nova canaã paulista','15773000'),(26,9408,'nova castilho','15313000'),(26,9409,'nova europa','14920000'),(26,9410,'nova granada','15440000'),(26,9411,'nova guataporanga','17950000'),(26,9412,'nova independência','16940000'),(26,9413,'nova itapirema','15215000'),(26,9414,'nova luzitânia','15340000'),(26,9415,'nova odessa','13460000'),(26,9416,'nova pátria','19330000'),(26,9417,'nova veneza','00000000'),(26,9418,'novais','15885000'),(26,9419,'novo cravinhos','17585000'),(26,9420,'novo horizonte','14960000'),(26,9421,'nuporanga','14670000'),(26,9422,'oásis','17932000'),(26,9423,'ocauçu','17540000'),(26,9424,'óleo','18790000'),(26,9425,'olímpia','15400000'),(26,9426,'oliveira barros','11860000'),(26,9427,'onda branca','15445000'),(26,9428,'onda verde','15450000'),(26,9429,'oriente','17570000'),(26,9430,'orindiúva','15480000'),(26,9431,'orlândia','14620000'),(26,9432,'osasco','00000000'),(26,9433,'oscar bressane','19770000'),(26,9434,'osvaldo cruz','17700000'),(26,9435,'ourinhos','00000000'),(26,9436,'ouro fino paulista','00000000'),(26,9437,'ouro verde','17920000'),(26,9438,'ouroeste','15685000'),(26,9439,'pacaembu','17860000'),(26,9440,'padre nóbrega','17533000'),(26,9441,'palestina','15470000'),(26,9442,'palmares paulista','15828000'),(26,9443,'palmeira d\'oeste','15720000'),(26,9444,'palmeiras de são paulo','00000000'),(26,9445,'palmital','19970000'),(26,9446,'panorama','17980000'),(26,9447,'paraguaçu paulista','19700000'),(26,9448,'paraibuna','12260000'),(26,9449,'paraíso','15825000'),(26,9450,'paraisolândia','13517000'),(26,9451,'paranabi','11650000'),(26,9452,'paranapanema','18720000'),(26,9453,'paranapiacaba','00000000'),(26,9454,'paranapuã','15745000'),(26,9455,'parapuã','17730000'),(26,9456,'pardinho','18640000'),(26,9457,'pariquera-açu','11930000'),(26,9458,'parisi','15525000'),(26,9459,'parnaso','17620000'),(26,9460,'parque meia lua','00000000'),(26,9461,'paruru','18155000'),(26,9462,'patrocínio paulista','14415000'),(26,9463,'paulicéia','17990000'),(26,9464,'paulínia','13140000'),(26,9465,'paulistânia','17150000'),(26,9466,'paulo de faria','15490000'),(26,9467,'paulópolis','17583000'),(26,9468,'pederneiras','17280000'),(26,9469,'pedra bela','12990000'),(26,9470,'pedra branca de itararé','18465000'),(26,9471,'pedranópolis','15630000'),(26,9472,'pedregulho','14470000'),(26,9473,'pedreira','13920000'),(26,9474,'pedrinhas paulista','19865000'),(26,9475,'pedro barros','11855000'),(26,9476,'pedro de toledo','11790000'),(26,9477,'penápolis','16300000'),(26,9478,'pereira barreto','15370000'),(26,9479,'pereiras','18580000'),(26,9480,'peruíbe','11750000'),(26,9481,'piacatu','16230000'),(26,9482,'picinguaba','11690000'),(26,9483,'piedade','18170000'),(26,9484,'pilar do sul','18185000'),(26,9485,'pindamonhangaba','00000000'),(26,9486,'pindorama','15830000'),(26,9487,'pinhalzinho','12995000'),(26,9488,'pinheiros','12770000'),(26,9489,'pioneiros','14590000'),(26,9490,'piquerobi','19410000'),(26,9491,'piquete','12620000'),(26,9492,'piracaia','12970000'),(26,9493,'piracicaba','00000000'),(26,9494,'piraju','18800000'),(26,9495,'pirajuí','16600000'),(26,9496,'pirambóia','18630000'),(26,9497,'pirangi','15820000'),(26,9498,'pirapitingui','00000000'),(26,9499,'pirapora do bom jesus','06550000'),(26,9500,'pirapozinho','19200000'),(26,9501,'pirassununga','00000000'),(26,9502,'piratininga','17490000'),(26,9503,'pitangueiras','14750000'),(26,9504,'planalto','15260000'),(26,9505,'planalto','16915000'),(26,9506,'planalto do sul','19295000'),(26,9507,'platina','19990000'),(26,9508,'poá','00000000'),(26,9509,'poloni','15160000'),(26,9510,'polvilho','07770000'),(26,9511,'pompéia','17580000'),(26,9512,'pongaí','16660000'),(26,9513,'pontal','14180000'),(26,9514,'pontalinda','15718000'),(26,9515,'pontes gestal','15560000'),(26,9516,'populina','15670000'),(26,9517,'porangaba','18260000'),(26,9518,'porto feliz','18540000'),(26,9519,'porto ferreira','13660000'),(26,9520,'porto novo','00000000'),(26,9521,'potim','12525000'),(26,9522,'potirendaba','15105000'),(26,9523,'potunduva','17220000'),(26,9524,'pracinha','17790000'),(26,9525,'pradínia','16606000'),(26,9526,'pradópolis','14850000'),(26,9527,'praia grande','00000000'),(26,9528,'pratânia','18660000'),(26,9529,'presidente alves','16670000'),(26,9530,'presidente bernardes','19300000'),(26,9531,'presidente epitácio','19470000'),(26,9532,'presidente prudente','00000000'),(26,9533,'presidente venceslau','19400000'),(26,9534,'primavera','19274000'),(26,9535,'promissão','16370000'),(26,9536,'prudêncio e moraes','15307000'),(26,9537,'quadra','18255000'),(26,9538,'quatá','19780000'),(26,9539,'queiroz','17590000'),(26,9540,'queluz','12800000'),(26,9541,'quintana','17670000'),(26,9542,'quiririm','00000000'),(26,9543,'rafard','13370000'),(26,9544,'rancharia','19600000'),(26,9545,'rechan','18217000'),(26,9546,'redenção da serra','12170000'),(26,9547,'regente feijó','19570000'),(26,9548,'reginópolis','17190000'),(26,9549,'registro','11900000'),(26,9550,'restinga','14430000'),(26,9551,'riacho grande','00000000'),(26,9552,'ribeira','18380000'),(26,9553,'ribeirão bonito','13580000'),(26,9554,'ribeirão branco','18430000'),(26,9555,'ribeirão corrente','14445000'),(26,9556,'ribeirão do sul','19930000'),(26,9557,'ribeirão dos índios','19380000'),(26,9558,'ribeirão grande','18315000'),(26,9559,'ribeirão pires','00000000'),(26,9560,'ribeirão preto','00000000'),(26,9561,'ribeiro do vale','16710000'),(26,9562,'ribeiro dos santos','15408000'),(26,9563,'rifaina','14490000'),(26,9564,'rincão','14830000'),(26,9565,'rinópolis','17740000'),(26,9566,'rio claro','00000000'),(26,9567,'rio das pedras','13390000'),(26,9568,'rio grande da serra','09450000'),(26,9569,'riolândia','15495000'),(26,9570,'riversul','18470000'),(26,9571,'roberto','15835000'),(26,9572,'rosália','17535000'),(26,9573,'rosana','19273000'),(26,9574,'roseira','12580000'),(26,9575,'rubiácea','16750000'),(26,9576,'rubião júnior','18618000'),(26,9577,'rubinéia','15790000'),(26,9578,'ruilândia','15135000'),(26,9579,'sabaúna','00000000'),(26,9580,'sabino','16440000'),(26,9581,'sagres','17710000'),(26,9582,'sales','14980000'),(26,9583,'sales oliveira','14660000'),(26,9584,'salesópolis','08970000'),(26,9585,'salmourão','17720000'),(26,9586,'saltinho','13440000'),(26,9587,'salto','00000000'),(26,9588,'salto de pirapora','18160000'),(26,9589,'salto do avanhandava','15208000'),(26,9590,'salto grande','19920000'),(26,9591,'sandovalina','19250000'),(26,9592,'santa adélia','15950000'),(26,9593,'santa albertina','15750000'),(26,9594,'santa américa','16455000'),(26,9595,'santa bárbara d\'oeste','00000000'),(26,9596,'santa branca','12380000'),(26,9597,'santa clara d\'oeste','15785000'),(26,9598,'santa cruz da conceição','13625000'),(26,9599,'santa cruz da esperança','14250000'),(26,9600,'santa cruz da estrela','13675000'),(26,9601,'santa cruz das palmeiras','13650000'),(26,9602,'santa cruz do rio pardo','18900000'),(26,9603,'santa cruz dos lopes','18468000'),(26,9604,'santa ernestina','15970000'),(26,9605,'santa eudóxia','13579000'),(26,9606,'santa fé do sul','15775000'),(26,9607,'santa gertrudes','13510000'),(26,9608,'santa isabel','07500000'),(26,9609,'santa isabel do marinheiro','15635000'),(26,9610,'santa lúcia','14825000'),(26,9611,'santa margarida paulista','00000000'),(26,9612,'santa maria da serra','17370000'),(26,9613,'santa maria do gurupá','16380000'),(26,9614,'santa mercedes','17940000'),(26,9615,'santa rita d\'oeste','15780000'),(26,9616,'santa rita do passa quatro','13670000'),(26,9617,'santa rita do ribeira','11870000'),(26,9618,'santa rosa de viterbo','14270000'),(26,9619,'santa salete','15768000'),(26,9620,'santa teresinha de piracicaba','00000000'),(26,9621,'santana da ponte pensa','15765000'),(26,9622,'santana de parnaíba','00000000'),(26,9623,'santelmo','17288000'),(26,9624,'santo anastácio','19360000'),(26,9625,'santo andré','00000000'),(26,9626,'santo antônio da alegria','14390000'),(26,9627,'santo antônio da estiva','16603000'),(26,9628,'santo antônio de posse','13830000'),(26,9629,'santo antônio do aracanguá','16130000'),(26,9630,'santo antônio do jardim','13995000'),(26,9631,'santo antônio do paranapanema','19890000'),(26,9632,'santo antônio do pinhal','12450000'),(26,9633,'santo antônio paulista','00000000'),(26,9634,'santo expedito','19190000'),(26,9635,'santópolis do aguapeí','16240000'),(26,9636,'santos','00000000'),(26,9637,'são benedito da cachoeirinha','14505000'),(26,9638,'são benedito das areias','13755000'),(26,9639,'são bento do sapucaí','12490000'),(26,9640,'são bernardo do campo','00000000'),(26,9641,'são berto','18785000'),(26,9642,'são caetano do sul','00000000'),(26,9643,'são carlos','00000000'),(26,9644,'são francisco','15710000'),(26,9645,'são francisco da praia','11610000'),(26,9646,'são francisco xavier','12249000'),(26,9647,'são joão da boa vista','00000000'),(26,9648,'são joão das duas pontes','15640000'),(26,9649,'são joão de iracema','15315000'),(26,9650,'são joão de itaguaçu','15855000'),(26,9651,'são joão do marinheiro','15575000'),(26,9652,'são joão do pau d\'alho','17970000'),(26,9653,'são joão novo','18140000'),(26,9654,'são joaquim da barra','14600000'),(26,9655,'são josé da bela vista','14440000'),(26,9656,'são josé das laranjeiras','19845000'),(26,9657,'são josé do barreiro','12830000'),(26,9658,'são josé do rio pardo','13720000'),(26,9659,'são josé do rio preto','00000000'),(26,9660,'são josé dos campos','00000000'),(26,9661,'são lourenço da serra','06890000'),(26,9662,'são lourenço do turvo','15999000'),(26,9663,'são luiz do paraitinga','12140000'),(26,9664,'são luiz do guaricanga','16675000'),(26,9665,'são manuel','18650000'),(26,9666,'são martinho d\'oeste','16320000'),(26,9667,'são miguel arcanjo','18230000'),(26,9668,'são paulo','00000000'),(26,9669,'são pedro','13520000'),(26,9670,'são pedro do turvo','18940000'),(26,9671,'são roque','00000000'),(26,9672,'são roque da fartura','13895000'),(26,9673,'são sebastião','11600000'),(26,9674,'são sebastião da grama','13790000'),(26,9675,'são sebastião da serra','17390000'),(26,9676,'são silvestre de jacareí','00000000'),(26,9677,'são simão','14200000'),(26,9678,'são vicente','00000000'),(26,9679,'sapezal','19720000'),(26,9680,'sarapuí','18225000'),(26,9681,'sarutaiá','18840000'),(26,9682,'sebastianópolis do sul','15180000'),(26,9683,'serra azul','14230000'),(26,9684,'serra negra','13930000'),(26,9685,'serrana','14150000'),(26,9686,'sertãozinho','00000000'),(26,9687,'sete barras','11910000'),(26,9688,'severínia','14735000'),(26,9689,'silvânia','15999500'),(26,9690,'silveiras','12690000'),(26,9691,'simões','16510000'),(26,9692,'simonsen','15515000'),(26,9693,'socorro','13960000'),(26,9694,'sodrélia','18910000'),(26,9695,'solemar','00000000'),(26,9696,'sorocaba','00000000'),(26,9697,'sousas','00000000'),(26,9698,'sud mennucci','15360000'),(26,9699,'suinana','15437000'),(26,9700,'sumaré','00000000'),(26,9701,'sussui','19975000'),(26,9702,'suzanápolis','15380000'),(26,9703,'suzano','00000000'),(26,9704,'tabajara','16855000'),(26,9705,'tabapuã','15880000'),(26,9706,'tabatinga','14910000'),(26,9707,'taboão da serra','00000000'),(26,9708,'taciba','19590000'),(26,9709,'taguaí','18890000'),(26,9710,'taiaçu','14725000'),(26,9711,'taiacupeba','00000000'),(26,9712,'taiúva','14720000'),(26,9713,'talhado','15102000'),(26,9714,'tambaú','13710000'),(26,9715,'tanabi','15170000'),(26,9716,'tapinas','14907000'),(26,9717,'tapiraí','18180000'),(26,9718,'tapiratiba','13760000'),(26,9719,'taquaral','14765000'),(26,9720,'taquaritinga','15900000'),(26,9721,'taquarituba','18740000'),(26,9722,'taquarivaí','18425000'),(26,9723,'tarabai','19210000'),(26,9724,'tarumã','19820000'),(26,9725,'tatuí','00000000'),(26,9726,'taubaté','00000000'),(26,9727,'tecainda','19505000'),(26,9728,'tejupá','18830000'),(26,9729,'teodoro sampaio','19280000'),(26,9730,'termas de ibirá','15868000'),(26,9731,'terra nova d\'oeste','17945000'),(26,9732,'terra roxa','14745000'),(26,9733,'tibiriçá','17110000'),(26,9734,'tibiriçá do paranapanema','18810000'),(26,9735,'tietê','18530000'),(26,9736,'timburi','18860000'),(26,9737,'toledo','17627000'),(26,9738,'torre de pedra','18265000'),(26,9739,'torrinha','17360000'),(26,9740,'trabiju','14935000'),(26,9741,'tremembé','12120000'),(26,9742,'três alianças','16830000'),(26,9743,'três fronteiras','15770000'),(26,9744,'três pontes','00000000'),(26,9745,'três vendas','17621000'),(26,9746,'tuiuti','12930000'),(26,9747,'tujuguaba','13839000'),(26,9748,'tupã','00000000'),(26,9749,'tupi','13428000'),(26,9750,'tupi paulista','17930000'),(26,9751,'turiba do sul','18450000'),(26,9752,'turiúba','15280000'),(26,9753,'turmalina','15755000'),(26,9754,'turvínia','14716000'),(26,9755,'ubarana','15225000'),(26,9756,'ubatuba','11680000'),(26,9757,'ubirajara','17440000'),(26,9758,'uchoa','15890000'),(26,9759,'união paulista','15250000'),(26,9760,'universo','17623000'),(26,9761,'urânia','15760000'),(26,9762,'uru','16650000'),(26,9763,'urupês','15850000'),(26,9764,'ururai','15955000'),(26,9765,'utinga','00000000'),(26,9766,'vale formoso','14970000'),(26,9767,'valentim gentil','15520000'),(26,9768,'valinhos','00000000'),(26,9769,'valparaíso','16880000'),(26,9770,'vanglória','17282000'),(26,9771,'vargem','12935000'),(26,9772,'vargem grande do sul','13880000'),(26,9773,'vargem grande paulista','06730000'),(26,9774,'varpa','17625000'),(26,9775,'várzea paulista','00000000'),(26,9776,'venda branca','13707000'),(26,9777,'vera cruz','17560000'),(26,9778,'vicente de carvalho','00000000'),(26,9779,'vicentinópolis','16140000'),(26,9780,'vila dirce','00000000'),(26,9781,'vila nery','00000000'),(26,9782,'vila xavier','00000000'),(26,9783,'vinhedo','13280000'),(26,9784,'viradouro','14740000'),(26,9785,'vista alegre do alto','15920000'),(26,9786,'vitória brasil','15705000'),(26,9787,'vitoriana','18619000'),(26,9788,'votorantim','00000000'),(26,9789,'votuporanga','00000000'),(26,9790,'zacarias','15265000'),(27,8767,'altos verdes','49555000'),(27,8768,'amparo de são francisco','49920000'),(27,8769,'aquidabã','49790000'),(27,8770,'aracaju','00000000'),(27,8771,'arauá','49220000'),(27,8772,'areia branca','49580000'),(27,8773,'areia branca','49099400'),(27,8774,'barra dos coqueiros','49140000'),(27,8775,'barracas','49710000'),(27,8776,'boquim','49360000'),(27,8777,'brejo grande','49995000'),(27,8778,'campo do brito','49520000'),(27,8779,'canhoba','49880000'),(27,8780,'canindé de são francisco','49820000'),(27,8781,'capela','49700000'),(27,8782,'carira','49550000'),(27,8783,'carmópolis','49740000'),(27,8784,'cedro de são joão','49930000'),(27,8785,'cristinápolis','49270000'),(27,8786,'cumbe','49660000'),(27,8787,'divina pastora','49650000'),(27,8788,'estância','49200000'),(27,8789,'feira nova','49670000'),(27,8790,'frei paulo','49514000'),(27,8791,'gararu','49830000'),(27,8792,'general maynard','49750000'),(27,8793,'graccho cardoso','49860000'),(27,8794,'ilha das flores','49990000'),(27,8795,'indiaroba','49250000'),(27,8796,'itabaiana','49500000'),(27,8797,'itabaianinha','49290000'),(27,8798,'itabi','49870000'),(27,8799,'itaporanga d\'ajuda','49120000'),(27,8800,'japaratuba','49960000'),(27,8801,'japoatã','49950000'),(27,8802,'lagarto','49400000'),(27,8803,'lagoa funda','49835000'),(27,8804,'laranjeiras','49170000'),(27,8805,'macambira','49565000'),(27,8806,'malhada dos bois','49940000'),(27,8807,'malhador','49570000'),(27,8808,'maruim','49770000'),(27,8809,'miranda','49702000'),(27,8810,'moita bonita','49560000'),(27,8811,'monte alegre de sergipe','49690000'),(27,8812,'mosqueiro','49099700'),(27,8813,'muribeca','49780000'),(27,8814,'neópolis','49980000'),(27,8815,'nossa senhora aparecida','49540000'),(27,8816,'nossa senhora da glória','49680000'),(27,8817,'nossa senhora das dores','49600000'),(27,8818,'nossa senhora de lourdes','49890000'),(27,8819,'nossa senhora do socorro','49160000'),(27,8820,'pacatuba','49970000'),(27,8821,'palmares','49325000'),(27,8822,'pedra mole','49512000'),(27,8823,'pedras','49704000'),(27,8824,'pedrinhas','49350000'),(27,8825,'pinhão','49517000'),(27,8826,'pirambu','49190000'),(27,8827,'poço redondo','49810000'),(27,8828,'poço verde','49490000'),(27,8829,'porto da folha','49800000'),(27,8830,'propriá','49900000'),(27,8831,'riachão do dantas','49320000'),(27,8832,'riachuelo','49130000'),(27,8833,'ribeirópolis','49530000'),(27,8834,'rosário do catete','49760000'),(27,8835,'salgado','49390000'),(27,8836,'samambaia','49310000'),(27,8837,'santa luzia do itanhy','49230000'),(27,8838,'santa rosa de lima','49640000'),(27,8839,'santana do são francisco','49985000'),(27,8840,'santo amaro das brotas','49180000'),(27,8841,'são cristóvão','49100000'),(27,8842,'são domingos','49525000'),(27,8843,'são francisco','49945000'),(27,8844,'são josé','49099000'),(27,8845,'são mateus da palestina','49840000'),(27,8846,'são miguel do aleixo','49535000'),(27,8847,'simão dias','49480000'),(27,8848,'siriri','49630000'),(27,8849,'telha','49910000'),(27,8850,'tobias barreto','49300000'),(27,8851,'tomar do geru','49280000'),(27,8852,'umbaúba','49260000');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobranca`
--

DROP TABLE IF EXISTS `cobranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobranca` (
  `cod_cobranca` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cliente` int(11) DEFAULT NULL COMMENT 'codigo do cliente - auto incremento',
  `assunto_cobranca` varchar(50) DEFAULT NULL,
  `texto_cobranca` text,
  `envio1` date DEFAULT NULL,
  `envio2` date DEFAULT NULL,
  `envio3` date DEFAULT NULL,
  `envio4` date DEFAULT NULL,
  `envio5` date DEFAULT NULL,
  `num_processo` varchar(30) DEFAULT NULL,
  `data_processo` date DEFAULT NULL,
  `advogado_processo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_cobranca`),
  KEY `fk_cliente_cobranca` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobranca`
--

LOCK TABLES `cobranca` WRITE;
/*!40000 ALTER TABLE `cobranca` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobranca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conciliacao`
--

DROP TABLE IF EXISTS `conciliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conciliacao` (
  `cod_conciliacao` int(11) NOT NULL AUTO_INCREMENT,
  `num_cheque_conciliacao` int(11) DEFAULT NULL,
  `data_cheque_conciliacao` date DEFAULT NULL,
  `vlr_cheque_conciliacao` double(11,2) DEFAULT NULL,
  `mes_ano_conciliacao` varchar(7) DEFAULT NULL,
  `historico_conciliacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_conciliacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conciliacao`
--

LOCK TABLES `conciliacao` WRITE;
/*!40000 ALTER TABLE `conciliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `conciliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cot_cab`
--

DROP TABLE IF EXISTS `cot_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cot_cab` (
  `cod_cot_cab` int(11) NOT NULL AUTO_INCREMENT,
  `data_cot_cab` date DEFAULT NULL,
  `forn1_cot_cab` int(11) DEFAULT NULL,
  `forn2_cot_cab` int(11) DEFAULT NULL,
  `forn3_cot_cab` int(11) DEFAULT NULL,
  `forn4_cot_cab` int(11) DEFAULT NULL,
  `forn5_cot_cab` int(11) DEFAULT NULL,
  `condicoes1_cot_cab` varchar(30) DEFAULT NULL,
  `condicoes2_cot_cab` varchar(30) DEFAULT NULL,
  `condicoes3_cot_cab` varchar(30) DEFAULT NULL,
  `condicoes4_cot_cab` varchar(30) DEFAULT NULL,
  `condicoes5_cot_cab` varchar(30) DEFAULT NULL,
  `desconto1_cot_cab` double(11,2) DEFAULT NULL,
  `desconto2_cot_cab` double(11,2) DEFAULT NULL,
  `desconto3_cot_cab` double(11,2) DEFAULT NULL,
  `desconto4_cot_cab` double(11,2) DEFAULT NULL,
  `desconto5_cot_cab` double(11,2) DEFAULT NULL,
  `entrega1_cot_cab` varchar(30) DEFAULT NULL,
  `entrega2_cot_cab` varchar(30) DEFAULT NULL,
  `entrega3_cot_cab` varchar(30) DEFAULT NULL,
  `entrega4_cot_cab` varchar(30) DEFAULT NULL,
  `entrega5_cot_cab` varchar(30) DEFAULT NULL,
  `total1_cot_cab` double(11,2) DEFAULT NULL,
  `total2_cot_cab` double(11,2) DEFAULT NULL,
  `total3_cot_cab` double(11,2) DEFAULT NULL,
  `total4_cot_cab` double(11,2) DEFAULT NULL,
  `total5_cot_cab` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_cot_cab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cot_cab`
--

LOCK TABLES `cot_cab` WRITE;
/*!40000 ALTER TABLE `cot_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `cot_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cot_det`
--

DROP TABLE IF EXISTS `cot_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cot_det` (
  `cod_cot_cab` int(11) NOT NULL,
  `cod_produto` int(11) NOT NULL,
  `cod_req_cab` int(11) NOT NULL,
  `qtde_cot_det` int(11) DEFAULT NULL,
  `unit1_cot_det` double(11,2) DEFAULT NULL,
  `unit2_cot_det` double(11,2) DEFAULT NULL,
  `unit3_cot_det` double(11,2) DEFAULT NULL,
  `unit4_cot_det` double(11,2) DEFAULT NULL,
  `unit5_cot_det` double(11,2) DEFAULT NULL,
  `total1_cot_det` double(11,2) DEFAULT NULL,
  `total2_cot_det` double(11,2) DEFAULT NULL,
  `total3_cot_det` double(11,2) DEFAULT NULL,
  `total4_cot_det` double(11,2) DEFAULT NULL,
  `total5_cot_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_cot_cab`,`cod_produto`,`cod_req_cab`),
  KEY `fk_req_det_cot_det` (`cod_produto`,`cod_req_cab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cot_det`
--

LOCK TABLES `cot_det` WRITE;
/*!40000 ALTER TABLE `cot_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `cot_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id_departamento` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cod_departamento` int(11) NOT NULL,
  `nome_departamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`),
  UNIQUE KEY `cod_departamento_UNIQUE` (`cod_departamento`),
  UNIQUE KEY `id_departamento_UNIQUE` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,22,'22');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id_email` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email`),
  KEY `k1_id_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_email_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (2,2,'p_email','p_site'),(3,3,'p_email','p_site'),(5,6,'p_email','p_site'),(7,8,'p_email','p_site'),(8,13,'p_email','p_site'),(9,14,'p_email','p_site');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id_empresa` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(20) DEFAULT NULL COMMENT 'cnpj da empresa do sistema',
  `razao_social` varchar(100) DEFAULT NULL,
  `fantasia` varchar(100) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `numero_telefone` varchar(20) DEFAULT NULL,
  `tipo_telefone` char(1) DEFAULT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `fk_cnpj` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='empresa do sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'111','111','111','111','111','1','111'),(2,'222','222','222','222','222','1','222');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'codigo do endereco auto_incremento',
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'codigo do cliente - auto incremento',
  `logradouro_endereco` varchar(50) DEFAULT NULL,
  `complemento_endereco` varchar(50) DEFAULT NULL,
  `numero_endereco` varchar(10) DEFAULT NULL,
  `cep_endereco` varchar(10) DEFAULT NULL,
  `bairro_endereco` varchar(50) DEFAULT NULL,
  `cidade_endereco` varchar(50) DEFAULT NULL,
  `uf_endereco` char(2) DEFAULT NULL,
  `tipo_endereco` int(1) DEFAULT NULL COMMENT '1 = Residencial, 2 = Comercial, 3 = Outros',
  PRIMARY KEY (`id_endereco`),
  KEY `k2_cep` (`cep_endereco`),
  KEY `k1_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_endereco_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,2,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1),(3,3,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1),(5,6,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1),(7,8,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1),(8,13,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1),(9,14,'P_LOGRADOURO_ENDERECO','P_COMPLEMENTO_ENDERECO','numero_end','p_cep','P_BAIRRO_ENDERECO','P_CIDADE_ENDERECO','UF',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `cod_ecivil` int(3) NOT NULL,
  `descricao_ecivil` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_ecivil`),
  UNIQUE KEY `cod_ecivil_unique` (`cod_ecivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (1,'solteiro(a)'),(2,'casado(a)'),(3,'separado(a)'),(4,'divorciado(a)'),(5,'viuvo(a)');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `cod_estados` int(11) DEFAULT NULL,
  `sigla` varchar(2) DEFAULT NULL,
  `nome` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'ac','acre'),(2,'al','alagoas'),(3,'ap','amapá'),(4,'am','amazonas'),(5,'ba','bahia'),(6,'ce','ceará'),(7,'df','distrito federal'),(8,'es','espírito santo'),(9,'rr','roraima'),(10,'go','goiás'),(11,'ma','maranhão'),(12,'mt','mato grosso'),(13,'ms','mato grosso do sul'),(14,'mg','minas gerais'),(15,'pa','pará'),(16,'pb','paraíba'),(17,'pr','paraná'),(18,'pe','pernambuco'),(19,'pi','piauí'),(20,'rj','rio de janeiro'),(21,'rn','rio grande do norte'),(22,'rs','rio grande do sul'),(23,'ro','rondônia'),(24,'to','tocantins'),(25,'sc','santa catarina'),(26,'sp','são paulo'),(27,'se','sergipe');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `id_estoque` int(11) unsigned NOT NULL,
  `id_produto` int(11) unsigned NOT NULL,
  `id_local` int(10) unsigned NOT NULL,
  `quant_entr_estoque` decimal(5,3) DEFAULT NULL,
  `quant_saida_estoque` decimal(5,3) DEFAULT NULL,
  `data_compra_estoque` date DEFAULT NULL,
  `valor_compra_estoque` double(12,2) DEFAULT NULL,
  `valor_venda_estoque` double(12,2) DEFAULT NULL,
  `margem_estoque` decimal(5,3) DEFAULT NULL,
  `data_registro` timestamp NULL DEFAULT NULL,
  `data_alteracao` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estoque`),
  KEY `idx_produto` (`id_produto`),
  KEY `idx_local` (`id_local`),
  CONSTRAINT `fk_estoque_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_local` FOREIGN KEY (`id_local`) REFERENCES `local_estoque` (`id_local`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`estoque_before_insert`
BEFORE INSERT ON `azul_erp`.`estoque`
FOR EACH ROW
begin
set new.data_registro = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`estoque_before_update`
BEFORE UPDATE ON `azul_erp`.`estoque`
FOR EACH ROW
begin
set new.data_alteracao = now();

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fechamento`
--

DROP TABLE IF EXISTS `fechamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechamento` (
  `cod_fechamento` int(11) NOT NULL AUTO_INCREMENT,
  `mes_ano_fechamento` varchar(7) DEFAULT NULL,
  `vlr_saldo_anterior` double(11,2) DEFAULT NULL,
  `vlr_recebimentos` double(11,2) DEFAULT NULL,
  `vlr_pagamentos` double(11,2) DEFAULT NULL,
  `vlr_cheque_ncomp` double(11,2) DEFAULT NULL,
  `vlr_saldo_conta` double(11,2) DEFAULT NULL,
  `vlr_saldo_real` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_fechamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechamento`
--

LOCK TABLES `fechamento` WRITE;
/*!40000 ALTER TABLE `fechamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fisica`
--

DROP TABLE IF EXISTS `fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fisica` (
  `id_fisica` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'codigo do cliente - auto incremento',
  `id_pessoa` int(11) unsigned NOT NULL,
  `rg_fisica` varchar(25) DEFAULT NULL,
  `orgao_rg_fisica` varchar(10) DEFAULT NULL,
  `nascimento_fisica` date DEFAULT NULL,
  `ecivil_fisica` int(1) DEFAULT NULL COMMENT '1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  `sexo_fisica` int(1) unsigned DEFAULT NULL COMMENT '1=maculino, 2 = feminino',
  `profissao_fisica` varchar(40) DEFAULT NULL,
  `renda_fisica` double(11,2) DEFAULT NULL,
  `cadastro_fisica` timestamp NULL DEFAULT NULL COMMENT 'Data cadastro',
  `alterado_fisica` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_fisica`),
  UNIQUE KEY `kid_fisica_UNIQUE` (`id_fisica`),
  KEY `k_pessoa` (`id_pessoa`),
  KEY `fk_sexo_idx` (`sexo_fisica`),
  KEY `fk_escivil_idx` (`ecivil_fisica`),
  CONSTRAINT `fk_escivil` FOREIGN KEY (`ecivil_fisica`) REFERENCES `estado_civil` (`cod_ecivil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_fisica` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sexo` FOREIGN KEY (`sexo_fisica`) REFERENCES `sexo` (`cod_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='tabela dos dados do cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fisica`
--

LOCK TABLES `fisica` WRITE;
/*!40000 ALTER TABLE `fisica` DISABLE KEYS */;
INSERT INTO `fisica` VALUES (2,2,'p_rg_fisica','p_orgao_rg','0000-00-00',1,1,'P_PROFISSAO_FISICA',0.00,'2016-04-07 13:55:10',NULL),(3,3,'p_rg_fisica','p_orgao_rg','0000-00-00',1,1,'P_PROFISSAO_FISICA',0.00,'2016-04-07 14:07:31','2016-04-07 15:01:15');
/*!40000 ALTER TABLE `fisica` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`fisica_before_insert`
BEFORE INSERT ON `azul_erp`.`fisica`
FOR EACH ROW
begin
set new.cadastro_fisica = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`fisica_before_update`
BEFORE UPDATE ON `azul_erp`.`fisica`
FOR EACH ROW
begin
set new.alterado_fisica = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL,
  `id_departamento` int(11) unsigned NOT NULL,
  `funcao_funcionario` varchar(20) DEFAULT NULL,
  `login_funcionario` varchar(10) DEFAULT NULL,
  `senha_funcionario` varchar(10) DEFAULT NULL,
  `admissao_funcionario` date DEFAULT NULL,
  `acesso_total` char(1) DEFAULT NULL,
  `id_matricula` int(11) DEFAULT NULL COMMENT 'Matricula do cadostro de RH do colaborador.',
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `kid_pessoa_UNIQUE` (`id_pessoa`),
  UNIQUE KEY `kid_funcionario_UNIQUE` (`id_funcionario`),
  KEY `fk_departamento_funcionario` (`id_departamento`),
  CONSTRAINT `fk_funcionario_dpto` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (2,2,1,'P_FUNCAO_FUNCIONA','P_LOGIN_','P_SENHA_','0000-00-00','1',NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cod_grupo` int(3) unsigned NOT NULL,
  `id_empresa` int(11) unsigned NOT NULL,
  `descricao_grupo` text,
  `status` int(1) DEFAULT '1' COMMENT '1 ativo, 2 inativo.',
  PRIMARY KEY (`id_grupo`),
  UNIQUE KEY `id_grupo_UNIQUE` (`cod_grupo`,`id_empresa`),
  KEY `idx_gidempresa` (`id_empresa`),
  CONSTRAINT `fk_empresa_grupo` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (8,1,1,'grupo 1 emp 1',1),(11,3,2,'grupo 3 emp 2',1),(12,4,2,'grupo 4 emp 2',1),(13,5,2,'grupo 5 emp 2',1),(14,2,2,'grupo 2 emp 2',2);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`grupo_BEFORE_UPDATE` BEFORE UPDATE ON `grupo` FOR EACH ROW
BEGIN
update subgrupo set status = NEW.status
  where id_grupo = NEW.id_grupo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `juridica`
--

DROP TABLE IF EXISTS `juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juridica` (
  `id_juridica` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'id tabela de pessoa',
  `contato_juridica` varchar(50) DEFAULT NULL,
  `cadastro_juridica` timestamp NULL DEFAULT NULL,
  `alterado_juridica` timestamp NULL DEFAULT NULL,
  `inscrestadual_juridica` varchar(20) DEFAULT NULL,
  `inscrmunicipal_juridica` varchar(20) DEFAULT NULL,
  `data_abertura_juridica` date DEFAULT NULL COMMENT 'Data de abertura do contrato social. Quando a empresa foi aberta',
  PRIMARY KEY (`id_juridica`),
  UNIQUE KEY `kid_juridica_pessoa_UNIQUE` (`id_pessoa`),
  KEY `kid_juridica` (`id_juridica`),
  CONSTRAINT `fk_pessoa_juridica` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juridica`
--

LOCK TABLES `juridica` WRITE;
/*!40000 ALTER TABLE `juridica` DISABLE KEYS */;
INSERT INTO `juridica` VALUES (2,6,'P_CONTATO','2016-04-08 17:04:07','2016-04-12 14:24:44','p_inscrestadual','p_inscrmunicipal','2016-04-12'),(4,8,'P_CONTATO','2016-04-08 17:31:40','2016-04-12 13:20:37','p_inscrestadual','p_inscrmunicipal','2016-04-12'),(5,13,'P_CONTATO','2016-04-12 12:52:15','2016-04-12 12:58:33','p_inscrestadual','p_inscrmunicipal','2016-04-06'),(8,14,'P_CONTATO','2016-04-12 13:05:11','2016-04-12 14:52:11','p_inscrestadual','p_inscrmunicipal','2016-04-12');
/*!40000 ALTER TABLE `juridica` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`juridica_before_insert`
BEFORE INSERT ON `azul_erp`.`juridica`
FOR EACH ROW
begin
set new.cadastro_juridica = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`juridica_before_update`
BEFORE UPDATE ON `azul_erp`.`juridica`
FOR EACH ROW
begin
set new.alterado_juridica = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `local_estoque`
--

DROP TABLE IF EXISTS `local_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_estoque` (
  `id_local` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) unsigned NOT NULL,
  `localizacao` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `setor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_local`),
  KEY `idx_localizacao` (`localizacao`),
  KEY `idx_empresa` (`id_empresa`),
  CONSTRAINT `fk_estoque_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_estoque`
--

LOCK TABLES `local_estoque` WRITE;
/*!40000 ALTER TABLE `local_estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `local_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimento`
--

DROP TABLE IF EXISTS `movimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimento` (
  `cod_movimento` int(11) NOT NULL AUTO_INCREMENT,
  `cod_plano_conta` int(11) DEFAULT NULL,
  `mes_ano_movimento` varchar(7) DEFAULT NULL,
  `num_cheque_movimento` int(11) DEFAULT NULL,
  `num_documento_movimento` varchar(20) DEFAULT NULL,
  `data_cheque_movimento` date DEFAULT NULL,
  `data_lancamento_movimento` date DEFAULT NULL,
  `historico_movimento` varchar(50) DEFAULT NULL,
  `vlr_documento_movimento` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_movimento`),
  KEY `fk_plano_conta_movimento` (`cod_plano_conta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimento`
--

LOCK TABLES `movimento` WRITE;
/*!40000 ALTER TABLE `movimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipios_ibge`
--

DROP TABLE IF EXISTS `municipios_ibge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios_ibge` (
  `codigo` int(6) NOT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios_ibge`
--

LOCK TABLES `municipios_ibge` WRITE;
/*!40000 ALTER TABLE `municipios_ibge` DISABLE KEYS */;
INSERT INTO `municipios_ibge` VALUES (110001,'alta floresta d\'oeste','ro'),(110002,'ariquemes','ro'),(110003,'cabixi','ro'),(110004,'cacoal','ro'),(110005,'cerejeiras','ro'),(110006,'colorado do oeste','ro'),(110007,'corumbiara','ro'),(110008,'costa marques','ro'),(110009,'espigao d\'oeste','ro'),(110010,'guajara-mirim','ro'),(110011,'jaru','ro'),(110012,'ji-parana','ro'),(110013,'machadinho d\'oeste','ro'),(110014,'nova brasilandia d\'oeste','ro'),(110015,'ouro preto do oeste','ro'),(110018,'pimenta bueno','ro'),(110020,'porto velho','ro'),(110025,'presidente medici','ro'),(110026,'rio crespo','ro'),(110028,'rolim de moura','ro'),(110029,'santa luzia d\'oeste','ro'),(110030,'vilhena','ro'),(110032,'sao miguel do guapore','ro'),(110033,'nova mamore','ro'),(110034,'alvorada d\'oeste','ro'),(110037,'alto alegre dos parecis','ro'),(110040,'alto paraiso','ro'),(110045,'buritis','ro'),(110050,'novo horizonte do oeste','ro'),(110060,'cacaulandia','ro'),(110070,'campo novo de rondonia','ro'),(110080,'candeias do jamari','ro'),(110090,'castanheiras','ro'),(110092,'chupinguaia','ro'),(110094,'cujubim','ro'),(110100,'governador jorge teixeira','ro'),(110110,'itapua do oeste','ro'),(110120,'ministro andreazza','ro'),(110130,'mirante da serra','ro'),(110140,'monte negro','ro'),(110143,'nova uniao','ro'),(110145,'parecis','ro'),(110146,'pimenteiras do oeste','ro'),(110147,'primavera de rondonia','ro'),(110148,'sao felipe d\'oeste','ro'),(110149,'sao francisco do guapore','ro'),(110150,'seringueiras','ro'),(110155,'teixeiropolis','ro'),(110160,'theobroma','ro'),(110170,'urupa','ro'),(110175,'vale do anari','ro'),(110180,'vale do paraiso','ro'),(120001,'acrelandia','ac'),(120005,'assis brasil','ac'),(120010,'brasileia','ac'),(120013,'bujari','ac'),(120017,'capixaba','ac'),(120020,'cruzeiro do sul','ac'),(120025,'epitaciolandia','ac'),(120030,'feijo','ac'),(120032,'jordao','ac'),(120033,'mancio lima','ac'),(120034,'manoel urbano','ac'),(120035,'marechal thaumaturgo','ac'),(120038,'placido de castro','ac'),(120039,'porto walter','ac'),(120040,'rio branco','ac'),(120042,'rodrigues alves','ac'),(120043,'santa rosa do purus','ac'),(120045,'senador guiomard','ac'),(120050,'sena madureira','ac'),(120060,'tarauaca','ac'),(120070,'xapuri','ac'),(120080,'porto acre','ac'),(130002,'alvaraes','am'),(130006,'amatura','am'),(130008,'anama','am'),(130010,'anori','am'),(130014,'apui','am'),(130020,'atalaia do norte','am'),(130030,'autazes','am'),(130040,'barcelos','am'),(130050,'barreirinha','am'),(130060,'benjamin constant','am'),(130063,'beruri','am'),(130068,'boa vista do ramos','am'),(130070,'boca do acre','am'),(130080,'borba','am'),(130083,'caapiranga','am'),(130090,'canutama','am'),(130100,'carauari','am'),(130110,'careiro','am'),(130115,'careiro da varzea','am'),(130120,'coari','am'),(130130,'codajas','am'),(130140,'eirunepe','am'),(130150,'envira','am'),(130160,'fonte boa','am'),(130165,'guajara','am'),(130170,'humaita','am'),(130180,'ipixuna','am'),(130185,'iranduba','am'),(130190,'itacoatiara','am'),(130195,'itamarati','am'),(130200,'itapiranga','am'),(130210,'japura','am'),(130220,'jurua','am'),(130230,'jutai','am'),(130240,'labrea','am'),(130250,'manacapuru','am'),(130255,'manaquiri','am'),(130260,'manaus','am'),(130270,'manicore','am'),(130280,'maraa','am'),(130290,'maues','am'),(130300,'nhamunda','am'),(130310,'nova olinda do norte','am'),(130320,'novo airao','am'),(130330,'novo aripuana','am'),(130340,'parintins','am'),(130350,'pauini','am'),(130353,'presidente figueiredo','am'),(130356,'rio preto da eva','am'),(130360,'santa isabel do rio negro','am'),(130370,'santo antonio do ica','am'),(130380,'sao gabriel da cachoeira','am'),(130390,'sao paulo de olivenca','am'),(130395,'sao sebastiao do uatuma','am'),(130400,'silves','am'),(130406,'tabatinga','am'),(130410,'tapaua','am'),(130420,'tefe','am'),(130423,'tonantins','am'),(130426,'uarini','am'),(130430,'urucara','am'),(130440,'urucurituba','am'),(140002,'amajari','rr'),(140005,'alto alegre','rr'),(140010,'boa vista','rr'),(140015,'bonfim','rr'),(140017,'canta','rr'),(140020,'caracarai','rr'),(140023,'caroebe','rr'),(140028,'iracema','rr'),(140030,'mucajai','rr'),(140040,'normandia','rr'),(140045,'pacaraima','rr'),(140047,'rorainopolis','rr'),(140050,'sao joao da baliza','rr'),(140060,'sao luiz','rr'),(140070,'uiramuta','rr'),(150010,'abaetetuba','pa'),(150013,'abel figueiredo','pa'),(150020,'acara','pa'),(150030,'afua','pa'),(150034,'agua azul do norte','pa'),(150040,'alenquer','pa'),(150050,'almeirim','pa'),(150060,'altamira','pa'),(150070,'anajas','pa'),(150080,'ananindeua','pa'),(150085,'anapu','pa'),(150090,'augusto correa','pa'),(150095,'aurora do para','pa'),(150100,'aveiro','pa'),(150110,'bagre','pa'),(150120,'baiao','pa'),(150125,'bannach','pa'),(150130,'barcarena','pa'),(150140,'belem','pa'),(150145,'belterra','pa'),(150150,'benevides','pa'),(150157,'bom jesus do tocantins','pa'),(150160,'bonito','pa'),(150170,'braganca','pa'),(150172,'brasil novo','pa'),(150175,'brejo grande do araguaia','pa'),(150178,'breu branco','pa'),(150180,'breves','pa'),(150190,'bujaru','pa'),(150195,'cachoeira do piria','pa'),(150200,'cachoeira do arari','pa'),(150210,'cameta','pa'),(150215,'canaa dos carajas','pa'),(150220,'capanema','pa'),(150230,'capitao poco','pa'),(150240,'castanhal','pa'),(150250,'chaves','pa'),(150260,'colares','pa'),(150270,'conceicao do araguaia','pa'),(150275,'concordia do para','pa'),(150276,'cumaru do norte','pa'),(150277,'curionopolis','pa'),(150280,'curralinho','pa'),(150285,'curua','pa'),(150290,'curuca','pa'),(150293,'dom eliseu','pa'),(150295,'eldorado dos carajas','pa'),(150300,'faro','pa'),(150304,'floresta do araguaia','pa'),(150307,'garrafao do norte','pa'),(150309,'goianesia do para','pa'),(150310,'gurupa','pa'),(150320,'igarape-acu','pa'),(150330,'igarape-miri','pa'),(150340,'inhangapi','pa'),(150345,'ipixuna do para','pa'),(150350,'irituia','pa'),(150360,'itaituba','pa'),(150370,'itupiranga','pa'),(150375,'jacareacanga','pa'),(150380,'jacunda','pa'),(150390,'juruti','pa'),(150400,'limoeiro do ajuru','pa'),(150405,'mae do rio','pa'),(150410,'magalhaes barata','pa'),(150420,'maraba','pa'),(150430,'maracana','pa'),(150440,'marapanim','pa'),(150442,'marituba','pa'),(150445,'medicilandia','pa'),(150450,'melgaco','pa'),(150460,'mocajuba','pa'),(150470,'moju','pa'),(150480,'monte alegre','pa'),(150490,'muana','pa'),(150495,'nova esperanca do piria','pa'),(150497,'nova ipixuna','pa'),(150500,'nova timboteua','pa'),(150503,'novo progresso','pa'),(150506,'novo repartimento','pa'),(150510,'obidos','pa'),(150520,'oeiras do para','pa'),(150530,'oriximina','pa'),(150540,'ourem','pa'),(150543,'ourilandia do norte','pa'),(150548,'pacaja','pa'),(150549,'palestina do para','pa'),(150550,'paragominas','pa'),(150553,'parauapebas','pa'),(150555,'pau d\'arco','pa'),(150560,'peixe-boi','pa'),(150563,'picarra','pa'),(150565,'placas','pa'),(150570,'ponta de pedras','pa'),(150580,'portel','pa'),(150590,'porto de moz','pa'),(150600,'prainha','pa'),(150610,'primavera','pa'),(150611,'quatipuru','pa'),(150613,'redencao','pa'),(150616,'rio maria','pa'),(150618,'rondon do para','pa'),(150619,'ruropolis','pa'),(150620,'salinopolis','pa'),(150630,'salvaterra','pa'),(150635,'santa barbara do para','pa'),(150640,'santa cruz do arari','pa'),(150650,'santa isabel do para','pa'),(150655,'santa luzia do para','pa'),(150658,'santa maria das barreiras','pa'),(150660,'santa maria do para','pa'),(150670,'santana do araguaia','pa'),(150680,'santarem','pa'),(150690,'santarem novo','pa'),(150700,'santo antonio do taua','pa'),(150710,'sao caetano de odivelas','pa'),(150715,'sao domingos do araguaia','pa'),(150720,'sao domingos do capim','pa'),(150730,'sao felix do xingu','pa'),(150740,'sao francisco do para','pa'),(150745,'sao geraldo do araguaia','pa'),(150746,'sao joao da ponta','pa'),(150747,'sao joao de pirabas','pa'),(150750,'sao joao do araguaia','pa'),(150760,'sao miguel do guama','pa'),(150770,'sao sebastiao da boa vista','pa'),(150775,'sapucaia','pa'),(150780,'senador jose porfirio','pa'),(150790,'soure','pa'),(150795,'tailandia','pa'),(150796,'terra alta','pa'),(150797,'terra santa','pa'),(150800,'tome-acu','pa'),(150803,'tracuateua','pa'),(150805,'trairao','pa'),(150808,'tucuma','pa'),(150810,'tucurui','pa'),(150812,'ulianopolis','pa'),(150815,'uruara','pa'),(150820,'vigia','pa'),(150830,'viseu','pa'),(150835,'vitoria do xingu','pa'),(150840,'xinguara','pa'),(160005,'serra do navio','ap'),(160010,'amapa','ap'),(160015,'pedra branca do amapari','ap'),(160020,'calcoene','ap'),(160021,'cutias','ap'),(160023,'ferreira gomes','ap'),(160025,'itaubal','ap'),(160027,'laranjal do jari','ap'),(160030,'macapa','ap'),(160040,'mazagao','ap'),(160050,'oiapoque','ap'),(160053,'porto grande','ap'),(160055,'pracuuba','ap'),(160060,'santana','ap'),(160070,'tartarugalzinho','ap'),(160080,'vitoria do jari','ap'),(170025,'abreulandia','to'),(170030,'aguiarnopolis','to'),(170035,'alianca do tocantins','to'),(170040,'almas','to'),(170070,'alvorada','to'),(170100,'ananas','to'),(170105,'angico','to'),(170110,'aparecida do rio negro','to'),(170130,'aragominas','to'),(170190,'araguacema','to'),(170200,'araguacu','to'),(170210,'araguaina','to'),(170215,'araguana','to'),(170220,'araguatins','to'),(170230,'arapoema','to'),(170240,'arraias','to'),(170255,'augustinopolis','to'),(170270,'aurora do tocantins','to'),(170290,'axixa do tocantins','to'),(170300,'babaculandia','to'),(170305,'bandeirantes do tocantins','to'),(170307,'barra do ouro','to'),(170310,'barrolandia','to'),(170320,'bernardo sayao','to'),(170330,'bom jesus do tocantins','to'),(170360,'brasilandia do tocantins','to'),(170370,'brejinho de nazare','to'),(170380,'buriti do tocantins','to'),(170382,'cachoeirinha','to'),(170384,'campos lindos','to'),(170386,'cariri do tocantins','to'),(170388,'carmolandia','to'),(170389,'carrasco bonito','to'),(170390,'caseara','to'),(170410,'centenario','to'),(170460,'chapada de areia','to'),(170510,'chapada da natividade','to'),(170550,'colinas do tocantins','to'),(170555,'combinado','to'),(170560,'conceicao do tocantins','to'),(170600,'couto magalhaes','to'),(170610,'cristalandia','to'),(170625,'crixas do tocantins','to'),(170650,'darcinopolis','to'),(170700,'dianopolis','to'),(170710,'divinopolis do tocantins','to'),(170720,'dois irmaos do tocantins','to'),(170730,'duere','to'),(170740,'esperantina','to'),(170755,'fatima','to'),(170765,'figueiropolis','to'),(170770,'filadelfia','to'),(170820,'formoso do araguaia','to'),(170825,'fortaleza do tabocao','to'),(170830,'goianorte','to'),(170900,'goiatins','to'),(170930,'guarai','to'),(170950,'gurupi','to'),(170980,'ipueiras','to'),(171050,'itacaja','to'),(171070,'itaguatins','to'),(171090,'itapiratins','to'),(171110,'itapora do tocantins','to'),(171150,'jau do tocantins','to'),(171180,'juarina','to'),(171190,'lagoa da confusao','to'),(171195,'lagoa do tocantins','to'),(171200,'lajeado','to'),(171215,'lavandeira','to'),(171240,'lizarda','to'),(171245,'luzinopolis','to'),(171250,'marianopolis do tocantins','to'),(171270,'mateiros','to'),(171280,'maurilandia do tocantins','to'),(171320,'miracema do tocantins','to'),(171330,'miranorte','to'),(171360,'monte do carmo','to'),(171370,'monte santo do tocantins','to'),(171380,'palmeiras do tocantins','to'),(171395,'muricilandia','to'),(171420,'natividade','to'),(171430,'nazare','to'),(171488,'nova olinda','to'),(171500,'nova rosalandia','to'),(171510,'novo acordo','to'),(171515,'novo alegre','to'),(171525,'novo jardim','to'),(171550,'oliveira de fatima','to'),(171570,'palmeirante','to'),(171575,'palmeiropolis','to'),(171610,'paraiso do tocantins','to'),(171620,'parana','to'),(171630,'pau d\'arco','to'),(171650,'pedro afonso','to'),(171660,'peixe','to'),(171665,'pequizeiro','to'),(171670,'colmeia','to'),(171700,'pindorama do tocantins','to'),(171720,'piraque','to'),(171750,'pium','to'),(171780,'ponte alta do bom jesus','to'),(171790,'ponte alta do tocantins','to'),(171800,'porto alegre do tocantins','to'),(171820,'porto nacional','to'),(171830,'praia norte','to'),(171840,'presidente kennedy','to'),(171845,'pugmil','to'),(171850,'recursolandia','to'),(171855,'riachinho','to'),(171865,'rio da conceicao','to'),(171870,'rio dos bois','to'),(171875,'rio sono','to'),(171880,'sampaio','to'),(171884,'sandolandia','to'),(171886,'santa fe do araguaia','to'),(171888,'santa maria do tocantins','to'),(171889,'santa rita do tocantins','to'),(171890,'santa rosa do tocantins','to'),(171900,'santa tereza do tocantins','to'),(172000,'santa terezinha do tocantins','to'),(172010,'sao bento do tocantins','to'),(172015,'sao felix do tocantins','to'),(172020,'sao miguel do tocantins','to'),(172025,'sao salvador do tocantins','to'),(172030,'sao sebastiao do tocantins','to'),(172049,'sao valerio da natividade','to'),(172065,'silvanopolis','to'),(172080,'sitio novo do tocantins','to'),(172085,'sucupira','to'),(172090,'taguatinga','to'),(172093,'taipas do tocantins','to'),(172097,'talisma','to'),(172100,'palmas','to'),(172110,'tocantinia','to'),(172120,'tocantinopolis','to'),(172125,'tupirama','to'),(172130,'tupiratins','to'),(172208,'wanderlandia','to'),(172210,'xambioa','to'),(210005,'acailandia','ma'),(210010,'afonso cunha','ma'),(210015,'agua doce do maranhao','ma'),(210020,'alcantara','ma'),(210030,'aldeias altas','ma'),(210040,'altamira do maranhao','ma'),(210043,'alto alegre do maranhao','ma'),(210047,'alto alegre do pindare','ma'),(210050,'alto parnaiba','ma'),(210055,'amapa do maranhao','ma'),(210060,'amarante do maranhao','ma'),(210070,'anajatuba','ma'),(210080,'anapurus','ma'),(210083,'apicum-acu','ma'),(210087,'araguana','ma'),(210090,'araioses','ma'),(210095,'arame','ma'),(210100,'arari','ma'),(210110,'axixa','ma'),(210120,'bacabal','ma'),(210125,'bacabeira','ma'),(210130,'bacuri','ma'),(210135,'bacurituba','ma'),(210140,'balsas','ma'),(210150,'barao de grajau','ma'),(210160,'barra do corda','ma'),(210170,'barreirinhas','ma'),(210173,'belagua','ma'),(210177,'bela vista do maranhao','ma'),(210180,'benedito leite','ma'),(210190,'bequimao','ma'),(210193,'bernardo do mearim','ma'),(210197,'boa vista do gurupi','ma'),(210200,'bom jardim','ma'),(210203,'bom jesus das selvas','ma'),(210207,'bom lugar','ma'),(210210,'brejo','ma'),(210215,'brejo de areia','ma'),(210220,'buriti','ma'),(210230,'buriti bravo','ma'),(210232,'buriticupu','ma'),(210235,'buritirana','ma'),(210237,'cachoeira grande','ma'),(210240,'cajapio','ma'),(210250,'cajari','ma'),(210255,'campestre do maranhao','ma'),(210260,'candido mendes','ma'),(210270,'cantanhede','ma'),(210275,'capinzal do norte','ma'),(210280,'carolina','ma'),(210290,'carutapera','ma'),(210300,'caxias','ma'),(210310,'cedral','ma'),(210312,'central do maranhao','ma'),(210315,'centro do guilherme','ma'),(210317,'centro novo do maranhao','ma'),(210320,'chapadinha','ma'),(210325,'cidelandia','ma'),(210330,'codo','ma'),(210340,'coelho neto','ma'),(210350,'colinas','ma'),(210355,'conceicao do lago-acu','ma'),(210360,'coroata','ma'),(210370,'cururupu','ma'),(210375,'davinopolis','ma'),(210380,'dom pedro','ma'),(210390,'duque bacelar','ma'),(210400,'esperantinopolis','ma'),(210405,'estreito','ma'),(210407,'feira nova do maranhao','ma'),(210408,'fernando falcao','ma'),(210409,'formosa da serra negra','ma'),(210410,'fortaleza dos nogueiras','ma'),(210420,'fortuna','ma'),(210430,'godofredo viana','ma'),(210440,'goncalves dias','ma'),(210450,'governador archer','ma'),(210455,'governador edison lobao','ma'),(210460,'governador eugenio barros','ma'),(210462,'governador luiz rocha','ma'),(210465,'governador newton bello','ma'),(210467,'governador nunes freire','ma'),(210470,'graca aranha','ma'),(210480,'grajau','ma'),(210490,'guimaraes','ma'),(210500,'humberto de campos','ma'),(210510,'icatu','ma'),(210515,'igarape do meio','ma'),(210520,'igarape grande','ma'),(210530,'imperatriz','ma'),(210535,'itaipava do grajau','ma'),(210540,'itapecuru mirim','ma'),(210542,'itinga do maranhao','ma'),(210545,'jatoba','ma'),(210547,'jenipapo dos vieiras','ma'),(210550,'joao lisboa','ma'),(210560,'joselandia','ma'),(210565,'junco do maranhao','ma'),(210570,'lago da pedra','ma'),(210580,'lago do junco','ma'),(210590,'lago verde','ma'),(210592,'lagoa do mato','ma'),(210594,'lago dos rodrigues','ma'),(210596,'lagoa grande do maranhao','ma'),(210598,'lajeado novo','ma'),(210600,'lima campos','ma'),(210610,'loreto','ma'),(210620,'luis domingues','ma'),(210630,'magalhaes de almeida','ma'),(210632,'maracacume','ma'),(210635,'maraja do sena','ma'),(210637,'maranhaozinho','ma'),(210640,'mata roma','ma'),(210650,'matinha','ma'),(210660,'matoes','ma'),(210663,'matoes do norte','ma'),(210667,'milagres do maranhao','ma'),(210670,'mirador','ma'),(210675,'miranda do norte','ma'),(210680,'mirinzal','ma'),(210690,'moncao','ma'),(210700,'montes altos','ma'),(210710,'morros','ma'),(210720,'nina rodrigues','ma'),(210725,'nova colinas','ma'),(210730,'nova iorque','ma'),(210735,'nova olinda do maranhao','ma'),(210740,'olho d\'agua das cunhas','ma'),(210745,'olinda nova do maranhao','ma'),(210750,'paco do lumiar','ma'),(210760,'palmeirandia','ma'),(210770,'paraibano','ma'),(210780,'parnarama','ma'),(210790,'passagem franca','ma'),(210800,'pastos bons','ma'),(210805,'paulino neves','ma'),(210810,'paulo ramos','ma'),(210820,'pedreiras','ma'),(210825,'pedro do rosario','ma'),(210830,'penalva','ma'),(210840,'peri mirim','ma'),(210845,'peritoro','ma'),(210850,'pindare-mirim','ma'),(210860,'pinheiro','ma'),(210870,'pio xii','ma'),(210880,'pirapemas','ma'),(210890,'pocao de pedras','ma'),(210900,'porto franco','ma'),(210905,'porto rico do maranhao','ma'),(210910,'presidente dutra','ma'),(210920,'presidente juscelino','ma'),(210923,'presidente medici','ma'),(210927,'presidente sarney','ma'),(210930,'presidente vargas','ma'),(210940,'primeira cruz','ma'),(210945,'raposa','ma'),(210950,'riachao','ma'),(210955,'ribamar fiquene','ma'),(210960,'rosario','ma'),(210970,'sambaiba','ma'),(210975,'santa filomena do maranhao','ma'),(210980,'santa helena','ma'),(210990,'santa ines','ma'),(211000,'santa luzia','ma'),(211003,'santa luzia do parua','ma'),(211010,'santa quiteria do maranhao','ma'),(211020,'santa rita','ma'),(211023,'santana do maranhao','ma'),(211027,'santo amaro do maranhao','ma'),(211030,'santo antonio dos lopes','ma'),(211040,'sao benedito do rio preto','ma'),(211050,'sao bento','ma'),(211060,'sao bernardo','ma'),(211065,'sao domingos do azeitao','ma'),(211070,'sao domingos do maranhao','ma'),(211080,'sao felix de balsas','ma'),(211085,'sao francisco do brejao','ma'),(211090,'sao francisco do maranhao','ma'),(211100,'sao joao batista','ma'),(211102,'sao joao do caru','ma'),(211105,'sao joao do paraiso','ma'),(211107,'sao joao do soter','ma'),(211110,'sao joao dos patos','ma'),(211120,'sao jose de ribamar','ma'),(211125,'sao jose dos basilios','ma'),(211130,'sao luis','ma'),(211140,'sao luis gonzaga do maranhao','ma'),(211150,'sao mateus do maranhao','ma'),(211153,'sao pedro da agua branca','ma'),(211157,'sao pedro dos crentes','ma'),(211160,'sao raimundo das mangabeiras','ma'),(211163,'sao raimundo do doca bezerra','ma'),(211167,'sao roberto','ma'),(211170,'sao vicente ferrer','ma'),(211172,'satubinha','ma'),(211174,'senador alexandre costa','ma'),(211176,'senador la rocque','ma'),(211178,'serrano do maranhao','ma'),(211180,'sitio novo','ma'),(211190,'sucupira do norte','ma'),(211195,'sucupira do riachao','ma'),(211200,'tasso fragoso','ma'),(211210,'timbiras','ma'),(211220,'timon','ma'),(211223,'trizidela do vale','ma'),(211227,'tufilandia','ma'),(211230,'tuntum','ma'),(211240,'turiacu','ma'),(211245,'turilandia','ma'),(211250,'tutoia','ma'),(211260,'urbano santos','ma'),(211270,'vargem grande','ma'),(211280,'viana','ma'),(211285,'vila nova dos martirios','ma'),(211290,'vitoria do mearim','ma'),(211300,'vitorino freire','ma'),(211400,'ze doca','ma'),(220005,'acaua','pi'),(220010,'agricolandia','pi'),(220020,'agua branca','pi'),(220025,'alagoinha do piaui','pi'),(220027,'alegrete do piaui','pi'),(220030,'alto longa','pi'),(220040,'altos','pi'),(220045,'alvorada do gurgueia','pi'),(220050,'amarante','pi'),(220060,'angical do piaui','pi'),(220070,'anisio de abreu','pi'),(220080,'antonio almeida','pi'),(220090,'aroazes','pi'),(220095,'aroeiras do itaim','pi'),(220100,'arraial','pi'),(220105,'assuncao do piaui','pi'),(220110,'avelino lopes','pi'),(220115,'baixa grande do ribeiro','pi'),(220117,'barra d\'alcantara','pi'),(220120,'barras','pi'),(220130,'barreiras do piaui','pi'),(220140,'barro duro','pi'),(220150,'batalha','pi'),(220155,'bela vista do piaui','pi'),(220157,'belem do piaui','pi'),(220160,'beneditinos','pi'),(220170,'bertolinia','pi'),(220173,'betania do piaui','pi'),(220177,'boa hora','pi'),(220180,'bocaina','pi'),(220190,'bom jesus','pi'),(220191,'bom principio do piaui','pi'),(220192,'bonfim do piaui','pi'),(220194,'boqueirao do piaui','pi'),(220196,'brasileira','pi'),(220198,'brejo do piaui','pi'),(220200,'buriti dos lopes','pi'),(220202,'buriti dos montes','pi'),(220205,'cabeceiras do piaui','pi'),(220207,'cajazeiras do piaui','pi'),(220208,'cajueiro da praia','pi'),(220209,'caldeirao grande do piaui','pi'),(220210,'campinas do piaui','pi'),(220211,'campo alegre do fidalgo','pi'),(220213,'campo grande do piaui','pi'),(220217,'campo largo do piaui','pi'),(220220,'campo maior','pi'),(220225,'canavieira','pi'),(220230,'canto do buriti','pi'),(220240,'capitao de campos','pi'),(220245,'capitao gervasio oliveira','pi'),(220250,'caracol','pi'),(220253,'caraubas do piaui','pi'),(220255,'caridade do piaui','pi'),(220260,'castelo do piaui','pi'),(220265,'caxingo','pi'),(220270,'cocal','pi'),(220271,'cocal de telha','pi'),(220272,'cocal dos alves','pi'),(220273,'coivaras','pi'),(220275,'colonia do gurgueia','pi'),(220277,'colonia do piaui','pi'),(220280,'conceicao do caninde','pi'),(220285,'coronel jose dias','pi'),(220290,'corrente','pi'),(220300,'cristalandia do piaui','pi'),(220310,'cristino castro','pi'),(220320,'curimata','pi'),(220323,'currais','pi'),(220325,'curralinhos','pi'),(220327,'curral novo do piaui','pi'),(220330,'demerval lobao','pi'),(220335,'dirceu arcoverde','pi'),(220340,'dom expedito lopes','pi'),(220342,'domingos mourao','pi'),(220345,'dom inocencio','pi'),(220350,'elesbao veloso','pi'),(220360,'eliseu martins','pi'),(220370,'esperantina','pi'),(220375,'fartura do piaui','pi'),(220380,'flores do piaui','pi'),(220385,'floresta do piaui','pi'),(220390,'floriano','pi'),(220400,'francinopolis','pi'),(220410,'francisco ayres','pi'),(220415,'francisco macedo','pi'),(220420,'francisco santos','pi'),(220430,'fronteiras','pi'),(220435,'geminiano','pi'),(220440,'gilbues','pi'),(220450,'guadalupe','pi'),(220455,'guaribas','pi'),(220460,'hugo napoleao','pi'),(220465,'ilha grande','pi'),(220470,'inhuma','pi'),(220480,'ipiranga do piaui','pi'),(220490,'isaias coelho','pi'),(220500,'itainopolis','pi'),(220510,'itaueira','pi'),(220515,'jacobina do piaui','pi'),(220520,'jaicos','pi'),(220525,'jardim do mulato','pi'),(220527,'jatoba do piaui','pi'),(220530,'jerumenha','pi'),(220535,'joao costa','pi'),(220540,'joaquim pires','pi'),(220545,'joca marques','pi'),(220550,'jose de freitas','pi'),(220551,'juazeiro do piaui','pi'),(220552,'julio borges','pi'),(220553,'jurema','pi'),(220554,'lagoinha do piaui','pi'),(220555,'lagoa alegre','pi'),(220556,'lagoa do barro do piaui','pi'),(220557,'lagoa de sao francisco','pi'),(220558,'lagoa do piaui','pi'),(220559,'lagoa do sitio','pi'),(220560,'landri sales','pi'),(220570,'luis correia','pi'),(220580,'luzilandia','pi'),(220585,'madeiro','pi'),(220590,'manoel emidio','pi'),(220595,'marcolandia','pi'),(220600,'marcos parente','pi'),(220605,'massape do piaui','pi'),(220610,'matias olimpio','pi'),(220620,'miguel alves','pi'),(220630,'miguel leao','pi'),(220635,'milton brandao','pi'),(220640,'monsenhor gil','pi'),(220650,'monsenhor hipolito','pi'),(220660,'monte alegre do piaui','pi'),(220665,'morro cabeca no tempo','pi'),(220667,'morro do chapeu do piaui','pi'),(220669,'murici dos portelas','pi'),(220670,'nazare do piaui','pi'),(220672,'nazaria','pi'),(220675,'nossa senhora de nazare','pi'),(220680,'nossa senhora dos remedios','pi'),(220690,'novo oriente do piaui','pi'),(220695,'novo santo antonio','pi'),(220700,'oeiras','pi'),(220710,'olho d\'agua do piaui','pi'),(220720,'padre marcos','pi'),(220730,'paes landim','pi'),(220735,'pajeu do piaui','pi'),(220740,'palmeira do piaui','pi'),(220750,'palmeirais','pi'),(220755,'paqueta','pi'),(220760,'parnagua','pi'),(220770,'parnaiba','pi'),(220775,'passagem franca do piaui','pi'),(220777,'patos do piaui','pi'),(220779,'pau d\'arco do piaui','pi'),(220780,'paulistana','pi'),(220785,'pavussu','pi'),(220790,'pedro ii','pi'),(220793,'pedro laurentino','pi'),(220795,'nova santa rita','pi'),(220800,'picos','pi'),(220810,'pimenteiras','pi'),(220820,'pio ix','pi'),(220830,'piracuruca','pi'),(220840,'piripiri','pi'),(220850,'porto','pi'),(220855,'porto alegre do piaui','pi'),(220860,'prata do piaui','pi'),(220865,'queimada nova','pi'),(220870,'redencao do gurgueia','pi'),(220880,'regeneracao','pi'),(220885,'riacho frio','pi'),(220887,'ribeira do piaui','pi'),(220890,'ribeiro goncalves','pi'),(220900,'rio grande do piaui','pi'),(220910,'santa cruz do piaui','pi'),(220915,'santa cruz dos milagres','pi'),(220920,'santa filomena','pi'),(220930,'santa luz','pi'),(220935,'santana do piaui','pi'),(220937,'santa rosa do piaui','pi'),(220940,'santo antonio de lisboa','pi'),(220945,'santo antonio dos milagres','pi'),(220950,'santo inacio do piaui','pi'),(220955,'sao braz do piaui','pi'),(220960,'sao felix do piaui','pi'),(220965,'sao francisco de assis do piaui','pi'),(220970,'sao francisco do piaui','pi'),(220975,'sao goncalo do gurgueia','pi'),(220980,'sao goncalo do piaui','pi'),(220985,'sao joao da canabrava','pi'),(220987,'sao joao da fronteira','pi'),(220990,'sao joao da serra','pi'),(220995,'sao joao da varjota','pi'),(220997,'sao joao do arraial','pi'),(221000,'sao joao do piaui','pi'),(221005,'sao jose do divino','pi'),(221010,'sao jose do peixe','pi'),(221020,'sao jose do piaui','pi'),(221030,'sao juliao','pi'),(221035,'sao lourenco do piaui','pi'),(221037,'sao luis do piaui','pi'),(221038,'sao miguel da baixa grande','pi'),(221039,'sao miguel do fidalgo','pi'),(221040,'sao miguel do tapuio','pi'),(221050,'sao pedro do piaui','pi'),(221060,'sao raimundo nonato','pi'),(221062,'sebastiao barros','pi'),(221063,'sebastiao leal','pi'),(221065,'sigefredo pacheco','pi'),(221070,'simoes','pi'),(221080,'simplicio mendes','pi'),(221090,'socorro do piaui','pi'),(221093,'sussuapara','pi'),(221095,'tamboril do piaui','pi'),(221097,'tanque do piaui','pi'),(221100,'teresina','pi'),(221110,'uniao','pi'),(221120,'urucui','pi'),(221130,'valenca do piaui','pi'),(221135,'varzea branca','pi'),(221140,'varzea grande','pi'),(221150,'vera mendes','pi'),(221160,'vila nova do piaui','pi'),(221170,'wall ferraz','pi'),(230010,'abaiara','ce'),(230015,'acarape','ce'),(230020,'acarau','ce'),(230030,'acopiara','ce'),(230040,'aiuaba','ce'),(230050,'alcantaras','ce'),(230060,'altaneira','ce'),(230070,'alto santo','ce'),(230075,'amontada','ce'),(230080,'antonina do norte','ce'),(230090,'apuiares','ce'),(230100,'aquiraz','ce'),(230110,'aracati','ce'),(230120,'aracoiaba','ce'),(230125,'ararenda','ce'),(230130,'araripe','ce'),(230140,'aratuba','ce'),(230150,'arneiroz','ce'),(230160,'assare','ce'),(230170,'aurora','ce'),(230180,'baixio','ce'),(230185,'banabuiu','ce'),(230190,'barbalha','ce'),(230195,'barreira','ce'),(230200,'barro','ce'),(230205,'barroquinha','ce'),(230210,'baturite','ce'),(230220,'beberibe','ce'),(230230,'bela cruz','ce'),(230240,'boa viagem','ce'),(230250,'brejo santo','ce'),(230260,'camocim','ce'),(230270,'campos sales','ce'),(230280,'caninde','ce'),(230290,'capistrano','ce'),(230300,'caridade','ce'),(230310,'carire','ce'),(230320,'caririacu','ce'),(230330,'carius','ce'),(230340,'carnaubal','ce'),(230350,'cascavel','ce'),(230360,'catarina','ce'),(230365,'catunda','ce'),(230370,'caucaia','ce'),(230380,'cedro','ce'),(230390,'chaval','ce'),(230393,'choro','ce'),(230395,'chorozinho','ce'),(230400,'coreau','ce'),(230410,'crateus','ce'),(230420,'crato','ce'),(230423,'croata','ce'),(230425,'cruz','ce'),(230426,'deputado irapuan pinheiro','ce'),(230427,'erere','ce'),(230428,'eusebio','ce'),(230430,'farias brito','ce'),(230435,'forquilha','ce'),(230440,'fortaleza','ce'),(230445,'fortim','ce'),(230450,'frecheirinha','ce'),(230460,'general sampaio','ce'),(230465,'graca','ce'),(230470,'granja','ce'),(230480,'granjeiro','ce'),(230490,'groairas','ce'),(230495,'guaiuba','ce'),(230500,'guaraciaba do norte','ce'),(230510,'guaramiranga','ce'),(230520,'hidrolandia','ce'),(230523,'horizonte','ce'),(230526,'ibaretama','ce'),(230530,'ibiapina','ce'),(230533,'ibicuitinga','ce'),(230535,'icapui','ce'),(230540,'ico','ce'),(230550,'iguatu','ce'),(230560,'independencia','ce'),(230565,'ipaporanga','ce'),(230570,'ipaumirim','ce'),(230580,'ipu','ce'),(230590,'ipueiras','ce'),(230600,'iracema','ce'),(230610,'iraucuba','ce'),(230620,'itaicaba','ce'),(230625,'itaitinga','ce'),(230630,'itapage','ce'),(230640,'itapipoca','ce'),(230650,'itapiuna','ce'),(230655,'itarema','ce'),(230660,'itatira','ce'),(230670,'jaguaretama','ce'),(230680,'jaguaribara','ce'),(230690,'jaguaribe','ce'),(230700,'jaguaruana','ce'),(230710,'jardim','ce'),(230720,'jati','ce'),(230725,'jijoca de jericoacoara','ce'),(230730,'juazeiro do norte','ce'),(230740,'jucas','ce'),(230750,'lavras da mangabeira','ce'),(230760,'limoeiro do norte','ce'),(230763,'madalena','ce'),(230765,'maracanau','ce'),(230770,'maranguape','ce'),(230780,'marco','ce'),(230790,'martinopole','ce'),(230800,'massape','ce'),(230810,'mauriti','ce'),(230820,'meruoca','ce'),(230830,'milagres','ce'),(230835,'milha','ce'),(230837,'miraima','ce'),(230840,'missao velha','ce'),(230850,'mombaca','ce'),(230860,'monsenhor tabosa','ce'),(230870,'morada nova','ce'),(230880,'moraujo','ce'),(230890,'morrinhos','ce'),(230900,'mucambo','ce'),(230910,'mulungu','ce'),(230920,'nova olinda','ce'),(230930,'nova russas','ce'),(230940,'novo oriente','ce'),(230945,'ocara','ce'),(230950,'oros','ce'),(230960,'pacajus','ce'),(230970,'pacatuba','ce'),(230980,'pacoti','ce'),(230990,'pacuja','ce'),(231000,'palhano','ce'),(231010,'palmacia','ce'),(231020,'paracuru','ce'),(231025,'paraipaba','ce'),(231030,'parambu','ce'),(231040,'paramoti','ce'),(231050,'pedra branca','ce'),(231060,'penaforte','ce'),(231070,'pentecoste','ce'),(231080,'pereiro','ce'),(231085,'pindoretama','ce'),(231090,'piquet carneiro','ce'),(231095,'pires ferreira','ce'),(231100,'poranga','ce'),(231110,'porteiras','ce'),(231120,'potengi','ce'),(231123,'potiretama','ce'),(231126,'quiterianopolis','ce'),(231130,'quixada','ce'),(231135,'quixelo','ce'),(231140,'quixeramobim','ce'),(231150,'quixere','ce'),(231160,'redencao','ce'),(231170,'reriutaba','ce'),(231180,'russas','ce'),(231190,'saboeiro','ce'),(231195,'salitre','ce'),(231200,'santana do acarau','ce'),(231210,'santana do cariri','ce'),(231220,'santa quiteria','ce'),(231230,'sao benedito','ce'),(231240,'sao goncalo do amarante','ce'),(231250,'sao joao do jaguaribe','ce'),(231260,'sao luis do curu','ce'),(231270,'senador pompeu','ce'),(231280,'senador sa','ce'),(231290,'sobral','ce'),(231300,'solonopole','ce'),(231310,'tabuleiro do norte','ce'),(231320,'tamboril','ce'),(231325,'tarrafas','ce'),(231330,'taua','ce'),(231335,'tejucuoca','ce'),(231340,'tiangua','ce'),(231350,'trairi','ce'),(231355,'tururu','ce'),(231360,'ubajara','ce'),(231370,'umari','ce'),(231375,'umirim','ce'),(231380,'uruburetama','ce'),(231390,'uruoca','ce'),(231395,'varjota','ce'),(231400,'varzea alegre','ce'),(231410,'vicosa do ceara','ce'),(240010,'acari','rn'),(240020,'acu','rn'),(240030,'afonso bezerra','rn'),(240040,'agua nova','rn'),(240050,'alexandria','rn'),(240060,'almino afonso','rn'),(240070,'alto do rodrigues','rn'),(240080,'angicos','rn'),(240090,'antonio martins','rn'),(240100,'apodi','rn'),(240110,'areia branca','rn'),(240120,'ares','rn'),(240130,'augusto severo','rn'),(240140,'baia formosa','rn'),(240145,'barauna','rn'),(240150,'barcelona','rn'),(240160,'bento fernandes','rn'),(240165,'bodo','rn'),(240170,'bom jesus','rn'),(240180,'brejinho','rn'),(240185,'caicara do norte','rn'),(240190,'caicara do rio do vento','rn'),(240200,'caico','rn'),(240210,'campo redondo','rn'),(240220,'canguaretama','rn'),(240230,'caraubas','rn'),(240240,'carnauba dos dantas','rn'),(240250,'carnaubais','rn'),(240260,'ceara-mirim','rn'),(240270,'cerro cora','rn'),(240280,'coronel ezequiel','rn'),(240290,'coronel joao pessoa','rn'),(240300,'cruzeta','rn'),(240310,'currais novos','rn'),(240320,'doutor severiano','rn'),(240325,'parnamirim','rn'),(240330,'encanto','rn'),(240340,'equador','rn'),(240350,'espirito santo','rn'),(240360,'extremoz','rn'),(240370,'felipe guerra','rn'),(240375,'fernando pedroza','rn'),(240380,'florania','rn'),(240390,'francisco dantas','rn'),(240400,'frutuoso gomes','rn'),(240410,'galinhos','rn'),(240420,'goianinha','rn'),(240430,'governador dix-sept rosado','rn'),(240440,'grossos','rn'),(240450,'guamare','rn'),(240460,'ielmo marinho','rn'),(240470,'ipanguacu','rn'),(240480,'ipueira','rn'),(240485,'itaja','rn'),(240490,'itau','rn'),(240500,'jacana','rn'),(240510,'jandaira','rn'),(240520,'janduis','rn'),(240530,'januario cicco','rn'),(240540,'japi','rn'),(240550,'jardim de angicos','rn'),(240560,'jardim de piranhas','rn'),(240570,'jardim do serido','rn'),(240580,'joao camara','rn'),(240590,'joao dias','rn'),(240600,'jose da penha','rn'),(240610,'jucurutu','rn'),(240615,'jundia','rn'),(240620,'lagoa d\'anta','rn'),(240630,'lagoa de pedras','rn'),(240640,'lagoa de velhos','rn'),(240650,'lagoa nova','rn'),(240660,'lagoa salgada','rn'),(240670,'lajes','rn'),(240680,'lajes pintadas','rn'),(240690,'lucrecia','rn'),(240700,'luis gomes','rn'),(240710,'macaiba','rn'),(240720,'macau','rn'),(240725,'major sales','rn'),(240730,'marcelino vieira','rn'),(240740,'martins','rn'),(240750,'maxaranguape','rn'),(240760,'messias targino','rn'),(240770,'montanhas','rn'),(240780,'monte alegre','rn'),(240790,'monte das gameleiras','rn'),(240800,'mossoro','rn'),(240810,'natal','rn'),(240820,'nisia floresta','rn'),(240830,'nova cruz','rn'),(240840,'olho-d\'agua do borges','rn'),(240850,'ouro branco','rn'),(240860,'parana','rn'),(240870,'parau','rn'),(240880,'parazinho','rn'),(240890,'parelhas','rn'),(240895,'rio do fogo','rn'),(240910,'passa e fica','rn'),(240920,'passagem','rn'),(240930,'patu','rn'),(240933,'santa maria','rn'),(240940,'pau dos ferros','rn'),(240950,'pedra grande','rn'),(240960,'pedra preta','rn'),(240970,'pedro avelino','rn'),(240980,'pedro velho','rn'),(240990,'pendencias','rn'),(241000,'piloes','rn'),(241010,'poco branco','rn'),(241020,'portalegre','rn'),(241025,'porto do mangue','rn'),(241030,'presidente juscelino','rn'),(241040,'pureza','rn'),(241050,'rafael fernandes','rn'),(241060,'rafael godeiro','rn'),(241070,'riacho da cruz','rn'),(241080,'riacho de santana','rn'),(241090,'riachuelo','rn'),(241100,'rodolfo fernandes','rn'),(241105,'tibau','rn'),(241110,'ruy barbosa','rn'),(241120,'santa cruz','rn'),(241140,'santana do matos','rn'),(241142,'santana do serido','rn'),(241150,'santo antonio','rn'),(241160,'sao bento do norte','rn'),(241170,'sao bento do trairi','rn'),(241180,'sao fernando','rn'),(241190,'sao francisco do oeste','rn'),(241200,'sao goncalo do amarante','rn'),(241210,'sao joao do sabugi','rn'),(241220,'sao jose de mipibu','rn'),(241230,'sao jose do campestre','rn'),(241240,'sao jose do serido','rn'),(241250,'sao miguel','rn'),(241255,'sao miguel do gostoso','rn'),(241260,'sao paulo do potengi','rn'),(241270,'sao pedro','rn'),(241280,'sao rafael','rn'),(241290,'sao tome','rn'),(241300,'sao vicente','rn'),(241310,'senador eloi de souza','rn'),(241320,'senador georgino avelino','rn'),(241330,'serra de sao bento','rn'),(241335,'serra do mel','rn'),(241340,'serra negra do norte','rn'),(241350,'serrinha','rn'),(241355,'serrinha dos pintos','rn'),(241360,'severiano melo','rn'),(241370,'sitio novo','rn'),(241380,'taboleiro grande','rn'),(241390,'taipu','rn'),(241400,'tangara','rn'),(241410,'tenente ananias','rn'),(241415,'tenente laurentino cruz','rn'),(241420,'tibau do sul','rn'),(241430,'timbauba dos batistas','rn'),(241440,'touros','rn'),(241445,'triunfo potiguar','rn'),(241450,'umarizal','rn'),(241460,'upanema','rn'),(241470,'varzea','rn'),(241475,'venha-ver','rn'),(241480,'vera cruz','rn'),(241490,'vicosa','rn'),(241500,'vila flor','rn'),(250010,'agua branca','pb'),(250020,'aguiar','pb'),(250030,'alagoa grande','pb'),(250040,'alagoa nova','pb'),(250050,'alagoinha','pb'),(250053,'alcantil','pb'),(250057,'algodao de jandaira','pb'),(250060,'alhandra','pb'),(250070,'sao joao do rio do peixe','pb'),(250073,'amparo','pb'),(250077,'aparecida','pb'),(250080,'aracagi','pb'),(250090,'arara','pb'),(250100,'araruna','pb'),(250110,'areia','pb'),(250115,'areia de baraunas','pb'),(250120,'areial','pb'),(250130,'aroeiras','pb'),(250135,'assuncao','pb'),(250140,'baia da traicao','pb'),(250150,'bananeiras','pb'),(250153,'barauna','pb'),(250157,'barra de santana','pb'),(250160,'barra de santa rosa','pb'),(250170,'barra de sao miguel','pb'),(250180,'bayeux','pb'),(250190,'belem','pb'),(250200,'belem do brejo do cruz','pb'),(250205,'bernardino batista','pb'),(250210,'boa ventura','pb'),(250215,'boa vista','pb'),(250220,'bom jesus','pb'),(250230,'bom sucesso','pb'),(250240,'bonito de santa fe','pb'),(250250,'boqueirao','pb'),(250260,'igaracy','pb'),(250270,'borborema','pb'),(250280,'brejo do cruz','pb'),(250290,'brejo dos santos','pb'),(250300,'caapora','pb'),(250310,'cabaceiras','pb'),(250320,'cabedelo','pb'),(250330,'cachoeira dos indios','pb'),(250340,'cacimba de areia','pb'),(250350,'cacimba de dentro','pb'),(250355,'cacimbas','pb'),(250360,'caicara','pb'),(250370,'cajazeiras','pb'),(250375,'cajazeirinhas','pb'),(250380,'caldas brandao','pb'),(250390,'camalau','pb'),(250400,'campina grande','pb'),(250403,'capim','pb'),(250407,'caraubas','pb'),(250410,'carrapateira','pb'),(250415,'casserengue','pb'),(250420,'catingueira','pb'),(250430,'catole do rocha','pb'),(250435,'caturite','pb'),(250440,'conceicao','pb'),(250450,'condado','pb'),(250460,'conde','pb'),(250470,'congo','pb'),(250480,'coremas','pb'),(250485,'coxixola','pb'),(250490,'cruz do espirito santo','pb'),(250500,'cubati','pb'),(250510,'cuite','pb'),(250520,'cuitegi','pb'),(250523,'cuite de mamanguape','pb'),(250527,'curral de cima','pb'),(250530,'curral velho','pb'),(250535,'damiao','pb'),(250540,'desterro','pb'),(250550,'vista serrana','pb'),(250560,'diamante','pb'),(250570,'dona ines','pb'),(250580,'duas estradas','pb'),(250590,'emas','pb'),(250600,'esperanca','pb'),(250610,'fagundes','pb'),(250620,'frei martinho','pb'),(250625,'gado bravo','pb'),(250630,'guarabira','pb'),(250640,'gurinhem','pb'),(250650,'gurjao','pb'),(250660,'ibiara','pb'),(250670,'imaculada','pb'),(250680,'inga','pb'),(250690,'itabaiana','pb'),(250700,'itaporanga','pb'),(250710,'itapororoca','pb'),(250720,'itatuba','pb'),(250730,'jacarau','pb'),(250740,'jerico','pb'),(250750,'joao pessoa','pb'),(250760,'juarez tavora','pb'),(250770,'juazeirinho','pb'),(250780,'junco do serido','pb'),(250790,'juripiranga','pb'),(250800,'juru','pb'),(250810,'lagoa','pb'),(250820,'lagoa de dentro','pb'),(250830,'lagoa seca','pb'),(250840,'lastro','pb'),(250850,'livramento','pb'),(250855,'logradouro','pb'),(250860,'lucena','pb'),(250870,'mae d\'agua','pb'),(250880,'malta','pb'),(250890,'mamanguape','pb'),(250900,'manaira','pb'),(250905,'marcacao','pb'),(250910,'mari','pb'),(250915,'marizopolis','pb'),(250920,'massaranduba','pb'),(250930,'mataraca','pb'),(250933,'matinhas','pb'),(250937,'mato grosso','pb'),(250939,'matureia','pb'),(250940,'mogeiro','pb'),(250950,'montadas','pb'),(250960,'monte horebe','pb'),(250970,'monteiro','pb'),(250980,'mulungu','pb'),(250990,'natuba','pb'),(251000,'nazarezinho','pb'),(251010,'nova floresta','pb'),(251020,'nova olinda','pb'),(251030,'nova palmeira','pb'),(251040,'olho d\'agua','pb'),(251050,'olivedos','pb'),(251060,'ouro velho','pb'),(251065,'parari','pb'),(251070,'passagem','pb'),(251080,'patos','pb'),(251090,'paulista','pb'),(251100,'pedra branca','pb'),(251110,'pedra lavrada','pb'),(251120,'pedras de fogo','pb'),(251130,'pianco','pb'),(251140,'picui','pb'),(251150,'pilar','pb'),(251160,'piloes','pb'),(251170,'piloezinhos','pb'),(251180,'pirpirituba','pb'),(251190,'pitimbu','pb'),(251200,'pocinhos','pb'),(251203,'poco dantas','pb'),(251207,'poco de jose de moura','pb'),(251210,'pombal','pb'),(251220,'prata','pb'),(251230,'princesa isabel','pb'),(251240,'puxinana','pb'),(251250,'queimadas','pb'),(251260,'quixaba','pb'),(251270,'remigio','pb'),(251272,'pedro regis','pb'),(251274,'riachao','pb'),(251275,'riachao do bacamarte','pb'),(251276,'riachao do poco','pb'),(251278,'riacho de santo antonio','pb'),(251280,'riacho dos cavalos','pb'),(251290,'rio tinto','pb'),(251300,'salgadinho','pb'),(251310,'salgado de sao felix','pb'),(251315,'santa cecilia','pb'),(251320,'santa cruz','pb'),(251330,'santa helena','pb'),(251335,'santa ines','pb'),(251340,'santa luzia','pb'),(251350,'santana de mangueira','pb'),(251360,'santana dos garrotes','pb'),(251365,'santarem','pb'),(251370,'santa rita','pb'),(251380,'santa teresinha','pb'),(251385,'santo andre','pb'),(251390,'sao bento','pb'),(251392,'sao bentinho','pb'),(251394,'sao domingos do cariri','pb'),(251396,'sao domingos','pb'),(251398,'sao francisco','pb'),(251400,'sao joao do cariri','pb'),(251410,'sao joao do tigre','pb'),(251420,'sao jose da lagoa tapada','pb'),(251430,'sao jose de caiana','pb'),(251440,'sao jose de espinharas','pb'),(251445,'sao jose dos ramos','pb'),(251450,'sao jose de piranhas','pb'),(251455,'sao jose de princesa','pb'),(251460,'sao jose do bonfim','pb'),(251465,'sao jose do brejo do cruz','pb'),(251470,'sao jose do sabugi','pb'),(251480,'sao jose dos cordeiros','pb'),(251490,'sao mamede','pb'),(251500,'sao miguel de taipu','pb'),(251510,'sao sebastiao de lagoa de roca','pb'),(251520,'sao sebastiao do umbuzeiro','pb'),(251530,'sape','pb'),(251540,'serido','pb'),(251550,'serra branca','pb'),(251560,'serra da raiz','pb'),(251570,'serra grande','pb'),(251580,'serra redonda','pb'),(251590,'serraria','pb'),(251593,'sertaozinho','pb'),(251597,'sobrado','pb'),(251600,'solanea','pb'),(251610,'soledade','pb'),(251615,'sossego','pb'),(251620,'sousa','pb'),(251630,'sume','pb'),(251640,'campo de santana','pb'),(251650,'taperoa','pb'),(251660,'tavares','pb'),(251670,'teixeira','pb'),(251675,'tenorio','pb'),(251680,'triunfo','pb'),(251690,'uirauna','pb'),(251700,'umbuzeiro','pb'),(251710,'varzea','pb'),(251720,'vieiropolis','pb'),(251740,'zabele','pb'),(260005,'abreu e lima','pe'),(260010,'afogados da ingazeira','pe'),(260020,'afranio','pe'),(260030,'agrestina','pe'),(260040,'agua preta','pe'),(260050,'aguas belas','pe'),(260060,'alagoinha','pe'),(260070,'alianca','pe'),(260080,'altinho','pe'),(260090,'amaraji','pe'),(260100,'angelim','pe'),(260105,'aracoiaba','pe'),(260110,'araripina','pe'),(260120,'arcoverde','pe'),(260130,'barra de guabiraba','pe'),(260140,'barreiros','pe'),(260150,'belem de maria','pe'),(260160,'belem de sao francisco','pe'),(260170,'belo jardim','pe'),(260180,'betania','pe'),(260190,'bezerros','pe'),(260200,'bodoco','pe'),(260210,'bom conselho','pe'),(260220,'bom jardim','pe'),(260230,'bonito','pe'),(260240,'brejao','pe'),(260250,'brejinho','pe'),(260260,'brejo da madre de deus','pe'),(260270,'buenos aires','pe'),(260280,'buique','pe'),(260290,'cabo de santo agostinho','pe'),(260300,'cabrobo','pe'),(260310,'cachoeirinha','pe'),(260320,'caetes','pe'),(260330,'calcado','pe'),(260340,'calumbi','pe'),(260345,'camaragibe','pe'),(260350,'camocim de sao felix','pe'),(260360,'camutanga','pe'),(260370,'canhotinho','pe'),(260380,'capoeiras','pe'),(260390,'carnaiba','pe'),(260392,'carnaubeira da penha','pe'),(260400,'carpina','pe'),(260410,'caruaru','pe'),(260415,'casinhas','pe'),(260420,'catende','pe'),(260430,'cedro','pe'),(260440,'cha de alegria','pe'),(260450,'cha grande','pe'),(260460,'condado','pe'),(260470,'correntes','pe'),(260480,'cortes','pe'),(260490,'cumaru','pe'),(260500,'cupira','pe'),(260510,'custodia','pe'),(260515,'dormentes','pe'),(260520,'escada','pe'),(260530,'exu','pe'),(260540,'feira nova','pe'),(260545,'fernando de noronha','pe'),(260550,'ferreiros','pe'),(260560,'flores','pe'),(260570,'floresta','pe'),(260580,'frei miguelinho','pe'),(260590,'gameleira','pe'),(260600,'garanhuns','pe'),(260610,'gloria do goita','pe'),(260620,'goiana','pe'),(260630,'granito','pe'),(260640,'gravata','pe'),(260650,'iati','pe'),(260660,'ibimirim','pe'),(260670,'ibirajuba','pe'),(260680,'igarassu','pe'),(260690,'iguaraci','pe'),(260700,'inaja','pe'),(260710,'ingazeira','pe'),(260720,'ipojuca','pe'),(260730,'ipubi','pe'),(260740,'itacuruba','pe'),(260750,'itaiba','pe'),(260760,'ilha de itamaraca','pe'),(260765,'itambe','pe'),(260770,'itapetim','pe'),(260775,'itapissuma','pe'),(260780,'itaquitinga','pe'),(260790,'jaboatao dos guararapes','pe'),(260795,'jaqueira','pe'),(260800,'jatauba','pe'),(260805,'jatoba','pe'),(260810,'joao alfredo','pe'),(260820,'joaquim nabuco','pe'),(260825,'jucati','pe'),(260830,'jupi','pe'),(260840,'jurema','pe'),(260845,'lagoa do carro','pe'),(260850,'lagoa do itaenga','pe'),(260860,'lagoa do ouro','pe'),(260870,'lagoa dos gatos','pe'),(260875,'lagoa grande','pe'),(260880,'lajedo','pe'),(260890,'limoeiro','pe'),(260900,'macaparana','pe'),(260910,'machados','pe'),(260915,'manari','pe'),(260920,'maraial','pe'),(260930,'mirandiba','pe'),(260940,'moreno','pe'),(260950,'nazare da mata','pe'),(260960,'olinda','pe'),(260970,'orobo','pe'),(260980,'oroco','pe'),(260990,'ouricuri','pe'),(261000,'palmares','pe'),(261010,'palmeirina','pe'),(261020,'panelas','pe'),(261030,'paranatama','pe'),(261040,'parnamirim','pe'),(261050,'passira','pe'),(261060,'paudalho','pe'),(261070,'paulista','pe'),(261080,'pedra','pe'),(261090,'pesqueira','pe'),(261100,'petrolandia','pe'),(261110,'petrolina','pe'),(261120,'pocao','pe'),(261130,'pombos','pe'),(261140,'primavera','pe'),(261150,'quipapa','pe'),(261153,'quixaba','pe'),(261160,'recife','pe'),(261170,'riacho das almas','pe'),(261180,'ribeirao','pe'),(261190,'rio formoso','pe'),(261200,'saire','pe'),(261210,'salgadinho','pe'),(261220,'salgueiro','pe'),(261230,'saloa','pe'),(261240,'sanharo','pe'),(261245,'santa cruz','pe'),(261247,'santa cruz da baixa verde','pe'),(261250,'santa cruz do capibaribe','pe'),(261255,'santa filomena','pe'),(261260,'santa maria da boa vista','pe'),(261270,'santa maria do cambuca','pe'),(261280,'santa terezinha','pe'),(261290,'sao benedito do sul','pe'),(261300,'sao bento do una','pe'),(261310,'sao caitano','pe'),(261320,'sao joao','pe'),(261330,'sao joaquim do monte','pe'),(261340,'sao jose da coroa grande','pe'),(261350,'sao jose do belmonte','pe'),(261360,'sao jose do egito','pe'),(261370,'sao lourenco da mata','pe'),(261380,'sao vicente ferrer','pe'),(261390,'serra talhada','pe'),(261400,'serrita','pe'),(261410,'sertania','pe'),(261420,'sirinhaem','pe'),(261430,'moreilandia','pe'),(261440,'solidao','pe'),(261450,'surubim','pe'),(261460,'tabira','pe'),(261470,'tacaimbo','pe'),(261480,'tacaratu','pe'),(261485,'tamandare','pe'),(261500,'taquaritinga do norte','pe'),(261510,'terezinha','pe'),(261520,'terra nova','pe'),(261530,'timbauba','pe'),(261540,'toritama','pe'),(261550,'tracunhaem','pe'),(261560,'trindade','pe'),(261570,'triunfo','pe'),(261580,'tupanatinga','pe'),(261590,'tuparetama','pe'),(261600,'venturosa','pe'),(261610,'verdejante','pe'),(261618,'vertente do lerio','pe'),(261620,'vertentes','pe'),(261630,'vicencia','pe'),(261640,'vitoria de santo antao','pe'),(261650,'xexeu','pe'),(270010,'agua branca','al'),(270020,'anadia','al'),(270030,'arapiraca','al'),(270040,'atalaia','al'),(270050,'barra de santo antonio','al'),(270060,'barra de sao miguel','al'),(270070,'batalha','al'),(270080,'belem','al'),(270090,'belo monte','al'),(270100,'boca da mata','al'),(270110,'branquinha','al'),(270120,'cacimbinhas','al'),(270130,'cajueiro','al'),(270135,'campestre','al'),(270140,'campo alegre','al'),(270150,'campo grande','al'),(270160,'canapi','al'),(270170,'capela','al'),(270180,'carneiros','al'),(270190,'cha preta','al'),(270200,'coite do noia','al'),(270210,'colonia leopoldina','al'),(270220,'coqueiro seco','al'),(270230,'coruripe','al'),(270235,'craibas','al'),(270240,'delmiro gouveia','al'),(270250,'dois riachos','al'),(270255,'estrela de alagoas','al'),(270260,'feira grande','al'),(270270,'feliz deserto','al'),(270280,'flexeiras','al'),(270290,'girau do ponciano','al'),(270300,'ibateguara','al'),(270310,'igaci','al'),(270320,'igreja nova','al'),(270330,'inhapi','al'),(270340,'jacare dos homens','al'),(270350,'jacuipe','al'),(270360,'japaratinga','al'),(270370,'jaramataia','al'),(270375,'jequia da praia','al'),(270380,'joaquim gomes','al'),(270390,'jundia','al'),(270400,'junqueiro','al'),(270410,'lagoa da canoa','al'),(270420,'limoeiro de anadia','al'),(270430,'maceio','al'),(270440,'major isidoro','al'),(270450,'maragogi','al'),(270460,'maravilha','al'),(270470,'marechal deodoro','al'),(270480,'maribondo','al'),(270490,'mar vermelho','al'),(270500,'mata grande','al'),(270510,'matriz de camaragibe','al'),(270520,'messias','al'),(270530,'minador do negrao','al'),(270540,'monteiropolis','al'),(270550,'murici','al'),(270560,'novo lino','al'),(270570,'olho d\'agua das flores','al'),(270580,'olho d\'agua do casado','al'),(270590,'olho d\'agua grande','al'),(270600,'olivenca','al'),(270610,'ouro branco','al'),(270620,'palestina','al'),(270630,'palmeira dos indios','al'),(270640,'pao de acucar','al'),(270642,'pariconha','al'),(270644,'paripueira','al'),(270650,'passo de camaragibe','al'),(270660,'paulo jacinto','al'),(270670,'penedo','al'),(270680,'piacabucu','al'),(270690,'pilar','al'),(270700,'pindoba','al'),(270710,'piranhas','al'),(270720,'poco das trincheiras','al'),(270730,'porto calvo','al'),(270740,'porto de pedras','al'),(270750,'porto real do colegio','al'),(270760,'quebrangulo','al'),(270770,'rio largo','al'),(270780,'roteiro','al'),(270790,'santa luzia do norte','al'),(270800,'santana do ipanema','al'),(270810,'santana do mundau','al'),(270820,'sao bras','al'),(270830,'sao jose da laje','al'),(270840,'sao jose da tapera','al'),(270850,'sao luis do quitunde','al'),(270860,'sao miguel dos campos','al'),(270870,'sao miguel dos milagres','al'),(270880,'sao sebastiao','al'),(270890,'satuba','al'),(270895,'senador rui palmeira','al'),(270900,'tanque d\'arca','al'),(270910,'taquarana','al'),(270915,'teotonio vilela','al'),(270920,'traipu','al'),(270930,'uniao dos palmares','al'),(270940,'vicosa','al'),(280010,'amparo de sao francisco','se'),(280020,'aquidaba','se'),(280030,'aracaju','se'),(280040,'araua','se'),(280050,'areia branca','se'),(280060,'barra dos coqueiros','se'),(280067,'boquim','se'),(280070,'brejo grande','se'),(280100,'campo do brito','se'),(280110,'canhoba','se'),(280120,'caninde de sao francisco','se'),(280130,'capela','se'),(280140,'carira','se'),(280150,'carmopolis','se'),(280160,'cedro de sao joao','se'),(280170,'cristinapolis','se'),(280190,'cumbe','se'),(280200,'divina pastora','se'),(280210,'estancia','se'),(280220,'feira nova','se'),(280230,'frei paulo','se'),(280240,'gararu','se'),(280250,'general maynard','se'),(280260,'gracho cardoso','se'),(280270,'ilha das flores','se'),(280280,'indiaroba','se'),(280290,'itabaiana','se'),(280300,'itabaianinha','se'),(280310,'itabi','se'),(280320,'itaporanga d\'ajuda','se'),(280330,'japaratuba','se'),(280340,'japoata','se'),(280350,'lagarto','se'),(280360,'laranjeiras','se'),(280370,'macambira','se'),(280380,'malhada dos bois','se'),(280390,'malhador','se'),(280400,'maruim','se'),(280410,'moita bonita','se'),(280420,'monte alegre de sergipe','se'),(280430,'muribeca','se'),(280440,'neopolis','se'),(280445,'nossa senhora aparecida','se'),(280450,'nossa senhora da gloria','se'),(280460,'nossa senhora das dores','se'),(280470,'nossa senhora de lourdes','se'),(280480,'nossa senhora do socorro','se'),(280490,'pacatuba','se'),(280500,'pedra mole','se'),(280510,'pedrinhas','se'),(280520,'pinhao','se'),(280530,'pirambu','se'),(280540,'poco redondo','se'),(280550,'poco verde','se'),(280560,'porto da folha','se'),(280570,'propria','se'),(280580,'riachao do dantas','se'),(280590,'riachuelo','se'),(280600,'ribeiropolis','se'),(280610,'rosario do catete','se'),(280620,'salgado','se'),(280630,'santa luzia do itanhy','se'),(280640,'santana do sao francisco','se'),(280650,'santa rosa de lima','se'),(280660,'santo amaro das brotas','se'),(280670,'sao cristovao','se'),(280680,'sao domingos','se'),(280690,'sao francisco','se'),(280700,'sao miguel do aleixo','se'),(280710,'simao dias','se'),(280720,'siriri','se'),(280730,'telha','se'),(280740,'tobias barreto','se'),(280750,'tomar do geru','se'),(280760,'umbauba','se'),(290010,'abaira','ba'),(290020,'abare','ba'),(290030,'acajutiba','ba'),(290035,'adustina','ba'),(290040,'agua fria','ba'),(290050,'erico cardoso','ba'),(290060,'aiquara','ba'),(290070,'alagoinhas','ba'),(290080,'alcobaca','ba'),(290090,'almadina','ba'),(290100,'amargosa','ba'),(290110,'amelia rodrigues','ba'),(290115,'america dourada','ba'),(290120,'anage','ba'),(290130,'andarai','ba'),(290135,'andorinha','ba'),(290140,'angical','ba'),(290150,'anguera','ba'),(290160,'antas','ba'),(290170,'antonio cardoso','ba'),(290180,'antonio goncalves','ba'),(290190,'apora','ba'),(290195,'apuarema','ba'),(290200,'aracatu','ba'),(290205,'aracas','ba'),(290210,'araci','ba'),(290220,'aramari','ba'),(290225,'arataca','ba'),(290230,'aratuipe','ba'),(290240,'aurelino leal','ba'),(290250,'baianopolis','ba'),(290260,'baixa grande','ba'),(290265,'banzae','ba'),(290270,'barra','ba'),(290280,'barra da estiva','ba'),(290290,'barra do choca','ba'),(290300,'barra do mendes','ba'),(290310,'barra do rocha','ba'),(290320,'barreiras','ba'),(290323,'barro alto','ba'),(290327,'barrocas','ba'),(290330,'barro preto','ba'),(290340,'belmonte','ba'),(290350,'belo campo','ba'),(290360,'biritinga','ba'),(290370,'boa nova','ba'),(290380,'boa vista do tupim','ba'),(290390,'bom jesus da lapa','ba'),(290395,'bom jesus da serra','ba'),(290400,'boninal','ba'),(290405,'bonito','ba'),(290410,'boquira','ba'),(290420,'botupora','ba'),(290430,'brejoes','ba'),(290440,'brejolandia','ba'),(290450,'brotas de macaubas','ba'),(290460,'brumado','ba'),(290470,'buerarema','ba'),(290475,'buritirama','ba'),(290480,'caatiba','ba'),(290485,'cabaceiras do paraguacu','ba'),(290490,'cachoeira','ba'),(290500,'cacule','ba'),(290510,'caem','ba'),(290515,'caetanos','ba'),(290520,'caetite','ba'),(290530,'cafarnaum','ba'),(290540,'cairu','ba'),(290550,'caldeirao grande','ba'),(290560,'camacan','ba'),(290570,'camacari','ba'),(290580,'camamu','ba'),(290590,'campo alegre de lourdes','ba'),(290600,'campo formoso','ba'),(290610,'canapolis','ba'),(290620,'canarana','ba'),(290630,'canavieiras','ba'),(290640,'candeal','ba'),(290650,'candeias','ba'),(290660,'candiba','ba'),(290670,'candido sales','ba'),(290680,'cansancao','ba'),(290682,'canudos','ba'),(290685,'capela do alto alegre','ba'),(290687,'capim grosso','ba'),(290689,'caraibas','ba'),(290690,'caravelas','ba'),(290700,'cardeal da silva','ba'),(290710,'carinhanha','ba'),(290720,'casa nova','ba'),(290730,'castro alves','ba'),(290740,'catolandia','ba'),(290750,'catu','ba'),(290755,'caturama','ba'),(290760,'central','ba'),(290770,'chorrocho','ba'),(290780,'cicero dantas','ba'),(290790,'cipo','ba'),(290800,'coaraci','ba'),(290810,'cocos','ba'),(290820,'conceicao da feira','ba'),(290830,'conceicao do almeida','ba'),(290840,'conceicao do coite','ba'),(290850,'conceicao do jacuipe','ba'),(290860,'conde','ba'),(290870,'condeuba','ba'),(290880,'contendas do sincora','ba'),(290890,'coracao de maria','ba'),(290900,'cordeiros','ba'),(290910,'coribe','ba'),(290920,'coronel joao sa','ba'),(290930,'correntina','ba'),(290940,'cotegipe','ba'),(290950,'cravolandia','ba'),(290960,'crisopolis','ba'),(290970,'cristopolis','ba'),(290980,'cruz das almas','ba'),(290990,'curaca','ba'),(291000,'dario meira','ba'),(291005,'dias d\'avila','ba'),(291010,'dom basilio','ba'),(291020,'dom macedo costa','ba'),(291030,'elisio medrado','ba'),(291040,'encruzilhada','ba'),(291050,'entre rios','ba'),(291060,'esplanada','ba'),(291070,'euclides da cunha','ba'),(291072,'eunapolis','ba'),(291075,'fatima','ba'),(291077,'feira da mata','ba'),(291080,'feira de santana','ba'),(291085,'filadelfia','ba'),(291090,'firmino alves','ba'),(291100,'floresta azul','ba'),(291110,'formosa do rio preto','ba'),(291120,'gandu','ba'),(291125,'gaviao','ba'),(291130,'gentio do ouro','ba'),(291140,'gloria','ba'),(291150,'gongogi','ba'),(291160,'governador mangabeira','ba'),(291165,'guajeru','ba'),(291170,'guanambi','ba'),(291180,'guaratinga','ba'),(291185,'heliopolis','ba'),(291190,'iacu','ba'),(291200,'ibiassuce','ba'),(291210,'ibicarai','ba'),(291220,'ibicoara','ba'),(291230,'ibicui','ba'),(291240,'ibipeba','ba'),(291250,'ibipitanga','ba'),(291260,'ibiquera','ba'),(291270,'ibirapitanga','ba'),(291280,'ibirapua','ba'),(291290,'ibirataia','ba'),(291300,'ibitiara','ba'),(291310,'ibitita','ba'),(291320,'ibotirama','ba'),(291330,'ichu','ba'),(291340,'igapora','ba'),(291345,'igrapiuna','ba'),(291350,'iguai','ba'),(291360,'ilheus','ba'),(291370,'inhambupe','ba'),(291380,'ipecaeta','ba'),(291390,'ipiau','ba'),(291400,'ipira','ba'),(291410,'ipupiara','ba'),(291420,'irajuba','ba'),(291430,'iramaia','ba'),(291440,'iraquara','ba'),(291450,'irara','ba'),(291460,'irece','ba'),(291465,'itabela','ba'),(291470,'itaberaba','ba'),(291480,'itabuna','ba'),(291490,'itacare','ba'),(291500,'itaete','ba'),(291510,'itagi','ba'),(291520,'itagiba','ba'),(291530,'itagimirim','ba'),(291535,'itaguacu da bahia','ba'),(291540,'itaju do colonia','ba'),(291550,'itajuipe','ba'),(291560,'itamaraju','ba'),(291570,'itamari','ba'),(291580,'itambe','ba'),(291590,'itanagra','ba'),(291600,'itanhem','ba'),(291610,'itaparica','ba'),(291620,'itape','ba'),(291630,'itapebi','ba'),(291640,'itapetinga','ba'),(291650,'itapicuru','ba'),(291660,'itapitanga','ba'),(291670,'itaquara','ba'),(291680,'itarantim','ba'),(291685,'itatim','ba'),(291690,'itirucu','ba'),(291700,'itiuba','ba'),(291710,'itororo','ba'),(291720,'ituacu','ba'),(291730,'itubera','ba'),(291733,'iuiu','ba'),(291735,'jaborandi','ba'),(291740,'jacaraci','ba'),(291750,'jacobina','ba'),(291760,'jaguaquara','ba'),(291770,'jaguarari','ba'),(291780,'jaguaripe','ba'),(291790,'jandaira','ba'),(291800,'jequie','ba'),(291810,'jeremoabo','ba'),(291820,'jiquirica','ba'),(291830,'jitauna','ba'),(291835,'joao dourado','ba'),(291840,'juazeiro','ba'),(291845,'jucurucu','ba'),(291850,'jussara','ba'),(291855,'jussari','ba'),(291860,'jussiape','ba'),(291870,'lafaiete coutinho','ba'),(291875,'lagoa real','ba'),(291880,'laje','ba'),(291890,'lajedao','ba'),(291900,'lajedinho','ba'),(291905,'lajedo do tabocal','ba'),(291910,'lamarao','ba'),(291915,'lapao','ba'),(291920,'lauro de freitas','ba'),(291930,'lencois','ba'),(291940,'licinio de almeida','ba'),(291950,'livramento de nossa senhora','ba'),(291955,'luis eduardo magalhaes','ba'),(291960,'macajuba','ba'),(291970,'macarani','ba'),(291980,'macaubas','ba'),(291990,'macurure','ba'),(291992,'madre de deus','ba'),(291995,'maetinga','ba'),(292000,'maiquinique','ba'),(292010,'mairi','ba'),(292020,'malhada','ba'),(292030,'malhada de pedras','ba'),(292040,'manoel vitorino','ba'),(292045,'mansidao','ba'),(292050,'maracas','ba'),(292060,'maragogipe','ba'),(292070,'marau','ba'),(292080,'marcionilio souza','ba'),(292090,'mascote','ba'),(292100,'mata de sao joao','ba'),(292105,'matina','ba'),(292110,'medeiros neto','ba'),(292120,'miguel calmon','ba'),(292130,'milagres','ba'),(292140,'mirangaba','ba'),(292145,'mirante','ba'),(292150,'monte santo','ba'),(292160,'morpara','ba'),(292170,'morro do chapeu','ba'),(292180,'mortugaba','ba'),(292190,'mucuge','ba'),(292200,'mucuri','ba'),(292205,'mulungu do morro','ba'),(292210,'mundo novo','ba'),(292220,'muniz ferreira','ba'),(292225,'muquem de sao francisco','ba'),(292230,'muritiba','ba'),(292240,'mutuipe','ba'),(292250,'nazare','ba'),(292260,'nilo pecanha','ba'),(292265,'nordestina','ba'),(292270,'nova canaa','ba'),(292273,'nova fatima','ba'),(292275,'nova ibia','ba'),(292280,'nova itarana','ba'),(292285,'nova redencao','ba'),(292290,'nova soure','ba'),(292300,'nova vicosa','ba'),(292303,'novo horizonte','ba'),(292305,'novo triunfo','ba'),(292310,'olindina','ba'),(292320,'oliveira dos brejinhos','ba'),(292330,'ouricangas','ba'),(292335,'ourolandia','ba'),(292340,'palmas de monte alto','ba'),(292350,'palmeiras','ba'),(292360,'paramirim','ba'),(292370,'paratinga','ba'),(292380,'paripiranga','ba'),(292390,'pau brasil','ba'),(292400,'paulo afonso','ba'),(292405,'pe de serra','ba'),(292410,'pedrao','ba'),(292420,'pedro alexandre','ba'),(292430,'piata','ba'),(292440,'pilao arcado','ba'),(292450,'pindai','ba'),(292460,'pindobacu','ba'),(292465,'pintadas','ba'),(292467,'pirai do norte','ba'),(292470,'piripa','ba'),(292480,'piritiba','ba'),(292490,'planaltino','ba'),(292500,'planalto','ba'),(292510,'pocoes','ba'),(292520,'pojuca','ba'),(292525,'ponto novo','ba'),(292530,'porto seguro','ba'),(292540,'potiragua','ba'),(292550,'prado','ba'),(292560,'presidente dutra','ba'),(292570,'presidente janio quadros','ba'),(292575,'presidente tancredo neves','ba'),(292580,'queimadas','ba'),(292590,'quijingue','ba'),(292593,'quixabeira','ba'),(292595,'rafael jambeiro','ba'),(292600,'remanso','ba'),(292610,'retirolandia','ba'),(292620,'riachao das neves','ba'),(292630,'riachao do jacuipe','ba'),(292640,'riacho de santana','ba'),(292650,'ribeira do amparo','ba'),(292660,'ribeira do pombal','ba'),(292665,'ribeirao do largo','ba'),(292670,'rio de contas','ba'),(292680,'rio do antonio','ba'),(292690,'rio do pires','ba'),(292700,'rio real','ba'),(292710,'rodelas','ba'),(292720,'ruy barbosa','ba'),(292730,'salinas da margarida','ba'),(292740,'salvador','ba'),(292750,'santa barbara','ba'),(292760,'santa brigida','ba'),(292770,'santa cruz cabralia','ba'),(292780,'santa cruz da vitoria','ba'),(292790,'santa ines','ba'),(292800,'santaluz','ba'),(292805,'santa luzia','ba'),(292810,'santa maria da vitoria','ba'),(292820,'santana','ba'),(292830,'santanopolis','ba'),(292840,'santa rita de cassia','ba'),(292850,'santa teresinha','ba'),(292860,'santo amaro','ba'),(292870,'santo antonio de jesus','ba'),(292880,'santo estevao','ba'),(292890,'sao desiderio','ba'),(292895,'sao domingos','ba'),(292900,'sao felix','ba'),(292905,'sao felix do coribe','ba'),(292910,'sao felipe','ba'),(292920,'sao francisco do conde','ba'),(292925,'sao gabriel','ba'),(292930,'sao goncalo dos campos','ba'),(292935,'sao jose da vitoria','ba'),(292937,'sao jose do jacuipe','ba'),(292940,'sao miguel das matas','ba'),(292950,'sao sebastiao do passe','ba'),(292960,'sapeacu','ba'),(292970,'satiro dias','ba'),(292975,'saubara','ba'),(292980,'saude','ba'),(292990,'seabra','ba'),(293000,'sebastiao laranjeiras','ba'),(293010,'senhor do bonfim','ba'),(293015,'serra do ramalho','ba'),(293020,'sento se','ba'),(293030,'serra dourada','ba'),(293040,'serra preta','ba'),(293050,'serrinha','ba'),(293060,'serrolandia','ba'),(293070,'simoes filho','ba'),(293075,'sitio do mato','ba'),(293076,'sitio do quinto','ba'),(293077,'sobradinho','ba'),(293080,'souto soares','ba'),(293090,'tabocas do brejo velho','ba'),(293100,'tanhacu','ba'),(293105,'tanque novo','ba'),(293110,'tanquinho','ba'),(293120,'taperoa','ba'),(293130,'tapiramuta','ba'),(293135,'teixeira de freitas','ba'),(293140,'teodoro sampaio','ba'),(293150,'teofilandia','ba'),(293160,'teolandia','ba'),(293170,'terra nova','ba'),(293180,'tremedal','ba'),(293190,'tucano','ba'),(293200,'uaua','ba'),(293210,'ubaira','ba'),(293220,'ubaitaba','ba'),(293230,'ubata','ba'),(293240,'uibai','ba'),(293245,'umburanas','ba'),(293250,'una','ba'),(293260,'urandi','ba'),(293270,'urucuca','ba'),(293280,'utinga','ba'),(293290,'valenca','ba'),(293300,'valente','ba'),(293305,'varzea da roca','ba'),(293310,'varzea do poco','ba'),(293315,'varzea nova','ba'),(293317,'varzedo','ba'),(293320,'vera cruz','ba'),(293325,'vereda','ba'),(293330,'vitoria da conquista','ba'),(293340,'wagner','ba'),(293345,'wanderley','ba'),(293350,'wenceslau guimaraes','ba'),(293360,'xique-xique','ba'),(310010,'abadia dos dourados','mg'),(310020,'abaete','mg'),(310030,'abre campo','mg'),(310040,'acaiaca','mg'),(310050,'acucena','mg'),(310060,'agua boa','mg'),(310070,'agua comprida','mg'),(310080,'aguanil','mg'),(310090,'aguas formosas','mg'),(310100,'aguas vermelhas','mg'),(310110,'aimores','mg'),(310120,'aiuruoca','mg'),(310130,'alagoa','mg'),(310140,'albertina','mg'),(310150,'alem paraiba','mg'),(310160,'alfenas','mg'),(310163,'alfredo vasconcelos','mg'),(310170,'almenara','mg'),(310180,'alpercata','mg'),(310190,'alpinopolis','mg'),(310200,'alterosa','mg'),(310205,'alto caparao','mg'),(310210,'alto rio doce','mg'),(310220,'alvarenga','mg'),(310230,'alvinopolis','mg'),(310240,'alvorada de minas','mg'),(310250,'amparo do serra','mg'),(310260,'andradas','mg'),(310270,'cachoeira de pajeu','mg'),(310280,'andrelandia','mg'),(310285,'angelandia','mg'),(310290,'antonio carlos','mg'),(310300,'antonio dias','mg'),(310310,'antonio prado de minas','mg'),(310320,'aracai','mg'),(310330,'aracitaba','mg'),(310340,'aracuai','mg'),(310350,'araguari','mg'),(310360,'arantina','mg'),(310370,'araponga','mg'),(310375,'arapora','mg'),(310380,'arapua','mg'),(310390,'araujos','mg'),(310400,'araxa','mg'),(310410,'arceburgo','mg'),(310420,'arcos','mg'),(310430,'areado','mg'),(310440,'argirita','mg'),(310445,'aricanduva','mg'),(310450,'arinos','mg'),(310460,'astolfo dutra','mg'),(310470,'ataleia','mg'),(310480,'augusto de lima','mg'),(310490,'baependi','mg'),(310500,'baldim','mg'),(310510,'bambui','mg'),(310520,'bandeira','mg'),(310530,'bandeira do sul','mg'),(310540,'barao de cocais','mg'),(310550,'barao de monte alto','mg'),(310560,'barbacena','mg'),(310570,'barra longa','mg'),(310590,'barroso','mg'),(310600,'bela vista de minas','mg'),(310610,'belmiro braga','mg'),(310620,'belo horizonte','mg'),(310630,'belo oriente','mg'),(310640,'belo vale','mg'),(310650,'berilo','mg'),(310660,'bertopolis','mg'),(310665,'berizal','mg'),(310670,'betim','mg'),(310680,'bias fortes','mg'),(310690,'bicas','mg'),(310700,'biquinhas','mg'),(310710,'boa esperanca','mg'),(310720,'bocaina de minas','mg'),(310730,'bocaiuva','mg'),(310740,'bom despacho','mg'),(310750,'bom jardim de minas','mg'),(310760,'bom jesus da penha','mg'),(310770,'bom jesus do amparo','mg'),(310780,'bom jesus do galho','mg'),(310790,'bom repouso','mg'),(310800,'bom sucesso','mg'),(310810,'bonfim','mg'),(310820,'bonfinopolis de minas','mg'),(310825,'bonito de minas','mg'),(310830,'borda da mata','mg'),(310840,'botelhos','mg'),(310850,'botumirim','mg'),(310855,'brasilandia de minas','mg'),(310860,'brasilia de minas','mg'),(310870,'bras pires','mg'),(310880,'braunas','mg'),(310890,'brasopolis','mg'),(310900,'brumadinho','mg'),(310910,'bueno brandao','mg'),(310920,'buenopolis','mg'),(310925,'bugre','mg'),(310930,'buritis','mg'),(310940,'buritizeiro','mg'),(310945,'cabeceira grande','mg'),(310950,'cabo verde','mg'),(310960,'cachoeira da prata','mg'),(310970,'cachoeira de minas','mg'),(310980,'cachoeira dourada','mg'),(310990,'caetanopolis','mg'),(311000,'caete','mg'),(311010,'caiana','mg'),(311020,'cajuri','mg'),(311030,'caldas','mg'),(311040,'camacho','mg'),(311050,'camanducaia','mg'),(311060,'cambui','mg'),(311070,'cambuquira','mg'),(311080,'campanario','mg'),(311090,'campanha','mg'),(311100,'campestre','mg'),(311110,'campina verde','mg'),(311115,'campo azul','mg'),(311120,'campo belo','mg'),(311130,'campo do meio','mg'),(311140,'campo florido','mg'),(311150,'campos altos','mg'),(311160,'campos gerais','mg'),(311170,'canaa','mg'),(311180,'canapolis','mg'),(311190,'cana verde','mg'),(311200,'candeias','mg'),(311205,'cantagalo','mg'),(311210,'caparao','mg'),(311220,'capela nova','mg'),(311230,'capelinha','mg'),(311240,'capetinga','mg'),(311250,'capim branco','mg'),(311260,'capinopolis','mg'),(311265,'capitao andrade','mg'),(311270,'capitao eneas','mg'),(311280,'capitolio','mg'),(311290,'caputira','mg'),(311300,'carai','mg'),(311310,'caranaiba','mg'),(311320,'carandai','mg'),(311330,'carangola','mg'),(311340,'caratinga','mg'),(311350,'carbonita','mg'),(311360,'careacu','mg'),(311370,'carlos chagas','mg'),(311380,'carmesia','mg'),(311390,'carmo da cachoeira','mg'),(311400,'carmo da mata','mg'),(311410,'carmo de minas','mg'),(311420,'carmo do cajuru','mg'),(311430,'carmo do paranaiba','mg'),(311440,'carmo do rio claro','mg'),(311450,'carmopolis de minas','mg'),(311455,'carneirinho','mg'),(311460,'carrancas','mg'),(311470,'carvalhopolis','mg'),(311480,'carvalhos','mg'),(311490,'casa grande','mg'),(311500,'cascalho rico','mg'),(311510,'cassia','mg'),(311520,'conceicao da barra de minas','mg'),(311530,'cataguases','mg'),(311535,'catas altas','mg'),(311540,'catas altas da noruega','mg'),(311545,'catuji','mg'),(311547,'catuti','mg'),(311550,'caxambu','mg'),(311560,'cedro do abaete','mg'),(311570,'central de minas','mg'),(311580,'centralina','mg'),(311590,'chacara','mg'),(311600,'chale','mg'),(311610,'chapada do norte','mg'),(311615,'chapada gaucha','mg'),(311620,'chiador','mg'),(311630,'cipotanea','mg'),(311640,'claraval','mg'),(311650,'claro dos pocoes','mg'),(311660,'claudio','mg'),(311670,'coimbra','mg'),(311680,'coluna','mg'),(311690,'comendador gomes','mg'),(311700,'comercinho','mg'),(311710,'conceicao da aparecida','mg'),(311720,'conceicao das pedras','mg'),(311730,'conceicao das alagoas','mg'),(311740,'conceicao de ipanema','mg'),(311750,'conceicao do mato dentro','mg'),(311760,'conceicao do para','mg'),(311770,'conceicao do rio verde','mg'),(311780,'conceicao dos ouros','mg'),(311783,'conego marinho','mg'),(311787,'confins','mg'),(311790,'congonhal','mg'),(311800,'congonhas','mg'),(311810,'congonhas do norte','mg'),(311820,'conquista','mg'),(311830,'conselheiro lafaiete','mg'),(311840,'conselheiro pena','mg'),(311850,'consolacao','mg'),(311860,'contagem','mg'),(311870,'coqueiral','mg'),(311880,'coracao de jesus','mg'),(311890,'cordisburgo','mg'),(311900,'cordislandia','mg'),(311910,'corinto','mg'),(311920,'coroaci','mg'),(311930,'coromandel','mg'),(311940,'coronel fabriciano','mg'),(311950,'coronel murta','mg'),(311960,'coronel pacheco','mg'),(311970,'coronel xavier chaves','mg'),(311980,'corrego danta','mg'),(311990,'corrego do bom jesus','mg'),(311995,'corrego fundo','mg'),(312000,'corrego novo','mg'),(312010,'couto de magalhaes de minas','mg'),(312015,'crisolita','mg'),(312020,'cristais','mg'),(312030,'cristalia','mg'),(312040,'cristiano otoni','mg'),(312050,'cristina','mg'),(312060,'crucilandia','mg'),(312070,'cruzeiro da fortaleza','mg'),(312080,'cruzilia','mg'),(312083,'cuparaque','mg'),(312087,'curral de dentro','mg'),(312090,'curvelo','mg'),(312100,'datas','mg'),(312110,'delfim moreira','mg'),(312120,'delfinopolis','mg'),(312125,'delta','mg'),(312130,'descoberto','mg'),(312140,'desterro de entre rios','mg'),(312150,'desterro do melo','mg'),(312160,'diamantina','mg'),(312170,'diogo de vasconcelos','mg'),(312180,'dionisio','mg'),(312190,'divinesia','mg'),(312200,'divino','mg'),(312210,'divino das laranjeiras','mg'),(312220,'divinolandia de minas','mg'),(312230,'divinopolis','mg'),(312235,'divisa alegre','mg'),(312240,'divisa nova','mg'),(312245,'divisopolis','mg'),(312247,'dom bosco','mg'),(312250,'dom cavati','mg'),(312260,'dom joaquim','mg'),(312270,'dom silverio','mg'),(312280,'dom vicoso','mg'),(312290,'dona eusebia','mg'),(312300,'dores de campos','mg'),(312310,'dores de guanhaes','mg'),(312320,'dores do indaia','mg'),(312330,'dores do turvo','mg'),(312340,'doresopolis','mg'),(312350,'douradoquara','mg'),(312352,'durande','mg'),(312360,'eloi mendes','mg'),(312370,'engenheiro caldas','mg'),(312380,'engenheiro navarro','mg'),(312385,'entre folhas','mg'),(312390,'entre rios de minas','mg'),(312400,'ervalia','mg'),(312410,'esmeraldas','mg'),(312420,'espera feliz','mg'),(312430,'espinosa','mg'),(312440,'espirito santo do dourado','mg'),(312450,'estiva','mg'),(312460,'estrela dalva','mg'),(312470,'estrela do indaia','mg'),(312480,'estrela do sul','mg'),(312490,'eugenopolis','mg'),(312500,'ewbank da camara','mg'),(312510,'extrema','mg'),(312520,'fama','mg'),(312530,'faria lemos','mg'),(312540,'felicio dos santos','mg'),(312550,'sao goncalo do rio preto','mg'),(312560,'felisburgo','mg'),(312570,'felixlandia','mg'),(312580,'fernandes tourinho','mg'),(312590,'ferros','mg'),(312595,'fervedouro','mg'),(312600,'florestal','mg'),(312610,'formiga','mg'),(312620,'formoso','mg'),(312630,'fortaleza de minas','mg'),(312640,'fortuna de minas','mg'),(312650,'francisco badaro','mg'),(312660,'francisco dumont','mg'),(312670,'francisco sa','mg'),(312675,'franciscopolis','mg'),(312680,'frei gaspar','mg'),(312690,'frei inocencio','mg'),(312695,'frei lagonegro','mg'),(312700,'fronteira','mg'),(312705,'fronteira dos vales','mg'),(312707,'fruta de leite','mg'),(312710,'frutal','mg'),(312720,'funilandia','mg'),(312730,'galileia','mg'),(312733,'gameleiras','mg'),(312735,'glaucilandia','mg'),(312737,'goiabeira','mg'),(312738,'goiana','mg'),(312740,'goncalves','mg'),(312750,'gonzaga','mg'),(312760,'gouveia','mg'),(312770,'governador valadares','mg'),(312780,'grao mogol','mg'),(312790,'grupiara','mg'),(312800,'guanhaes','mg'),(312810,'guape','mg'),(312820,'guaraciaba','mg'),(312825,'guaraciama','mg'),(312830,'guaranesia','mg'),(312840,'guarani','mg'),(312850,'guarara','mg'),(312860,'guarda-mor','mg'),(312870,'guaxupe','mg'),(312880,'guidoval','mg'),(312890,'guimarania','mg'),(312900,'guiricema','mg'),(312910,'gurinhata','mg'),(312920,'heliodora','mg'),(312930,'iapu','mg'),(312940,'ibertioga','mg'),(312950,'ibia','mg'),(312960,'ibiai','mg'),(312965,'ibiracatu','mg'),(312970,'ibiraci','mg'),(312980,'ibirite','mg'),(312990,'ibitiura de minas','mg'),(313000,'ibituruna','mg'),(313005,'icarai de minas','mg'),(313010,'igarape','mg'),(313020,'igaratinga','mg'),(313030,'iguatama','mg'),(313040,'ijaci','mg'),(313050,'ilicinea','mg'),(313055,'imbe de minas','mg'),(313060,'inconfidentes','mg'),(313065,'indaiabira','mg'),(313070,'indianopolis','mg'),(313080,'ingai','mg'),(313090,'inhapim','mg'),(313100,'inhauma','mg'),(313110,'inimutaba','mg'),(313115,'ipaba','mg'),(313120,'ipanema','mg'),(313130,'ipatinga','mg'),(313140,'ipiacu','mg'),(313150,'ipuiuna','mg'),(313160,'irai de minas','mg'),(313170,'itabira','mg'),(313180,'itabirinha','mg'),(313190,'itabirito','mg'),(313200,'itacambira','mg'),(313210,'itacarambi','mg'),(313220,'itaguara','mg'),(313230,'itaipe','mg'),(313240,'itajuba','mg'),(313250,'itamarandiba','mg'),(313260,'itamarati de minas','mg'),(313270,'itambacuri','mg'),(313280,'itambe do mato dentro','mg'),(313290,'itamogi','mg'),(313300,'itamonte','mg'),(313310,'itanhandu','mg'),(313320,'itanhomi','mg'),(313330,'itaobim','mg'),(313340,'itapagipe','mg'),(313350,'itapecerica','mg'),(313360,'itapeva','mg'),(313370,'itatiaiucu','mg'),(313375,'itau de minas','mg'),(313380,'itauna','mg'),(313390,'itaverava','mg'),(313400,'itinga','mg'),(313410,'itueta','mg'),(313420,'ituiutaba','mg'),(313430,'itumirim','mg'),(313440,'iturama','mg'),(313450,'itutinga','mg'),(313460,'jaboticatubas','mg'),(313470,'jacinto','mg'),(313480,'jacui','mg'),(313490,'jacutinga','mg'),(313500,'jaguaracu','mg'),(313505,'jaiba','mg'),(313507,'jampruca','mg'),(313510,'janauba','mg'),(313520,'januaria','mg'),(313530,'japaraiba','mg'),(313535,'japonvar','mg'),(313540,'jeceaba','mg'),(313545,'jenipapo de minas','mg'),(313550,'jequeri','mg'),(313560,'jequitai','mg'),(313570,'jequitiba','mg'),(313580,'jequitinhonha','mg'),(313590,'jesuania','mg'),(313600,'joaima','mg'),(313610,'joanesia','mg'),(313620,'joao monlevade','mg'),(313630,'joao pinheiro','mg'),(313640,'joaquim felicio','mg'),(313650,'jordania','mg'),(313652,'jose goncalves de minas','mg'),(313655,'jose raydan','mg'),(313657,'josenopolis','mg'),(313660,'nova uniao','mg'),(313665,'juatuba','mg'),(313670,'juiz de fora','mg'),(313680,'juramento','mg'),(313690,'juruaia','mg'),(313695,'juvenilia','mg'),(313700,'ladainha','mg'),(313710,'lagamar','mg'),(313720,'lagoa da prata','mg'),(313730,'lagoa dos patos','mg'),(313740,'lagoa dourada','mg'),(313750,'lagoa formosa','mg'),(313753,'lagoa grande','mg'),(313760,'lagoa santa','mg'),(313770,'lajinha','mg'),(313780,'lambari','mg'),(313790,'lamim','mg'),(313800,'laranjal','mg'),(313810,'lassance','mg'),(313820,'lavras','mg'),(313830,'leandro ferreira','mg'),(313835,'leme do prado','mg'),(313840,'leopoldina','mg'),(313850,'liberdade','mg'),(313860,'lima duarte','mg'),(313862,'limeira do oeste','mg'),(313865,'lontra','mg'),(313867,'luisburgo','mg'),(313868,'luislandia','mg'),(313870,'luminarias','mg'),(313880,'luz','mg'),(313890,'machacalis','mg'),(313900,'machado','mg'),(313910,'madre de deus de minas','mg'),(313920,'malacacheta','mg'),(313925,'mamonas','mg'),(313930,'manga','mg'),(313940,'manhuacu','mg'),(313950,'manhumirim','mg'),(313960,'mantena','mg'),(313970,'maravilhas','mg'),(313980,'mar de espanha','mg'),(313990,'maria da fe','mg'),(314000,'mariana','mg'),(314010,'marilac','mg'),(314015,'mario campos','mg'),(314020,'maripa de minas','mg'),(314030,'marlieria','mg'),(314040,'marmelopolis','mg'),(314050,'martinho campos','mg'),(314053,'martins soares','mg'),(314055,'mata verde','mg'),(314060,'materlandia','mg'),(314070,'mateus leme','mg'),(314080,'matias barbosa','mg'),(314085,'matias cardoso','mg'),(314090,'matipo','mg'),(314100,'mato verde','mg'),(314110,'matozinhos','mg'),(314120,'matutina','mg'),(314130,'medeiros','mg'),(314140,'medina','mg'),(314150,'mendes pimentel','mg'),(314160,'merces','mg'),(314170,'mesquita','mg'),(314180,'minas novas','mg'),(314190,'minduri','mg'),(314200,'mirabela','mg'),(314210,'miradouro','mg'),(314220,'mirai','mg'),(314225,'miravania','mg'),(314230,'moeda','mg'),(314240,'moema','mg'),(314250,'monjolos','mg'),(314260,'monsenhor paulo','mg'),(314270,'montalvania','mg'),(314280,'monte alegre de minas','mg'),(314290,'monte azul','mg'),(314300,'monte belo','mg'),(314310,'monte carmelo','mg'),(314315,'monte formoso','mg'),(314320,'monte santo de minas','mg'),(314330,'montes claros','mg'),(314340,'monte siao','mg'),(314345,'montezuma','mg'),(314350,'morada nova de minas','mg'),(314360,'morro da garca','mg'),(314370,'morro do pilar','mg'),(314380,'munhoz','mg'),(314390,'muriae','mg'),(314400,'mutum','mg'),(314410,'muzambinho','mg'),(314420,'nacip raydan','mg'),(314430,'nanuque','mg'),(314435,'naque','mg'),(314437,'natalandia','mg'),(314440,'natercia','mg'),(314450,'nazareno','mg'),(314460,'nepomuceno','mg'),(314465,'ninheira','mg'),(314467,'nova belem','mg'),(314470,'nova era','mg'),(314480,'nova lima','mg'),(314490,'nova modica','mg'),(314500,'nova ponte','mg'),(314505,'nova porteirinha','mg'),(314510,'nova resende','mg'),(314520,'nova serrana','mg'),(314530,'novo cruzeiro','mg'),(314535,'novo oriente de minas','mg'),(314537,'novorizonte','mg'),(314540,'olaria','mg'),(314545,'olhos-d\'agua','mg'),(314550,'olimpio noronha','mg'),(314560,'oliveira','mg'),(314570,'oliveira fortes','mg'),(314580,'onca de pitangui','mg'),(314585,'oratorios','mg'),(314587,'orizania','mg'),(314590,'ouro branco','mg'),(314600,'ouro fino','mg'),(314610,'ouro preto','mg'),(314620,'ouro verde de minas','mg'),(314625,'padre carvalho','mg'),(314630,'padre paraiso','mg'),(314640,'paineiras','mg'),(314650,'pains','mg'),(314655,'pai pedro','mg'),(314660,'paiva','mg'),(314670,'palma','mg'),(314675,'palmopolis','mg'),(314690,'papagaios','mg'),(314700,'paracatu','mg'),(314710,'para de minas','mg'),(314720,'paraguacu','mg'),(314730,'paraisopolis','mg'),(314740,'paraopeba','mg'),(314750,'passabem','mg'),(314760,'passa quatro','mg'),(314770,'passa tempo','mg'),(314780,'passa-vinte','mg'),(314790,'passos','mg'),(314795,'patis','mg'),(314800,'patos de minas','mg'),(314810,'patrocinio','mg'),(314820,'patrocinio do muriae','mg'),(314830,'paula candido','mg'),(314840,'paulistas','mg'),(314850,'pavao','mg'),(314860,'pecanha','mg'),(314870,'pedra azul','mg'),(314875,'pedra bonita','mg'),(314880,'pedra do anta','mg'),(314890,'pedra do indaia','mg'),(314900,'pedra dourada','mg'),(314910,'pedralva','mg'),(314915,'pedras de maria da cruz','mg'),(314920,'pedrinopolis','mg'),(314930,'pedro leopoldo','mg'),(314940,'pedro teixeira','mg'),(314950,'pequeri','mg'),(314960,'pequi','mg'),(314970,'perdigao','mg'),(314980,'perdizes','mg'),(314990,'perdoes','mg'),(314995,'periquito','mg'),(315000,'pescador','mg'),(315010,'piau','mg'),(315015,'piedade de caratinga','mg'),(315020,'piedade de ponte nova','mg'),(315030,'piedade do rio grande','mg'),(315040,'piedade dos gerais','mg'),(315050,'pimenta','mg'),(315053,'pingo-d\'agua','mg'),(315057,'pintopolis','mg'),(315060,'piracema','mg'),(315070,'pirajuba','mg'),(315080,'piranga','mg'),(315090,'pirangucu','mg'),(315100,'piranguinho','mg'),(315110,'pirapetinga','mg'),(315120,'pirapora','mg'),(315130,'pirauba','mg'),(315140,'pitangui','mg'),(315150,'piumhi','mg'),(315160,'planura','mg'),(315170,'poco fundo','mg'),(315180,'pocos de caldas','mg'),(315190,'pocrane','mg'),(315200,'pompeu','mg'),(315210,'ponte nova','mg'),(315213,'ponto chique','mg'),(315217,'ponto dos volantes','mg'),(315220,'porteirinha','mg'),(315230,'porto firme','mg'),(315240,'pote','mg'),(315250,'pouso alegre','mg'),(315260,'pouso alto','mg'),(315270,'prados','mg'),(315280,'prata','mg'),(315290,'pratapolis','mg'),(315300,'pratinha','mg'),(315310,'presidente bernardes','mg'),(315320,'presidente juscelino','mg'),(315330,'presidente kubitschek','mg'),(315340,'presidente olegario','mg'),(315350,'alto jequitiba','mg'),(315360,'prudente de morais','mg'),(315370,'quartel geral','mg'),(315380,'queluzito','mg'),(315390,'raposos','mg'),(315400,'raul soares','mg'),(315410,'recreio','mg'),(315415,'reduto','mg'),(315420,'resende costa','mg'),(315430,'resplendor','mg'),(315440,'ressaquinha','mg'),(315445,'riachinho','mg'),(315450,'riacho dos machados','mg'),(315460,'ribeirao das neves','mg'),(315470,'ribeirao vermelho','mg'),(315480,'rio acima','mg'),(315490,'rio casca','mg'),(315500,'rio doce','mg'),(315510,'rio do prado','mg'),(315520,'rio espera','mg'),(315530,'rio manso','mg'),(315540,'rio novo','mg'),(315550,'rio paranaiba','mg'),(315560,'rio pardo de minas','mg'),(315570,'rio piracicaba','mg'),(315580,'rio pomba','mg'),(315590,'rio preto','mg'),(315600,'rio vermelho','mg'),(315610,'ritapolis','mg'),(315620,'rochedo de minas','mg'),(315630,'rodeiro','mg'),(315640,'romaria','mg'),(315645,'rosario da limeira','mg'),(315650,'rubelita','mg'),(315660,'rubim','mg'),(315670,'sabara','mg'),(315680,'sabinopolis','mg'),(315690,'sacramento','mg'),(315700,'salinas','mg'),(315710,'salto da divisa','mg'),(315720,'santa barbara','mg'),(315725,'santa barbara do leste','mg'),(315727,'santa barbara do monte verde','mg'),(315730,'santa barbara do tugurio','mg'),(315733,'santa cruz de minas','mg'),(315737,'santa cruz de salinas','mg'),(315740,'santa cruz do escalvado','mg'),(315750,'santa efigenia de minas','mg'),(315760,'santa fe de minas','mg'),(315765,'santa helena de minas','mg'),(315770,'santa juliana','mg'),(315780,'santa luzia','mg'),(315790,'santa margarida','mg'),(315800,'santa maria de itabira','mg'),(315810,'santa maria do salto','mg'),(315820,'santa maria do suacui','mg'),(315830,'santana da vargem','mg'),(315840,'santana de cataguases','mg'),(315850,'santana de pirapama','mg'),(315860,'santana do deserto','mg'),(315870,'santana do garambeu','mg'),(315880,'santana do jacare','mg'),(315890,'santana do manhuacu','mg'),(315895,'santana do paraiso','mg'),(315900,'santana do riacho','mg'),(315910,'santana dos montes','mg'),(315920,'santa rita de caldas','mg'),(315930,'santa rita de jacutinga','mg'),(315935,'santa rita de minas','mg'),(315940,'santa rita de ibitipoca','mg'),(315950,'santa rita do itueto','mg'),(315960,'santa rita do sapucai','mg'),(315970,'santa rosa da serra','mg'),(315980,'santa vitoria','mg'),(315990,'santo antonio do amparo','mg'),(316000,'santo antonio do aventureiro','mg'),(316010,'santo antonio do grama','mg'),(316020,'santo antonio do itambe','mg'),(316030,'santo antonio do jacinto','mg'),(316040,'santo antonio do monte','mg'),(316045,'santo antonio do retiro','mg'),(316050,'santo antonio do rio abaixo','mg'),(316060,'santo hipolito','mg'),(316070,'santos dumont','mg'),(316080,'sao bento abade','mg'),(316090,'sao bras do suacui','mg'),(316095,'sao domingos das dores','mg'),(316100,'sao domingos do prata','mg'),(316105,'sao felix de minas','mg'),(316110,'sao francisco','mg'),(316120,'sao francisco de paula','mg'),(316130,'sao francisco de sales','mg'),(316140,'sao francisco do gloria','mg'),(316150,'sao geraldo','mg'),(316160,'sao geraldo da piedade','mg'),(316165,'sao geraldo do baixio','mg'),(316170,'sao goncalo do abaete','mg'),(316180,'sao goncalo do para','mg'),(316190,'sao goncalo do rio abaixo','mg'),(316200,'sao goncalo do sapucai','mg'),(316210,'sao gotardo','mg'),(316220,'sao joao batista do gloria','mg'),(316225,'sao joao da lagoa','mg'),(316230,'sao joao da mata','mg'),(316240,'sao joao da ponte','mg'),(316245,'sao joao das missoes','mg'),(316250,'sao joao del rei','mg'),(316255,'sao joao do manhuacu','mg'),(316257,'sao joao do manteninha','mg'),(316260,'sao joao do oriente','mg'),(316265,'sao joao do pacui','mg'),(316270,'sao joao do paraiso','mg'),(316280,'sao joao evangelista','mg'),(316290,'sao joao nepomuceno','mg'),(316292,'sao joaquim de bicas','mg'),(316294,'sao jose da barra','mg'),(316295,'sao jose da lapa','mg'),(316300,'sao jose da safira','mg'),(316310,'sao jose da varginha','mg'),(316320,'sao jose do alegre','mg'),(316330,'sao jose do divino','mg'),(316340,'sao jose do goiabal','mg'),(316350,'sao jose do jacuri','mg'),(316360,'sao jose do mantimento','mg'),(316370,'sao lourenco','mg'),(316380,'sao miguel do anta','mg'),(316390,'sao pedro da uniao','mg'),(316400,'sao pedro dos ferros','mg'),(316410,'sao pedro do suacui','mg'),(316420,'sao romao','mg'),(316430,'sao roque de minas','mg'),(316440,'sao sebastiao da bela vista','mg'),(316443,'sao sebastiao da vargem alegre','mg'),(316447,'sao sebastiao do anta','mg'),(316450,'sao sebastiao do maranhao','mg'),(316460,'sao sebastiao do oeste','mg'),(316470,'sao sebastiao do paraiso','mg'),(316480,'sao sebastiao do rio preto','mg'),(316490,'sao sebastiao do rio verde','mg'),(316500,'sao tiago','mg'),(316510,'sao tomas de aquino','mg'),(316520,'sao thome das letras','mg'),(316530,'sao vicente de minas','mg'),(316540,'sapucai-mirim','mg'),(316550,'sardoa','mg'),(316553,'sarzedo','mg'),(316555,'setubinha','mg'),(316556,'sem-peixe','mg'),(316557,'senador amaral','mg'),(316560,'senador cortes','mg'),(316570,'senador firmino','mg'),(316580,'senador jose bento','mg'),(316590,'senador modestino goncalves','mg'),(316600,'senhora de oliveira','mg'),(316610,'senhora do porto','mg'),(316620,'senhora dos remedios','mg'),(316630,'sericita','mg'),(316640,'seritinga','mg'),(316650,'serra azul de minas','mg'),(316660,'serra da saudade','mg'),(316670,'serra dos aimores','mg'),(316680,'serra do salitre','mg'),(316690,'serrania','mg'),(316695,'serranopolis de minas','mg'),(316700,'serranos','mg'),(316710,'serro','mg'),(316720,'sete lagoas','mg'),(316730,'silveirania','mg'),(316740,'silvianopolis','mg'),(316750,'simao pereira','mg'),(316760,'simonesia','mg'),(316770,'sobralia','mg'),(316780,'soledade de minas','mg'),(316790,'tabuleiro','mg'),(316800,'taiobeiras','mg'),(316805,'taparuba','mg'),(316810,'tapira','mg'),(316820,'tapirai','mg'),(316830,'taquaracu de minas','mg'),(316840,'tarumirim','mg'),(316850,'teixeiras','mg'),(316860,'teofilo otoni','mg'),(316870,'timoteo','mg'),(316880,'tiradentes','mg'),(316890,'tiros','mg'),(316900,'tocantins','mg'),(316905,'tocos do moji','mg'),(316910,'toledo','mg'),(316920,'tombos','mg'),(316930,'tres coracoes','mg'),(316935,'tres marias','mg'),(316940,'tres pontas','mg'),(316950,'tumiritinga','mg'),(316960,'tupaciguara','mg'),(316970,'turmalina','mg'),(316980,'turvolandia','mg'),(316990,'uba','mg'),(317000,'ubai','mg'),(317005,'ubaporanga','mg'),(317010,'uberaba','mg'),(317020,'uberlandia','mg'),(317030,'umburatiba','mg'),(317040,'unai','mg'),(317043,'uniao de minas','mg'),(317047,'uruana de minas','mg'),(317050,'urucania','mg'),(317052,'urucuia','mg'),(317057,'vargem alegre','mg'),(317060,'vargem bonita','mg'),(317065,'vargem grande do rio pardo','mg'),(317070,'varginha','mg'),(317075,'varjao de minas','mg'),(317080,'varzea da palma','mg'),(317090,'varzelandia','mg'),(317100,'vazante','mg'),(317103,'verdelandia','mg'),(317107,'veredinha','mg'),(317110,'verissimo','mg'),(317115,'vermelho novo','mg'),(317120,'vespasiano','mg'),(317130,'vicosa','mg'),(317140,'vieiras','mg'),(317150,'mathias lobato','mg'),(317160,'virgem da lapa','mg'),(317170,'virginia','mg'),(317180,'virginopolis','mg'),(317190,'virgolandia','mg'),(317200,'visconde do rio branco','mg'),(317210,'volta grande','mg'),(317220,'wenceslau braz','mg'),(320010,'afonso claudio','es'),(320013,'aguia branca','es'),(320016,'agua doce do norte','es'),(320020,'alegre','es'),(320030,'alfredo chaves','es'),(320035,'alto rio novo','es'),(320040,'anchieta','es'),(320050,'apiaca','es'),(320060,'aracruz','es'),(320070,'atilio vivacqua','es'),(320080,'baixo guandu','es'),(320090,'barra de sao francisco','es'),(320100,'boa esperanca','es'),(320110,'bom jesus do norte','es'),(320115,'brejetuba','es'),(320120,'cachoeiro de itapemirim','es'),(320130,'cariacica','es'),(320140,'castelo','es'),(320150,'colatina','es'),(320160,'conceicao da barra','es'),(320170,'conceicao do castelo','es'),(320180,'divino de sao lourenco','es'),(320190,'domingos martins','es'),(320200,'dores do rio preto','es'),(320210,'ecoporanga','es'),(320220,'fundao','es'),(320225,'governador lindenberg','es'),(320230,'guacui','es'),(320240,'guarapari','es'),(320245,'ibatiba','es'),(320250,'ibiracu','es'),(320255,'ibitirama','es'),(320260,'iconha','es'),(320265,'irupi','es'),(320270,'itaguacu','es'),(320280,'itapemirim','es'),(320290,'itarana','es'),(320300,'iuna','es'),(320305,'jaguare','es'),(320310,'jeronimo monteiro','es'),(320313,'joao neiva','es'),(320316,'laranja da terra','es'),(320320,'linhares','es'),(320330,'mantenopolis','es'),(320332,'marataizes','es'),(320334,'marechal floriano','es'),(320335,'marilandia','es'),(320340,'mimoso do sul','es'),(320350,'montanha','es'),(320360,'mucurici','es'),(320370,'muniz freire','es'),(320380,'muqui','es'),(320390,'nova venecia','es'),(320400,'pancas','es'),(320405,'pedro canario','es'),(320410,'pinheiros','es'),(320420,'piuma','es'),(320425,'ponto belo','es'),(320430,'presidente kennedy','es'),(320435,'rio bananal','es'),(320440,'rio novo do sul','es'),(320450,'santa leopoldina','es'),(320455,'santa maria de jetiba','es'),(320460,'santa teresa','es'),(320465,'sao domingos do norte','es'),(320470,'sao gabriel da palha','es'),(320480,'sao jose do calcado','es'),(320490,'sao mateus','es'),(320495,'sao roque do canaa','es'),(320500,'serra','es'),(320501,'sooretama','es'),(320503,'vargem alta','es'),(320506,'venda nova do imigrante','es'),(320510,'viana','es'),(320515,'vila pavao','es'),(320517,'vila valerio','es'),(320520,'vila velha','es'),(320530,'vitoria','es'),(330010,'angra dos reis','rj'),(330015,'aperibe','rj'),(330020,'araruama','rj'),(330022,'areal','rj'),(330023,'armacao dos buzios','rj'),(330025,'arraial do cabo','rj'),(330030,'barra do pirai','rj'),(330040,'barra mansa','rj'),(330045,'belford roxo','rj'),(330050,'bom jardim','rj'),(330060,'bom jesus do itabapoana','rj'),(330070,'cabo frio','rj'),(330080,'cachoeiras de macacu','rj'),(330090,'cambuci','rj'),(330093,'carapebus','rj'),(330095,'comendador levy gasparian','rj'),(330100,'campos dos goytacazes','rj'),(330110,'cantagalo','rj'),(330115,'cardoso moreira','rj'),(330120,'carmo','rj'),(330130,'casimiro de abreu','rj'),(330140,'conceicao de macabu','rj'),(330150,'cordeiro','rj'),(330160,'duas barras','rj'),(330170,'duque de caxias','rj'),(330180,'engenheiro paulo de frontin','rj'),(330185,'guapimirim','rj'),(330187,'iguaba grande','rj'),(330190,'itaborai','rj'),(330200,'itaguai','rj'),(330205,'italva','rj'),(330210,'itaocara','rj'),(330220,'itaperuna','rj'),(330225,'itatiaia','rj'),(330227,'japeri','rj'),(330230,'laje do muriae','rj'),(330240,'macae','rj'),(330245,'macuco','rj'),(330250,'mage','rj'),(330260,'mangaratiba','rj'),(330270,'marica','rj'),(330280,'mendes','rj'),(330285,'mesquita','rj'),(330290,'miguel pereira','rj'),(330300,'miracema','rj'),(330310,'natividade','rj'),(330320,'nilopolis','rj'),(330330,'niteroi','rj'),(330340,'nova friburgo','rj'),(330350,'nova iguacu','rj'),(330360,'paracambi','rj'),(330370,'paraiba do sul','rj'),(330380,'parati','rj'),(330385,'paty do alferes','rj'),(330390,'petropolis','rj'),(330395,'pinheiral','rj'),(330400,'pirai','rj'),(330410,'porciuncula','rj'),(330411,'porto real','rj'),(330412,'quatis','rj'),(330414,'queimados','rj'),(330415,'quissama','rj'),(330420,'resende','rj'),(330430,'rio bonito','rj'),(330440,'rio claro','rj'),(330450,'rio das flores','rj'),(330452,'rio das ostras','rj'),(330455,'rio de janeiro','rj'),(330460,'santa maria madalena','rj'),(330470,'santo antonio de padua','rj'),(330475,'sao francisco de itabapoana','rj'),(330480,'sao fidelis','rj'),(330490,'sao goncalo','rj'),(330500,'sao joao da barra','rj'),(330510,'sao joao de meriti','rj'),(330513,'sao jose de uba','rj'),(330515,'sao jose do vale do rio preto','rj'),(330520,'sao pedro da aldeia','rj'),(330530,'sao sebastiao do alto','rj'),(330540,'sapucaia','rj'),(330550,'saquarema','rj'),(330555,'seropedica','rj'),(330560,'silva jardim','rj'),(330570,'sumidouro','rj'),(330575,'tangua','rj'),(330580,'teresopolis','rj'),(330590,'trajano de morais','rj'),(330600,'tres rios','rj'),(330610,'valenca','rj'),(330615,'varre-sai','rj'),(330620,'vassouras','rj'),(330630,'volta redonda','rj'),(350010,'adamantina','sp'),(350020,'adolfo','sp'),(350030,'aguai','sp'),(350040,'aguas da prata','sp'),(350050,'aguas de lindoia','sp'),(350055,'aguas de santa barbara','sp'),(350060,'aguas de sao pedro','sp'),(350070,'agudos','sp'),(350075,'alambari','sp'),(350080,'alfredo marcondes','sp'),(350090,'altair','sp'),(350100,'altinopolis','sp'),(350110,'alto alegre','sp'),(350115,'aluminio','sp'),(350120,'alvares florence','sp'),(350130,'alvares machado','sp'),(350140,'alvaro de carvalho','sp'),(350150,'alvinlandia','sp'),(350160,'americana','sp'),(350170,'americo brasiliense','sp'),(350180,'americo de campos','sp'),(350190,'amparo','sp'),(350200,'analandia','sp'),(350210,'andradina','sp'),(350220,'angatuba','sp'),(350230,'anhembi','sp'),(350240,'anhumas','sp'),(350250,'aparecida','sp'),(350260,'aparecida d\'oeste','sp'),(350270,'apiai','sp'),(350275,'aracariguama','sp'),(350280,'aracatuba','sp'),(350290,'aracoiaba da serra','sp'),(350300,'aramina','sp'),(350310,'arandu','sp'),(350315,'arapei','sp'),(350320,'araraquara','sp'),(350330,'araras','sp'),(350335,'arco-iris','sp'),(350340,'arealva','sp'),(350350,'areias','sp'),(350360,'areiopolis','sp'),(350370,'ariranha','sp'),(350380,'artur nogueira','sp'),(350390,'aruja','sp'),(350395,'aspasia','sp'),(350400,'assis','sp'),(350410,'atibaia','sp'),(350420,'auriflama','sp'),(350430,'avai','sp'),(350440,'avanhandava','sp'),(350450,'avare','sp'),(350460,'bady bassitt','sp'),(350470,'balbinos','sp'),(350480,'balsamo','sp'),(350490,'bananal','sp'),(350500,'barao de antonina','sp'),(350510,'barbosa','sp'),(350520,'bariri','sp'),(350530,'barra bonita','sp'),(350535,'barra do chapeu','sp'),(350540,'barra do turvo','sp'),(350550,'barretos','sp'),(350560,'barrinha','sp'),(350570,'barueri','sp'),(350580,'bastos','sp'),(350590,'batatais','sp'),(350600,'bauru','sp'),(350610,'bebedouro','sp'),(350620,'bento de abreu','sp'),(350630,'bernardino de campos','sp'),(350635,'bertioga','sp'),(350640,'bilac','sp'),(350650,'birigui','sp'),(350660,'biritiba-mirim','sp'),(350670,'boa esperanca do sul','sp'),(350680,'bocaina','sp'),(350690,'bofete','sp'),(350700,'boituva','sp'),(350710,'bom jesus dos perdoes','sp'),(350715,'bom sucesso de itarare','sp'),(350720,'bora','sp'),(350730,'boraceia','sp'),(350740,'borborema','sp'),(350745,'borebi','sp'),(350750,'botucatu','sp'),(350760,'braganca paulista','sp'),(350770,'brauna','sp'),(350775,'brejo alegre','sp'),(350780,'brodowski','sp'),(350790,'brotas','sp'),(350800,'buri','sp'),(350810,'buritama','sp'),(350820,'buritizal','sp'),(350830,'cabralia paulista','sp'),(350840,'cabreuva','sp'),(350850,'cacapava','sp'),(350860,'cachoeira paulista','sp'),(350870,'caconde','sp'),(350880,'cafelandia','sp'),(350890,'caiabu','sp'),(350900,'caieiras','sp'),(350910,'caiua','sp'),(350920,'cajamar','sp'),(350925,'cajati','sp'),(350930,'cajobi','sp'),(350940,'cajuru','sp'),(350945,'campina do monte alegre','sp'),(350950,'campinas','sp'),(350960,'campo limpo paulista','sp'),(350970,'campos do jordao','sp'),(350980,'campos novos paulista','sp'),(350990,'cananeia','sp'),(350995,'canas','sp'),(351000,'candido mota','sp'),(351010,'candido rodrigues','sp'),(351015,'canitar','sp'),(351020,'capao bonito','sp'),(351030,'capela do alto','sp'),(351040,'capivari','sp'),(351050,'caraguatatuba','sp'),(351060,'carapicuiba','sp'),(351070,'cardoso','sp'),(351080,'casa branca','sp'),(351090,'cassia dos coqueiros','sp'),(351100,'castilho','sp'),(351110,'catanduva','sp'),(351120,'catigua','sp'),(351130,'cedral','sp'),(351140,'cerqueira cesar','sp'),(351150,'cerquilho','sp'),(351160,'cesario lange','sp'),(351170,'charqueada','sp'),(351190,'clementina','sp'),(351200,'colina','sp'),(351210,'colombia','sp'),(351220,'conchal','sp'),(351230,'conchas','sp'),(351240,'cordeiropolis','sp'),(351250,'coroados','sp'),(351260,'coronel macedo','sp'),(351270,'corumbatai','sp'),(351280,'cosmopolis','sp'),(351290,'cosmorama','sp'),(351300,'cotia','sp'),(351310,'cravinhos','sp'),(351320,'cristais paulista','sp'),(351330,'cruzalia','sp'),(351340,'cruzeiro','sp'),(351350,'cubatao','sp'),(351360,'cunha','sp'),(351370,'descalvado','sp'),(351380,'diadema','sp'),(351385,'dirce reis','sp'),(351390,'divinolandia','sp'),(351400,'dobrada','sp'),(351410,'dois corregos','sp'),(351420,'dolcinopolis','sp'),(351430,'dourado','sp'),(351440,'dracena','sp'),(351450,'duartina','sp'),(351460,'dumont','sp'),(351470,'echapora','sp'),(351480,'eldorado','sp'),(351490,'elias fausto','sp'),(351492,'elisiario','sp'),(351495,'embauba','sp'),(351500,'embu','sp'),(351510,'embu-guacu','sp'),(351512,'emilianopolis','sp'),(351515,'engenheiro coelho','sp'),(351518,'espirito santo do pinhal','sp'),(351519,'espirito santo do turvo','sp'),(351520,'estrela d\'oeste','sp'),(351530,'estrela do norte','sp'),(351535,'euclides da cunha paulista','sp'),(351540,'fartura','sp'),(351550,'fernandopolis','sp'),(351560,'fernando prestes','sp'),(351565,'fernao','sp'),(351570,'ferraz de vasconcelos','sp'),(351580,'flora rica','sp'),(351590,'floreal','sp'),(351600,'florida paulista','sp'),(351610,'florinia','sp'),(351620,'franca','sp'),(351630,'francisco morato','sp'),(351640,'franco da rocha','sp'),(351650,'gabriel monteiro','sp'),(351660,'galia','sp'),(351670,'garca','sp'),(351680,'gastao vidigal','sp'),(351685,'gaviao peixoto','sp'),(351690,'general salgado','sp'),(351700,'getulina','sp'),(351710,'glicerio','sp'),(351720,'guaicara','sp'),(351730,'guaimbe','sp'),(351740,'guaira','sp'),(351750,'guapiacu','sp'),(351760,'guapiara','sp'),(351770,'guara','sp'),(351780,'guaracai','sp'),(351790,'guaraci','sp'),(351800,'guarani d\'oeste','sp'),(351810,'guaranta','sp'),(351820,'guararapes','sp'),(351830,'guararema','sp'),(351840,'guaratingueta','sp'),(351850,'guarei','sp'),(351860,'guariba','sp'),(351870,'guaruja','sp'),(351880,'guarulhos','sp'),(351885,'guatapara','sp'),(351890,'guzolandia','sp'),(351900,'herculandia','sp'),(351905,'holambra','sp'),(351907,'hortolandia','sp'),(351910,'iacanga','sp'),(351920,'iacri','sp'),(351925,'iaras','sp'),(351930,'ibate','sp'),(351940,'ibira','sp'),(351950,'ibirarema','sp'),(351960,'ibitinga','sp'),(351970,'ibiuna','sp'),(351980,'icem','sp'),(351990,'iepe','sp'),(352000,'igaracu do tiete','sp'),(352010,'igarapava','sp'),(352020,'igarata','sp'),(352030,'iguape','sp'),(352040,'ilhabela','sp'),(352042,'ilha comprida','sp'),(352044,'ilha solteira','sp'),(352050,'indaiatuba','sp'),(352060,'indiana','sp'),(352070,'indiapora','sp'),(352080,'inubia paulista','sp'),(352090,'ipaussu','sp'),(352100,'ipero','sp'),(352110,'ipeuna','sp'),(352115,'ipigua','sp'),(352120,'iporanga','sp'),(352130,'ipua','sp'),(352140,'iracemapolis','sp'),(352150,'irapua','sp'),(352160,'irapuru','sp'),(352170,'itabera','sp'),(352180,'itai','sp'),(352190,'itajobi','sp'),(352200,'itaju','sp'),(352210,'itanhaem','sp'),(352215,'itaoca','sp'),(352220,'itapecerica da serra','sp'),(352230,'itapetininga','sp'),(352240,'itapeva','sp'),(352250,'itapevi','sp'),(352260,'itapira','sp'),(352265,'itapirapua paulista','sp'),(352270,'itapolis','sp'),(352280,'itaporanga','sp'),(352290,'itapui','sp'),(352300,'itapura','sp'),(352310,'itaquaquecetuba','sp'),(352320,'itarare','sp'),(352330,'itariri','sp'),(352340,'itatiba','sp'),(352350,'itatinga','sp'),(352360,'itirapina','sp'),(352370,'itirapua','sp'),(352380,'itobi','sp'),(352390,'itu','sp'),(352400,'itupeva','sp'),(352410,'ituverava','sp'),(352420,'jaborandi','sp'),(352430,'jaboticabal','sp'),(352440,'jacarei','sp'),(352450,'jaci','sp'),(352460,'jacupiranga','sp'),(352470,'jaguariuna','sp'),(352480,'jales','sp'),(352490,'jambeiro','sp'),(352500,'jandira','sp'),(352510,'jardinopolis','sp'),(352520,'jarinu','sp'),(352530,'jau','sp'),(352540,'jeriquara','sp'),(352550,'joanopolis','sp'),(352560,'joao ramalho','sp'),(352570,'jose bonifacio','sp'),(352580,'julio mesquita','sp'),(352585,'jumirim','sp'),(352590,'jundiai','sp'),(352600,'junqueiropolis','sp'),(352610,'juquia','sp'),(352620,'juquitiba','sp'),(352630,'lagoinha','sp'),(352640,'laranjal paulista','sp'),(352650,'lavinia','sp'),(352660,'lavrinhas','sp'),(352670,'leme','sp'),(352680,'lencois paulista','sp'),(352690,'limeira','sp'),(352700,'lindoia','sp'),(352710,'lins','sp'),(352720,'lorena','sp'),(352725,'lourdes','sp'),(352730,'louveira','sp'),(352740,'lucelia','sp'),(352750,'lucianopolis','sp'),(352760,'luis antonio','sp'),(352770,'luiziania','sp'),(352780,'lupercio','sp'),(352790,'lutecia','sp'),(352800,'macatuba','sp'),(352810,'macaubal','sp'),(352820,'macedonia','sp'),(352830,'magda','sp'),(352840,'mairinque','sp'),(352850,'mairipora','sp'),(352860,'manduri','sp'),(352870,'maraba paulista','sp'),(352880,'maracai','sp'),(352885,'marapoama','sp'),(352890,'mariapolis','sp'),(352900,'marilia','sp'),(352910,'marinopolis','sp'),(352920,'martinopolis','sp'),(352930,'matao','sp'),(352940,'maua','sp'),(352950,'mendonca','sp'),(352960,'meridiano','sp'),(352965,'mesopolis','sp'),(352970,'miguelopolis','sp'),(352980,'mineiros do tiete','sp'),(352990,'miracatu','sp'),(353000,'mira estrela','sp'),(353010,'mirandopolis','sp'),(353020,'mirante do paranapanema','sp'),(353030,'mirassol','sp'),(353040,'mirassolandia','sp'),(353050,'mococa','sp'),(353060,'mogi das cruzes','sp'),(353070,'mogi guacu','sp'),(353080,'moji mirim','sp'),(353090,'mombuca','sp'),(353100,'moncoes','sp'),(353110,'mongagua','sp'),(353120,'monte alegre do sul','sp'),(353130,'monte alto','sp'),(353140,'monte aprazivel','sp'),(353150,'monte azul paulista','sp'),(353160,'monte castelo','sp'),(353170,'monteiro lobato','sp'),(353180,'monte mor','sp'),(353190,'morro agudo','sp'),(353200,'morungaba','sp'),(353205,'motuca','sp'),(353210,'murutinga do sul','sp'),(353215,'nantes','sp'),(353220,'narandiba','sp'),(353230,'natividade da serra','sp'),(353240,'nazare paulista','sp'),(353250,'neves paulista','sp'),(353260,'nhandeara','sp'),(353270,'nipoa','sp'),(353280,'nova alianca','sp'),(353282,'nova campina','sp'),(353284,'nova canaa paulista','sp'),(353286,'nova castilho','sp'),(353290,'nova europa','sp'),(353300,'nova granada','sp'),(353310,'nova guataporanga','sp'),(353320,'nova independencia','sp'),(353325,'novais','sp'),(353330,'nova luzitania','sp'),(353340,'nova odessa','sp'),(353350,'novo horizonte','sp'),(353360,'nuporanga','sp'),(353370,'ocaucu','sp'),(353380,'oleo','sp'),(353390,'olimpia','sp'),(353400,'onda verde','sp'),(353410,'oriente','sp'),(353420,'orindiuva','sp'),(353430,'orlandia','sp'),(353440,'osasco','sp'),(353450,'oscar bressane','sp'),(353460,'osvaldo cruz','sp'),(353470,'ourinhos','sp'),(353475,'ouroeste','sp'),(353480,'ouro verde','sp'),(353490,'pacaembu','sp'),(353500,'palestina','sp'),(353510,'palmares paulista','sp'),(353520,'palmeira d\'oeste','sp'),(353530,'palmital','sp'),(353540,'panorama','sp'),(353550,'paraguacu paulista','sp'),(353560,'paraibuna','sp'),(353570,'paraiso','sp'),(353580,'paranapanema','sp'),(353590,'paranapua','sp'),(353600,'parapua','sp'),(353610,'pardinho','sp'),(353620,'pariquera-acu','sp'),(353625,'parisi','sp'),(353630,'patrocinio paulista','sp'),(353640,'pauliceia','sp'),(353650,'paulinia','sp'),(353657,'paulistania','sp'),(353660,'paulo de faria','sp'),(353670,'pederneiras','sp'),(353680,'pedra bela','sp'),(353690,'pedranopolis','sp'),(353700,'pedregulho','sp'),(353710,'pedreira','sp'),(353715,'pedrinhas paulista','sp'),(353720,'pedro de toledo','sp'),(353730,'penapolis','sp'),(353740,'pereira barreto','sp'),(353750,'pereiras','sp'),(353760,'peruibe','sp'),(353770,'piacatu','sp'),(353780,'piedade','sp'),(353790,'pilar do sul','sp'),(353800,'pindamonhangaba','sp'),(353810,'pindorama','sp'),(353820,'pinhalzinho','sp'),(353830,'piquerobi','sp'),(353850,'piquete','sp'),(353860,'piracaia','sp'),(353870,'piracicaba','sp'),(353880,'piraju','sp'),(353890,'pirajui','sp'),(353900,'pirangi','sp'),(353910,'pirapora do bom jesus','sp'),(353920,'pirapozinho','sp'),(353930,'pirassununga','sp'),(353940,'piratininga','sp'),(353950,'pitangueiras','sp'),(353960,'planalto','sp'),(353970,'platina','sp'),(353980,'poa','sp'),(353990,'poloni','sp'),(354000,'pompeia','sp'),(354010,'pongai','sp'),(354020,'pontal','sp'),(354025,'pontalinda','sp'),(354030,'pontes gestal','sp'),(354040,'populina','sp'),(354050,'porangaba','sp'),(354060,'porto feliz','sp'),(354070,'porto ferreira','sp'),(354075,'potim','sp'),(354080,'potirendaba','sp'),(354085,'pracinha','sp'),(354090,'pradopolis','sp'),(354100,'praia grande','sp'),(354105,'pratania','sp'),(354110,'presidente alves','sp'),(354120,'presidente bernardes','sp'),(354130,'presidente epitacio','sp'),(354140,'presidente prudente','sp'),(354150,'presidente venceslau','sp'),(354160,'promissao','sp'),(354165,'quadra','sp'),(354170,'quata','sp'),(354180,'queiroz','sp'),(354190,'queluz','sp'),(354200,'quintana','sp'),(354210,'rafard','sp'),(354220,'rancharia','sp'),(354230,'redencao da serra','sp'),(354240,'regente feijo','sp'),(354250,'reginopolis','sp'),(354260,'registro','sp'),(354270,'restinga','sp'),(354280,'ribeira','sp'),(354290,'ribeirao bonito','sp'),(354300,'ribeirao branco','sp'),(354310,'ribeirao corrente','sp'),(354320,'ribeirao do sul','sp'),(354323,'ribeirao dos indios','sp'),(354325,'ribeirao grande','sp'),(354330,'ribeirao pires','sp'),(354340,'ribeirao preto','sp'),(354350,'riversul','sp'),(354360,'rifaina','sp'),(354370,'rincao','sp'),(354380,'rinopolis','sp'),(354390,'rio claro','sp'),(354400,'rio das pedras','sp'),(354410,'rio grande da serra','sp'),(354420,'riolandia','sp'),(354425,'rosana','sp'),(354430,'roseira','sp'),(354440,'rubiacea','sp'),(354450,'rubineia','sp'),(354460,'sabino','sp'),(354470,'sagres','sp'),(354480,'sales','sp'),(354490,'sales oliveira','sp'),(354500,'salesopolis','sp'),(354510,'salmourao','sp'),(354515,'saltinho','sp'),(354520,'salto','sp'),(354530,'salto de pirapora','sp'),(354540,'salto grande','sp'),(354550,'sandovalina','sp'),(354560,'santa adelia','sp'),(354570,'santa albertina','sp'),(354580,'santa barbara d\'oeste','sp'),(354600,'santa branca','sp'),(354610,'santa clara d\'oeste','sp'),(354620,'santa cruz da conceicao','sp'),(354625,'santa cruz da esperanca','sp'),(354630,'santa cruz das palmeiras','sp'),(354640,'santa cruz do rio pardo','sp'),(354650,'santa ernestina','sp'),(354660,'santa fe do sul','sp'),(354670,'santa gertrudes','sp'),(354680,'santa isabel','sp'),(354690,'santa lucia','sp'),(354700,'santa maria da serra','sp'),(354710,'santa mercedes','sp'),(354720,'santana da ponte pensa','sp'),(354730,'santana de parnaiba','sp'),(354740,'santa rita d\'oeste','sp'),(354750,'santa rita do passa quatro','sp'),(354760,'santa rosa de viterbo','sp'),(354765,'santa salete','sp'),(354770,'santo anastacio','sp'),(354780,'santo andre','sp'),(354790,'santo antonio da alegria','sp'),(354800,'santo antonio de posse','sp'),(354805,'santo antonio do aracangua','sp'),(354810,'santo antonio do jardim','sp'),(354820,'santo antonio do pinhal','sp'),(354830,'santo expedito','sp'),(354840,'santopolis do aguapei','sp'),(354850,'santos','sp'),(354860,'sao bento do sapucai','sp'),(354870,'sao bernardo do campo','sp'),(354880,'sao caetano do sul','sp'),(354890,'sao carlos','sp'),(354900,'sao francisco','sp'),(354910,'sao joao da boa vista','sp'),(354920,'sao joao das duas pontes','sp'),(354925,'sao joao de iracema','sp'),(354930,'sao joao do pau d\'alho','sp'),(354940,'sao joaquim da barra','sp'),(354950,'sao jose da bela vista','sp'),(354960,'sao jose do barreiro','sp'),(354970,'sao jose do rio pardo','sp'),(354980,'sao jose do rio preto','sp'),(354990,'sao jose dos campos','sp'),(354995,'sao lourenco da serra','sp'),(355000,'sao luis do paraitinga','sp'),(355010,'sao manuel','sp'),(355020,'sao miguel arcanjo','sp'),(355030,'sao paulo','sp'),(355040,'sao pedro','sp'),(355050,'sao pedro do turvo','sp'),(355060,'sao roque','sp'),(355070,'sao sebastiao','sp'),(355080,'sao sebastiao da grama','sp'),(355090,'sao simao','sp'),(355100,'sao vicente','sp'),(355110,'sarapui','sp'),(355120,'sarutaia','sp'),(355130,'sebastianopolis do sul','sp'),(355140,'serra azul','sp'),(355150,'serrana','sp'),(355160,'serra negra','sp'),(355170,'sertaozinho','sp'),(355180,'sete barras','sp'),(355190,'severinia','sp'),(355200,'silveiras','sp'),(355210,'socorro','sp'),(355220,'sorocaba','sp'),(355230,'sud mennucci','sp'),(355240,'sumare','sp'),(355250,'suzano','sp'),(355255,'suzanapolis','sp'),(355260,'tabapua','sp'),(355270,'tabatinga','sp'),(355280,'taboao da serra','sp'),(355290,'taciba','sp'),(355300,'taguai','sp'),(355310,'taiacu','sp'),(355320,'taiuva','sp'),(355330,'tambau','sp'),(355340,'tanabi','sp'),(355350,'tapirai','sp'),(355360,'tapiratiba','sp'),(355365,'taquaral','sp'),(355370,'taquaritinga','sp'),(355380,'taquarituba','sp'),(355385,'taquarivai','sp'),(355390,'tarabai','sp'),(355395,'taruma','sp'),(355400,'tatui','sp'),(355410,'taubate','sp'),(355420,'tejupa','sp'),(355430,'teodoro sampaio','sp'),(355440,'terra roxa','sp'),(355450,'tiete','sp'),(355460,'timburi','sp'),(355465,'torre de pedra','sp'),(355470,'torrinha','sp'),(355475,'trabiju','sp'),(355480,'tremembe','sp'),(355490,'tres fronteiras','sp'),(355495,'tuiuti','sp'),(355500,'tupa','sp'),(355510,'tupi paulista','sp'),(355520,'turiuba','sp'),(355530,'turmalina','sp'),(355535,'ubarana','sp'),(355540,'ubatuba','sp'),(355550,'ubirajara','sp'),(355560,'uchoa','sp'),(355570,'uniao paulista','sp'),(355580,'urania','sp'),(355590,'uru','sp'),(355600,'urupes','sp'),(355610,'valentim gentil','sp'),(355620,'valinhos','sp'),(355630,'valparaiso','sp'),(355635,'vargem','sp'),(355640,'vargem grande do sul','sp'),(355645,'vargem grande paulista','sp'),(355650,'varzea paulista','sp'),(355660,'vera cruz','sp'),(355670,'vinhedo','sp'),(355680,'viradouro','sp'),(355690,'vista alegre do alto','sp'),(355695,'vitoria brasil','sp'),(355700,'votorantim','sp'),(355710,'votuporanga','sp'),(355715,'zacarias','sp'),(355720,'chavantes','sp'),(355730,'estiva gerbi','sp'),(410010,'abatia','pr'),(410020,'adrianopolis','pr'),(410030,'agudos do sul','pr'),(410040,'almirante tamandare','pr'),(410045,'altamira do parana','pr'),(410050,'altonia','pr'),(410060,'alto parana','pr'),(410070,'alto piquiri','pr'),(410080,'alvorada do sul','pr'),(410090,'amapora','pr'),(410100,'ampere','pr'),(410105,'anahy','pr'),(410110,'andira','pr'),(410115,'angulo','pr'),(410120,'antonina','pr'),(410130,'antonio olinto','pr'),(410140,'apucarana','pr'),(410150,'arapongas','pr'),(410160,'arapoti','pr'),(410165,'arapua','pr'),(410170,'araruna','pr'),(410180,'araucaria','pr'),(410185,'ariranha do ivai','pr'),(410190,'assai','pr'),(410200,'assis chateaubriand','pr'),(410210,'astorga','pr'),(410220,'atalaia','pr'),(410230,'balsa nova','pr'),(410240,'bandeirantes','pr'),(410250,'barbosa ferraz','pr'),(410260,'barracao','pr'),(410270,'barra do jacare','pr'),(410275,'bela vista da caroba','pr'),(410280,'bela vista do paraiso','pr'),(410290,'bituruna','pr'),(410300,'boa esperanca','pr'),(410302,'boa esperanca do iguacu','pr'),(410304,'boa ventura de sao roque','pr'),(410305,'boa vista da aparecida','pr'),(410310,'bocaiuva do sul','pr'),(410315,'bom jesus do sul','pr'),(410320,'bom sucesso','pr'),(410322,'bom sucesso do sul','pr'),(410330,'borrazopolis','pr'),(410335,'braganey','pr'),(410337,'brasilandia do sul','pr'),(410340,'cafeara','pr'),(410345,'cafelandia','pr'),(410347,'cafezal do sul','pr'),(410350,'california','pr'),(410360,'cambara','pr'),(410370,'cambe','pr'),(410380,'cambira','pr'),(410390,'campina da lagoa','pr'),(410395,'campina do simao','pr'),(410400,'campina grande do sul','pr'),(410405,'campo bonito','pr'),(410410,'campo do tenente','pr'),(410420,'campo largo','pr'),(410425,'campo magro','pr'),(410430,'campo mourao','pr'),(410440,'candido de abreu','pr'),(410442,'candoi','pr'),(410445,'cantagalo','pr'),(410450,'capanema','pr'),(410460,'capitao leonidas marques','pr'),(410465,'carambei','pr'),(410470,'carlopolis','pr'),(410480,'cascavel','pr'),(410490,'castro','pr'),(410500,'catanduvas','pr'),(410510,'centenario do sul','pr'),(410520,'cerro azul','pr'),(410530,'ceu azul','pr'),(410540,'chopinzinho','pr'),(410550,'cianorte','pr'),(410560,'cidade gaucha','pr'),(410570,'clevelandia','pr'),(410580,'colombo','pr'),(410590,'colorado','pr'),(410600,'congonhinhas','pr'),(410610,'conselheiro mairinck','pr'),(410620,'contenda','pr'),(410630,'corbelia','pr'),(410640,'cornelio procopio','pr'),(410645,'coronel domingos soares','pr'),(410650,'coronel vivida','pr'),(410655,'corumbatai do sul','pr'),(410657,'cruzeiro do iguacu','pr'),(410660,'cruzeiro do oeste','pr'),(410670,'cruzeiro do sul','pr'),(410680,'cruz machado','pr'),(410685,'cruzmaltina','pr'),(410690,'curitiba','pr'),(410700,'curiuva','pr'),(410710,'diamante do norte','pr'),(410712,'diamante do sul','pr'),(410715,'diamante d\'oeste','pr'),(410720,'dois vizinhos','pr'),(410725,'douradina','pr'),(410730,'doutor camargo','pr'),(410740,'eneas marques','pr'),(410750,'engenheiro beltrao','pr'),(410752,'esperanca nova','pr'),(410753,'entre rios do oeste','pr'),(410754,'espigao alto do iguacu','pr'),(410755,'farol','pr'),(410760,'faxinal','pr'),(410765,'fazenda rio grande','pr'),(410770,'fenix','pr'),(410773,'fernandes pinheiro','pr'),(410775,'figueira','pr'),(410780,'florai','pr'),(410785,'flor da serra do sul','pr'),(410790,'floresta','pr'),(410800,'florestopolis','pr'),(410810,'florida','pr'),(410820,'formosa do oeste','pr'),(410830,'foz do iguacu','pr'),(410832,'francisco alves','pr'),(410840,'francisco beltrao','pr'),(410845,'foz do jordao','pr'),(410850,'general carneiro','pr'),(410855,'godoy moreira','pr'),(410860,'goioere','pr'),(410865,'goioxim','pr'),(410870,'grandes rios','pr'),(410880,'guaira','pr'),(410890,'guairaca','pr'),(410895,'guamiranga','pr'),(410900,'guapirama','pr'),(410910,'guaporema','pr'),(410920,'guaraci','pr'),(410930,'guaraniacu','pr'),(410940,'guarapuava','pr'),(410950,'guaraquecaba','pr'),(410960,'guaratuba','pr'),(410965,'honorio serpa','pr'),(410970,'ibaiti','pr'),(410975,'ibema','pr'),(410980,'ibipora','pr'),(410990,'icaraima','pr'),(411000,'iguaracu','pr'),(411005,'iguatu','pr'),(411007,'imbau','pr'),(411010,'imbituva','pr'),(411020,'inacio martins','pr'),(411030,'inaja','pr'),(411040,'indianopolis','pr'),(411050,'ipiranga','pr'),(411060,'ipora','pr'),(411065,'iracema do oeste','pr'),(411070,'irati','pr'),(411080,'iretama','pr'),(411090,'itaguaje','pr'),(411095,'itaipulandia','pr'),(411100,'itambaraca','pr'),(411110,'itambe','pr'),(411120,'itapejara d\'oeste','pr'),(411125,'itaperucu','pr'),(411130,'itauna do sul','pr'),(411140,'ivai','pr'),(411150,'ivaipora','pr'),(411155,'ivate','pr'),(411160,'ivatuba','pr'),(411170,'jaboti','pr'),(411180,'jacarezinho','pr'),(411190,'jaguapita','pr'),(411200,'jaguariaiva','pr'),(411210,'jandaia do sul','pr'),(411220,'janiopolis','pr'),(411230,'japira','pr'),(411240,'japura','pr'),(411250,'jardim alegre','pr'),(411260,'jardim olinda','pr'),(411270,'jataizinho','pr'),(411275,'jesuitas','pr'),(411280,'joaquim tavora','pr'),(411290,'jundiai do sul','pr'),(411295,'juranda','pr'),(411300,'jussara','pr'),(411310,'kalore','pr'),(411320,'lapa','pr'),(411325,'laranjal','pr'),(411330,'laranjeiras do sul','pr'),(411340,'leopolis','pr'),(411342,'lidianopolis','pr'),(411345,'lindoeste','pr'),(411350,'loanda','pr'),(411360,'lobato','pr'),(411370,'londrina','pr'),(411373,'luiziana','pr'),(411375,'lunardelli','pr'),(411380,'lupionopolis','pr'),(411390,'mallet','pr'),(411400,'mambore','pr'),(411410,'mandaguacu','pr'),(411420,'mandaguari','pr'),(411430,'mandirituba','pr'),(411435,'manfrinopolis','pr'),(411440,'mangueirinha','pr'),(411450,'manoel ribas','pr'),(411460,'marechal candido rondon','pr'),(411470,'maria helena','pr'),(411480,'marialva','pr'),(411490,'marilandia do sul','pr'),(411500,'marilena','pr'),(411510,'mariluz','pr'),(411520,'maringa','pr'),(411530,'mariopolis','pr'),(411535,'maripa','pr'),(411540,'marmeleiro','pr'),(411545,'marquinho','pr'),(411550,'marumbi','pr'),(411560,'matelandia','pr'),(411570,'matinhos','pr'),(411573,'mato rico','pr'),(411575,'maua da serra','pr'),(411580,'medianeira','pr'),(411585,'mercedes','pr'),(411590,'mirador','pr'),(411600,'miraselva','pr'),(411605,'missal','pr'),(411610,'moreira sales','pr'),(411620,'morretes','pr'),(411630,'munhoz de melo','pr'),(411640,'nossa senhora das gracas','pr'),(411650,'nova alianca do ivai','pr'),(411660,'nova america da colina','pr'),(411670,'nova aurora','pr'),(411680,'nova cantu','pr'),(411690,'nova esperanca','pr'),(411695,'nova esperanca do sudoeste','pr'),(411700,'nova fatima','pr'),(411705,'nova laranjeiras','pr'),(411710,'nova londrina','pr'),(411720,'nova olimpia','pr'),(411721,'nova santa barbara','pr'),(411722,'nova santa rosa','pr'),(411725,'nova prata do iguacu','pr'),(411727,'nova tebas','pr'),(411729,'novo itacolomi','pr'),(411730,'ortigueira','pr'),(411740,'ourizona','pr'),(411745,'ouro verde do oeste','pr'),(411750,'paicandu','pr'),(411760,'palmas','pr'),(411770,'palmeira','pr'),(411780,'palmital','pr'),(411790,'palotina','pr'),(411800,'paraiso do norte','pr'),(411810,'paranacity','pr'),(411820,'paranagua','pr'),(411830,'paranapoema','pr'),(411840,'paranavai','pr'),(411845,'pato bragado','pr'),(411850,'pato branco','pr'),(411860,'paula freitas','pr'),(411870,'paulo frontin','pr'),(411880,'peabiru','pr'),(411885,'perobal','pr'),(411890,'perola','pr'),(411900,'perola d\'oeste','pr'),(411910,'pien','pr'),(411915,'pinhais','pr'),(411920,'pinhalao','pr'),(411925,'pinhal de sao bento','pr'),(411930,'pinhao','pr'),(411940,'pirai do sul','pr'),(411950,'piraquara','pr'),(411960,'pitanga','pr'),(411965,'pitangueiras','pr'),(411970,'planaltina do parana','pr'),(411980,'planalto','pr'),(411990,'ponta grossa','pr'),(411995,'pontal do parana','pr'),(412000,'porecatu','pr'),(412010,'porto amazonas','pr'),(412015,'porto barreiro','pr'),(412020,'porto rico','pr'),(412030,'porto vitoria','pr'),(412033,'prado ferreira','pr'),(412035,'pranchita','pr'),(412040,'presidente castelo branco','pr'),(412050,'primeiro de maio','pr'),(412060,'prudentopolis','pr'),(412065,'quarto centenario','pr'),(412070,'quatigua','pr'),(412080,'quatro barras','pr'),(412085,'quatro pontes','pr'),(412090,'quedas do iguacu','pr'),(412100,'querencia do norte','pr'),(412110,'quinta do sol','pr'),(412120,'quitandinha','pr'),(412125,'ramilandia','pr'),(412130,'rancho alegre','pr'),(412135,'rancho alegre d\'oeste','pr'),(412140,'realeza','pr'),(412150,'reboucas','pr'),(412160,'renascenca','pr'),(412170,'reserva','pr'),(412175,'reserva do iguacu','pr'),(412180,'ribeirao claro','pr'),(412190,'ribeirao do pinhal','pr'),(412200,'rio azul','pr'),(412210,'rio bom','pr'),(412215,'rio bonito do iguacu','pr'),(412217,'rio branco do ivai','pr'),(412220,'rio branco do sul','pr'),(412230,'rio negro','pr'),(412240,'rolandia','pr'),(412250,'roncador','pr'),(412260,'rondon','pr'),(412265,'rosario do ivai','pr'),(412270,'sabaudia','pr'),(412280,'salgado filho','pr'),(412290,'salto do itarare','pr'),(412300,'salto do lontra','pr'),(412310,'santa amelia','pr'),(412320,'santa cecilia do pavao','pr'),(412330,'santa cruz de monte castelo','pr'),(412340,'santa fe','pr'),(412350,'santa helena','pr'),(412360,'santa ines','pr'),(412370,'santa isabel do ivai','pr'),(412380,'santa izabel do oeste','pr'),(412382,'santa lucia','pr'),(412385,'santa maria do oeste','pr'),(412390,'santa mariana','pr'),(412395,'santa monica','pr'),(412400,'santana do itarare','pr'),(412402,'santa tereza do oeste','pr'),(412405,'santa terezinha de itaipu','pr'),(412410,'santo antonio da platina','pr'),(412420,'santo antonio do caiua','pr'),(412430,'santo antonio do paraiso','pr'),(412440,'santo antonio do sudoeste','pr'),(412450,'santo inacio','pr'),(412460,'sao carlos do ivai','pr'),(412470,'sao jeronimo da serra','pr'),(412480,'sao joao','pr'),(412490,'sao joao do caiua','pr'),(412500,'sao joao do ivai','pr'),(412510,'sao joao do triunfo','pr'),(412520,'sao jorge d\'oeste','pr'),(412530,'sao jorge do ivai','pr'),(412535,'sao jorge do patrocinio','pr'),(412540,'sao jose da boa vista','pr'),(412545,'sao jose das palmeiras','pr'),(412550,'sao jose dos pinhais','pr'),(412555,'sao manoel do parana','pr'),(412560,'sao mateus do sul','pr'),(412570,'sao miguel do iguacu','pr'),(412575,'sao pedro do iguacu','pr'),(412580,'sao pedro do ivai','pr'),(412590,'sao pedro do parana','pr'),(412600,'sao sebastiao da amoreira','pr'),(412610,'sao tome','pr'),(412620,'sapopema','pr'),(412625,'sarandi','pr'),(412627,'saudade do iguacu','pr'),(412630,'senges','pr'),(412635,'serranopolis do iguacu','pr'),(412640,'sertaneja','pr'),(412650,'sertanopolis','pr'),(412660,'siqueira campos','pr'),(412665,'sulina','pr'),(412667,'tamarana','pr'),(412670,'tamboara','pr'),(412680,'tapejara','pr'),(412690,'tapira','pr'),(412700,'teixeira soares','pr'),(412710,'telemaco borba','pr'),(412720,'terra boa','pr'),(412730,'terra rica','pr'),(412740,'terra roxa','pr'),(412750,'tibagi','pr'),(412760,'tijucas do sul','pr'),(412770,'toledo','pr'),(412780,'tomazina','pr'),(412785,'tres barras do parana','pr'),(412788,'tunas do parana','pr'),(412790,'tuneiras do oeste','pr'),(412795,'tupassi','pr'),(412796,'turvo','pr'),(412800,'ubirata','pr'),(412810,'umuarama','pr'),(412820,'uniao da vitoria','pr'),(412830,'uniflor','pr'),(412840,'urai','pr'),(412850,'wenceslau braz','pr'),(412853,'ventania','pr'),(412855,'vera cruz do oeste','pr'),(412860,'vere','pr'),(412862,'alto paraiso','pr'),(412863,'doutor ulysses','pr'),(412865,'virmond','pr'),(412870,'vitorino','pr'),(412880,'xambre','pr'),(420005,'abdon batista','sc'),(420010,'abelardo luz','sc'),(420020,'agrolandia','sc'),(420030,'agronomica','sc'),(420040,'agua doce','sc'),(420050,'aguas de chapeco','sc'),(420055,'aguas frias','sc'),(420060,'aguas mornas','sc'),(420070,'alfredo wagner','sc'),(420075,'alto bela vista','sc'),(420080,'anchieta','sc'),(420090,'angelina','sc'),(420100,'anita garibaldi','sc'),(420110,'anitapolis','sc'),(420120,'antonio carlos','sc'),(420125,'apiuna','sc'),(420127,'arabuta','sc'),(420130,'araquari','sc'),(420140,'ararangua','sc'),(420150,'armazem','sc'),(420160,'arroio trinta','sc'),(420165,'arvoredo','sc'),(420170,'ascurra','sc'),(420180,'atalanta','sc'),(420190,'aurora','sc'),(420195,'balneario arroio do silva','sc'),(420200,'balneario camboriu','sc'),(420205,'balneario barra do sul','sc'),(420207,'balneario gaivota','sc'),(420208,'bandeirante','sc'),(420209,'barra bonita','sc'),(420210,'barra velha','sc'),(420213,'bela vista do toldo','sc'),(420215,'belmonte','sc'),(420220,'benedito novo','sc'),(420230,'biguacu','sc'),(420240,'blumenau','sc'),(420243,'bocaina do sul','sc'),(420245,'bombinhas','sc'),(420250,'bom jardim da serra','sc'),(420253,'bom jesus','sc'),(420257,'bom jesus do oeste','sc'),(420260,'bom retiro','sc'),(420270,'botuvera','sc'),(420280,'braco do norte','sc'),(420285,'braco do trombudo','sc'),(420287,'brunopolis','sc'),(420290,'brusque','sc'),(420300,'cacador','sc'),(420310,'caibi','sc'),(420315,'calmon','sc'),(420320,'camboriu','sc'),(420325,'capao alto','sc'),(420330,'campo alegre','sc'),(420340,'campo belo do sul','sc'),(420350,'campo ere','sc'),(420360,'campos novos','sc'),(420370,'canelinha','sc'),(420380,'canoinhas','sc'),(420390,'capinzal','sc'),(420395,'capivari de baixo','sc'),(420400,'catanduvas','sc'),(420410,'caxambu do sul','sc'),(420415,'celso ramos','sc'),(420417,'cerro negro','sc'),(420419,'chapadao do lageado','sc'),(420420,'chapeco','sc'),(420425,'cocal do sul','sc'),(420430,'concordia','sc'),(420435,'cordilheira alta','sc'),(420440,'coronel freitas','sc'),(420445,'coronel martins','sc'),(420450,'corupa','sc'),(420455,'correia pinto','sc'),(420460,'criciuma','sc'),(420470,'cunha pora','sc'),(420475,'cunhatai','sc'),(420480,'curitibanos','sc'),(420490,'descanso','sc'),(420500,'dionisio cerqueira','sc'),(420510,'dona emma','sc'),(420515,'doutor pedrinho','sc'),(420517,'entre rios','sc'),(420519,'ermo','sc'),(420520,'erval velho','sc'),(420530,'faxinal dos guedes','sc'),(420535,'flor do sertao','sc'),(420540,'florianopolis','sc'),(420543,'formosa do sul','sc'),(420545,'forquilhinha','sc'),(420550,'fraiburgo','sc'),(420555,'frei rogerio','sc'),(420560,'galvao','sc'),(420570,'garopaba','sc'),(420580,'garuva','sc'),(420590,'gaspar','sc'),(420600,'governador celso ramos','sc'),(420610,'grao para','sc'),(420620,'gravatal','sc'),(420630,'guabiruba','sc'),(420640,'guaraciaba','sc'),(420650,'guaramirim','sc'),(420660,'guaruja do sul','sc'),(420665,'guatambu','sc'),(420670,'herval d\'oeste','sc'),(420675,'ibiam','sc'),(420680,'ibicare','sc'),(420690,'ibirama','sc'),(420700,'icara','sc'),(420710,'ilhota','sc'),(420720,'imarui','sc'),(420730,'imbituba','sc'),(420740,'imbuia','sc'),(420750,'indaial','sc'),(420757,'iomere','sc'),(420760,'ipira','sc'),(420765,'ipora do oeste','sc'),(420768,'ipuacu','sc'),(420770,'ipumirim','sc'),(420775,'iraceminha','sc'),(420780,'irani','sc'),(420785,'irati','sc'),(420790,'irineopolis','sc'),(420800,'ita','sc'),(420810,'itaiopolis','sc'),(420820,'itajai','sc'),(420830,'itapema','sc'),(420840,'itapiranga','sc'),(420845,'itapoa','sc'),(420850,'ituporanga','sc'),(420860,'jabora','sc'),(420870,'jacinto machado','sc'),(420880,'jaguaruna','sc'),(420890,'jaragua do sul','sc'),(420895,'jardinopolis','sc'),(420900,'joacaba','sc'),(420910,'joinville','sc'),(420915,'jose boiteux','sc'),(420917,'jupia','sc'),(420920,'lacerdopolis','sc'),(420930,'lages','sc'),(420940,'laguna','sc'),(420945,'lajeado grande','sc'),(420950,'laurentino','sc'),(420960,'lauro muller','sc'),(420970,'lebon regis','sc'),(420980,'leoberto leal','sc'),(420985,'lindoia do sul','sc'),(420990,'lontras','sc'),(421000,'luiz alves','sc'),(421003,'luzerna','sc'),(421005,'macieira','sc'),(421010,'mafra','sc'),(421020,'major gercino','sc'),(421030,'major vieira','sc'),(421040,'maracaja','sc'),(421050,'maravilha','sc'),(421055,'marema','sc'),(421060,'massaranduba','sc'),(421070,'matos costa','sc'),(421080,'meleiro','sc'),(421085,'mirim doce','sc'),(421090,'modelo','sc'),(421100,'mondai','sc'),(421105,'monte carlo','sc'),(421110,'monte castelo','sc'),(421120,'morro da fumaca','sc'),(421125,'morro grande','sc'),(421130,'navegantes','sc'),(421140,'nova erechim','sc'),(421145,'nova itaberaba','sc'),(421150,'nova trento','sc'),(421160,'nova veneza','sc'),(421165,'novo horizonte','sc'),(421170,'orleans','sc'),(421175,'otacilio costa','sc'),(421180,'ouro','sc'),(421185,'ouro verde','sc'),(421187,'paial','sc'),(421189,'painel','sc'),(421190,'palhoca','sc'),(421200,'palma sola','sc'),(421205,'palmeira','sc'),(421210,'palmitos','sc'),(421220,'papanduva','sc'),(421223,'paraiso','sc'),(421225,'passo de torres','sc'),(421227,'passos maia','sc'),(421230,'paulo lopes','sc'),(421240,'pedras grandes','sc'),(421250,'penha','sc'),(421260,'peritiba','sc'),(421270,'petrolandia','sc'),(421280,'balneario picarras','sc'),(421290,'pinhalzinho','sc'),(421300,'pinheiro preto','sc'),(421310,'piratuba','sc'),(421315,'planalto alegre','sc'),(421320,'pomerode','sc'),(421330,'ponte alta','sc'),(421335,'ponte alta do norte','sc'),(421340,'ponte serrada','sc'),(421350,'porto belo','sc'),(421360,'porto uniao','sc'),(421370,'pouso redondo','sc'),(421380,'praia grande','sc'),(421390,'presidente castello branco','sc'),(421400,'presidente getulio','sc'),(421410,'presidente nereu','sc'),(421415,'princesa','sc'),(421420,'quilombo','sc'),(421430,'rancho queimado','sc'),(421440,'rio das antas','sc'),(421450,'rio do campo','sc'),(421460,'rio do oeste','sc'),(421470,'rio dos cedros','sc'),(421480,'rio do sul','sc'),(421490,'rio fortuna','sc'),(421500,'rio negrinho','sc'),(421505,'rio rufino','sc'),(421507,'riqueza','sc'),(421510,'rodeio','sc'),(421520,'romelandia','sc'),(421530,'salete','sc'),(421535,'saltinho','sc'),(421540,'salto veloso','sc'),(421545,'sangao','sc'),(421550,'santa cecilia','sc'),(421555,'santa helena','sc'),(421560,'santa rosa de lima','sc'),(421565,'santa rosa do sul','sc'),(421567,'santa terezinha','sc'),(421568,'santa terezinha do progresso','sc'),(421569,'santiago do sul','sc'),(421570,'santo amaro da imperatriz','sc'),(421575,'sao bernardino','sc'),(421580,'sao bento do sul','sc'),(421590,'sao bonifacio','sc'),(421600,'sao carlos','sc'),(421605,'sao cristovao do sul','sc'),(421610,'sao domingos','sc'),(421620,'sao francisco do sul','sc'),(421625,'sao joao do oeste','sc'),(421630,'sao joao batista','sc'),(421635,'sao joao do itaperiu','sc'),(421640,'sao joao do sul','sc'),(421650,'sao joaquim','sc'),(421660,'sao jose','sc'),(421670,'sao jose do cedro','sc'),(421680,'sao jose do cerrito','sc'),(421690,'sao lourenco do oeste','sc'),(421700,'sao ludgero','sc'),(421710,'sao martinho','sc'),(421715,'sao miguel da boa vista','sc'),(421720,'sao miguel do oeste','sc'),(421725,'sao pedro de alcantara','sc'),(421730,'saudades','sc'),(421740,'schroeder','sc'),(421750,'seara','sc'),(421755,'serra alta','sc'),(421760,'sideropolis','sc'),(421770,'sombrio','sc'),(421775,'sul brasil','sc'),(421780,'taio','sc'),(421790,'tangara','sc'),(421795,'tigrinhos','sc'),(421800,'tijucas','sc'),(421810,'timbe do sul','sc'),(421820,'timbo','sc'),(421825,'timbo grande','sc'),(421830,'tres barras','sc'),(421835,'treviso','sc'),(421840,'treze de maio','sc'),(421850,'treze tilias','sc'),(421860,'trombudo central','sc'),(421870,'tubarao','sc'),(421875,'tunapolis','sc'),(421880,'turvo','sc'),(421885,'uniao do oeste','sc'),(421890,'urubici','sc'),(421895,'urupema','sc'),(421900,'urussanga','sc'),(421910,'vargeao','sc'),(421915,'vargem','sc'),(421917,'vargem bonita','sc'),(421920,'vidal ramos','sc'),(421930,'videira','sc'),(421935,'vitor meireles','sc'),(421940,'witmarsum','sc'),(421950,'xanxere','sc'),(421960,'xavantina','sc'),(421970,'xaxim','sc'),(421985,'zortea','sc'),(430003,'acegua','rs'),(430005,'agua santa','rs'),(430010,'agudo','rs'),(430020,'ajuricaba','rs'),(430030,'alecrim','rs'),(430040,'alegrete','rs'),(430045,'alegria','rs'),(430047,'almirante tamandare do sul','rs'),(430050,'alpestre','rs'),(430055,'alto alegre','rs'),(430057,'alto feliz','rs'),(430060,'alvorada','rs'),(430063,'amaral ferrador','rs'),(430064,'ametista do sul','rs'),(430066,'andre da rocha','rs'),(430070,'anta gorda','rs'),(430080,'antonio prado','rs'),(430085,'arambare','rs'),(430087,'ararica','rs'),(430090,'aratiba','rs'),(430100,'arroio do meio','rs'),(430105,'arroio do sal','rs'),(430107,'arroio do padre','rs'),(430110,'arroio dos ratos','rs'),(430120,'arroio do tigre','rs'),(430130,'arroio grande','rs'),(430140,'arvorezinha','rs'),(430150,'augusto pestana','rs'),(430155,'aurea','rs'),(430160,'bage','rs'),(430163,'balneario pinhal','rs'),(430165,'barao','rs'),(430170,'barao de cotegipe','rs'),(430175,'barao do triunfo','rs'),(430180,'barracao','rs'),(430185,'barra do guarita','rs'),(430187,'barra do quarai','rs'),(430190,'barra do ribeiro','rs'),(430192,'barra do rio azul','rs'),(430195,'barra funda','rs'),(430200,'barros cassal','rs'),(430205,'benjamin constant do sul','rs'),(430210,'bento goncalves','rs'),(430215,'boa vista das missoes','rs'),(430220,'boa vista do burica','rs'),(430222,'boa vista do cadeado','rs'),(430223,'boa vista do incra','rs'),(430225,'boa vista do sul','rs'),(430230,'bom jesus','rs'),(430235,'bom principio','rs'),(430237,'bom progresso','rs'),(430240,'bom retiro do sul','rs'),(430245,'boqueirao do leao','rs'),(430250,'bossoroca','rs'),(430258,'bozano','rs'),(430260,'braga','rs'),(430265,'brochier','rs'),(430270,'butia','rs'),(430280,'cacapava do sul','rs'),(430290,'cacequi','rs'),(430300,'cachoeira do sul','rs'),(430310,'cachoeirinha','rs'),(430320,'cacique doble','rs'),(430330,'caibate','rs'),(430340,'caicara','rs'),(430350,'camaqua','rs'),(430355,'camargo','rs'),(430360,'cambara do sul','rs'),(430367,'campestre da serra','rs'),(430370,'campina das missoes','rs'),(430380,'campinas do sul','rs'),(430390,'campo bom','rs'),(430400,'campo novo','rs'),(430410,'campos borges','rs'),(430420,'candelaria','rs'),(430430,'candido godoi','rs'),(430435,'candiota','rs'),(430440,'canela','rs'),(430450,'cangucu','rs'),(430460,'canoas','rs'),(430461,'canudos do vale','rs'),(430462,'capao bonito do sul','rs'),(430463,'capao da canoa','rs'),(430465,'capao do cipo','rs'),(430466,'capao do leao','rs'),(430467,'capivari do sul','rs'),(430468,'capela de santana','rs'),(430469,'capitao','rs'),(430470,'carazinho','rs'),(430471,'caraa','rs'),(430480,'carlos barbosa','rs'),(430485,'carlos gomes','rs'),(430490,'casca','rs'),(430495,'caseiros','rs'),(430500,'catuipe','rs'),(430510,'caxias do sul','rs'),(430511,'centenario','rs'),(430512,'cerrito','rs'),(430513,'cerro branco','rs'),(430515,'cerro grande','rs'),(430517,'cerro grande do sul','rs'),(430520,'cerro largo','rs'),(430530,'chapada','rs'),(430535,'charqueadas','rs'),(430537,'charrua','rs'),(430540,'chiapetta','rs'),(430543,'chui','rs'),(430544,'chuvisca','rs'),(430545,'cidreira','rs'),(430550,'ciriaco','rs'),(430558,'colinas','rs'),(430560,'colorado','rs'),(430570,'condor','rs'),(430580,'constantina','rs'),(430583,'coqueiro baixo','rs'),(430585,'coqueiros do sul','rs'),(430587,'coronel barros','rs'),(430590,'coronel bicaco','rs'),(430593,'coronel pilar','rs'),(430595,'cotipora','rs'),(430597,'coxilha','rs'),(430600,'crissiumal','rs'),(430605,'cristal','rs'),(430607,'cristal do sul','rs'),(430610,'cruz alta','rs'),(430613,'cruzaltense','rs'),(430620,'cruzeiro do sul','rs'),(430630,'david canabarro','rs'),(430632,'derrubadas','rs'),(430635,'dezesseis de novembro','rs'),(430637,'dilermando de aguiar','rs'),(430640,'dois irmaos','rs'),(430642,'dois irmaos das missoes','rs'),(430645,'dois lajeados','rs'),(430650,'dom feliciano','rs'),(430655,'dom pedro de alcantara','rs'),(430660,'dom pedrito','rs'),(430670,'dona francisca','rs'),(430673,'doutor mauricio cardoso','rs'),(430675,'doutor ricardo','rs'),(430676,'eldorado do sul','rs'),(430680,'encantado','rs'),(430690,'encruzilhada do sul','rs'),(430692,'engenho velho','rs'),(430693,'entre-ijuis','rs'),(430695,'entre rios do sul','rs'),(430697,'erebango','rs'),(430700,'erechim','rs'),(430705,'ernestina','rs'),(430710,'herval','rs'),(430720,'erval grande','rs'),(430730,'erval seco','rs'),(430740,'esmeralda','rs'),(430745,'esperanca do sul','rs'),(430750,'espumoso','rs'),(430755,'estacao','rs'),(430760,'estancia velha','rs'),(430770,'esteio','rs'),(430780,'estrela','rs'),(430781,'estrela velha','rs'),(430783,'eugenio de castro','rs'),(430786,'fagundes varela','rs'),(430790,'farroupilha','rs'),(430800,'faxinal do soturno','rs'),(430805,'faxinalzinho','rs'),(430807,'fazenda vilanova','rs'),(430810,'feliz','rs'),(430820,'flores da cunha','rs'),(430825,'floriano peixoto','rs'),(430830,'fontoura xavier','rs'),(430840,'formigueiro','rs'),(430843,'forquetinha','rs'),(430845,'fortaleza dos valos','rs'),(430850,'frederico westphalen','rs'),(430860,'garibaldi','rs'),(430865,'garruchos','rs'),(430870,'gaurama','rs'),(430880,'general camara','rs'),(430885,'gentil','rs'),(430890,'getulio vargas','rs'),(430900,'girua','rs'),(430905,'glorinha','rs'),(430910,'gramado','rs'),(430912,'gramado dos loureiros','rs'),(430915,'gramado xavier','rs'),(430920,'gravatai','rs'),(430925,'guabiju','rs'),(430930,'guaiba','rs'),(430940,'guapore','rs'),(430950,'guarani das missoes','rs'),(430955,'harmonia','rs'),(430957,'herveiras','rs'),(430960,'horizontina','rs'),(430965,'hulha negra','rs'),(430970,'humaita','rs'),(430975,'ibarama','rs'),(430980,'ibiaca','rs'),(430990,'ibiraiaras','rs'),(430995,'ibirapuita','rs'),(431000,'ibiruba','rs'),(431010,'igrejinha','rs'),(431020,'ijui','rs'),(431030,'ilopolis','rs'),(431033,'imbe','rs'),(431036,'imigrante','rs'),(431040,'independencia','rs'),(431041,'inhacora','rs'),(431043,'ipe','rs'),(431046,'ipiranga do sul','rs'),(431050,'irai','rs'),(431053,'itaara','rs'),(431055,'itacurubi','rs'),(431057,'itapuca','rs'),(431060,'itaqui','rs'),(431065,'itati','rs'),(431070,'itatiba do sul','rs'),(431075,'ivora','rs'),(431080,'ivoti','rs'),(431085,'jaboticaba','rs'),(431087,'jacuizinho','rs'),(431090,'jacutinga','rs'),(431100,'jaguarao','rs'),(431110,'jaguari','rs'),(431112,'jaquirana','rs'),(431113,'jari','rs'),(431115,'joia','rs'),(431120,'julio de castilhos','rs'),(431123,'lagoa bonita do sul','rs'),(431125,'lagoao','rs'),(431127,'lagoa dos tres cantos','rs'),(431130,'lagoa vermelha','rs'),(431140,'lajeado','rs'),(431142,'lajeado do bugre','rs'),(431150,'lavras do sul','rs'),(431160,'liberato salzano','rs'),(431162,'lindolfo collor','rs'),(431164,'linha nova','rs'),(431170,'machadinho','rs'),(431171,'macambara','rs'),(431173,'mampituba','rs'),(431175,'manoel viana','rs'),(431177,'maquine','rs'),(431179,'marata','rs'),(431180,'marau','rs'),(431190,'marcelino ramos','rs'),(431198,'mariana pimentel','rs'),(431200,'mariano moro','rs'),(431205,'marques de souza','rs'),(431210,'mata','rs'),(431213,'mato castelhano','rs'),(431215,'mato leitao','rs'),(431217,'mato queimado','rs'),(431220,'maximiliano de almeida','rs'),(431225,'minas do leao','rs'),(431230,'miraguai','rs'),(431235,'montauri','rs'),(431237,'monte alegre dos campos','rs'),(431238,'monte belo do sul','rs'),(431240,'montenegro','rs'),(431242,'mormaco','rs'),(431244,'morrinhos do sul','rs'),(431245,'morro redondo','rs'),(431247,'morro reuter','rs'),(431250,'mostardas','rs'),(431260,'mucum','rs'),(431261,'muitos capoes','rs'),(431262,'muliterno','rs'),(431265,'nao-me-toque','rs'),(431267,'nicolau vergueiro','rs'),(431270,'nonoai','rs'),(431275,'nova alvorada','rs'),(431280,'nova araca','rs'),(431290,'nova bassano','rs'),(431295,'nova boa vista','rs'),(431300,'nova brescia','rs'),(431301,'nova candelaria','rs'),(431303,'nova esperanca do sul','rs'),(431306,'nova hartz','rs'),(431308,'nova padua','rs'),(431310,'nova palma','rs'),(431320,'nova petropolis','rs'),(431330,'nova prata','rs'),(431333,'nova ramada','rs'),(431335,'nova roma do sul','rs'),(431337,'nova santa rita','rs'),(431339,'novo cabrais','rs'),(431340,'novo hamburgo','rs'),(431342,'novo machado','rs'),(431344,'novo tiradentes','rs'),(431346,'novo xingu','rs'),(431349,'novo barreiro','rs'),(431350,'osorio','rs'),(431360,'paim filho','rs'),(431365,'palmares do sul','rs'),(431370,'palmeira das missoes','rs'),(431380,'palmitinho','rs'),(431390,'panambi','rs'),(431395,'pantano grande','rs'),(431400,'parai','rs'),(431402,'paraiso do sul','rs'),(431403,'pareci novo','rs'),(431405,'parobe','rs'),(431406,'passa sete','rs'),(431407,'passo do sobrado','rs'),(431410,'passo fundo','rs'),(431413,'paulo bento','rs'),(431415,'paverama','rs'),(431417,'pedras altas','rs'),(431420,'pedro osorio','rs'),(431430,'pejucara','rs'),(431440,'pelotas','rs'),(431442,'picada cafe','rs'),(431445,'pinhal','rs'),(431446,'pinhal da serra','rs'),(431447,'pinhal grande','rs'),(431449,'pinheirinho do vale','rs'),(431450,'pinheiro machado','rs'),(431453,'pinto bandeira','rs'),(431455,'pirapo','rs'),(431460,'piratini','rs'),(431470,'planalto','rs'),(431475,'poco das antas','rs'),(431477,'pontao','rs'),(431478,'ponte preta','rs'),(431480,'portao','rs'),(431490,'porto alegre','rs'),(431500,'porto lucena','rs'),(431505,'porto maua','rs'),(431507,'porto vera cruz','rs'),(431510,'porto xavier','rs'),(431513,'pouso novo','rs'),(431514,'presidente lucena','rs'),(431515,'progresso','rs'),(431517,'protasio alves','rs'),(431520,'putinga','rs'),(431530,'quarai','rs'),(431531,'quatro irmaos','rs'),(431532,'quevedos','rs'),(431535,'quinze de novembro','rs'),(431540,'redentora','rs'),(431545,'relvado','rs'),(431550,'restinga seca','rs'),(431555,'rio dos indios','rs'),(431560,'rio grande','rs'),(431570,'rio pardo','rs'),(431575,'riozinho','rs'),(431580,'roca sales','rs'),(431590,'rodeio bonito','rs'),(431595,'rolador','rs'),(431600,'rolante','rs'),(431610,'ronda alta','rs'),(431620,'rondinha','rs'),(431630,'roque gonzales','rs'),(431640,'rosario do sul','rs'),(431642,'sagrada familia','rs'),(431643,'saldanha marinho','rs'),(431645,'salto do jacui','rs'),(431647,'salvador das missoes','rs'),(431650,'salvador do sul','rs'),(431660,'sananduva','rs'),(431670,'santa barbara do sul','rs'),(431673,'santa cecilia do sul','rs'),(431675,'santa clara do sul','rs'),(431680,'santa cruz do sul','rs'),(431690,'santa maria','rs'),(431695,'santa maria do herval','rs'),(431697,'santa margarida do sul','rs'),(431700,'santana da boa vista','rs'),(431710,'santana do livramento','rs'),(431720,'santa rosa','rs'),(431725,'santa tereza','rs'),(431730,'santa vitoria do palmar','rs'),(431740,'santiago','rs'),(431750,'santo angelo','rs'),(431755,'santo antonio do palma','rs'),(431760,'santo antonio da patrulha','rs'),(431770,'santo antonio das missoes','rs'),(431775,'santo antonio do planalto','rs'),(431780,'santo augusto','rs'),(431790,'santo cristo','rs'),(431795,'santo expedito do sul','rs'),(431800,'sao borja','rs'),(431805,'sao domingos do sul','rs'),(431810,'sao francisco de assis','rs'),(431820,'sao francisco de paula','rs'),(431830,'sao gabriel','rs'),(431840,'sao jeronimo','rs'),(431842,'sao joao da urtiga','rs'),(431843,'sao joao do polesine','rs'),(431844,'sao jorge','rs'),(431845,'sao jose das missoes','rs'),(431846,'sao jose do herval','rs'),(431848,'sao jose do hortencio','rs'),(431849,'sao jose do inhacora','rs'),(431850,'sao jose do norte','rs'),(431860,'sao jose do ouro','rs'),(431861,'sao jose do sul','rs'),(431862,'sao jose dos ausentes','rs'),(431870,'sao leopoldo','rs'),(431880,'sao lourenco do sul','rs'),(431890,'sao luiz gonzaga','rs'),(431900,'sao marcos','rs'),(431910,'sao martinho','rs'),(431912,'sao martinho da serra','rs'),(431915,'sao miguel das missoes','rs'),(431920,'sao nicolau','rs'),(431930,'sao paulo das missoes','rs'),(431935,'sao pedro da serra','rs'),(431936,'sao pedro das missoes','rs'),(431937,'sao pedro do butia','rs'),(431940,'sao pedro do sul','rs'),(431950,'sao sebastiao do cai','rs'),(431960,'sao sepe','rs'),(431970,'sao valentim','rs'),(431971,'sao valentim do sul','rs'),(431973,'sao valerio do sul','rs'),(431975,'sao vendelino','rs'),(431980,'sao vicente do sul','rs'),(431990,'sapiranga','rs'),(432000,'sapucaia do sul','rs'),(432010,'sarandi','rs'),(432020,'seberi','rs'),(432023,'sede nova','rs'),(432026,'segredo','rs'),(432030,'selbach','rs'),(432032,'senador salgado filho','rs'),(432035,'sentinela do sul','rs'),(432040,'serafina correa','rs'),(432045,'serio','rs'),(432050,'sertao','rs'),(432055,'sertao santana','rs'),(432057,'sete de setembro','rs'),(432060,'severiano de almeida','rs'),(432065,'silveira martins','rs'),(432067,'sinimbu','rs'),(432070,'sobradinho','rs'),(432080,'soledade','rs'),(432085,'tabai','rs'),(432090,'tapejara','rs'),(432100,'tapera','rs'),(432110,'tapes','rs'),(432120,'taquara','rs'),(432130,'taquari','rs'),(432132,'taquarucu do sul','rs'),(432135,'tavares','rs'),(432140,'tenente portela','rs'),(432143,'terra de areia','rs'),(432145,'teutonia','rs'),(432146,'tio hugo','rs'),(432147,'tiradentes do sul','rs'),(432149,'toropi','rs'),(432150,'torres','rs'),(432160,'tramandai','rs'),(432162,'travesseiro','rs'),(432163,'tres arroios','rs'),(432166,'tres cachoeiras','rs'),(432170,'tres coroas','rs'),(432180,'tres de maio','rs'),(432183,'tres forquilhas','rs'),(432185,'tres palmeiras','rs'),(432190,'tres passos','rs'),(432195,'trindade do sul','rs'),(432200,'triunfo','rs'),(432210,'tucunduva','rs'),(432215,'tunas','rs'),(432218,'tupanci do sul','rs'),(432220,'tupancireta','rs'),(432225,'tupandi','rs'),(432230,'tuparendi','rs'),(432232,'turucu','rs'),(432234,'ubiretama','rs'),(432235,'uniao da serra','rs'),(432237,'unistalda','rs'),(432240,'uruguaiana','rs'),(432250,'vacaria','rs'),(432252,'vale verde','rs'),(432253,'vale do sol','rs'),(432254,'vale real','rs'),(432255,'vanini','rs'),(432260,'venancio aires','rs'),(432270,'vera cruz','rs'),(432280,'veranopolis','rs'),(432285,'vespasiano correa','rs'),(432290,'viadutos','rs'),(432300,'viamao','rs'),(432310,'vicente dutra','rs'),(432320,'victor graeff','rs'),(432330,'vila flores','rs'),(432335,'vila langaro','rs'),(432340,'vila maria','rs'),(432345,'vila nova do sul','rs'),(432350,'vista alegre','rs'),(432360,'vista alegre do prata','rs'),(432370,'vista gaucha','rs'),(432375,'vitoria das missoes','rs'),(432377,'westfalia','rs'),(432380,'xangri-la','rs'),(500020,'agua clara','ms'),(500025,'alcinopolis','ms'),(500060,'amambai','ms'),(500070,'anastacio','ms'),(500080,'anaurilandia','ms'),(500085,'angelica','ms'),(500090,'antonio joao','ms'),(500100,'aparecida do taboado','ms'),(500110,'aquidauana','ms'),(500124,'aral moreira','ms'),(500150,'bandeirantes','ms'),(500190,'bataguassu','ms'),(500200,'bataypora','ms'),(500210,'bela vista','ms'),(500215,'bodoquena','ms'),(500220,'bonito','ms'),(500230,'brasilandia','ms'),(500240,'caarapo','ms'),(500260,'camapua','ms'),(500270,'campo grande','ms'),(500280,'caracol','ms'),(500290,'cassilandia','ms'),(500295,'chapadao do sul','ms'),(500310,'corguinho','ms'),(500315,'coronel sapucaia','ms'),(500320,'corumba','ms'),(500325,'costa rica','ms'),(500330,'coxim','ms'),(500345,'deodapolis','ms'),(500348,'dois irmaos do buriti','ms'),(500350,'douradina','ms'),(500370,'dourados','ms'),(500375,'eldorado','ms'),(500380,'fatima do sul','ms'),(500390,'figueirao','ms'),(500400,'gloria de dourados','ms'),(500410,'guia lopes da laguna','ms'),(500430,'iguatemi','ms'),(500440,'inocencia','ms'),(500450,'itapora','ms'),(500460,'itaquirai','ms'),(500470,'ivinhema','ms'),(500480,'japora','ms'),(500490,'jaraguari','ms'),(500500,'jardim','ms'),(500510,'jatei','ms'),(500515,'juti','ms'),(500520,'ladario','ms'),(500525,'laguna carapa','ms'),(500540,'maracaju','ms'),(500560,'miranda','ms'),(500568,'mundo novo','ms'),(500570,'navirai','ms'),(500580,'nioaque','ms'),(500600,'nova alvorada do sul','ms'),(500620,'nova andradina','ms'),(500625,'novo horizonte do sul','ms'),(500630,'paranaiba','ms'),(500635,'paranhos','ms'),(500640,'pedro gomes','ms'),(500660,'ponta pora','ms'),(500690,'porto murtinho','ms'),(500710,'ribas do rio pardo','ms'),(500720,'rio brilhante','ms'),(500730,'rio negro','ms'),(500740,'rio verde de mato grosso','ms'),(500750,'rochedo','ms'),(500755,'santa rita do pardo','ms'),(500769,'sao gabriel do oeste','ms'),(500770,'sete quedas','ms'),(500780,'selviria','ms'),(500790,'sidrolandia','ms'),(500793,'sonora','ms'),(500795,'tacuru','ms'),(500797,'taquarussu','ms'),(500800,'terenos','ms'),(500830,'tres lagoas','ms'),(500840,'vicentina','ms'),(510010,'acorizal','mt'),(510020,'agua boa','mt'),(510025,'alta floresta','mt'),(510030,'alto araguaia','mt'),(510035,'alto boa vista','mt'),(510040,'alto garcas','mt'),(510050,'alto paraguai','mt'),(510060,'alto taquari','mt'),(510080,'apiacas','mt'),(510100,'araguaiana','mt'),(510120,'araguainha','mt'),(510125,'araputanga','mt'),(510130,'arenapolis','mt'),(510140,'aripuana','mt'),(510160,'barao de melgaco','mt'),(510170,'barra do bugres','mt'),(510180,'barra do garcas','mt'),(510185,'bom jesus do araguaia','mt'),(510190,'brasnorte','mt'),(510250,'caceres','mt'),(510260,'campinapolis','mt'),(510263,'campo novo do parecis','mt'),(510267,'campo verde','mt'),(510268,'campos de julio','mt'),(510269,'canabrava do norte','mt'),(510270,'canarana','mt'),(510279,'carlinda','mt'),(510285,'castanheira','mt'),(510300,'chapada dos guimaraes','mt'),(510305,'claudia','mt'),(510310,'cocalinho','mt'),(510320,'colider','mt'),(510325,'colniza','mt'),(510330,'comodoro','mt'),(510335,'confresa','mt'),(510336,'conquista d\'oeste','mt'),(510337,'cotriguacu','mt'),(510340,'cuiaba','mt'),(510343,'curvelandia','mt'),(510345,'denise','mt'),(510350,'diamantino','mt'),(510360,'dom aquino','mt'),(510370,'feliz natal','mt'),(510380,'figueiropolis d\'oeste','mt'),(510385,'gaucha do norte','mt'),(510390,'general carneiro','mt'),(510395,'gloria d\'oeste','mt'),(510410,'guaranta do norte','mt'),(510420,'guiratinga','mt'),(510450,'indiavai','mt'),(510452,'ipiranga do norte','mt'),(510454,'itanhanga','mt'),(510455,'itauba','mt'),(510460,'itiquira','mt'),(510480,'jaciara','mt'),(510490,'jangada','mt'),(510500,'jauru','mt'),(510510,'juara','mt'),(510515,'juina','mt'),(510517,'juruena','mt'),(510520,'juscimeira','mt'),(510523,'lambari d\'oeste','mt'),(510525,'lucas do rio verde','mt'),(510530,'luciara','mt'),(510550,'vila bela da santissima trindade','mt'),(510558,'marcelandia','mt'),(510560,'matupa','mt'),(510562,'mirassol d\'oeste','mt'),(510590,'nobres','mt'),(510600,'nortelandia','mt'),(510610,'nossa senhora do livramento','mt'),(510615,'nova bandeirantes','mt'),(510617,'nova nazare','mt'),(510618,'nova lacerda','mt'),(510619,'nova santa helena','mt'),(510620,'nova brasilandia','mt'),(510621,'nova canaa do norte','mt'),(510622,'nova mutum','mt'),(510623,'nova olimpia','mt'),(510624,'nova ubirata','mt'),(510625,'nova xavantina','mt'),(510626,'novo mundo','mt'),(510627,'novo horizonte do norte','mt'),(510628,'novo sao joaquim','mt'),(510629,'paranaita','mt'),(510630,'paranatinga','mt'),(510631,'novo santo antonio','mt'),(510637,'pedra preta','mt'),(510642,'peixoto de azevedo','mt'),(510645,'planalto da serra','mt'),(510650,'pocone','mt'),(510665,'pontal do araguaia','mt'),(510670,'ponte branca','mt'),(510675,'pontes e lacerda','mt'),(510677,'porto alegre do norte','mt'),(510680,'porto dos gauchos','mt'),(510682,'porto esperidiao','mt'),(510685,'porto estrela','mt'),(510700,'poxoreo','mt'),(510704,'primavera do leste','mt'),(510706,'querencia','mt'),(510710,'sao jose dos quatro marcos','mt'),(510715,'reserva do cabacal','mt'),(510718,'ribeirao cascalheira','mt'),(510719,'ribeiraozinho','mt'),(510720,'rio branco','mt'),(510724,'santa carmem','mt'),(510726,'santo afonso','mt'),(510729,'sao jose do povo','mt'),(510730,'sao jose do rio claro','mt'),(510735,'sao jose do xingu','mt'),(510740,'sao pedro da cipa','mt'),(510757,'rondolandia','mt'),(510760,'rondonopolis','mt'),(510770,'rosario oeste','mt'),(510774,'santa cruz do xingu','mt'),(510775,'salto do ceu','mt'),(510776,'santa rita do trivelato','mt'),(510777,'santa terezinha','mt'),(510779,'santo antonio do leste','mt'),(510780,'santo antonio do leverger','mt'),(510785,'sao felix do araguaia','mt'),(510787,'sapezal','mt'),(510788,'serra nova dourada','mt'),(510790,'sinop','mt'),(510792,'sorriso','mt'),(510794,'tabapora','mt'),(510795,'tangara da serra','mt'),(510800,'tapurah','mt'),(510805,'terra nova do norte','mt'),(510810,'tesouro','mt'),(510820,'torixoreu','mt'),(510830,'uniao do sul','mt'),(510835,'vale de sao domingos','mt'),(510840,'varzea grande','mt'),(510850,'vera','mt'),(510860,'vila rica','mt'),(510880,'nova guarita','mt'),(510885,'nova marilandia','mt'),(510890,'nova maringa','mt'),(510895,'nova monte verde','mt'),(520005,'abadia de goias','go'),(520010,'abadiania','go'),(520013,'acreuna','go'),(520015,'adelandia','go'),(520017,'agua fria de goias','go'),(520020,'agua limpa','go'),(520025,'aguas lindas de goias','go'),(520030,'alexania','go'),(520050,'aloandia','go'),(520055,'alto horizonte','go'),(520060,'alto paraiso de goias','go'),(520080,'alvorada do norte','go'),(520082,'amaralina','go'),(520085,'americano do brasil','go'),(520090,'amorinopolis','go'),(520110,'anapolis','go'),(520120,'anhanguera','go'),(520130,'anicuns','go'),(520140,'aparecida de goiania','go'),(520145,'aparecida do rio doce','go'),(520150,'apore','go'),(520160,'aracu','go'),(520170,'aragarcas','go'),(520180,'aragoiania','go'),(520215,'araguapaz','go'),(520235,'arenopolis','go'),(520250,'aruana','go'),(520260,'aurilandia','go'),(520280,'avelinopolis','go'),(520310,'baliza','go'),(520320,'barro alto','go'),(520330,'bela vista de goias','go'),(520340,'bom jardim de goias','go'),(520350,'bom jesus de goias','go'),(520355,'bonfinopolis','go'),(520357,'bonopolis','go'),(520360,'brazabrantes','go'),(520380,'britania','go'),(520390,'buriti alegre','go'),(520393,'buriti de goias','go'),(520396,'buritinopolis','go'),(520400,'cabeceiras','go'),(520410,'cachoeira alta','go'),(520420,'cachoeira de goias','go'),(520425,'cachoeira dourada','go'),(520430,'cacu','go'),(520440,'caiaponia','go'),(520450,'caldas novas','go'),(520455,'caldazinha','go'),(520460,'campestre de goias','go'),(520465,'campinacu','go'),(520470,'campinorte','go'),(520480,'campo alegre de goias','go'),(520485,'campo limpo de goias','go'),(520490,'campos belos','go'),(520495,'campos verdes','go'),(520500,'carmo do rio verde','go'),(520505,'castelandia','go'),(520510,'catalao','go'),(520520,'caturai','go'),(520530,'cavalcante','go'),(520540,'ceres','go'),(520545,'cezarina','go'),(520547,'chapadao do ceu','go'),(520549,'cidade ocidental','go'),(520551,'cocalzinho de goias','go'),(520552,'colinas do sul','go'),(520570,'corrego do ouro','go'),(520580,'corumba de goias','go'),(520590,'corumbaiba','go'),(520620,'cristalina','go'),(520630,'cristianopolis','go'),(520640,'crixas','go'),(520650,'crominia','go'),(520660,'cumari','go'),(520670,'damianopolis','go'),(520680,'damolandia','go'),(520690,'davinopolis','go'),(520710,'diorama','go'),(520725,'doverlandia','go'),(520735,'edealina','go'),(520740,'edeia','go'),(520750,'estrela do norte','go'),(520753,'faina','go'),(520760,'fazenda nova','go'),(520780,'firminopolis','go'),(520790,'flores de goias','go'),(520800,'formosa','go'),(520810,'formoso','go'),(520815,'gameleira de goias','go'),(520830,'divinopolis de goias','go'),(520840,'goianapolis','go'),(520850,'goiandira','go'),(520860,'goianesia','go'),(520870,'goiania','go'),(520880,'goianira','go'),(520890,'goias','go'),(520910,'goiatuba','go'),(520915,'gouvelandia','go'),(520920,'guapo','go'),(520929,'guaraita','go'),(520940,'guarani de goias','go'),(520945,'guarinos','go'),(520960,'heitorai','go'),(520970,'hidrolandia','go'),(520980,'hidrolina','go'),(520990,'iaciara','go'),(520993,'inaciolandia','go'),(520995,'indiara','go'),(521000,'inhumas','go'),(521010,'ipameri','go'),(521015,'ipiranga de goias','go'),(521020,'ipora','go'),(521030,'israelandia','go'),(521040,'itaberai','go'),(521056,'itaguari','go'),(521060,'itaguaru','go'),(521080,'itaja','go'),(521090,'itapaci','go'),(521100,'itapirapua','go'),(521120,'itapuranga','go'),(521130,'itaruma','go'),(521140,'itaucu','go'),(521150,'itumbiara','go'),(521160,'ivolandia','go'),(521170,'jandaia','go'),(521180,'jaragua','go'),(521190,'jatai','go'),(521200,'jaupaci','go'),(521205,'jesupolis','go'),(521210,'joviania','go'),(521220,'jussara','go'),(521225,'lagoa santa','go'),(521230,'leopoldo de bulhoes','go'),(521250,'luziania','go'),(521260,'mairipotaba','go'),(521270,'mambai','go'),(521280,'mara rosa','go'),(521290,'marzagao','go'),(521295,'matrincha','go'),(521300,'maurilandia','go'),(521305,'mimoso de goias','go'),(521308,'minacu','go'),(521310,'mineiros','go'),(521340,'moipora','go'),(521350,'monte alegre de goias','go'),(521370,'montes claros de goias','go'),(521375,'montividiu','go'),(521377,'montividiu do norte','go'),(521380,'morrinhos','go'),(521385,'morro agudo de goias','go'),(521390,'mossamedes','go'),(521400,'mozarlandia','go'),(521405,'mundo novo','go'),(521410,'mutunopolis','go'),(521440,'nazario','go'),(521450,'neropolis','go'),(521460,'niquelandia','go'),(521470,'nova america','go'),(521480,'nova aurora','go'),(521483,'nova crixas','go'),(521486,'nova gloria','go'),(521487,'nova iguacu de goias','go'),(521490,'nova roma','go'),(521500,'nova veneza','go'),(521520,'novo brasil','go'),(521523,'novo gama','go'),(521525,'novo planalto','go'),(521530,'orizona','go'),(521540,'ouro verde de goias','go'),(521550,'ouvidor','go'),(521560,'padre bernardo','go'),(521565,'palestina de goias','go'),(521570,'palmeiras de goias','go'),(521580,'palmelo','go'),(521590,'palminopolis','go'),(521600,'panama','go'),(521630,'paranaiguara','go'),(521640,'parauna','go'),(521645,'perolandia','go'),(521680,'petrolina de goias','go'),(521690,'pilar de goias','go'),(521710,'piracanjuba','go'),(521720,'piranhas','go'),(521730,'pirenopolis','go'),(521740,'pires do rio','go'),(521760,'planaltina','go'),(521770,'pontalina','go'),(521800,'porangatu','go'),(521805,'porteirao','go'),(521810,'portelandia','go'),(521830,'posse','go'),(521839,'professor jamil','go'),(521850,'quirinopolis','go'),(521860,'rialma','go'),(521870,'rianapolis','go'),(521878,'rio quente','go'),(521880,'rio verde','go'),(521890,'rubiataba','go'),(521900,'sanclerlandia','go'),(521910,'santa barbara de goias','go'),(521920,'santa cruz de goias','go'),(521925,'santa fe de goias','go'),(521930,'santa helena de goias','go'),(521935,'santa isabel','go'),(521940,'santa rita do araguaia','go'),(521945,'santa rita do novo destino','go'),(521950,'santa rosa de goias','go'),(521960,'santa tereza de goias','go'),(521970,'santa terezinha de goias','go'),(521971,'santo antonio da barra','go'),(521973,'santo antonio de goias','go'),(521975,'santo antonio do descoberto','go'),(521980,'sao domingos','go'),(521990,'sao francisco de goias','go'),(522000,'sao joao d\'alianca','go'),(522005,'sao joao da parauna','go'),(522010,'sao luis de montes belos','go'),(522015,'sao luiz do norte','go'),(522020,'sao miguel do araguaia','go'),(522026,'sao miguel do passa quatro','go'),(522028,'sao patricio','go'),(522040,'sao simao','go'),(522045,'senador canedo','go'),(522050,'serranopolis','go'),(522060,'silvania','go'),(522068,'simolandia','go'),(522070,'sitio d\'abadia','go'),(522100,'taquaral de goias','go'),(522108,'teresina de goias','go'),(522119,'terezopolis de goias','go'),(522130,'tres ranchos','go'),(522140,'trindade','go'),(522145,'trombas','go'),(522150,'turvania','go'),(522155,'turvelandia','go'),(522157,'uirapuru','go'),(522160,'uruacu','go'),(522170,'uruana','go'),(522180,'urutai','go'),(522185,'valparaiso de goias','go'),(522190,'varjao','go'),(522200,'vianopolis','go'),(522205,'vicentinopolis','go'),(522220,'vila boa','go'),(522230,'vila propicio','go'),(530005,'brasilia - asa norte','df'),(530010,'brasilia','df'),(530015,'brasilia - asa sul','df'),(530020,'brazlandia','df'),(530030,'candangolandia','df'),(530040,'ceilandia','df'),(530050,'cruzeiro','df'),(530060,'gama','df'),(530070,'guara','df'),(530080,'lago norte','df'),(530090,'lago sul','df'),(530100,'nucleo bandeirante','df'),(530110,'paranoa','df'),(530120,'planaltina','df'),(530130,'recanto das emas','df'),(530135,'riacho fundo','df'),(530140,'samambaia','df'),(530150,'santa maria','df'),(530160,'sao sebastiao','df'),(530170,'sobradinho','df'),(530180,'taguatinga','df'),(539901,'aguas claras','df'),(539913,'park way','df'),(539917,'riacho fundo ii','df'),(539922,'sobradinho ii','df'),(539925,'varjao','df'),(539928,'itapoa','df'),(539929,'scia-estrutural','df'),(539930,'jardim botanico','df'),(539931,'sudoeste/octogonal','df'),(539933,'setor de industria e abastecimento','df'),(539934,'vicente pires','df');
/*!40000 ALTER TABLE `municipios_ibge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ncm`
--

DROP TABLE IF EXISTS `ncm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ncm` (
  `id_ncm` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ncm` varchar(8) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ncm`),
  KEY `descricao` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=9386 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ncm`
--

LOCK TABLES `ncm` WRITE;
/*!40000 ALTER TABLE `ncm` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfe_cab`
--

DROP TABLE IF EXISTS `nfe_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nfe_cab` (
  `id_nfe_cab` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numero_nfe_cab` varchar(11) NOT NULL,
  `id_pessoa` int(11) unsigned NOT NULL,
  `cfop_natureza` varchar(4) DEFAULT NULL,
  `id_tipo_lcto` int(11) unsigned NOT NULL,
  `emissao_nfe_cab` date DEFAULT NULL,
  `entrada_nfe_cab` date DEFAULT NULL,
  `total_nfe_cab` double(11,2) DEFAULT NULL,
  `icms_nfe_cab` decimal(5,3) DEFAULT NULL,
  `ipi_nfe_cab` decimal(5,3) DEFAULT NULL,
  `iss_nfe_cab` decimal(5,3) DEFAULT NULL,
  `irf_nfe_cab` decimal(5,3) DEFAULT NULL,
  `vlr_icms_nfe_cab` double(11,2) DEFAULT NULL,
  `vlr_ipi_nfe_cab` double(11,2) DEFAULT NULL,
  `vlr_iss_nfe_cab` double(11,2) DEFAULT NULL,
  `vlr_irf_nfe_cab` double(11,2) DEFAULT NULL,
  `cidade_nfe_cab` varchar(45) DEFAULT NULL,
  `uf_nfe_cab` varchar(2) DEFAULT NULL,
  `base_calculo_nfe_cab` double(11,2) DEFAULT NULL,
  `ibge_cab` int(6) DEFAULT NULL,
  `chave_nfe_cab` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_nfe_cab`),
  UNIQUE KEY `idx_chvacesso` (`chave_nfe_cab`,`id_pessoa`,`numero_nfe_cab`),
  KEY `idx_fornecedor_nfe_cab` (`id_pessoa`),
  KEY `idx_nfe` (`numero_nfe_cab`),
  KEY `idx_cfop` (`cfop_natureza`),
  KEY `idx_tipo_lcto` (`id_tipo_lcto`),
  CONSTRAINT `fk_nfe_cfop` FOREIGN KEY (`cfop_natureza`) REFERENCES `cfop` (`cfop_natureza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nfe_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_lcto` FOREIGN KEY (`id_tipo_lcto`) REFERENCES `tipo_lancamento` (`id_tipo_lcto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfe_cab`
--

LOCK TABLES `nfe_cab` WRITE;
/*!40000 ALTER TABLE `nfe_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfe_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfe_det`
--

DROP TABLE IF EXISTS `nfe_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nfe_det` (
  `id_nfe_det` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_nfe_cab` int(11) unsigned NOT NULL,
  `id_estoque` int(11) unsigned NOT NULL,
  `numero_nfe_cab` varchar(11) NOT NULL,
  `qtde_nfe_det` int(11) DEFAULT NULL,
  `vlr_unit_nfe_det` double(11,2) DEFAULT NULL,
  `vlr_total_nfe_det` double(11,2) DEFAULT NULL,
  `ncm_nfe_det` varchar(8) DEFAULT NULL,
  `icms_nfe_det` decimal(5,3) DEFAULT NULL,
  `ipi_nfe_det` decimal(5,3) DEFAULT NULL,
  `iss_nfe_det` decimal(5,3) DEFAULT NULL,
  `irf_nfe_det` decimal(5,3) DEFAULT NULL,
  `vlr_icms_nfe_det` double(11,2) DEFAULT NULL,
  `vlr_ipi_nfe_det` double(11,2) DEFAULT NULL,
  `vlr_iss_nfe_det` double(11,2) DEFAULT NULL,
  `vlr_irf_nfe_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_nfe_det`),
  KEY `idx_numero_nfe` (`numero_nfe_cab`),
  KEY `idx_nfe_cab` (`id_nfe_cab`),
  KEY `idx_estoque` (`id_estoque`),
  CONSTRAINT `fk_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nfedetalhe_nfecab` FOREIGN KEY (`id_nfe_cab`) REFERENCES `nfe_cab` (`id_nfe_cab`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfe_det`
--

LOCK TABLES `nfe_det` WRITE;
/*!40000 ALTER TABLE `nfe_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfe_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orc_cab`
--

DROP TABLE IF EXISTS `orc_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orc_cab` (
  `cod_orc_cab` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cliente` int(11) DEFAULT NULL COMMENT 'codigo do cliente - auto incremento',
  `cod_funcionario` int(11) DEFAULT NULL,
  `data_orc_cab` date DEFAULT NULL,
  `vlr_orc_cab` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_orc_cab`),
  KEY `fk_cliente_orc_cab` (`cod_cliente`),
  KEY `fk_funcionario_orc_cab` (`cod_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orc_cab`
--

LOCK TABLES `orc_cab` WRITE;
/*!40000 ALTER TABLE `orc_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `orc_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orc_det`
--

DROP TABLE IF EXISTS `orc_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orc_det` (
  `cod_produto` varchar(13) NOT NULL,
  `cod_orc_cab` int(11) NOT NULL,
  `qtde_orc_det` int(11) DEFAULT NULL,
  `vlr_uni_orc_det` double(11,2) DEFAULT NULL,
  `vlr_total_orc_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_produto`,`cod_orc_cab`),
  KEY `fk_orc_cab_orc_det` (`cod_orc_cab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orc_det`
--

LOCK TABLES `orc_det` WRITE;
/*!40000 ALTER TABLE `orc_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `orc_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `cod_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tipo_pgto` int(11) DEFAULT NULL,
  `cod_fornecedor` varchar(20) DEFAULT NULL,
  `cod_plano_conta` int(11) DEFAULT NULL,
  `cod_banco` int(11) DEFAULT NULL,
  `num_doc_pagamento` varchar(20) DEFAULT NULL,
  `vlr_total_pagamento` double(11,2) DEFAULT NULL,
  `vlr_juro_pagamento` double(11,2) DEFAULT NULL,
  `vlr_multa_pagamento` double(11,2) DEFAULT NULL,
  `vlr_desconto_pagamento` double(11,2) DEFAULT NULL,
  `vlr_pago_pagamento` double(11,2) DEFAULT NULL,
  `num_cheque_pagmento` varchar(15) DEFAULT NULL,
  `nominal_pagamento` varchar(50) DEFAULT NULL,
  `emissao_pagamento` date DEFAULT NULL,
  `lancamento_pagamento` timestamp NULL DEFAULT NULL,
  `vencimento_pagamento` date DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_cheque_pagamento` date DEFAULT NULL,
  `agencia_pagamento` varchar(10) DEFAULT NULL,
  `conta_pagamento` varchar(45) DEFAULT NULL,
  `id_nfe_cab` int(11) DEFAULT NULL,
  `alterado_pagamento` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cod_pagamento`),
  KEY `fk_banco_pagamento` (`cod_banco`),
  KEY `fk_fornecedor_pagamento` (`cod_fornecedor`),
  KEY `fk_plano_conta_pagamento` (`cod_plano_conta`),
  KEY `fk_tipo_pgto_pagamento` (`cod_tipo_pgto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`pagamento_before_insert`
BEFORE INSERT ON `azul_erp`.`pagamento`
FOR EACH ROW
begin
set new.lancamento_pagamento = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`pagamento_before_update`
BEFORE UPDATE ON `azul_erp`.`pagamento`
FOR EACH ROW
begin
set new.alterado_pagamento = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedido_cab`
--

DROP TABLE IF EXISTS `pedido_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_cab` (
  `cod_pedido_cab` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cot_cab` int(11) DEFAULT NULL,
  `cod_fornecedor` int(11) DEFAULT NULL,
  `data_pedido_cab` date DEFAULT NULL,
  `endereco_entrega_pedido_cab` varchar(50) DEFAULT NULL,
  `endereco_cobranca_pedido_cab` varchar(50) DEFAULT NULL,
  `vlr_pedido_cab` double(11,2) DEFAULT NULL,
  `desconto_pedido_cab` double(11,2) DEFAULT NULL,
  `total_pedido_cab` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_pedido_cab`),
  KEY `fk_cot_cab_pedido_cab` (`cod_cot_cab`),
  KEY `fk_fornecedor_pedido_cab` (`cod_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_cab`
--

LOCK TABLES `pedido_cab` WRITE;
/*!40000 ALTER TABLE `pedido_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_det`
--

DROP TABLE IF EXISTS `pedido_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_det` (
  `cod_pedido_cab` int(11) NOT NULL,
  `cod_cot_cab` int(11) NOT NULL,
  `cod_produto` varchar(13) NOT NULL,
  `cod_req_cab` int(11) NOT NULL,
  `qtde_pedido_det` int(11) DEFAULT NULL,
  `vlr_pedido_det` double(11,2) DEFAULT NULL,
  `total_pedido_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_pedido_cab`,`cod_cot_cab`,`cod_produto`,`cod_req_cab`),
  KEY `fk_cot_det_pedido_det` (`cod_cot_cab`,`cod_produto`,`cod_req_cab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_det`
--

LOCK TABLES `pedido_det` WRITE;
/*!40000 ALTER TABLE `pedido_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfilusuario`
--

DROP TABLE IF EXISTS `perfilusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfilusuario` (
  `idperfilusuario` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `dt_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `idprestadores` int(11) NOT NULL,
  `idusuarios` int(11) NOT NULL,
  `dt_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_inclusao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idperfilusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfilusuario`
--

LOCK TABLES `perfilusuario` WRITE;
/*!40000 ALTER TABLE `perfilusuario` DISABLE KEYS */;
INSERT INTO `perfilusuario` VALUES (31,'administracao','2015-05-28 09:11:55',0,31,'2015-08-04 08:09:12','2015-08-19 17:06:04'),(32,'administracao unidade','2015-05-28 09:22:34',0,31,'2015-08-04 08:09:12','2015-08-04 14:59:10'),(36,'atendimento','2015-08-02 22:02:34',0,0,'2015-08-04 08:09:12','2015-08-04 08:09:12'),(39,'administracao','2015-08-04 15:08:37',0,50,'2015-08-04 15:08:37','2015-08-04 15:08:37'),(40,'administracao','2015-08-05 17:17:28',1,50,'2015-08-05 17:17:28','2015-08-05 17:17:28'),(41,'atendimento balcao','2015-08-05 17:17:41',1,50,'2015-08-05 17:17:41','2015-08-05 17:17:41'),(43,'recepção','2015-08-06 09:32:35',0,56,'2015-08-06 09:32:35','2015-08-06 09:32:35');
/*!40000 ALTER TABLE `perfilusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissaoacesso`
--

DROP TABLE IF EXISTS `permissaoacesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissaoacesso` (
  `idpermisaoacesso` int(11) NOT NULL AUTO_INCREMENT,
  `idperfilusuario` int(11) NOT NULL,
  `field_10` int(1) DEFAULT NULL,
  `field_11` int(1) DEFAULT NULL,
  `field_12` int(1) DEFAULT NULL,
  `field_13` int(1) DEFAULT NULL,
  `field_14` int(1) DEFAULT NULL,
  `field_15` int(1) DEFAULT NULL,
  `field_16` int(1) DEFAULT NULL,
  `field_17` int(1) DEFAULT NULL,
  `field_18` int(1) DEFAULT NULL,
  `field_19` int(1) DEFAULT NULL,
  `field_20` int(1) DEFAULT NULL,
  `field_21` int(1) DEFAULT NULL,
  `field_22` int(1) DEFAULT NULL,
  `field_23` int(1) DEFAULT NULL,
  `field_24` int(1) DEFAULT NULL,
  `field_25` int(1) DEFAULT NULL,
  `field_26` int(1) DEFAULT NULL,
  `field_27` int(1) DEFAULT NULL,
  `field_28` int(1) DEFAULT NULL,
  `field_29` int(1) DEFAULT NULL,
  `field_30` int(1) DEFAULT NULL,
  `field_31` int(1) DEFAULT NULL,
  `field_32` int(1) DEFAULT NULL,
  `field_33` int(1) DEFAULT NULL,
  `field_34` int(1) DEFAULT NULL,
  `field_35` int(1) DEFAULT NULL,
  `field_36` int(1) DEFAULT NULL,
  `field_37` int(1) DEFAULT NULL,
  `field_38` int(1) DEFAULT NULL,
  `field_39` int(1) DEFAULT NULL,
  `field_40` int(1) DEFAULT NULL,
  `field_41` int(1) DEFAULT NULL,
  `field_42` int(1) DEFAULT NULL,
  `field_43` int(1) DEFAULT NULL,
  `field_44` int(1) DEFAULT NULL,
  `field_45` int(1) DEFAULT NULL,
  `field_46` int(1) DEFAULT NULL,
  `field_47` int(1) DEFAULT NULL,
  `field_48` int(1) DEFAULT NULL,
  `field_49` int(1) DEFAULT NULL,
  `field_50` int(1) DEFAULT NULL,
  `field_51` int(1) DEFAULT NULL,
  `field_52` int(1) DEFAULT NULL,
  `field_53` int(1) DEFAULT NULL,
  `field_54` int(1) DEFAULT NULL,
  `field_55` int(1) DEFAULT NULL,
  `field_56` int(1) DEFAULT NULL,
  `field_57` int(1) DEFAULT NULL,
  `field_58` int(1) DEFAULT NULL,
  `field_59` int(1) DEFAULT NULL,
  PRIMARY KEY (`idpermisaoacesso`),
  KEY `fk_permissaoacesso_perfilusuario1_idx` (`idperfilusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissaoacesso`
--

LOCK TABLES `permissaoacesso` WRITE;
/*!40000 ALTER TABLE `permissaoacesso` DISABLE KEYS */;
INSERT INTO `permissaoacesso` VALUES (4,31,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0),(5,32,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0),(9,36,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,1,1,1,1,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL),(12,39,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,40,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0),(14,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(16,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `permissaoacesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'pessoa',
  `id_empresa` int(11) unsigned NOT NULL,
  `cnpj_cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nome_fantasia` varchar(45) DEFAULT NULL,
  `id_atividades` int(11) unsigned DEFAULT NULL,
  `tp_pessoa` int(2) DEFAULT NULL COMMENT '1 - cliente\n2 - fornecedor\n3 - prestador de serviço\n4 - funcionario\n5 - Agencia Bancaria\n6 - Seguradora\n',
  `status` int(1) DEFAULT '1' COMMENT '1 - ativo\n2 - inativo',
  `dt_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `class_pessoa` int(1) DEFAULT NULL COMMENT '1 - Juridica , 2 - Fisica',
  `dt_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_inicio` date DEFAULT NULL,
  UNIQUE KEY `idpessoa_unique` (`id_pessoa`),
  UNIQUE KEY `chave2_unique` (`id_empresa`,`cnpj_cpf`),
  KEY `idx_nome` (`nome`),
  KEY `idx_pessoa_cnpjcpf` (`cnpj_cpf`),
  KEY `idx_id_atividades` (`id_atividades`),
  CONSTRAINT `fk_pessoa_atividades` FOREIGN KEY (`id_atividades`) REFERENCES `atividades` (`id_atividades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (2,1,'57090000055','TESTE NOME','TESTE FANTASIA',1,4,1,'2016-04-07 10:55:10',2,'2016-04-07 10:55:10','2016-04-06'),(3,1,'33333333333','TESTE NOME','TESTE FANTASIA',1,3,1,'2016-04-07 11:07:31',2,'2016-04-07 12:01:15','2016-04-06'),(6,1,'55222222000155','TESTE FORNECEDOR','TESTE FANTASIA FORNECEDOR',1,2,1,'2016-04-08 14:04:07',1,'2016-04-12 11:24:44','2016-04-12'),(8,1,'44444444000144','TESTE FORNECEDOR','TESTE FANTASIA FORNECEDOR',1,2,1,'2016-04-08 14:31:40',1,'2016-04-12 10:20:37','2016-04-06'),(9,2,'64444444000144','TESTE FO RNECEDOR ALTERADO','TESTE FANTASIA FORNECEDOR',1,2,1,'2016-04-08 17:58:07',1,'2016-04-12 09:49:25','2016-04-06'),(13,2,'74444444000144','TESTE FORNECEDOR','TESTE FANTASIA FORNECEDOR',1,2,1,'2016-04-12 09:52:15',1,'2016-04-12 09:58:33','2016-04-06'),(14,2,'55222222000155','TESTE FORNECEDOR','TESTE FANTASIA FORNECEDOR',1,2,1,'2016-04-12 10:05:11',1,'2016-04-12 11:52:11','2016-04-12');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`pessoa_before_insert`
BEFORE INSERT ON `azul_erp`.`pessoa`
FOR EACH ROW
begin
set new.dt_criacao = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`pessoa_before_update`
BEFORE UPDATE ON `azul_erp`.`pessoa`
FOR EACH ROW
begin
set new.dt_alteracao = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `plano_conta`
--

DROP TABLE IF EXISTS `plano_conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plano_conta` (
  `id_plano_conta` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) unsigned NOT NULL,
  `cod_plano_conta` varchar(45) DEFAULT NULL,
  `descricao_plano_conta` varchar(20) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `sintetico` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_plano_conta`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_conta`
--

LOCK TABLES `plano_conta` WRITE;
/*!40000 ALTER TABLE `plano_conta` DISABLE KEYS */;
INSERT INTO `plano_conta` VALUES (1,0,NULL,'compra a vista',NULL,NULL),(2,0,NULL,'compra a prazo',NULL,NULL),(3,0,NULL,'venda a vista',NULL,NULL),(4,0,NULL,'venda a prazo',NULL,NULL),(5,0,NULL,'devolucao',NULL,NULL),(6,0,NULL,'pgto agua',NULL,NULL),(7,0,NULL,'pgto luz',NULL,NULL),(8,0,NULL,'pgto telefone',NULL,NULL),(9,0,NULL,'pgto internet',NULL,NULL),(10,0,NULL,'pgto aluguel',NULL,NULL),(11,0,NULL,'pgto condominio',NULL,NULL),(12,0,NULL,'pgto salario',NULL,NULL),(13,0,NULL,'recolhimento icms',NULL,NULL),(14,0,NULL,'recolhimento irf',NULL,NULL),(15,0,NULL,'recolhimento fgts',NULL,NULL),(16,0,NULL,'recolhimento inss ',NULL,NULL),(17,0,NULL,'descontos recebidos',NULL,NULL),(18,0,NULL,'descontos emitidos',NULL,NULL),(19,0,NULL,'recebimento duplicat',NULL,NULL),(20,0,NULL,'pagamento duplicatas',NULL,NULL);
/*!40000 ALTER TABLE `plano_conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestacao_servico`
--

DROP TABLE IF EXISTS `prestacao_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestacao_servico` (
  `id_prestacao_servico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL,
  `prestacao_servico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_prestacao_servico`),
  UNIQUE KEY `id_prestacao_servico_UNIQUE` (`id_prestacao_servico`),
  KEY `k1_id_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_servico_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_servico`
--

LOCK TABLES `prestacao_servico` WRITE;
/*!40000 ALTER TABLE `prestacao_servico` DISABLE KEYS */;
INSERT INTO `prestacao_servico` VALUES (3,3,'P_PRESTACAO_SERVICO ALTERADO');
/*!40000 ALTER TABLE `prestacao_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id_produto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_subgrupo` int(11) unsigned NOT NULL,
  `id_unidade` int(11) unsigned NOT NULL,
  `id_ncm` int(11) unsigned NOT NULL,
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'Fabricante',
  `cod_barra_produto` varchar(20) NOT NULL,
  `descricao_produto` varchar(50) DEFAULT NULL,
  `especifica_produto` varchar(45) DEFAULT NULL COMMENT 'tamanho, medidas, peso, etc.',
  `dimensao_produto` varchar(20) DEFAULT NULL,
  `cor_produto` varchar(20) DEFAULT NULL,
  `cadastro_produto` timestamp NULL DEFAULT NULL,
  `alterado_produto` timestamp NULL DEFAULT NULL,
  `foto_produto` varchar(200) DEFAULT NULL,
  `subtrib_produto` int(1) DEFAULT NULL,
  `quant_minima` decimal(5,3) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1=ativo, 2=inativo.',
  PRIMARY KEY (`id_produto`,`id_subgrupo`),
  UNIQUE KEY `un_cod_barra` (`cod_barra_produto`),
  KEY `idx_unidade_produto` (`id_unidade`),
  KEY `idx_subgrupo` (`id_subgrupo`),
  KEY `idx_descricao` (`descricao_produto`),
  KEY `idx_especifica` (`especifica_produto`),
  KEY `idx_pessoa_fabricante` (`id_pessoa`),
  KEY `idx_idncm` (`id_ncm`),
  CONSTRAINT `fk_pessoa_fabricante` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `fk_produto_ncm` FOREIGN KEY (`id_ncm`) REFERENCES `ncm` (`id_ncm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_subgrupo` FOREIGN KEY (`id_subgrupo`) REFERENCES `subgrupo` (`id_subgrupo`),
  CONSTRAINT `fk_produto_unidade` FOREIGN KEY (`id_unidade`) REFERENCES `unidade` (`id_unidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COMMENT='cadastro de produtos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`produto_before_insert`
BEFORE INSERT ON `azul_erp`.`produto`
FOR EACH ROW
begin
set new.cadastro_produto = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_erp`.`produto_before_update`
BEFORE UPDATE ON `azul_erp`.`produto`
FOR EACH ROW
begin
set new.alterado_produto = now();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recebimento`
--

DROP TABLE IF EXISTS `recebimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recebimento` (
  `id_recebimento` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'codigo do cliente - auto incremento',
  `id_tipo_lcto` int(11) unsigned NOT NULL,
  `cod_banco` int(11) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `vlr_total_recebimento` double(11,2) DEFAULT NULL,
  `vlr_juro_recebimento` double(11,2) DEFAULT NULL,
  `vlr_multa_recebimento` double(11,2) DEFAULT NULL,
  `vlr_desconto_recebimento` double(11,2) DEFAULT NULL,
  `vlr_recebido` double(11,2) DEFAULT NULL,
  `emissao_recebimento` date DEFAULT NULL,
  `lancamento_recebimento` date DEFAULT NULL,
  `vencimento_recebimento` date DEFAULT NULL,
  `data_recebimento` date DEFAULT NULL,
  PRIMARY KEY (`id_recebimento`),
  KEY `idx_banco_recebimento` (`cod_banco`),
  KEY `idx_cliente_recebimento` (`id_pessoa`),
  KEY `idx_tipo_lcto` (`id_tipo_lcto`),
  CONSTRAINT `fk_recbto_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_lancamento` FOREIGN KEY (`id_tipo_lcto`) REFERENCES `tipo_lancamento` (`id_tipo_lcto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recebimento`
--

LOCK TABLES `recebimento` WRITE;
/*!40000 ALTER TABLE `recebimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `recebimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencia_fisica`
--

DROP TABLE IF EXISTS `referencia_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencia_fisica` (
  `id_referencia` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL,
  `nome_referencia_fisica` varchar(100) DEFAULT NULL,
  `cnpj_cpf_referencia` varchar(20) DEFAULT NULL,
  `tipo_referencia` int(1) DEFAULT NULL COMMENT '1 = Comercial, 2 = Local Trabalho, 3 = Parente, 4 = Outros',
  `endereco_referencia` varchar(100) DEFAULT NULL,
  `cidade_referencia` varchar(100) DEFAULT NULL,
  `uf_referencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_referencia`),
  KEY `id_pessoa` (`id_pessoa`),
  KEY `kd_pessoa_tp` (`id_pessoa`,`tipo_referencia`),
  CONSTRAINT `fk_referencia_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_fisica`
--

LOCK TABLES `referencia_fisica` WRITE;
/*!40000 ALTER TABLE `referencia_fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencia_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_cab`
--

DROP TABLE IF EXISTS `req_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `req_cab` (
  `cod_req_cab` int(11) NOT NULL AUTO_INCREMENT,
  `cod_funcionario` int(11) DEFAULT NULL,
  `data_req_cab` date DEFAULT NULL,
  PRIMARY KEY (`cod_req_cab`),
  KEY `fk_funcionario_req_cab` (`cod_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_cab`
--

LOCK TABLES `req_cab` WRITE;
/*!40000 ALTER TABLE `req_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `req_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_det`
--

DROP TABLE IF EXISTS `req_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `req_det` (
  `cod_produto` varchar(13) NOT NULL,
  `cod_req_cab` int(11) NOT NULL,
  `qtde_req_det` int(11) DEFAULT NULL,
  `vlr_unit_req_det` double(11,2) DEFAULT NULL,
  `vlr_total_req_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`cod_produto`,`cod_req_cab`),
  KEY `fk_req_cab_req_det` (`cod_req_cab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_det`
--

LOCK TABLES `req_det` WRITE;
/*!40000 ALTER TABLE `req_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `req_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `cod_sexo` int(1) unsigned NOT NULL,
  `descricao_sexo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_sexo`),
  UNIQUE KEY `cod_sexo_unique` (`cod_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'masculino'),(2,'feminino');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupo`
--

DROP TABLE IF EXISTS `subgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgrupo` (
  `id_subgrupo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) unsigned NOT NULL,
  `cod_subgrupo` int(3) unsigned NOT NULL,
  `descricao_subgrupo` text,
  `status` int(1) DEFAULT '1' COMMENT '1 = ativo, 2 = inativo',
  PRIMARY KEY (`id_subgrupo`),
  UNIQUE KEY `ku_subgrupo_UNIQUE` (`id_grupo`,`cod_subgrupo`),
  KEY `idx_subgrupo` (`cod_subgrupo`),
  KEY `idx_grupo` (`id_grupo`),
  CONSTRAINT `fk_subgrupo_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo`
--

LOCK TABLES `subgrupo` WRITE;
/*!40000 ALTER TABLE `subgrupo` DISABLE KEYS */;
INSERT INTO `subgrupo` VALUES (10,14,1,'sub 1 gp 2 emp 2',2),(11,14,2,'sub 2 gp 2 emp 2',2),(12,14,3,'sub 3 gp 2 emp 2',2);
/*!40000 ALTER TABLE `subgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `id_telefone` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'codigo telefone auto incremento',
  `id_pessoa` int(11) unsigned NOT NULL,
  `numero_telefone` varchar(20) DEFAULT NULL,
  `tipo_telefone` char(1) DEFAULT NULL COMMENT '1=fixo resid,2=celular,3=fixo coml.',
  PRIMARY KEY (`id_telefone`),
  KEY `k1_id_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_telefone_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='telefone dos clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (2,2,'p_numero_telefone','1'),(3,3,'p_numero_telefone','1'),(5,6,'p_numero_telefone','1'),(7,8,'p_numero_telefone','1'),(8,13,'p_numero_telefone','1'),(9,14,'p_numero_telefone','1');
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_lancamento`
--

DROP TABLE IF EXISTS `tipo_lancamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_lancamento` (
  `id_tipo_lcto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `descricao_tipo_lcto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_lcto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_lancamento`
--

LOCK TABLES `tipo_lancamento` WRITE;
/*!40000 ALTER TABLE `tipo_lancamento` DISABLE KEYS */;
INSERT INTO `tipo_lancamento` VALUES (1,'a vista dinheiro'),(2,'a vista cheque'),(3,'a prazo duplicata'),(4,'a prazo cheque'),(5,'cartao credito');
/*!40000 ALTER TABLE `tipo_lancamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade`
--

DROP TABLE IF EXISTS `unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidade` (
  `id_unidade` int(11) unsigned NOT NULL,
  `descricao_unidade` char(5) DEFAULT NULL,
  PRIMARY KEY (`id_unidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cadastro de unidade dos produtos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
INSERT INTO `unidade` VALUES (1,'cx'),(2,'dz'),(3,'un'),(4,'pct');
/*!40000 ALTER TABLE `unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'demo','344e281192208401a0ffee23ebabc310b4e319f4',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `enabled` int(11) DEFAULT '1' COMMENT '1 - enabled\n0 - disabled',
  `idperfilusuario` int(11) NOT NULL,
  `idprestador` int(11) DEFAULT NULL,
  `mudasenha` int(11) DEFAULT NULL COMMENT '1- muda a senha no proximo login',
  `administrador` int(1) DEFAULT NULL COMMENT 'null - usuario comum\n1 - o usuário é administrador\n',
  `idunidades` int(11) NOT NULL,
  `dt_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `dt_ultalteracao` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `idusuario_unique` (`idusuario`),
  UNIQUE KEY `k_usuario_login_1` (`login`,`senha`),
  KEY `fk_usuario_perfilusuario1_idx` (`idperfilusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (31,'adm','adm','202cb962ac59075b964b07152d234b70',NULL,1,31,NULL,NULL,1,0,'2015-05-28 09:21:24','2015-08-02 22:45:50'),(34,'venicio','venicio','202cb962ac59075b964b07152d234b70','venicio@hotmail.com',1,31,NULL,0,NULL,0,'2015-05-28 10:04:04','2015-08-06 15:26:53'),(35,'claudemir','claudemir','90db9da4fc5414ab55a9fe495d555c06','tianalista@hsr.org.br',1,31,NULL,0,1,0,'2015-05-28 11:31:32','2015-08-02 12:49:20'),(58,'rosane','rosane','6a8bafd59ca4140583c636e63a400a36','rosane@gmail.com',1,31,0,0,NULL,0,'2015-11-07 12:26:42','2015-11-07 12:26:42');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_cab`
--

DROP TABLE IF EXISTS `venda_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda_cab` (
  `id_venda_cab` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'codigo do cliente - auto incremento',
  `id_funcionario` int(11) unsigned NOT NULL,
  `cfop_natureza` varchar(4) NOT NULL,
  `cod_tipo_pgto` int(11) DEFAULT NULL,
  `data_venda_cab` date DEFAULT NULL,
  `vlr_venda_cab` double(11,2) DEFAULT NULL,
  `desconto_venda_cab` double(11,2) DEFAULT NULL,
  `total_venda_cab` double(11,2) DEFAULT NULL,
  `num_parcelas_venda_cab` int(11) DEFAULT NULL,
  `pri_venc_venda_cab` date DEFAULT NULL,
  `num_nf_venda_cab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venda_cab`),
  KEY `idx_nfvenda_cab` (`num_nf_venda_cab`),
  KEY `idx_cliente` (`id_pessoa`),
  KEY `idx_funcionario` (`id_funcionario`),
  KEY `idx_tp_recbto_venda_cab` (`cod_tipo_pgto`),
  KEY `idx_cfop` (`cfop_natureza`),
  CONSTRAINT `fk_cfopnatureza` FOREIGN KEY (`cfop_natureza`) REFERENCES `cfop` (`cfop_natureza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `fk_vendedor` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_cab`
--

LOCK TABLES `venda_cab` WRITE;
/*!40000 ALTER TABLE `venda_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_det`
--

DROP TABLE IF EXISTS `venda_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda_det` (
  `id_venda_det` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_venda_cab` int(11) unsigned NOT NULL,
  `id_estoque` int(11) unsigned NOT NULL,
  `qtde_venda_det` int(11) DEFAULT NULL,
  `vlr_venda_det` double(11,2) DEFAULT NULL,
  `vlr_total_venda_det` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id_venda_det`),
  KEY `idx_id_estoque` (`id_estoque`),
  KEY `idx_id_vendacab` (`id_venda_cab`),
  CONSTRAINT `fk_venda_detcab` FOREIGN KEY (`id_venda_cab`) REFERENCES `venda_cab` (`id_venda_cab`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_det`
--

LOCK TABLES `venda_det` WRITE;
/*!40000 ALTER TABLE `venda_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'azul_erp'
--

--
-- Dumping routines for database 'azul_erp'
--
/*!50003 DROP FUNCTION IF EXISTS `fun_formata_cpfcnpj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fun_formata_cpfcnpj`(
p_cpf varchar(20),
p_classe int(1)) RETURNS varchar(14) CHARSET utf8
BEGIN  
 declare l_ret varchar(14);  
 -- Retirando possiveis formatacoes no valor recebido.
 -- p_classe 1 - Juridica , 2 - Fisica
 set p_cpf = replace(p_cpf,'.','');  
 set p_cpf = replace(p_cpf,'-','');  
 set p_cpf = replace(p_cpf,' ','');  
 set p_cpf = replace(p_cpf,'/','');
 set p_cpf = trim(p_cpf);
 if (p_classe = 1) then
     set l_ret = (select lpad(p_cpf,14,'0'));
 else
     set l_ret = (select lpad(p_cpf,11,'0'));
 end if;
 -- set l_ret = p_cpf;  
 -- Montando a formatacao  
 -- set l_ret = concat(mid(l_ret,1,3),'.',mid(l_ret,4,3),'.',mid(l_ret,7,3),'-',mid(l_ret,10,2));  
 -- Retornando o resultado  
 return l_ret;  
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nomefornecedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nomefornecedor`(
f_cod_fornecedor int(11)) RETURNS varchar(50) CHARSET utf8
begin
declare d_nome varchar(50);
-- nome pelo codigo--
select p.nomefantasia into d_nome
  from fornecedor f
  left join pessoa p on p.idpessoa=f.idpessoa
 where f.cod_fornecedor=f_cod_fornecedor;
return d_nome;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nomefornecedorcnpj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nomefornecedorcnpj`(
f_cnpjcpf varchar(20)) RETURNS varchar(50) CHARSET utf8
begin
declare d_nome varchar(50);
-- nome pelo codigo
select p.nomefantasia into d_nome
  from pessoa p
  left join fornecedor f on f.idpessoa=p.idpessoa
 where p.cnpjcpf=f_cnpjcpf;
return d_nome;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nomegrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nomegrupo`(
f_cod_grupo int(3)) RETURNS varchar(50) CHARSET utf8
begin
declare d_nome varchar(50);

select descricao_grupo into d_nome
  from grupo
 where cod_grupo=f_cod_grupo;
return d_nome;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nomesubgrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nomesubgrupo`(
f_cod_grupo int(3),
f_cod_subgrupo int (3)) RETURNS varchar(50) CHARSET utf8
begin
declare d_nome varchar(50);

select descricao_subgrupo into d_nome
from subgrupo
where cod_grupo=f_cod_grupo
  and cod_subgrupo=f_cod_subgrupo;
return d_nome;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classcfop_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classcfop_proc`(
  in p_opt int(1),
  in p_cod_cfop int(4),
  in p_descricao_cfop text 
 )
begin
  declare d_opt int(1);
  declare d_cod_cfop int(4);
  declare d_descricao_cfop text; 
  declare d_idmsg int(5);
  declare d_msg varchar(100);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare continue handler for sqlexception set `_rollback` = 1;

  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;

  start transaction;

  set d_opt=0;
  set d_cod_cfop=0;
  set bresult = false; 

  if (p_opt = 1) then
      set icount = (select count(0) from cfop where cod_cfop=p_cod_cfop);
      if (icount = 0 or icount is null) then
         insert into cfop
            (cod_cfop,descricao_cfop)
         values
            (p_cod_cfop,p_descricao_cfop);
      end if;
  else
      if (p_opt = 2) then
         select cod_cfop
            ,descricao_cfop
         from cfop
         where cod_cfop=p_cod_cfop;
      else
          if (p_opt = 3) then
              select cod_cfop
                  ,descricao_cfop
              from cfop;
          else
              if (p_opt = 4) then
                update cfop set descricao_cfop=p_descricao_cfop
                where cod_cfop=p_cod_cfop;
              else 
                 if (p_opt = 5) then
                    delete from cfop where cod_cfop=p_cod_cfop;
                  end if;                            
              end if;
          end if;
      end if;
  end if;
commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classcliente_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classcliente_proc`(
  in p_opt int(1),
  in p_idempresa int(11),
  in p_cnpjcpf varchar(20),
  in p_nome varchar(100),
  in p_nomefantasia varchar(45),
  in p_tppessoa int(2),
  in p_status int(1), 
  in p_rg_cliente varchar(25),
  in p_orgao_rg_cliente varchar(10),
  in p_nascimento_cliente varchar(10),
  in p_desde_cliente varchar(10),
  in p_profissao_cliente varchar(40),
  in p_empresa_cliente varchar(50),
  in p_foneempresa_cliente varchar(20),
  in p_renda_cliente double(11,2),
  in p_tipo_cliente char(1),
  in p_cnpj_cliente varchar(20),
  in p_referencia_cliente varchar(50),
  in p_fone_referencia_cliente varchar(20),
  in p_email varchar(255),
  in p_logradouro_endereco varchar(50),
  in p_complemento_endereco varchar(50),
  in p_numero_endereco varchar(10),
  in p_cep_endereco varchar(10),
  in p_bairro_endereco varchar(50),
  in p_cidade_endereco varchar(50),
  in p_uf_endereco char(2),
  in p_numero_telefone varchar(20),
  in p_tipo_telefone char(1),
  in p_ecivil_cliente char(1),
  in p_sexo_cliente   char(1)   
 )
begin
  -- p_tppessoa = 1 cliente, 2 fornecedor, 3 colaborador
  -- tipo_cliente 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj--
  -- ecivil_cliente'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  -- sexo_cliente'1=maculino, 2 = feminino',
  --
  declare d_idempresa int(11);
  declare d_cnpjcpf varchar(20);
  declare d_nome varchar(100);
  declare d_nomefantasia varchar(45);
  declare d_tppessoa int(2);
  declare d_status int(1);
  declare d_cod_cliente int(11);
  declare d_nome_cliente varchar(50);
  declare d_cpf_cliente varchar(14);
  declare d_rg_cliente varchar(25);
  declare d_orgao_rg_cliente varchar(10);
  declare d_nascimento_cliente varchar(10);
  declare d_desde_cliente varchar(10);
  declare d_profissao_cliente varchar(40);
  declare d_empresa_cliente varchar(50);
  declare d_foneempresa_cliente varchar(20);
  declare d_renda_cliente double(11,2);
  declare d_tipo_cliente char(1);
  declare d_cnpj_cliente varchar(18);
  declare d_referencia_cliente varchar(50);
  declare d_fone_referencia_cliente varchar(20);
  declare d_email varchar(255);
-- cliente_endereco
  declare d_logradouro_endereco varchar(50);
  declare d_complemento_endereco varchar(50);
  declare d_numero_endereco varchar(10);
  declare d_cep_endereco varchar(10);
  declare d_bairro_endereco varchar(50);
  declare d_cidade_endereco varchar(50);
  declare d_uf_endereco char(2);
-- cliente_telefone
  declare d_numero_telefone varchar(20);
  declare d_tipo_telefone char(1);
  declare d_opt char(1);
  declare d_msg varchar(100);
-- |cpf 999.999.999-99 |cnpj 99.999.999/9999-99
  declare d_idpessoa integer(11);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare continue handler for sqlexception set `_rollback` = 1;
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;
*/
  start transaction;
--
  set d_opt=0;
  set d_cod_cliente=0;
  set d_idpessoa=0;
  set bresult = false;
  
  if (p_opt = 1) then
     if (p_cnpjcpf != '') then
        if (icount = 0 or icount is null) then
           set icount = (select count(0) from pessoa where cnpjcpf=d_cnpjcpf and tppessoa=p_tppessoa and status = 1 and idempresa=p_idempresa);
           insert into pessoa(idempresa,cnpjcpf,nome,tppessoa)
                  values (p_idempresa,p_cnpjcpf,upper(p_nome),p_tppessoa);
           select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
           insert into cliente
                  (idpessoa
                  ,rg_cliente
                  ,orgao_rg_cliente
                  ,nascimento_cliente
                  ,ecivil_cliente
                  ,sexo_cliente
                  ,desde_cliente
                  ,profissao_cliente
                  ,empresa_cliente
                  ,foneempresa_cliente
                  ,cnpjtrab_cliente
                  ,renda_cliente
                  ,tipo_cliente
                  ,referencia_cliente
                  ,fone_referencia_cliente
                  ,email)
           values
               (d_idpessoa
               ,p_rg_cliente
               ,upper(p_orgao_rg_cliente)
               ,p_nascimento_cliente
               ,p_ecivil_cliente
               ,p_sexo_cliente
               ,p_desde_cliente
               ,upper(p_profissao_cliente)
               ,upper(p_empresa_cliente)
               ,p_foneempresa_cliente
               ,p_cnpj_cliente
               ,p_renda_cliente
               ,p_tipo_cliente
               ,upper(p_referencia_cliente)
               ,p_fone_referencia_cliente
               ,p_email);
           insert into endereco
                  (idpessoa
                  ,logradouro_endereco
                  ,complemento_endereco
                  ,numero_endereco
                  ,cep_endereco
                  ,bairro_endereco
                  ,cidade_endereco
                  ,uf_endereco)
           values
                  (d_idpessoa
                  ,upper(p_logradouro_endereco)
                  ,upper(p_complemento_endereco)
                  ,p_numero_endereco
                  ,p_cep_endereco
                  ,upper(p_bairro_endereco)
                  ,upper(p_cidade_endereco)
                  ,p_uf_endereco);          
           insert into telefone
                  (idpessoa
                  ,numero_telefone
                  ,tipo_telefone)
           values
                  (d_idpessoa
                  ,p_numero_telefone
                  ,p_tipo_telefone);
           select p.idpessoa                 c_idpessoa
                 ,p.idempresa                c_idempresa
                 ,p.cnpjcpf                  c_cnpjcpf
                 ,p.nome                     c_nome
                 ,p.tppessoa                 c_tppessoa
                 ,p.status                   c_status
                 ,cl.rg_cliente              c_rgcliente
                 ,cl.orgao_rg_cliente        c_orgaocliente
                 ,cl.nascimento_cliente      c_datanasc
                 ,cl.desde_cliente           c_desde
                 ,cl.profissao_cliente       c_profissao
                 ,cl.empresa_cliente         c_empresatrab
                 ,cl.foneempresa_cliente     c_fonetrab
                 ,cl.renda_cliente           c_renda
                 ,cl.tipo_cliente            c_tipocli
                 ,cl.cnpjtrab_cliente        c_cnpjtrab
                 ,cl.referencia_cliente      c_referenciacli
                 ,cl.fone_referencia_cliente c_fonerefercli
                 ,cl.email                   c_email
                 ,ed.logradouro_endereco     c_rua
                 ,ed.numero_endereco         c_numero
                 ,ed.cep_endereco            c_cep
                 ,ed.bairro_endereco         c_bairro
                 ,ed.cidade_endereco         c_cidade
                 ,ed.uf_endereco             c_uf
                 ,tl.numero_telefone         c_telefone
                 ,tl.tipo_telefone           c_tpfone
                 ,cl.sexo_cliente            c_sxcliente
                 ,sx.descricao_sexo          c_descsx
                 ,cl.ecivil_cliente          c_ecivil               
                 ,ec.descricao_ecivil        c_descivil
                 ,ed.complemento_endereco    c_complemento
            from pessoa p
            left join empresa      e on e.idempresa=p.idempresa
            left join cliente      cl on cl.idpessoa=p.idpessoa
            left join endereco     ed on ed.idpessoa=p.idpessoa
            left join telefone     tl on tl.idpessoa=p.idpessoa
            left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
            left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
            where p.cnpjcpf=p_cnpjcpf;
        else
           set d_opt=9;
           set d_msg='cliente ja cadastrado';
        end if;   
     else
        set d_opt=9;
        set d_msg='falta cpf/cnpj do cliente';
     end if;
  else
     if (p_opt = 2) then
        select p.idpessoa                 c_idpessoa
              ,p.idempresa                c_idempresa
              ,p.cnpjcpf                  c_cnpjcpf
              ,p.nome                     c_nome
              ,p.tppessoa                 c_tppessoa
              ,p.status                   c_status
              ,cl.rg_cliente              c_rgcliente
              ,cl.orgao_rg_cliente        c_orgaocliente
              ,cl.nascimento_cliente      c_datanasc
              ,cl.desde_cliente           c_desde
              ,cl.profissao_cliente       c_profissao
              ,cl.empresa_cliente         c_empresatrab
              ,cl.foneempresa_cliente     c_fonetrab
              ,cl.renda_cliente           c_renda
              ,cl.tipo_cliente            c_tipocli
              ,cl.cnpjtrab_cliente        c_cnpjtrab
              ,cl.referencia_cliente      c_referenciacli
              ,cl.fone_referencia_cliente c_fonerefercli
              ,cl.email                   c_email
              ,ed.logradouro_endereco     c_rua
              ,ed.numero_endereco         c_numero
              ,ed.cep_endereco            c_cep
              ,ed.bairro_endereco         c_bairro
              ,ed.cidade_endereco         c_cidade
              ,ed.uf_endereco             c_uf
              ,tl.numero_telefone         c_telefone
              ,tl.tipo_telefone           c_tpfone
              ,cl.sexo_cliente            c_sxcliente
              ,sx.descricao_sexo          c_descsx
              ,cl.ecivil_cliente          c_ecivil               
              ,ec.descricao_ecivil        c_descivil
              ,ed.complemento_endereco    c_complemento
         from pessoa p
         left join empresa      e on e.idempresa=p.idempresa
         left join cliente      cl on cl.idpessoa=p.idpessoa
         left join endereco     ed on ed.idpessoa=p.idpessoa
         left join telefone     tl on tl.idpessoa=p.idpessoa
         left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
         left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
         where p.cnpjcpf=p_cnpjcpf
           and p.idempresa=p_idempresa;
     else
        if (p_opt = 3) then
           select p.idpessoa                 c_idpessoa
                 ,p.idempresa                c_idempresa
                 ,p.cnpjcpf                  c_cnpjcpf
                 ,p.nome                     c_nome
                 ,p.tppessoa                 c_tppessoa
                 ,p.status                   c_status
                 ,cl.rg_cliente              c_rgcliente
                 ,cl.orgao_rg_cliente        c_orgaocliente
                 ,cl.nascimento_cliente      c_datanasc
                 ,cl.desde_cliente           c_desde
                 ,cl.profissao_cliente       c_profissao
                 ,cl.empresa_cliente         c_empresatrab
                 ,cl.foneempresa_cliente     c_fonetrab
                 ,cl.renda_cliente           c_renda
                 ,cl.tipo_cliente            c_tipocli
                 ,cl.cnpjtrab_cliente        c_cnpjtrab
                 ,cl.referencia_cliente      c_referenciacli
                 ,cl.fone_referencia_cliente c_fonerefercli
                 ,cl.email                   c_email
                 ,ed.logradouro_endereco     c_rua
                 ,ed.numero_endereco         c_numero
                 ,ed.cep_endereco            c_cep
                 ,ed.bairro_endereco         c_bairro
                 ,ed.cidade_endereco         c_cidade
                 ,ed.uf_endereco             c_uf
                 ,tl.numero_telefone         c_telefone
                 ,tl.tipo_telefone           c_tpfone
                 ,cl.sexo_cliente            c_sxcliente
                 ,sx.descricao_sexo          c_descsx
                 ,cl.ecivil_cliente          c_ecivil               
                 ,ec.descricao_ecivil        c_descivil
                 ,ed.complemento_endereco    c_complemento
           from pessoa p
           left join empresa      e on e.idempresa=p.idempresa
           left join cliente      cl on cl.idpessoa=p.idpessoa
           left join endereco     ed on ed.idpessoa=p.idpessoa
           left join telefone     tl on tl.idpessoa=p.idpessoa
           left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
           left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
           where p.idempresa=p_idempresa
             and p.tppessoa=1
            order by p.nome;
        else
            if (p_opt = 4) then
                select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                update pessoa set
                     nome = upper(p_nome)
                     ,nomefantasia = upper(p_nomefantasia)
                     ,tppessoa = p_tppessoa
                where idpessoa = d_idpessoa;
                update cliente set
                     rg_cliente=p_rg_cliente
                     ,orgao_rg_cliente=upper(p_orgao_rg_cliente)
                     ,nascimento_cliente=p_nascimento_cliente
                     ,sexo_cliente=p_sexo_cliente
                     ,ecivil_cliente=p_ecivil_cliente
                     ,desde_cliente=p_desde_cliente
                     ,profissao_cliente=upper(p_profissao_cliente)
                     ,empresa_cliente=upper(p_empresa_cliente)
                     ,foneempresa_cliente=p_foneempresa_cliente
                     ,cnpjtrab_cliente=p_cnpj_cliente
                     ,renda_cliente=p_renda_cliente
                     ,tipo_cliente=p_tipo_cliente
                     ,referencia_cliente=upper(p_referencia_cliente)
                     ,fone_referencia_cliente=p_fone_referencia_cliente
                     ,email=p_email
                where idpessoa = d_idpessoa;
                update endereco set
                     logradouro_endereco=upper(p_logradouro_endereco)
                     ,complemento_endereco=upper(p_complemento_endereco)
                     ,numero_endereco=p_numero_endereco
                     ,cep_endereco=p_cep_endereco
                     ,bairro_endereco=upper(p_bairro_endereco)
                     ,cidade_endereco=upper(p_cidade_endereco)
                     ,uf_endereco=upper(p_uf_endereco)
                where idpessoa = d_idpessoa;
                update telefone set 
                     numero_telefone=p_numero_telefone
                     ,tipo_telefone=p_tipo_telefone
                where idpessoa = d_idpessoa;
                select p.idpessoa                 c_idpessoa
                       ,p.idempresa                c_idempresa
                       ,p.cnpjcpf                  c_cnpjcpf
                       ,p.nome                     c_nome
                       ,p.tppessoa                 c_tppessoa
                       ,p.status                   c_status
                       ,cl.rg_cliente              c_rgcliente
                       ,cl.orgao_rg_cliente        c_orgaocliente
                       ,cl.nascimento_cliente      c_datanasc
                       ,cl.desde_cliente           c_desde
                       ,cl.profissao_cliente       c_profissao
                       ,cl.empresa_cliente         c_empresatrab
                       ,cl.foneempresa_cliente     c_fonetrab
                       ,cl.renda_cliente           c_renda
                       ,cl.tipo_cliente            c_tipocli
                       ,cl.cnpjtrab_cliente        c_cnpjtrab
                       ,cl.referencia_cliente      c_referenciacli
                       ,cl.fone_referencia_cliente c_fonerefercli
                       ,cl.email                   c_email
                       ,ed.logradouro_endereco     c_rua
                       ,ed.numero_endereco         c_numero
                       ,ed.cep_endereco            c_cep
                       ,ed.bairro_endereco         c_bairro
                       ,ed.cidade_endereco         c_cidade
                       ,ed.uf_endereco             c_uf
                       ,tl.numero_telefone         c_telefone
                       ,tl.tipo_telefone           c_tpfone
                       ,cl.sexo_cliente            c_sxcliente
                       ,sx.descricao_sexo          c_descsx
                       ,cl.ecivil_cliente          c_ecivil               
                       ,ec.descricao_ecivil        c_descivil
                       ,ed.complemento_endereco    c_complemento
                  from pessoa p
                  left join empresa      e on e.idempresa=p.idempresa
                  left join cliente      cl on cl.idpessoa=p.idpessoa
                  left join endereco     ed on ed.idpessoa=p.idpessoa
                  left join telefone     tl on tl.idpessoa=p.idpessoa
                  left join sexo         sx on sx.cod_sexo=cl.sexo_cliente
                  left join estado_civil ec on ec.cod_ecivil=cl.ecivil_cliente
                  where p.cnpjcpf=p_cnpjcpf
                    and p.idempresa=p_idempresa;
            else 
                if (p_opt = 5) then
                    select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                    delete from pessoa where idpessoa = d_idpessoa;
                    delete from cliente where idpessoa = d_idpessoa;
                    delete from endereco where idpessoa = d_idpessoa;
                    delete from telefone where idpessoa = d_idpessoa;
                end if;
            end if;
        end if;
     end if;
  end if;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classexcluiritemnfe_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classexcluiritemnfe_proc`(
  in p_opt                int(1),
  in p_id_nfe_det             int(11)
 )
begin
  declare d_idpessoa int(11) unsigned;
  declare d_cod_barra_produto varchar(13);
  declare d_margem decimal(5,3);
  declare d_status_produto char(1);
  declare d_cnpj_forn   varchar(20);
  declare d_nome varchar(100);
  declare d_cod_fornecedor int(11);
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare d_opt int(1);
  declare d_cod_subgrupo int(11);
  declare d_cod_grupo int(11);
  declare d_descricao_subgrupo text;
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
  declare d_selec char(1);
  declare d_cod_plano_conta int(11);
  declare d_data_atual timestamp;
  declare d_id_nfe_det int(11);
  declare d_cod_produto int(11);
  declare d_quant_nfe int(11); 
  declare d_estoque_atual int(11); 
    
   -- declare- continue handler for sqlexception set `_rollback` = 1;--
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;
*/
start transaction;

  set d_selec=0;
  set d_opt=0;
  set d_cod_fornecedor=0;
  set d_tpmsg=0;
  set d_cod_subgrupo=0;
  set d_cod_grupo=0;
  set d_cod_produto=0;
  set d_estoque_atual=0;

  set bresult = false;
  set d_data_atual = now();
  set d_id_nfe_det=0;
  set d_cod_produto=0;
  set d_quant_nfe=0; 
  set d_estoque_atual=0; 

   select nd.id_nfe_det
         ,nd.cod_produto
         ,nd.qtde_nfe_det
         ,pd.estoque_produto into d_id_nfe_det,d_cod_produto,d_quant_nfe,d_estoque_atual
   from nfe_det nd
   left join produto pd on pd.cod_produto=nd.cod_produto
   where nd.id_nfe_det=p_id_nfe_det;

   if (p_opt = 5) then
      set d_estoque_atual = d_estoque_atual - d_quant_nfe;
      update produto set
             estoque_produto=d_estoque_atual
       where cod_produto=d_cod_produto;
      delete from nfe_det where id_nfe_det = d_id_nfe_det;     
   end if;
commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classfornecedor_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classfornecedor_proc`(
  in p_opt int(1),
  in p_idempresa int(11),
  in p_cnpjcpf varchar(20),
  in p_nome varchar(100),
  in p_nomefantasia varchar(45),
  in p_tppessoa int(2),
  in p_status int(1), 
  in p_email_fornecedor varchar(255),
  in p_site_fornecedor varchar(100),
  in p_contato_fornecedor varchar(50),
  in p_tipo_fornecedor char(1),
  in p_logradouro_endereco varchar(50),
  in p_complemento_endereco varchar(50),
  in p_numero_endereco varchar(10),
  in p_cep_endereco varchar(10),
  in p_bairro_endereco varchar(50),
  in p_cidade_endereco varchar(50),
  in p_uf_endereco char(2),
  in p_numero_telefone varchar(20),
  in p_tipo_telefone char(1),
  in p_inscrestadual_fornecedor varchar(20),
  in p_inscrmunicipal_fornecedor varchar(20) 
 )
begin
  -- p_tppessoa = 1 fornecedor, 2 fornecedor, 3 colaborador
  -- tipo_fornecedor 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj
  declare d_opt int(1);
  declare d_idempresa int(11);
  declare d_cnpjcpf varchar(20);
  declare d_nome varchar(100);
  declare d_nomefantasia varchar(45);
  declare d_tppessoa int(2);
  declare d_status int(1);
  declare d_email varchar(255);
  declare d_site_fornecedor varchar(100);
  declare d_contato_fornecedor varchar(50);
  declare d_tipo_fornecedor char(1);
-- fornecedor_endereco
  declare d_logradouro_endereco varchar(50);
  declare d_complemento_endereco varchar(50);
  declare d_numero_endereco varchar(10);
  declare d_cep_endereco varchar(10);
  declare d_bairro_endereco varchar(50);
  declare d_cidade_endereco varchar(50);
  declare d_uf_endereco char(2);
  declare selec char(1);
-- fornecedor_telefone
  declare d_numero_telefone varchar(20);
  declare d_tipo_telefone char(1);
  declare d_msg varchar(100);
-- |cpf 999.999.999-99 |cnpj 99.999.999/9999-99
  declare d_idpessoa integer(11);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare- continue handler for sqlexception set `_rollback` = 1;
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;
*/
  start transaction;

  set d_opt=0;
  set selec=0;
  set d_idpessoa=0;
  set bresult = false;

  if (p_opt = 1) then
     if (p_cnpjcpf != '') then
        if (icount = 0 or icount is null) then
           set icount = (select count(0) from pessoa where cnpjcpf=d_cnpjcpf and tppessoa=2 and status = 1 and idempresa=p_idempresa);
           insert into pessoa(idempresa,cnpjcpf,nome,nomefantasia,tppessoa)
                  values (p_idempresa,p_cnpjcpf,upper(p_nome),upper(p_nomefantasia),2);
           select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
         insert into fornecedor
                  (idpessoa
                  ,tipo_fornecedor
                  ,email_fornecedor
                  ,site_fornecedor
                  ,contato_fornecedor
                  ,inscrestadual_fornecedor
                  ,inscrmunicipal_fornecedor)
           values           
                  (d_idpessoa
                  ,p_tipo_fornecedor
                  ,p_email_fornecedor
                  ,p_site_fornecedor
                  ,upper(p_contato_fornecedor)
                  ,p_inscrestadual_fornecedor
                  ,p_inscrmunicipal_fornecedor);
         insert into endereco
                  (idpessoa
                  ,logradouro_endereco
                  ,complemento_endereco
                  ,numero_endereco
                  ,cep_endereco
                  ,bairro_endereco
                  ,cidade_endereco
                  ,uf_endereco)
           values
                  (d_idpessoa
                  ,upper(p_logradouro_endereco)
                  ,upper(p_complemento_endereco)
                  ,p_numero_endereco
                  ,p_cep_endereco
                  ,upper(p_bairro_endereco)
                  ,upper(p_cidade_endereco)
                  ,upper(p_uf_endereco));         
           insert into telefone
                  (idpessoa
                  ,numero_telefone
                  ,tipo_telefone)
           values
                  (d_idpessoa
                  ,p_numero_telefone
                  ,p_tipo_telefone);
           set selec = 1;
        else
           set d_opt=9;
           set d_msg='fornecedor ja cadastrado';
        end if;   
     else
        set d_opt=9;
        set d_msg='falta cpf/cnpj do fornecedor';
     end if;
  else
     if (p_opt = 2) then
         set selec=1;
     else
        if (p_opt = 3) then
            set selec = 2;   
            select p.idpessoa             f_idpessoa
               ,p.idempresa            f_empresa
               ,p.cnpjcpf              f_cnpjcpf
               ,p.nome                 f_nome
               ,p.nomefantasia         f_nomefantasia
               ,p.tppessoa             f_tppessoa
               ,p.status               f_status
               ,fo.cod_fornecedor      f_cod_fornec
               ,fo.tipo_fornecedor     f_tipo_fornec
               ,fo.email_fornecedor    f_email_fornec
               ,fo.site_fornecedor     f_site_fornec
               ,fo.contato_fornecedor  f_contato_fornec
               ,fo.inscrestadual_fornecedor f_inscrestadual
               ,fo.inscrmunicipal_fornecedor f_inscrmunicipal
               ,e.razaosocial          f_razao_social
               ,ed.logradouro_endereco f_rua
               ,ed.numero_endereco     f_numero
               ,ed.cep_endereco        f_cep
               ,ed.bairro_endereco     f_bairro
               ,ed.cidade_endereco     f_cidade
               ,ed.uf_endereco         f_uf
               ,tl.numero_telefone     f_telefone
               ,tl.tipo_telefone       f_tpfone
               ,fo.cadastro_fornecedor f_cadastro_fornec
               ,ed.complemento_endereco f_complemento
             from pessoa p
             left join empresa e     on e.idempresa=p.idempresa
             left join fornecedor fo on fo.idpessoa=p.idpessoa
             left join endereco ed   on ed.idpessoa=p.idpessoa
             left join telefone tl   on tl.idpessoa=p.idpessoa
             where p.idempresa=p_idempresa
               and p.tppessoa=2;
        else
            if (p_opt = 4) then
                select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                update pessoa set
                     nome = upper(p_nome)
                    ,nomefantasia = upper(p_nomefantasia)
                    ,tppessoa = p_tppessoa
                where idpessoa = d_idpessoa;
                
                update fornecedor set
                     email_fornecedor=p_email_fornecedor
                     ,site_fornecedor=p_site_fornecedor
                     ,contato_fornecedor=upper(p_contato_fornecedor)
                     ,inscrestadual_fornecedor=p_inscrestadual_fornecedor
                     ,inscrmunicipal_fornecedor=p_inscrmunicipal_fornecedor
                where idpessoa = d_idpessoa;
                
                update endereco set
                     logradouro_endereco=upper(p_logradouro_endereco)
                     ,complemento_endereco=upper(p_complemento_endereco)
                     ,numero_endereco=p_numero_endereco
                     ,cep_endereco=p_cep_endereco
                     ,bairro_endereco=upper(p_bairro_endereco)
                     ,cidade_endereco=upper(p_cidade_endereco)
                     ,uf_endereco=upper(p_uf_endereco)
                where idpessoa = d_idpessoa;
                
                update telefone set 
                     numero_telefone=p_numero_telefone
                     ,tipo_telefone=p_tipo_telefone
                where idpessoa = d_idpessoa;
                set selec = 1;
            else 
                if (p_opt = 5) then
                    select idpessoa into d_idpessoa from pessoa where idempresa=p_idempresa and cnpjcpf=p_cnpjcpf;
                    delete from pessoa where idpessoa = d_idpessoa;
                    delete from fornecedor where idpessoa = d_idpessoa;
                    delete from endereco where idpessoa = d_idpessoa;
                    delete from telefone where idpessoa = d_idpessoa;
                    set selec=2;
                end if;               
            end if;
        end if;        
     end if;         
  end if;
  
commit;
if (selec=1) then
    select p.idpessoa             f_idpessoa
            ,p.idempresa            f_empresa
            ,p.cnpjcpf              f_cnpjcpf
            ,p.nome                 f_nome
            ,p.nomefantasia         f_nomefantasia
            ,p.tppessoa             f_tppessoa
            ,p.status               f_status
            ,fo.cod_fornecedor      f_cod_fornec
            ,fo.tipo_fornecedor     f_tipo_fornec
            ,fo.email_fornecedor    f_email_fornec
            ,fo.site_fornecedor     f_site_fornec
            ,fo.contato_fornecedor  f_contato_fornec
            ,fo.inscrestadual_fornecedor f_inscrestadual
            ,fo.inscrmunicipal_fornecedor f_inscrmunicipal
            ,e.razaosocial          f_razao_social
            ,ed.logradouro_endereco f_rua
            ,ed.numero_endereco     f_numero
            ,ed.cep_endereco        f_cep
            ,ed.bairro_endereco     f_bairro
            ,ed.cidade_endereco     f_cidade
            ,ed.uf_endereco         f_uf
            ,tl.numero_telefone     f_telefone
            ,tl.tipo_telefone       f_tpfone
            ,fo.cadastro_fornecedor f_cadastro_fornec
            ,ed.complemento_endereco f_complemento
       from pessoa p
       left join empresa e     on e.idempresa=p.idempresa
       left join fornecedor fo on fo.idpessoa=p.idpessoa
       left join endereco ed   on ed.idpessoa=p.idpessoa
       left join telefone tl   on tl.idpessoa=p.idpessoa
       where p.cnpjcpf=p_cnpjcpf
         and p.idempresa=p_idempresa
         and p.tppessoa=2;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classgrupo_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classgrupo_proc`(
  in p_opt int(1),
  in p_idempresa int(11),
  in p_cod_grupo int(3),
  in p_descricao_grupo text,
  in p_status char(1) 
 )
begin
  declare d_opt int(1);
  declare d_cod_grupo int(3);
  declare d_descricao_grupo text; 
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare continue handler for sqlexception set `_rollback` = 1; --
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;--
      end;
*/
  start transaction;

  set d_opt=0;
  set d_cod_grupo=0;
  set bresult = false;

  if (p_opt = 1) then
      set icount = (select count(0) from grupo where cod_grupo=p_cod_grupo and idempresa=p_idempresa);
      if (icount = 0 or icount is null) then
         insert into grupo
            (cod_grupo,descricao_grupo,status,idempresa)
            values
            (p_cod_grupo,upper(p_descricao_grupo),1,p_idempresa);
      end if;
  else
     if (p_opt = 2) then
        select cod_grupo      c_grupo
            ,descricao_grupo  c_descricaogrupo
            ,if(status=1,'ativo','inativo') c_statusgrupo
        from grupo
        where cod_grupo=p_cod_grupo
          and idempresa=p_idempresa
          and status=1;
     else
        if (p_opt = 3) then
              select cod_grupo      c_grupo
                  ,descricao_grupo  c_descricaogrupo
                  ,if(status=1,'ativo','inativo') c_statusgrupo
              from grupo
              where idempresa=p_idempresa
              order by status desc;
        else
            if (p_opt = 4) then
                update grupo set
                   descricao_grupo=upper(p_descricao_grupo)
                   ,status=p_status
                where cod_grupo=p_cod_grupo
                  and idempresa=p_idempresa
                  and status=1;
                select cod_grupo      c_grupo
                       ,descricao_grupo  c_descricaogrupo
                       ,if(status=1,'ativo','inativo') c_statusgrupo
                from grupo
                where cod_grupo=p_cod_grupo
                  and idempresa=p_idempresa
                  and status=1;
          else 
               if (p_opt = 5) then
                  set icount = 0;
                  set icount = (select count(0) from subgrupo where cod_grupo=p_cod_grupo and idempresa=p_idempresa);
                  if (icount = 0 or icount is null) then
                      delete from grupo where cod_grupo=p_cod_grupo and idempresa=p_idempresa;
                  else
                      set d_tpmsg=9;
                      set d_msg='impossivel exclusao de grupo com subgrupo associado';
                      select d_tpmsg,d_msg; 
                  end if;
               end if;                            
            end if;
        end if;
     end if;
  end if;
commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classmovimentaestoque_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classmovimentaestoque_proc`(
  in p_opt                int(1),
  in p_idempresa          int(11),
  in p_cod_barra_produto  varchar(13),
  in p_cod_unidade        int(11),
  in p_cnpj_forn          varchar(20),
  in p_vlr_compra_produto double(11,2),
  in p_vlr_venda_produto  double(11,2),
  in p_cfop               int(4),
  in p_percentual_venda   varchar(10),
  in p_icms_produto       varchar(10),
  in p_ipi_produto        varchar(10),
  in p_iss_produto        varchar(10),
  in p_irf_produto        varchar(10),
  in p_vlr_icms_produto   double(11,2),
  in p_vlr_ipi_produto    double(11,2),
  in p_vlr_iss_produto    double(11,2),
  in p_vlr_irf_produto    double(11,2),
  in p_ncm_produto        varchar(8),
  in p_numero_nfe_cab     varchar(11),
  in p_emissao_nfe_cab     varchar(10),
  in p_entrada_nfe_cab    varchar(10),
  in p_total_nfe_cab      double(11,2),
  in p_qtde_nfe_det       int(11),
  in p_vlr_unit_nfe_det   double(11,2),
  in p_cod_tipo_pgto      int(11),
  in p_cod_banco          int(11),
  in p_vlr_desconto_pagamento double(11,2),
  in p_num_cheque_pagmento    varchar(15),
  in p_vencimento_pagamento   varchar(10),
  in p_data_cheque_pagamento  varchar(10),
  in p_agencia_pagamento      varchar(10),
  in p_conta_pagamento        varchar(45),
  in p_id_nfe_cab             int(11),
  in p_cidade_nfe_cab         varchar(45),
  in p_uf_nfe_cab             varchar(02),
  in p_base_calculo_nfe_cab   double(11,2),
  in p_ibge_cab               int(6),
  in p_chave_nfe_cab          varchar(100)
 )
begin
  declare d_idpessoa int(11) unsigned;
  declare d_cod_barra_produto varchar(13);
  declare d_cod_produto int(11);
  declare d_margem decimal(5,3);
  declare d_status_produto char(1);
  declare d_cnpj_forn   varchar(20);
  declare d_nome varchar(100);
  declare d_cod_fornecedor int(11);
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare d_opt int(1);
  declare d_cod_subgrupo int(11);
  declare d_cod_grupo int(11);
  declare d_descricao_subgrupo text;
  declare d_estoque_atual int(11); 
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
  declare d_selec char(1);
  declare d_cod_plano_conta int(11);
  declare d_data_atual timestamp;
  declare d_last_id int(11);
    
   -- declare- continue handler for sqlexception set `_rollback` = 1;--
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;
      
*/
start transaction;

  set d_selec=0;
  set d_opt=0;
  set d_cod_fornecedor=0;
  set d_tpmsg=0;
  set d_cod_subgrupo=0;
  set d_cod_grupo=0;
  set d_cod_produto=0;
  set d_estoque_atual=0;
  set d_last_id=0;
  set d_margem=p_percentual_venda;
  set bresult = false;
  set d_data_atual = now();
  if (p_cod_tipo_pgto = 1 or 2) then
     set d_cod_plano_conta = 1;
  else
     if (p_cod_tipo_pgto > 2) then
        set d_cod_plano_conta = 2;
     else
        set d_cod_plano_conta = 0;
     end if;
  end if;
  
  select municipio,uf into p_cidade_nfe_cab,p_uf_nfe_cab
  from municipios_ibge where codigo=p_ibge_cab;

  select p.idpessoa
      ,f.cod_fornecedor
      ,p.nome into d_idpessoa,d_cod_fornecedor,d_nome
   from pessoa p
   left join fornecedor f on f.idpessoa=p.idpessoa
   where p.cnpjcpf=p_cnpj_forn
     and p.tppessoa=2
     and p.status=1;

  if (p_opt = 1) then
     if (d_cod_fornecedor = 0 or d_cod_fornecedor is null) then
         set d_tpmsg=9;
         set d_msg='fornecedor nao cadastrado';
         select d_tpmsg,d_msg;
     else
         insert into nfe_cab
               (numero_nfe_cab
               ,cod_cfop
               ,cod_fornecedor
               ,emissao_nfe_cab
               ,entrada_nfe_cab
               ,total_nfe_cab
               ,icms_nfe_cab
               ,ipi_nfe_cab
               ,iss_nfe_cab
               ,irf_nfe_cab
               ,vlr_icms_nfe_cab
               ,vlr_ipi_nfe_cab
               ,vlr_iss_nfe_cab
               ,vlr_irf_nfe_cab
               ,cidade_nfe_cab
               ,uf_nfe_cab
               ,base_calculo_nfe_cab
               ,ibge_cab
               ,chave_nfe_cab)
         values
               (p_numero_nfe_cab
               ,p_cfop
               ,p_cnpj_forn
               ,p_emissao_nfe_cab
               ,p_entrada_nfe_cab
               ,p_total_nfe_cab
               ,p_icms_produto
               ,p_ipi_produto
               ,p_iss_produto
               ,p_irf_produto
               ,p_vlr_icms_produto
               ,p_vlr_ipi_produto
               ,p_vlr_iss_produto
               ,p_vlr_irf_produto
               ,upper(p_cidade_nfe_cab)
               ,p_uf_nfe_cab
               ,p_base_calculo_nfe_cab
               ,p_ibge_cab
               ,p_chave_nfe_cab);
         set d_last_id=(select last_insert_id());
         insert into pagamento
               (cod_tipo_pgto
               ,cod_fornecedor
               ,cod_plano_conta
               ,cod_banco
               ,num_doc_pagamento
               ,vlr_total_pagamento
               ,vlr_juro_pagamento
               ,vlr_multa_pagamento
               ,vlr_desconto_pagamento
               ,vlr_pago_pagamento
               ,num_cheque_pagmento
               ,nominal_pagamento
               ,vencimento_pagamento
               ,agencia_pagamento
               ,conta_pagamento
               ,id_nfe_cab)
         values
               (p_cod_tipo_pgto
               ,p_cnpj_forn
               ,d_cod_plano_conta
               ,p_cod_banco
               ,p_numero_nfe_cab
               ,p_total_nfe_cab
               ,0.00
               ,0.00
               ,p_vlr_desconto_pagamento
               ,0.00
               ,p_num_cheque_pagmento
               ,''
               ,p_vencimento_pagamento
               ,p_agencia_pagamento
               ,p_conta_pagamento
               ,d_last_id);
         select d_last_id id;
     end if;
  else
     if (p_opt = 6) then            
         select cod_produto,estoque_produto into d_cod_produto,d_estoque_atual
           from produto
          where cod_barra_produto=p_cod_barra_produto;          
         insert into nfe_det
                  (cod_produto
                  ,numero_nfe_cab
                  ,qtde_nfe_det
                  ,vlr_unit_nfe_det
                  ,vlr_total_nfe_det
                  ,ncm_nfe_det
                  ,icms_nfe_det
                  ,ipi_nfe_det
                  ,iss_nfe_det
                  ,irf_nfe_det
                  ,vlr_icms_nfe_det
                  ,vlr_ipi_nfe_det
                  ,vlr_iss_nfe_det
                  ,vlr_irf_nfe_det                 
                  ,id_nfe_cab)
         values
                  (d_cod_produto
                  ,p_numero_nfe_cab
                  ,p_qtde_nfe_det
                  ,p_vlr_unit_nfe_det
                  ,p_vlr_compra_produto
                  ,p_ncm_produto
                  ,p_icms_produto
                  ,p_ipi_produto
                  ,p_iss_produto
                  ,p_irf_produto
                  ,p_vlr_icms_produto
                  ,p_vlr_ipi_produto
                  ,p_vlr_iss_produto
                  ,p_vlr_irf_produto
                  ,p_id_nfe_cab);           
         set d_estoque_atual=d_estoque_atual + p_qtde_nfe_det;
         update produto set
              vlr_compra_produto=p_vlr_unit_nfe_det
              ,vlr_venda_produto=p_vlr_venda_produto
              ,estoque_produto=d_estoque_atual
              ,percentual_venda=d_margem
         where cod_produto=d_cod_produto;          
         set d_selec=1;
     end if;
  end if;
  if (p_opt = 7) then  
      select cod_produto,estoque_produto into d_cod_produto,d_estoque_atual
           from produto
      where cod_barra_produto=p_cod_barra_produto;          
      update nfe_det set
      cod_produto = d_cod_produto
      ,numero_nfe_cab = p_numero_nfe_cab
      ,vlr_unit_nfe_det = p_vlr_unit_nfe_det
      ,vlr_total_nfe_det = p_vlr_compra_produto
      ,ncm_nfe_det = p_ncm_produto
      ,icms_nfe_det = p_icms_produto
      ,ipi_nfe_det = p_ipi_produto
      ,iss_nfe_det = p_iss_produto
      ,irf_nfe_det = p_irf_produto
      ,vlr_icms_nfe_det = p_vlr_icms_produto
      ,vlr_ipi_nfe_det = p_vlr_ipi_produto
      ,vlr_iss_nfe_det = p_vlr_iss_produto
      ,vlr_irf_nfe_det = p_vlr_irf_produto
      where id_nfe_det = p_id_nfe_cab; -- nesta variavel vem o id_nfe_det     
  end if;    
  if (p_opt = 4) then  
      update nfe_cab set
      numero_nfe_cab = p_numero_nfe_cab
      ,cod_cfop = p_cfop
      ,cod_fornecedor = p_cnpj_forn
      ,emissao_nfe_cab = p_emissao_nfe_cab
      ,entrada_nfe_cab = p_entrada_nfe_cab
      ,total_nfe_cab = p_total_nfe_cab
      ,icms_nfe_cab = p_icms_produto
      ,ipi_nfe_cab = p_ipi_produto
      ,iss_nfe_cab = p_iss_produto
      ,irf_nfe_cab = p_irf_produto
      ,vlr_icms_nfe_cab = p_vlr_icms_produto
      ,vlr_ipi_nfe_cab = p_vlr_ipi_produto
      ,vlr_iss_nfe_cab = p_vlr_iss_produto
      ,vlr_irf_nfe_cab = p_vlr_irf_produto
      ,cidade_nfe_cab = upper(p_cidade_nfe_cab)
      ,uf_nfe_cab = p_uf_nfe_cab
      ,base_calculo_nfe_cab = p_base_calculo_nfe_cab
      ,ibge_cab = p_ibge_cab
      ,chave_nfe_cab = p_chave_nfe_cab
      where id_nfe_cab = p_id_nfe_cab;
      set d_selec=1;       
  end if;    
commit;
if (d_selec=1) then
   select nfe.id_nfe_cab c_id
         ,nfe.numero_nfe_cab c_nfe
         ,nfe.cod_cfop c_cfop
         ,nfe.cod_fornecedor cnpjcpf
         ,nomefornecedorcnpj(nfe.cod_fornecedor) c_dsfornecedor
         ,date_format(nfe.emissao_nfe_cab,'%d/%m/%y') c_dtemissao
         ,date_format(nfe.entrada_nfe_cab,'%d/%m/%y') c_dtentrada
         ,nfe.total_nfe_cab c_total
         ,nfe.chave_nfe_cab c_chave
         ,nfe.base_calculo_nfe_cab c_base
         ,nfe.uf_nfe_cab c_uf
         ,nfe.cidade_nfe_cab c_cidade
         ,nfe.ibge_cab c_ibge
         ,nfe.icms_nfe_cab c_icms
         ,nfe.ipi_nfe_cab c_ipi
         ,nfe.iss_nfe_cab c_iss
         ,nfe.irf_nfe_cab c_irf
         ,nfe.vlr_icms_nfe_cab c_vlr_icms
         ,nfe.vlr_ipi_nfe_cab c_vlr_ipi
         ,nfe.vlr_iss_nfe_cab c_vlr_iss
         ,nfe.vlr_irf_nfe_cab c_vlr_irf
    from nfe_cab nfe
   where nfe.id_nfe_cab=p_id_nfe_cab
   order by nfe.entrada_nfe_cab desc; 
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classPessoa_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classPessoa_proc`(
   in p_opt int(1),
   in p_ret int(1),
   in p_idempresa int(11),
   in p_cnpjcpf varchar(20),
   in p_tppessoa int(2),
   in p_classe int(1),
   in p_nome varchar(100),
   in p_nomefantasia varchar(45),
   in p_status int(1), 
   in p_contato varchar(50),
   in p_inscrestadual varchar(20),
   in p_inscrmunicipal varchar(20),
   in p_numero_telefone varchar(20),
   in p_tipo_telefone INT(1),
   in p_email varchar(100),
   in p_site  varchar(100),
   in p_logradouro_endereco varchar(50),
   in p_complemento_endereco varchar(50),
   in p_numero_endereco varchar(10),
   in p_cep_endereco varchar(10),
   in p_bairro_endereco varchar(50),
   in p_cidade_endereco varchar(50),
   in p_uf_endereco char(2),
   in p_tipo_endereco INT(1),
   in p_rg_fisica varchar(25),
   in p_orgao_rg_fisica varchar(10),
   in p_nascimento_fisica varchar(10),
   in p_ecivil_fisica int(1),
   in p_sexo_fisica   int(1),
   in p_profissao_fisica varchar(40),
   in p_id_atividades  int(11),
   in p_data_inicio varchar(10),
   in p_renda_fisica double(11,2),
   in p_prestacao_servico varchar(255),
   in p_id_departamento int(11),
   in p_funcao_funcionario varchar(20),
   in p_login_funcionario varchar(10),
   in p_senha_funcionario varchar(10),
   in p_admissao_funcionario varchar(10),
   in p_data_abertura varchar(10),
   in p_acesso_total char(1)
/*
  in p_empresa_cliente varchar(50),
  in p_foneempresa_cliente varchar(20),
  in p_tipo_cliente char(1),
  in p_cnpj_cliente varchar(20),
  in p_referencia_cliente varchar(50),
  in p_fone_referencia_cliente varchar(20),
*/
)
begin
  -- p_tppessoa = 1 cliente, 2 fornecedor, 3 prestador de serviço,4 - funcionario
  -- tipo_cliente 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj--
  -- ecivil_cliente'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  -- sexo_cliente'1=maculino, 2 = feminino',
  --
   declare d_nascimento_fisica date;
   declare d_data_inicio date;
   declare d_admissao_funcionario date;
   declare d_data_abertura date; 
   declare d_classe int(1);
   declare d_juridica int(11);
   declare d_fisica int(11);
   declare d_idempresa int(11);
   declare d_cnpjcpf varchar(20);
   declare d_nome varchar(100);
   declare d_nomefantasia varchar(45);
   declare d_tppessoa int(2);
   declare d_status int(1);
   declare d_cod_cliente int(11);
   declare d_nome_cliente varchar(50);
   declare d_cpf_cliente varchar(14);
   declare d_rg_fisica varchar(25);
   declare d_orgao_rg_fisica varchar(10);
   declare d_nascimento_cliente varchar(10);
   declare d_desde_cliente varchar(10);
   declare d_profissao_cliente varchar(40);
   declare d_empresa_cliente varchar(50);
   declare d_foneempresa_cliente varchar(20);
   declare d_renda_cliente double(11,2);
   declare d_tipo_cliente char(1);
   declare d_cnpj_cliente varchar(18);
   declare d_referencia_cliente varchar(50);
   declare d_fone_referencia_cliente varchar(20);
   declare d_email varchar(255);
   -- cliente_endereco
   declare d_logradouro_endereco varchar(50);
   declare d_complemento_endereco varchar(50);
   declare d_numero_endereco varchar(10);
   declare d_cep_endereco varchar(10);
   declare d_bairro_endereco varchar(50);
   declare d_cidade_endereco varchar(50);
   declare d_uf_endereco char(2);
   -- cliente_telefone
   declare d_numero_telefone varchar(20);
   declare d_tipo_telefone char(1);
   declare d_opt char(1);
   declare d_msg varchar(100);
   -- |cpf 999.999.999-99 |cnpj 99.999.999/9999-99
   declare d_idpessoa integer(11);
   declare d_inclusao int(1);
   declare icount integer(5);
   declare d_countcp int;
   declare bresult boolean;
   declare `_rollback` bool default 0;
 
-- declare continue handler for sqlexception set `_rollback` = 1;
/*
  declare exit handler for sqlexception
begin
rollback;
get diagnostics condition 1 @sqlstate = returned_sqlstate, 
 @errno = mysql_errno, @text = message_text;
set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
select @full_error;
end;
*/
DECLARE EXIT HANDLER FOR 1052 rollback;
DECLARE EXIT HANDLER FOR 1054 rollback;
DECLARE EXIT HANDLER FOR 1062 rollback;
DECLARE EXIT HANDLER FOR 1048 rollback;


start transaction;
--
set d_data_abertura=STR_TO_DATE(p_data_abertura, '%d/%m/%Y');
set d_nascimento_fisica=STR_TO_DATE(p_nascimento_fisica, '%d/%m/%Y');
set d_data_inicio=STR_TO_DATE(p_data_inicio, '%d/%m/%Y');
set d_admissao_funcionario=STR_TO_DATE(p_admissao_funcionario, '%d/%m/%Y');

set d_opt=0;
set d_cod_cliente=0;
set d_inclusao = 0;
set d_idpessoa=0;
set bresult = false;
-- p_classe = 1 - Juridica , 2 - Fisica  
set d_cnpjcpf = (select fun_formata_cpfcnpj(p_cnpjcpf,p_classe));
set d_countcp = (select char_length(d_cnpjcpf));
if (p_opt = 1) then
   if (p_cnpjcpf != '') then
      set icount = (select count(0) from pessoa where cnpj_cpf=d_cnpjcpf and id_empresa=p_idempresa);
      if (icount = 0 or icount is null) then
         set d_idpessoa = 0;
         INSERT INTO `pessoa` (`id_empresa`,`cnpj_cpf`,`nome`,`nome_fantasia`,`tp_pessoa`,`status`,`class_pessoa`,`id_atividades`,`data_inicio`)
         VALUES (p_idempresa
                  ,d_cnpjcpf
                  ,upper(p_nome)
                  ,upper(p_nomefantasia)
                  ,p_tppessoa
                  ,1
                  ,p_classe
                  ,p_id_atividades
                  ,d_data_inicio);      
         select id_pessoa into d_idpessoa from pessoa where id_empresa=p_idempresa and cnpj_cpf=d_cnpjcpf;
         if (d_idpessoa > 0) then
            set d_inclusao = 1;
         end if;
         if (p_classe=1) then
            INSERT INTO `juridica`(`id_pessoa`,`contato_juridica`,`inscrestadual_juridica`,`inscrmunicipal_juridica`,`data_abertura_juridica`)
            VALUES (d_idpessoa
                  ,upper(p_contato)
                  ,p_inscrestadual
                  ,p_inscrmunicipal
                  ,d_data_abertura);
            SELECT `id_juridica` INTO d_juridica FROM `juridica` where `id_pessoa` = d_idpessoa;
            if (d_juridica=0 or d_juridica is null) then
               rollback;
               set d_inclusao =0;
               set p_opt = 0;
            end if;
         else
            if (p_classe=2) then
               INSERT INTO `fisica`
                     (`id_pessoa`
                     ,`rg_fisica`
                     ,`orgao_rg_fisica`
                     ,`nascimento_fisica`
                     ,`ecivil_fisica`
                     ,`sexo_fisica`
                     ,`profissao_fisica`
                     ,`renda_fisica`)
               VALUES
                     (d_idpessoa
                     ,p_rg_fisica
                     ,p_orgao_rg_fisica
                     ,d_nascimento_fisica
                     ,p_ecivil_fisica
                     ,p_sexo_fisica
                     ,upper(p_profissao_fisica)
                     ,p_renda_fisica);                                  
	            SELECT `id_fisica` INTO d_fisica FROM `fisica` where `id_pessoa` = d_idpessoa;
	            if (d_fisica=0 or d_fisica is null) then
	               rollback;
	               set d_inclusao =0;
	               set p_opt = 0;
	            end if;
            end if;
         end if;
      else
         select 'Já cadastrado';
         rollback;
         set d_inclusao =0;
         set p_opt = 0;
      end if;
   end if;
end if;
if (p_opt = 4) then
   set d_inclusao = 4;
   select `id_pessoa`,`class_pessoa`,`tp_pessoa`
     into d_idpessoa,d_classe,d_tppessoa
     from pessoa
    where id_empresa=p_idempresa
      and cnpj_cpf=d_cnpjcpf;
   if (d_tppessoa = 3) then
      delete from `prestacao_servico` where `id_pessoa` = d_idpessoa;
   else
      if (d_tppessoa = 4) then
         delete from `funcionario` where `id_pessoa` = d_idpessoa;
      end if;
   end if;
   if (d_classe = p_classe) then
      if (p_classe = 1) then
         update `juridica` set
                `contato_juridica`        = upper(p_contato)
               ,`inscrestadual_juridica`  = p_inscrestadual
               ,`inscrmunicipal_juridica` = p_inscrmunicipal
               ,`data_abertura_juridica`  = d_data_abertura      
         where `id_pessoa` = d_idpessoa;
      else
         if (p_classe = 2) then
            update fisica set            
                `rg_fisica`         = p_rg_fisica
               ,`orgao_rg_fisica`   = p_orgao_rg_fisica
               ,`nascimento_fisica` = d_nascimento_fisica
               ,`ecivil_fisica`     = p_ecivil_fisica
               ,`sexo_fisica`       = p_sexo_fisica
               ,`profissao_fisica`  = upper(p_profissao_fisica)
               ,`renda_fisica`      = p_renda_fisica
            where `id_pessoa` = d_idpessoa;
         end if;
      end if;
   else
      if (p_classe = 1) then
      -- conforme o valor do p_classe deletar o registro ao contrario
      -- excluir a fisica e cadastrar a juridica
         delete from fisica where id_pessoa = d_idpessoa;
         INSERT INTO `juridica`
               (`id_pessoa`
               ,`contato_juridica`
               ,`inscrestadual_juridica`
               ,`inscrmunicipal_juridica`
               ,`data_abertura_juridica`)
         VALUES (d_idpessoa
               ,upper(p_contato)
               ,p_inscrestadual
               ,p_inscrmunicipal
               ,d_data_abertura);      
      else
      -- excluir a juridica e cadastrar a fisica
         delete from juridica where id_pessoa = d_idpessoa;
         INSERT INTO `fisica`
               (`id_pessoa`
               ,`rg_fisica`
               ,`orgao_rg_fisica`
               ,`nascimento_fisica`
               ,`ecivil_fisica`
               ,`sexo_fisica`
               ,`profissao_fisica`
               ,`renda_fisica`)
         VALUES
               (d_idpessoa
               ,p_rg_fisica
               ,p_orgao_rg_fisica
               ,d_nascimento_fisica
               ,p_ecivil_fisica
               ,p_sexo_fisica
               ,upper(p_profissao_fisica)
               ,p_renda_fisica);                                  
      end if;
   end if; 
   update pessoa set
       `nome`          = upper(p_nome)
      ,`nome_fantasia` = upper(p_nomefantasia)
      ,`tp_pessoa`     = p_tppessoa
      ,`class_pessoa`  = p_classe
      ,`status`        = p_status
      ,`id_atividades` = p_id_atividades
      ,`data_inicio`   = d_data_inicio
   where `id_pessoa` = d_idpessoa;
end if;              
if (p_opt = 5) then
   select id_pessoa into d_idpessoa from pessoa where id_empresa=p_idempresa and cnpj_cpf=d_cnpjcpf;
   delete from pessoa where id_pessoa = d_idpessoa;
   set d_inclusao = 0;
end if;

if (d_inclusao = 1) then
   if (d_idpessoa > 0) then
      if (p_tppessoa = 3) then
         INSERT INTO `prestacao_servico`
            (`id_pessoa`
            ,`prestacao_servico`)
         VALUES
            (d_idpessoa
            ,upper(p_prestacao_servico));            
      end if;
      if (p_tppessoa = 4) then
         INSERT INTO `funcionario`
            (`id_pessoa`
            ,`id_departamento`
            ,`funcao_funcionario`
            ,`login_funcionario`
            ,`senha_funcionario`
            ,`admissao_funcionario`
            ,`acesso_total`)
         VALUES
            (d_idpessoa
            ,p_id_departamento
            ,upper(p_funcao_funcionario)
            ,upper(p_login_funcionario)
            ,upper(p_senha_funcionario)
            ,d_admissao_funcionario
            ,p_acesso_total);           
      end if;
      INSERT INTO `endereco`
         (`id_pessoa`
         ,`logradouro_endereco`
         ,`complemento_endereco`
         ,`numero_endereco`
         ,`cep_endereco`
         ,`bairro_endereco`
         ,`cidade_endereco`
         ,`uf_endereco`
         ,`tipo_endereco`)
      VALUES
         (d_idpessoa
         ,upper(p_logradouro_endereco)
         ,upper(p_complemento_endereco)
         ,p_numero_endereco
         ,p_cep_endereco
         ,upper(p_bairro_endereco)
         ,upper(p_cidade_endereco)
         ,upper(p_uf_endereco)
         ,p_tipo_endereco);
      INSERT INTO `telefone`
         (`id_pessoa`
         ,`numero_telefone`
         ,`tipo_telefone`)
      VALUES
         (d_idpessoa
         ,p_numero_telefone
         ,p_tipo_telefone);
      INSERT INTO `email`
         (`id_pessoa`
         ,`email`
         ,`site`)
      VALUES
         (d_idpessoa
         ,p_email
         ,p_site);
   end if;
end if;
if (d_inclusao = 4) then
   if (p_tppessoa = 3) then
      INSERT INTO `prestacao_servico`
         (`id_pessoa`
         ,`prestacao_servico`)
      VALUES
         (d_idpessoa
         ,upper(p_prestacao_servico));            
   end if;
   if (p_tppessoa = 4) then
      INSERT INTO `funcionario`
         (`id_pessoa`
         ,`id_departamento`
         ,`funcao_funcionario`
         ,`login_funcionario`
         ,`senha_funcionario`
         ,`admissao_funcionario`
         ,`acesso_total`)
      VALUES
         (d_idpessoa
         ,p_id_departamento
         ,upper(p_funcao_funcionario)
         ,upper(p_login_funcionario)
         ,upper(p_senha_funcionario)
         ,d_admissao_funcionario
         ,p_acesso_total);           
   end if;
   update `endereco` set
         `logradouro_endereco`   = upper(p_logradouro_endereco) 
         ,`complemento_endereco` = upper(p_complemento_endereco)
         ,`numero_endereco`      = p_numero_endereco
         ,`cep_endereco`         = p_cep_endereco
         ,`bairro_endereco`      = upper(p_bairro_endereco)
         ,`cidade_endereco`      = upper(p_cidade_endereco)
         ,`uf_endereco`          = upper(p_uf_endereco)
         ,`tipo_endereco`        = p_tipo_endereco
   where `id_pessoa` = d_idpessoa;
   update `telefone` set
          `numero_telefone` = p_numero_telefone 
         ,`tipo_telefone`   = p_tipo_telefone
   where `id_pessoa` = d_idpessoa;
   update `email` set 
          `email` = p_email 
         ,`site`  = p_site
   where `id_pessoa` = d_idpessoa;
end if;

if (`_rollback`=1) then
   rollback;
else
   commit;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classproduto_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classproduto_proc`(
  in p_opt                int(1),
  in p_idempresa          int(11),
  in p_cod_produto        int(11),
  in p_cod_barra_produto  varchar(13),
  in p_cod_subgrupo       int(3),
  in p_cod_grupo          int(3),
  in p_cod_unidade        int(11),
  in p_cnpj_forn          varchar(20),
  in p_descricao_produto  varchar(50),
  in p_vlr_compra_produto double(11,2),
  in p_vlr_venda_produto  double(11,2),
  in p_estoque_produto    int(11),
  in p_critico_produto    int(11),
  in p_especifica_produto varchar(45),
  in p_cfop               int(4),
  in p_percentual_venda   varchar(10),
  in p_icms_produto       varchar(10),
  in p_ipi_produto        varchar(10),
  in p_iss_produto        varchar(10),
  in p_irf_produto        varchar(10),
  in p_vlr_icms_produto   double(11,2),
  in p_vlr_ipi_produto    double(11,2),
  in p_vlr_iss_produto    double(11,2),
  in p_vlr_irf_produto    double(11,2),
  in p_tamanho_produto    varchar(20),
  in p_cor_produto        varchar(20),
  in p_ncm_produto        varchar(8)
 )
begin
  declare d_idpessoa int(11) unsigned;
  declare d_cod_produto int(11) unsigned;
  declare d_status_produto char(1);
  declare d_cnpj_forn   varchar(20);
  declare d_nome varchar(100);
  declare d_cod_fornecedor int(11);
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare d_opt int(1);
  declare d_cod_subgrupo int(11);
  declare d_cod_grupo int(11);
  declare d_descricao_subgrupo text; 
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
  declare d_selec char(1);
    
   -- declare- continue handler for sqlexception set-- `_rollback` = 1;--
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;--
*/
start transaction;

  set d_selec=0;
  set d_opt=0;
  set d_cod_fornecedor=0;
  set d_tpmsg=0;
  set d_cod_subgrupo=0;
  set d_cod_grupo=0;
  set d_cod_produto=0;
  set bresult = false;

   select p.idpessoa
      ,f.cod_fornecedor
      ,p.nome into d_idpessoa,d_cod_fornecedor,d_nome
   from pessoa p
   left join fornecedor f on f.idpessoa=p.idpessoa
   where p.cnpjcpf=p_cnpj_forn
     and p.tppessoa=2
     and p.status=1;

  if (p_opt = 1) then
     if (d_cod_fornecedor = 0 or d_cod_fornecedor is null) then
         set d_tpmsg=9;
         set d_msg='fornecedor nao cadastrado';
         select d_tpmsg,d_msg;
     else
         if (p_cod_grupo != 0 and p_cod_subgrupo !=0) then
             if (p_cod_barra_produto != '') then
                 insert into produto
                     (cod_grupo
                     ,cod_subgrupo
                     ,idempresa
                     ,cod_unidade
                     ,cod_fornecedor
                     ,descricao_produto
                     ,vlr_compra_produto
                     ,vlr_venda_produto
                     ,estoque_produto
                     ,critico_produto
                     ,especifica_produto
                     ,cod_barra_produto
                     ,cfop_produto
                     ,status
                     ,percentual_venda
                     ,icms_produto
                     ,ipi_produto
                     ,iss_produto
                     ,irf_produto
                     ,vlr_icms_produto
                     ,vlr_ipi_produto
                     ,vlr_iss_produto
                     ,vlr_irf_produto
                     ,tamanho_produto
                     ,cor_produto
                     ,ncm_produto)
                 values
                     (p_cod_grupo
                     ,p_cod_subgrupo
                     ,p_idempresa
                     ,p_cod_unidade
                     ,p_cnpj_forn
                     ,upper(p_descricao_produto)
                     ,p_vlr_compra_produto
                     ,p_vlr_venda_produto
                     ,p_estoque_produto
                     ,p_critico_produto
                     ,upper(p_especifica_produto)
                     ,p_cod_barra_produto
                     ,p_cfop
                     ,1
                     ,p_percentual_venda
                     ,p_icms_produto
                     ,p_ipi_produto
                     ,p_iss_produto
                     ,p_irf_produto
                     ,p_vlr_icms_produto
                     ,p_vlr_ipi_produto
                     ,p_vlr_iss_produto
                     ,p_vlr_irf_produto
                     ,upper(p_tamanho_produto)
                     ,upper(p_cor_produto)
                     ,p_ncm_produto);
                 set d_selec=1;
             else
                 insert into produto
                     (cod_grupo
                     ,cod_subgrupo
                     ,idempresa
                     ,cod_unidade
                     ,cod_fornecedor
                     ,descricao_produto
                     ,vlr_compra_produto
                     ,vlr_venda_produto
                     ,estoque_produto
                     ,critico_produto
                     ,especifica_produto
                     ,cod_barra_produto
                     ,cfop_produto
                     ,status
                     ,percentual_venda
                     ,icms_produto
                     ,ipi_produto
                     ,iss_produto
                     ,irf_produto
                     ,vlr_icms_produto
                     ,vlr_ipi_produto
                     ,vlr_iss_produto
                     ,vlr_irf_produto
                     ,tamanho_produto
                     ,cor_produto
                     ,ncm_produto)
                 values
                     (p_cod_grupo
                     ,p_cod_subgrupo
                     ,p_idempresa
                     ,p_cod_unidade
                     ,p_cnpj_forn
                     ,upper(p_descricao_produto)
                     ,p_vlr_compra_produto
                     ,p_vlr_venda_produto
                     ,p_estoque_produto
                     ,p_critico_produto
                     ,upper(p_especifica_produto)
                     ,(select `auto_increment` from information_schema.tables
                       where table_schema = 'azul_erp'
                         and table_name   = 'produto')
                     ,p_cfop
                     ,1
                     ,p_percentual_venda
                     ,p_icms_produto
                     ,p_ipi_produto
                     ,p_iss_produto
                     ,p_irf_produto
                     ,p_vlr_icms_produto
                     ,p_vlr_ipi_produto
                     ,p_vlr_iss_produto
                     ,p_vlr_irf_produto
                     ,upper(p_tamanho_produto)
                     ,upper(p_cor_produto)
                     ,p_ncm_produto);
                 set d_selec=1;
             end if;
         end if;
     end if;
  else
     if (p_opt = 2) then
         set d_selec=1;
     else
        if (p_opt = 3) then
             select p.cod_grupo            c_grupo
                   ,nomegrupo(p.cod_grupo) c_dsgrupo
                   ,p.cod_subgrupo         c_cdsubgrupo
                   ,nomesubgrupo(p.cod_grupo,p.cod_subgrupo) c_dssubgrupo
                   ,p.cod_produto        c_cdproduto
                   ,p.idempresa          c_idempresa
                   ,p.cod_unidade        c_cdunidade
                   ,u.descricao_unidade  c_dsunidade
                   ,p.cod_fornecedor     cnpjcpf
                   ,nomefornecedorcnpj(p.cod_fornecedor) c_dsfornecedor
                   ,p.descricao_produto  c_dsproduto
                   ,p.vlr_compra_produto c_vlcompra
                   ,p.vlr_venda_produto  c_vlvenda
                   ,p.estoque_produto    c_qestoque
                   ,p.critico_produto    c_critico
                   ,p.especifica_produto c_especifica
                   ,p.cod_barra_produto  c_cdbarra
                   ,p.cfop_produto       c_cfop
                   ,p.status             c_status
                   ,p.percentual_venda   c_percentual     
                   ,p.icms_produto       c_icms
                   ,p.ipi_produto        c_ipi
                   ,p.iss_produto        c_iss
                   ,p.irf_produto        c_irf
                   ,p.vlr_icms_produto   c_vlr_icms
                   ,p.vlr_ipi_produto    c_vlr_ipi
                   ,p.vlr_iss_produto    c_vlr_iss
                   ,p.vlr_irf_produto    c_vlr_irf
                   ,p.tamanho_produto    c_tamanho
                   ,p.cor_produto        c_cor
                   ,p.ncm_produto        c_ncm
                   ,cfop.cfopdescricao   c_dscfop
                   ,ncm.nome             c_dsncm
                   from produto p
                   left join unidade u on u.cod_unidade=p.cod_unidade
                   left join cfop on cfop.cfopnatureza=p.cfop_produto
                   left join ncm on ncm.ncm=p.ncm_produto
            where p.status=1
              and p.idempresa=p_idempresa
            order by p.cod_grupo,p.cod_subgrupo,p.cod_produto;
        else
            if (p_opt = 4) then
                update produto set
                   cod_unidade=p_cod_unidade
                   ,cod_fornecedor=p_cnpj_forn
                   ,descricao_produto=upper(p_descricao_produto)
                   ,vlr_compra_produto=p_vlr_compra_produto
                   ,vlr_venda_produto=p_vlr_venda_produto
                   ,estoque_produto=p_estoque_produto
                   ,critico_produto=p_critico_produto
                   ,especifica_produto=upper(p_especifica_produto)
                   ,cfop_produto=p_cfop
                   ,percentual_venda=p_percentual_venda
                   ,icms_produto=p_icms_produto
                   ,ipi_produto=p_ipi_produto
                   ,iss_produto=p_iss_produto
                   ,irf_produto=p_irf_produto
                   ,vlr_icms_produto=p_vlr_icms_produto
                   ,vlr_ipi_produto=p_vlr_ipi_produto
                   ,vlr_iss_produto=p_vlr_iss_produto
                   ,vlr_irf_produto=p_vlr_irf_produto
                   ,tamanho_produto=upper(p_tamanho_produto)
                   ,cor_produto=upper(p_cor_produto)
                   ,ncm_produto=p_ncm_produto
                 where cod_produto=p_cod_produto
                   and cod_subgrupo=p_cod_subgrupo
                   and cod_grupo=p_cod_grupo
                   and status=1
                   and idempresa=p_idempresa;
                 set d_selec=1;
            else
               if (p_opt = 5) then
                       update produto set status=2
                       where cod_produto=p_cod_produto
                         and cod_subgrupo=p_cod_subgrupo
                         and cod_grupo=p_cod_grupo
                         and status=1
                         and idempresa=p_idempresa;
               end if;            
            end if;        
        end if; 
     end if;
  end if;
commit;
if (d_selec=1) then
    select p.cod_grupo            c_grupo
          ,nomegrupo(p.cod_grupo) c_dsgrupo
          ,p.cod_subgrupo         c_cdsubgrupo
          ,nomesubgrupo(p.cod_grupo,p.cod_subgrupo) c_dssubgrupo
          ,p.cod_produto        c_cdproduto
          ,p.idempresa          c_idempresa
          ,p.cod_unidade        c_cdunidade
          ,u.descricao_unidade  c_dsunidade
          ,p.cod_fornecedor     cnpjcpf
          ,nomefornecedorcnpj(p.cod_fornecedor) c_dsfornecedor
          ,p.descricao_produto  c_dsproduto
          ,p.vlr_compra_produto c_vlcompra
          ,p.vlr_venda_produto  c_vlvenda
          ,p.estoque_produto    c_qestoque
          ,p.critico_produto    c_critico
          ,p.especifica_produto c_especifica
          ,p.cod_barra_produto  c_cdbarra
          ,p.cfop_produto       c_cfop
          ,p.status             c_status
          ,p.percentual_venda   c_percentual     
          ,p.icms_produto       c_icms
          ,p.ipi_produto        c_ipi
          ,p.iss_produto        c_iss
          ,p.irf_produto        c_irf
          ,p.vlr_icms_produto   c_vlr_icms
          ,p.vlr_ipi_produto    c_vlr_ipi
          ,p.vlr_iss_produto    c_vlr_iss
          ,p.vlr_irf_produto    c_vlr_irf
          ,p.tamanho_produto    c_tamanho
          ,p.cor_produto        c_cor
          ,p.ncm_produto        c_ncm
          ,cfop.cfopdescricao   c_dscfop
          ,ncm.nome             c_dsncm
          from produto p
          left join unidade u on u.cod_unidade=p.cod_unidade
          left join cfop on cfop.cfopnatureza=p.cfop_produto
          left join ncm on ncm.ncm=p.ncm_produto
         where p.status=1
           and p.idempresa=p_idempresa
           and p.cod_barra_produto=p_cod_barra_produto;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classsubgrupo_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `classsubgrupo_proc`(
  in p_opt int(1),
  in p_idempresa int(11),
  in p_cod_grupo int(3),
  in p_cod_subgrupo int(3),
  in p_descricao_subgrupo text,
  in p_status char(1) 
 )
begin
  declare d_msg varchar(100);
  declare d_tpmsg char(1);
  declare d_opt int(1);
  declare d_cod_subgrupo int(3);
  declare d_cod_grupo int(3);
  declare d_descricao_subgrupo text; 
  declare icount integer(5);
  declare bresult boolean;
  declare `_rollback` bool default 0;
    
   -- declare continue handler for sqlexception set `_rollback` = 1;
/*
  declare exit handler for sqlexception
      begin
         rollback;
         get diagnostics condition 1 @sqlstate = returned_sqlstate, 
          @errno = mysql_errno, @text = message_text;
         set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
         select @full_error;
      end;
*/ --
  start transaction;

  set d_opt=0;
  set d_tpmsg=0;
  set d_cod_subgrupo=0;
  set d_cod_grupo=0;
  set bresult = false;

  if (p_opt = 1) then
      select cod_grupo into d_cod_grupo from grupo where cod_grupo=p_cod_grupo and idempresa=p_idempresa;
      if (d_cod_grupo != 0) then  
         set icount = (select count(0) from subgrupo where cod_subgrupo=p_cod_subgrupo and cod_grupo=p_cod_grupo and idempresa=p_idempresa);
         if (icount = 0 or icount is null) then
            insert into subgrupo
               (cod_subgrupo,cod_grupo,descricao_subgrupo,status,idempresa)
            values
               (p_cod_subgrupo,d_cod_grupo,upper(p_descricao_subgrupo),1,p_idempresa);
            select sg.cod_grupo          c_grupo
                  ,g.descricao_grupo     c_descgrupo
                  ,sg.cod_subgrupo       c_subgrupo
                  ,sg.descricao_subgrupo c_descsub
                  ,sg.status             c_statussub
            from subgrupo sg
            left join grupo g on g.cod_grupo=sg.cod_grupo
            where sg.cod_subgrupo=p_cod_subgrupo
              and sg.cod_grupo=p_cod_grupo
              and sg.status=1
              and sg.idempresa=p_idempresa;
         else
            set d_tpmsg = '9';
            set d_msg = 'subgrupo ja cadastrado';
            select d_tpmsg,d_msg;
         end if;
      else
         set d_tpmsg = '9';
         set d_msg = 'grupo nao cadastrado';
         select d_tpmsg,d_msg;
      end if;
  else
     if (p_opt = 2) then
        select sg.cod_grupo          c_grupo
              ,g.descricao_grupo     c_descgrupo
              ,sg.cod_subgrupo       c_subgrupo
              ,sg.descricao_subgrupo c_descsub
              ,sg.status             c_statussub
        from subgrupo sg
        left join grupo g on g.cod_grupo=sg.cod_grupo
        where sg.cod_subgrupo=p_cod_subgrupo
          and sg.cod_grupo=p_cod_grupo
          and sg.status=1
          and sg.idempresa=p_idempresa;
     else
        if (p_opt = 3) then
           select sg.cod_grupo          c_grupo
                 ,g.descricao_grupo     c_descgrupo
                 ,sg.cod_subgrupo       c_subgrupo
                 ,sg.descricao_subgrupo c_descsub
                 ,if(sg.status=1,'ativo','inativo')  c_statussub
           from subgrupo sg
           left join grupo g on g.cod_grupo=sg.cod_grupo
           where sg.idempresa=p_idempresa
           order by sg.status desc;
        else
            if (p_opt = 4) then
                update subgrupo set
                   descricao_subgrupo=upper(p_descricao_subgrupo)
                   ,status=p_status
                where cod_subgrupo=p_cod_subgrupo
                  and cod_grupo=p_cod_grupo
                  and status=1
                  and idempresa=p_idempresa;
               select sg.cod_grupo          c_grupo
                     ,g.descricao_grupo     c_descgrupo
                     ,sg.cod_subgrupo       c_subgrupo
                     ,sg.descricao_subgrupo c_descsub
                     ,sg.status             c_statussub
               from subgrupo sg
               left join grupo g on g.cod_grupo=sg.cod_grupo
               where sg.cod_subgrupo=p_cod_subgrupo
                 and sg.cod_grupo=p_cod_grupo
                 and sg.status=1
                 and sg.idempresa=p_idempresa;
            else
               if (p_opt = 5) then
                   set icount = (select count(0) from produto where cod_subgrupo=p_cod_subgrupo and cod_grupo=p_cod_grupo and idempresa=p_idempresa);
                   if (icount = 0 or icount is null) then
                       delete from subgrupo
                       where cod_subgrupo=p_cod_subgrupo
                         and cod_grupo=p_cod_grupo
                         and status=1
                         and idempresa=p_idempresa;
                   else
                       set d_tpmsg=9;
                       set d_msg='impossivel de excluir subgrupo com produto associado';
                   end if;
               end if;            
            end if;        
        end if; 
     end if;
  end if;
commit;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classteste_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classteste_proc`(
   in p_opt int(1),
   in p_ret int(1),
   in p_idempresa int(11),
   in p_cnpjcpf varchar(20),
   in p_nome varchar(100),
   in p_nomefantasia varchar(45),
   in p_tppessoa int(2),
   in p_status int(1), 
   in p_classe int(1),
   in p_contato varchar(50),
   in p_inscrestadual varchar(20),
   in p_inscrmunicipal varchar(20),
   in p_numero_telefone varchar(20),
   in p_tipo_telefone INT(1),
   in p_email varchar(100),
   in p_site  varchar(100),
   in p_logradouro_endereco varchar(50),
   in p_complemento_endereco varchar(50),
   in p_numero_endereco varchar(10),
   in p_cep_endereco varchar(10),
   in p_bairro_endereco varchar(50),
   in p_cidade_endereco varchar(50),
   in p_uf_endereco char(2),
   in p_tipo_endereco INT(1),
   in p_rg_fisica varchar(25),
   in p_orgao_rg_fisica varchar(10),
   in p_nascimento_fisica varchar(10),
   in p_ecivil_fisica int(1),
   in p_sexo_fisica   int(1),
   in p_profissao_fisica varchar(40),
   in p_id_atividades  int(11),
   in p_data_inicio varchar(10),
   in p_renda_fisica double(11,2),
   in p_prestacao_servico varchar(255),
   in p_id_departamento int(11),
   in p_funcao_funcionario varchar(20),
   in p_login_funcionario varchar(10),
   in p_senha_funcionario varchar(10),
   in p_admissao_funcionario varchar(10),
   in p_acesso_total char(1)
/*
  in p_empresa_cliente varchar(50),
  in p_foneempresa_cliente varchar(20),
  in p_tipo_cliente char(1),
  in p_cnpj_cliente varchar(20),
  in p_referencia_cliente varchar(50),
  in p_fone_referencia_cliente varchar(20),
*/
)
begin
  -- p_tppessoa = 1 cliente, 2 fornecedor, 3 prestador de serviço,4 - funcionario
  -- tipo_cliente 1 = juridica 2 = fisica
  -- se 1 tem cpf, se 2 tem cnpj--
  -- ecivil_cliente'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
  -- sexo_cliente'1=maculino, 2 = feminino',
  --
   declare d_classe int(1);
   declare d_idempresa int(11);
   declare d_cnpjcpf varchar(20);
   declare d_nome varchar(100);
   declare d_nomefantasia varchar(45);
   declare d_tppessoa int(2);
   declare d_status int(1);
   declare d_cod_cliente int(11);
   declare d_nome_cliente varchar(50);
   declare d_cpf_cliente varchar(14);
   declare d_rg_fisica varchar(25);
   declare d_orgao_rg_fisica varchar(10);
   declare d_nascimento_cliente varchar(10);
   declare d_desde_cliente varchar(10);
   declare d_profissao_cliente varchar(40);
   declare d_empresa_cliente varchar(50);
   declare d_foneempresa_cliente varchar(20);
   declare d_renda_cliente double(11,2);
   declare d_tipo_cliente char(1);
   declare d_cnpj_cliente varchar(18);
   declare d_referencia_cliente varchar(50);
   declare d_fone_referencia_cliente varchar(20);
   declare d_email varchar(255);
   -- cliente_endereco
   declare d_logradouro_endereco varchar(50);
   declare d_complemento_endereco varchar(50);
   declare d_numero_endereco varchar(10);
   declare d_cep_endereco varchar(10);
   declare d_bairro_endereco varchar(50);
   declare d_cidade_endereco varchar(50);
   declare d_uf_endereco char(2);
   -- cliente_telefone
   declare d_numero_telefone varchar(20);
   declare d_tipo_telefone char(1);
   declare d_opt char(1);
   declare d_msg varchar(100);
   -- |cpf 999.999.999-99 |cnpj 99.999.999/9999-99
   declare d_idpessoa integer(11);
   declare d_inclusao int(1);
   declare icount integer(5);
   declare d_countcp int;
   declare bresult boolean;
   declare `_rollback` bool default 0;
--   declare continue handler for sqlexception set `_rollback` = 1;
/*
declare exit handler for sqlexception
begin
rollback;
 get diagnostics condition 1 @sqlstate = returned_sqlstate, 
 @errno = mysql_errno, @text = message_text;
set @full_error = concat("error ", @errno, " (", @sqlstate, "): ", @text);
select @full_error;
end;
*/
DECLARE EXIT HANDLER FOR 1022 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1023 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1024 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1025 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1026 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1027 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1028 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1029 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1030 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1031 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1032 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1033 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1034 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1035 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1036 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1037 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1038 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1039 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1040 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1041 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1042 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1043 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1044 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1045 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1046 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1047 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1048 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1049 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1050 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1051 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1052 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1053 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1054 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1055 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1056 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1057 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1058 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1059 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1060 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1061 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1062 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1063 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1064 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1065 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1066 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1067 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1068 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1069 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1070 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1071 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1072 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1073 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1074 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1075 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1076 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1077 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1078 SELECT 'ERRO DO MYSQL 1062';
DECLARE EXIT HANDLER FOR 1079 SELECT 'ERRO DO MYSQL 1062';

start transaction;
--
set d_opt=0;
set d_cod_cliente=0;
set d_inclusao = 0;
set d_idpessoa=0;
set bresult = false;
-- p_classe = 1 - Juridica , 2 - Fisica  
set d_cnpjcpf = (select fun_formata_cpfcnpj(p_cnpjcpf,p_classe));
set d_countcp = (select char_length(d_cnpjcpf));
if (p_opt = 1) then
   if (p_cnpjcpf != '') then
      set icount = (select count(0) from pessoa where cnpj_cpf=d_cnpjcpf and id_empresa=p_idempresa);
      if (icount = 0 or icount is null) then
         set d_idpessoa = 0;
         INSERT INTO `pessoa` (`id_empresa`,`cnpj_cpf`,`nome`,`nome_fantasia`,`tp_pessoa`,`status`,`class_pessoa`,`id_atividades`,`data_inicio`)
         VALUES (p_idempresa
                  ,d_cnpjcpf
                  ,upper(p_nome)
                  ,upper(p_nomefantasia)
                  ,p_tppessoa
                  ,1
                  ,p_classe
                  ,p_id_atividades
                  ,p_data_inicio);      
      end if;
   end if;
end if;
if (`_rollback`=1) then
   rollback;
   SELECT 'ERRO DO MYSQL 1054';
else
   commit;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13 11:17:27