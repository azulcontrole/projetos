-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: azul_controle
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
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
INSERT INTO `cfop` VALUES ('1101','Compra para industrialização'),('1102','Compra para comercialização'),('1111','Compra para industrialização de mercadoria recebida anteriormente em consignação industrial'),('1113','Compra para comercialização, de mercadoria recebida anteriormente em consignação mercantil'),('1116','Compra para industrialização originada de encomenda para recebimento futuro'),('1117','Compra para comercialização originada de encomenda para recebimento futuro'),('1118','Compra de mercadoria para comercialização pelo adquirente originário, entregue pelo vendedor remetente ao destinatário, em venda à ordem'),('1120','Compra para industrialização, em venda à ordem, já recebida do vendedor remetente'),('1121','Compra para comercialização, em venda à ordem, já recebida do vendedor remetente'),('1122','Compra para industrialização em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente'),('1124','Industrialização efetuada por outra empresa'),('1125','Industrialização efetuada por outra empresa quando a mercadoria remetida para utilização no processo de industrialização não transitou pelo estabelecimento adquirente da mercadoria'),('1126','Compra para utilização na prestação de serviço'),('1151','Transferência para industrialização'),('1152','Transferência para comercialização'),('1153','Transferência de energia elétrica para distribuição'),('1154','Transferência para utilização na prestação de serviço'),('1201','Devolução de venda de produção do estabelecimento'),('1202','Devolução de venda de mercadoria adquirida ou recebida de terceiros'),('1203','Devolução de venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('1204','Devolução de venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('1205','Anulação de valor relativo à prestação de serviço de comunicação'),('1206','Anulação de valor relativo à prestação de serviço de transporte'),('1207','Anulação de valor relativo à venda de energia elétrica'),('1208','Devolução de produção do estabelecimento, remetida em transferência'),('1209','Devolução de mercadoria adquirida ou recebida de terceiros, remetida em transferência'),('1251','Compra de energia elétrica para distribuição ou comercialização'),('1252','Compra de energia elétrica por estabelecimento industrial'),('1253','Compra de energia elétrica por estabelecimento comercial'),('1254','Compra de energia elétrica por estabelecimento prestador de serviço de transporte'),('1255','Compra de energia elétrica por estabelecimento prestador de serviço de comunicação'),('1256','Compra de energia elétrica por estabelecimento de produtor rural'),('1257','Compra de energia elétrica para consumo por demanda contratada'),('1301','Aquisição de serviço de comunicação para execução de serviço da mesma natureza'),('1302','Aquisição de serviço de comunicação por estabelecimento industrial'),('1303','Aquisição de serviço de comunicação por estabelecimento comercial'),('1304','Aquisição de serviço de comunicação por estabelecimento de prestador de serviço de transporte'),('1305','Aquisição de serviço de comunicação por estabelecimento de geradora ou de distribuidora de energia elétrica'),('1306','Aquisição de serviço de comunicação por estabelecimento de produtor rural'),('1351','Aquisição de serviço de transporte para execução de serviço da mesma natureza'),('1352','Aquisição de serviço de transporte por estabelecimento industrial'),('1353','Aquisição de serviço de transporte por estabelecimento comercial'),('1354','Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação'),('1355','Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica'),('1356','Aquisição de serviço de transporte por estabelecimento de produtor rural'),('1401','Compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('1403','Compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('1406','Compra de bem para o ativo imobilizado cuja mercadoria está sujeita ao regime de substituição tributária'),('1407','Compra de mercadoria para uso ou consumo cuja mercadoria está sujeita ao regime de substituição tributária'),('1408','Transferência para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('1409','Transferência para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('1410','Devolução de venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('1411','Devolução de venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária'),('1414','Retorno de produção do estabelecimento, remetida para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('1415','Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em operação com mercadoria sujeita ao regime de substituição tributária'),('1451','Retorno de animal do estabelecimento produtor'),('1452','Retorno de insumo não utilizado na produção'),('1501','Entrada de mercadoria recebida com fim específico de exportação'),('1503','Entrada decorrente de devolução de produto remetido com fim específico de exportação, de produção do estabelecimento'),('1504','Entrada decorrente de devolução de mercadoria remetida com fim específico de exportação, adquirida ou recebida de terceiros'),('1551','Compra de bem para o ativo imobilizado'),('1552','Transferência de bem do ativo imobilizado'),('1553','Devolução de venda de bem do ativo imobilizado'),('1554','Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento'),('1555','Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento'),('1556','Compra de material para uso ou consumo'),('1557','Transferência de material para uso ou consumo'),('1601','Recebimento, por transferência, de crédito de ICMS'),('1602','Recebimento, por transferência, de saldo credor de ICMS de outro estabelecimento da mesma empresa, para compensação de saldo devedor de ICMS'),('1603','Ressarcimento de ICMS retido por substituição tributária'),('1604','Lançamento do crédito relativo à compra de bem para o ativo imobilizado'),('1605','Recebimento, por transferência, de saldo devedor de ICMS de outro estabelecimento da mesma empresa'),('1650','ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES'),('1651','Compra de combustível ou lubrificante para industrialização subseqüente'),('1652','Compra de combustível ou lubrificante para comercialização'),('1653','Compra de combustível ou lubrificante por consumidor ou usuário final'),('1658','Transferência de combustível e lubrificante para industrialização'),('1659','Transferência de combustível e lubrificante para comercialização'),('1660','Devolução de venda de combustível ou lubrificante destinado à industrialização'),('1661','Devolução de venda de combustível ou lubrificante destinado à comercialização'),('1662','Devolução de venda de combustível ou lubrificante destinado a consumidor ou usuário final'),('1663','Entrada de combustível ou lubrificante para armazenagem'),('1664','Retorno de combustível ou lubrificante remetido para armazenagem'),('1901','Entrada para industrialização por encomenda'),('1902','Retorno de mercadoria remetida para industrialização por encomenda'),('1903','Entrada de mercadoria remetida para industrialização e não aplicada no referido processo'),('1904','Retorno de remessa para venda fora do estabelecimento'),('1905','Entrada de mercadoria recebida para depósito em depósito fechado ou armazém geral'),('1906','Retorno de mercadoria remetida para depósito fechado ou armazém geral'),('1907','Retorno simbólico de mercadoria remetida para depósito fechado ou armazém geral'),('1908','Entrada de bem por conta de contrato de comodato'),('1909','Retorno de bem remetido por conta de contrato de comodato'),('1910','Entrada de bonificação, doação ou brinde'),('1911','Entrada de amostra grátis'),('1912','Entrada de mercadoria ou bem recebido para demonstração'),('1913','Retorno de mercadoria ou bem remetido para demonstração'),('1914','Retorno de mercadoria ou bem remetido para exposição ou feira'),('1915','Entrada de mercadoria ou bem recebido para conserto ou reparo'),('1916','Retorno de mercadoria ou bem remetido para conserto ou reparo'),('1917','Entrada de mercadoria recebida em consignação mercantil ou industrial'),('1918','Devolução de mercadoria remetida em consignação mercantil ou industrial'),('1919','Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consignação mercantil ou industrial'),('1920','Entrada de vasilhame ou sacaria'),('1921','Retorno de vasilhame ou sacaria'),('1922','Lançamento efetuado a título de simples faturamento decorrente de compra para recebimento futuro'),('1923','Entrada de mercadoria recebida do vendedor remetente, em venda à ordem'),('1924','Entrada para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente'),('1925','Retorno de mercadoria remetida para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente'),('1926','Lançamento efetuado a título de reclassificação de mercadoria decorrente de formação de kit ou de sua desagregação'),('1931','Lançamento efetuado pelo tomador do serviço de transporte quando a responsabilidade de retenção do imposto for atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na Unidade da Federação onde iniciado o serviço'),('1932','Aquisição de serviço de transporte iniciado em Unidade da Federação diversa daquela onde inscrito o prestador'),('1933','Aquisição de serviço tributado pelo ISSQN'),('1949','Outra entrada de mercadoria ou prestação de serviço não especificada'),('2101','Compra para industrialização'),('2102','Compra para comercialização'),('2111','Compra para industrialização de mercadoria recebida anteriormente em consignação industrial'),('2113','Compra para comercialização, de mercadoria recebida anteriormente em consignação mercantil'),('2116','Compra para industrialização originada de encomenda para recebimento futuro'),('2117','Compra para comercialização originada de encomenda para recebimento futuro'),('2118','Compra de mercadoria para comercialização pelo adquirente originário, entregue pelo vendedor remetente ao destinatário, em venda à ordem'),('2120','Compra para industrialização, em venda à ordem, já recebida do vendedor remetente'),('2121','Compra para comercialização, em venda à ordem, já recebida do vendedor remetente'),('2122','Compra para industrialização em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente'),('2124','Industrialização efetuada por outra empresa'),('2125','Industrialização efetuada por outra empresa quando a mercadoria remetida para utilização no processo de industrialização não transitou pelo estabelecimento adquirente da mercadoria'),('2126','Compra para utilização na prestação de serviço'),('2151','Transferência para industrialização'),('2152','Transferência para comercialização'),('2153','Transferência de energia elétrica para distribuição'),('2154','Transferência para utilização na prestação de serviço'),('2201','Devolução de venda de produção do estabelecimento'),('2202','Devolução de venda de mercadoria adquirida ou recebida de terceiros'),('2203','Devolução de venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('2204','Devolução de venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('2205','Anulação de valor relativo à prestação de serviço de comunicação'),('2206','Anulação de valor relativo à prestação de serviço de transporte'),('2207','Anulação de valor relativo à venda de energia elétrica'),('2208','Devolução de produção do estabelecimento, remetida em transferência'),('2209','Devolução de mercadoria adquirida ou recebida de terceiros, remetida em transferência'),('2251','Compra de energia elétrica para distribuição ou comercialização'),('2252','Compra de energia elétrica por estabelecimento industrial'),('2253','Compra de energia elétrica por estabelecimento comercial'),('2254','Compra de energia elétrica por estabelecimento prestador de serviço de transporte'),('2255','Compra de energia elétrica por estabelecimento prestador de serviço de comunicação'),('2256','Compra de energia elétrica por estabelecimento de produtor rural'),('2257','Compra de energia elétrica para consumo por demanda contratada'),('2301','Aquisição de serviço de comunicação para execução de serviço da mesma natureza'),('2302','Aquisição de serviço de comunicação por estabelecimento industrial'),('2303','Aquisição de serviço de comunicação por estabelecimento comercial'),('2304','Aquisição de serviço de comunicação por estabelecimento de prestador de serviço de transporte'),('2305','Aquisição de serviço de comunicação por estabelecimento de geradora ou de distribuidora de energia elétrica'),('2306','Aquisição de serviço de comunicação por estabelecimento de produtor rural'),('2351','Aquisição de serviço de transporte para execução de serviço da mesma natureza'),('2352','Aquisição de serviço de transporte por estabelecimento industrial'),('2353','Aquisição de serviço de transporte por estabelecimento comercial'),('2354','Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação'),('2355','Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica'),('2356','Aquisição de serviço de transporte por estabelecimento de produtor rural'),('2401','Compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('2403','Compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('2406','Compra de bem para o ativo imobilizado cuja mercadoria está sujeita ao regime de substituição tributária'),('2407','Compra de mercadoria para uso ou consumo cuja mercadoria está sujeita ao regime de substituição tributária'),('2408','Transferência para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('2409','Transferência para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('2410','Devolução de venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('2411','Devolução de venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária'),('2414','Retorno de produção do estabelecimento, remetida para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('2415','Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em operação com mercadoria sujeita ao regime de substituição tributária'),('2501','Entrada de mercadoria recebida com fim específico de exportação'),('2503','Entrada decorrente de devolução de produto remetido com fim específico de exportação, de produção do estabelecimento'),('2504','Entrada decorrente de devolução de mercadoria remetida com fim específico de exportação, adquirida ou recebida de terceiros'),('2551','Compra de bem para o ativo imobilizado'),('2552','Transferência de bem do ativo imobilizado'),('2553','Devolução de venda de bem do ativo imobilizado'),('2554','Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento'),('2555','Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento'),('2556','Compra de material para uso ou consumo'),('2557','Transferência de material para uso ou consumo'),('2603','Ressarcimento de ICMS retido por substituição tributária'),('2651','ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES'),('2652','Compra de combustível ou lubrificante para comercialização'),('2653','Compra de combustível ou lubrificante por consumidor ou usuário final'),('2658','Transferência de combustível e lubrificante para industrialização'),('2659','Transferência de combustível e lubrificante para comercialização'),('2660','Devolução de venda de combustível ou lubrificante destinado à industrialização'),('2661','Devolução de venda de combustível ou lubrificante destinado à comercialização'),('2662','Devolução de venda de combustível ou lubrificante destinado a consumidor ou usuário final'),('2663','Entrada de combustível ou lubrificante para armazenagem'),('2664','Retorno de combustível ou lubrificante remetido para armazenagem'),('2901','Entrada para industrialização por encomenda'),('2902','Retorno de mercadoria remetida para industrialização por encomenda'),('2903','Entrada de mercadoria remetida para industrialização e não aplicada no referido processo'),('2904','Retorno de remessa para venda fora do estabelecimento'),('2905','Entrada de mercadoria recebida para depósito em depósito fechado ou armazém geral'),('2906','Retorno de mercadoria remetida para depósito fechado ou armazém geral'),('2907','Retorno simbólico de mercadoria remetida para depósito fechado ou armazém geral'),('2908','Entrada de bem por conta de contrato de comodato'),('2909','Retorno de bem remetido por conta de contrato de comodato'),('2910','Entrada de bonificação, doação ou brinde'),('2911','Entrada de amostra grátis'),('2912','Entrada de mercadoria ou bem recebido para demonstração'),('2913','Retorno de mercadoria ou bem remetido para demonstração'),('2914','Retorno de mercadoria ou bem remetido para exposição ou feira'),('2915','Entrada de mercadoria ou bem recebido para conserto ou reparo'),('2916','Retorno de mercadoria ou bem remetido para conserto ou reparo'),('2917','Entrada de mercadoria recebida em consignação mercantil ou industrial'),('2918','Devolução de mercadoria remetida em consignação mercantil ou industrial'),('2919','Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consignação mercantil ou industrial'),('2920','Entrada de vasilhame ou sacaria'),('2921','Retorno de vasilhame ou sacaria'),('2922','Lançamento efetuado a título de simples faturamento decorrente de compra para recebimento futuro'),('2923','Entrada de mercadoria recebida do vendedor remetente, em venda à ordem'),('2924','Entrada para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente'),('2925','Retorno de mercadoria remetida para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente'),('2931','Lançamento efetuado pelo tomador do serviço de transporte quando a responsabilidade de retenção do imposto for atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na Unidade da Federação onde iniciado o serviço'),('2932','Aquisição de serviço de transporte iniciado em Unidade da Federação diversa daquela onde inscrito o prestador'),('2933','Aquisição de serviço tributado pelo ISSQN'),('2949','Outra entrada de mercadoria ou prestação de serviço não especificado'),('3101','Compra para industrialização'),('3102','Compra para comercialização'),('3126','Compra para utilização na prestação de serviço'),('3127','Compra para industrialização sob o regime de “drawback”'),('3201','Devolução de venda de produção do estabelecimento'),('3202','Devolução de venda de mercadoria adquirida ou recebida de terceiros'),('3205','Anulação de valor relativo à prestação de serviço de comunicação'),('3206','Anulação de valor relativo à prestação de serviço de transporte'),('3207','Anulação de valor relativo à venda de energia elétrica'),('3211','Devolução de venda de produção do estabelecimento sob o regime de “drawback”'),('3251','Compra de energia elétrica para distribuição ou comercialização'),('3301','Aquisição de serviço de comunicação para execução de serviço da mesma natureza'),('3351','Aquisição de serviço de transporte para execução de serviço da mesma natureza'),('3352','Aquisição de serviço de transporte por estabelecimento industrial'),('3353','Aquisição de serviço de transporte por estabelecimento comercial'),('3354','Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação'),('3355','Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica'),('3356','Aquisição de serviço de transporte por estabelecimento de produtor rural'),('3503','Devolução de mercadoria exportada que tenha sido recebida com fim específico de exportação'),('3551','Compra de bem para o ativo imobilizado'),('3553','Devolução de venda de bem do ativo imobilizado'),('3556','Compra de material para uso ou consumo'),('3650','ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES'),('3651','Compra de combustível ou lubrificante para industrialização subseqüente'),('3652','Compra de combustível ou lubrificante para comercialização'),('3653','Compra de combustível ou lubrificante por consumidor ou usuário final'),('3930','Lançamento efetuado a título de entrada de bem sob amparo de regime especial aduaneiro de admissão temporária'),('3949','Outra entrada de mercadoria ou prestação de serviço não especificado'),('5101','Venda de produção do estabelecimento'),('5102','Venda de mercadoria adquirida ou recebida de terceiros'),('5103','Venda de produção do estabelecimento, efetuada fora do estabelecimento'),('5104','Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento'),('5105','Venda de produção do estabelecimento que não deva por ele transitar'),('5106','Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar'),('5109','Venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('5110','Venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('5111','Venda de produção do estabelecimento remetida anteriormente em consignação industrial'),('5112','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação industrial'),('5113','Venda de produção do estabelecimento remetida anteriormente em consignação mercantil'),('5114','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação mercantil'),('5115','Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consignação mercantil'),('5116','Venda de produção do estabelecimento originada de encomenda para entrega futura'),('5117','Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura'),('5118','Venda de produção do estabelecimento entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem'),('5119','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem'),('5120','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário pelo vendedor remetente, em venda à ordem'),('5122','Venda de produção do estabelecimento remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente'),('5123','Venda de mercadoria adquirida ou recebida de terceiros remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente'),('5124','Industrialização efetuada para outra empresa'),('5125','Industrialização efetuada para outra empresa quando a mercadoria recebida para utilização no processo de industrialização não transitar pelo estabelecimento adquirente da mercadoria'),('5151','Transferência de produção do estabelecimento'),('5152','Transferência de mercadoria adquirida ou recebida de terceiros'),('5153','Transferência de energia elétrica'),('5155','Transferência de produção do estabelecimento, que não deva por ele transitar'),('5156','Transferência de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar'),('5201','Devolução de compra para industrialização'),('5202','Devolução de compra para comercialização'),('5205','Anulação de valor relativo a aquisição de serviço de comunicação'),('5206','Anulação de valor relativo a aquisição de serviço de transporte'),('5207','Anulação de valor relativo à compra de energia elétrica'),('5208','Devolução de mercadoria recebida em transferência para industrialização'),('5209','Devolução de mercadoria recebida em transferência para comercialização'),('5210','Devolução de compra para utilização na prestação de serviço'),('5251','Venda de energia elétrica para distribuição ou comercialização'),('5252','Venda de energia elétrica para estabelecimento industrial'),('5253','Venda de energia elétrica para estabelecimento comercial'),('5254','Venda de energia elétrica para estabelecimento prestador de serviço de transporte'),('5255','Venda de energia elétrica para estabelecimento prestador de serviço de comunicação'),('5256','Venda de energia elétrica para estabelecimento de produtor rural'),('5257','Venda de energia elétrica para consumo por demanda contratada'),('5258','Venda de energia elétrica a não contribuinte'),('5301','Prestação de serviço de comunicação para execução de serviço da mesma natureza'),('5302','Prestação de serviço de comunicação a estabelecimento industrial'),('5303','Prestação de serviço de comunicação a estabelecimento comercial'),('5304','Prestação de serviço de comunicação a estabelecimento de prestador de serviço de transporte'),('5305','Prestação de serviço de comunicação a estabelecimento de geradora ou de distribuidora de energia elétrica'),('5306','Prestação de serviço de comunicação a estabelecimento de produtor rural'),('5307','Prestação de serviço de comunicação a não contribuinte'),('5351','Prestação de serviço de transporte para execução de serviço da mesma natureza'),('5352','Prestação de serviço de transporte a estabelecimento industrial'),('5353','Prestação de serviço de transporte a estabelecimento comercial'),('5354','Prestação de serviço de transporte a estabelecimento de prestador de serviço de comunicação'),('5355','Prestação de serviço de transporte a estabelecimento de geradora ou de distribuidora de energia elétrica'),('5356','Prestação de serviço de transporte a estabelecimento de produtor rural'),('5357','Prestação de serviço de transporte a não contribuinte'),('5359','Prestação de serviço de transporte a contribuinte ou a não contribuinte quando a mercadoria transportada está dispensada de emissão de nota fiscal'),('5401','Venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária, na condição de contribuinte substituto'),('5402','Venda de produção do estabelecimento de produto sujeito ao regime de substituição tributária, em operação entre contribuintes substitutos do mesmo produto'),('5403','Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituto'),('5405','Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituído'),('5408','Transferência de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('5409','Transferência de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária'),('5410','Devolução de compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('5411','Devolução de compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('5412','Devolução de bem do ativo imobilizado, em operação com mercadoria sujeita ao regime de substituição tributária'),('5413','Devolução de mercadoria destinada ao uso ou consumo, em operação com mercadoria sujeita ao regime de substituição tributária'),('5414','Remessa de produção do estabelecimento para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('5415','Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, em operação com mercadoria sujeita ao regime de substituição tributária'),('5451','Remessa de animal e de insumo para estabelecimento produtor'),('5501','Remessa de produção do estabelecimento, com fim específico de exportação'),('5502','Remessa de mercadoria adquirida ou recebida de terceiros, com fim específico de exportação'),('5503','Devolução de mercadoria recebida com fim específico de exportação'),('5551','Venda de bem do ativo imobilizado'),('5552','Transferência de bem do ativo imobilizado'),('5553','Devolução de compra de bem para o ativo imobilizado'),('5554','Remessa de bem do ativo imobilizado para uso fora do estabelecimento'),('5555','Devolução de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento'),('5556','Devolução de compra de material de uso ou consumo'),('5557','Transferência de material de uso ou consumo'),('5601','Transferência de crédito de ICMS acumulado'),('5602','Transferência de saldo credor de ICMS para outro estabelecimento da mesma empresa, destinado à compensação de saldo devedor de ICMS'),('5603','Ressarcimento de ICMS retido por substituição tributária'),('5605','Transferência de saldo devedor de ICMS de outro estabelecimento da mesma empresa'),('5650','SAÍDAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES'),('5651','Venda de combustível ou lubrificante de produção do estabelecimento destinado à industrialização subseqüente'),('5652','Venda de combustível ou lubrificante de produção do estabelecimento destinado à comercialização'),('5653','Venda de combustível ou lubrificante de produção do estabelecimento destinado a consumidor ou usuário final'),('5654','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado à industrialização subseqüente'),('5655','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado à comercialização'),('5656','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado a consumidor ou usuário final'),('5657','Remessa de combustível ou lubrificante adquirido ou recebido de terceiros para venda fora do estabelecimento'),('5658','Transferência de combustível ou lubrificante de produção do estabelecimento'),('5659','Transferência de combustível ou lubrificante adquirido ou recebido de terceiro'),('5660','Devolução de compra de combustível ou lubrificante adquirido para industrialização subseqüente'),('5661','Devolução de compra de combustível ou lubrificante adquirido para comercializaçã'),('5662','Devolução de compra de combustível ou lubrificante adquirido por consumidor ou usuário final'),('5663','Remessa para armazenagem de combustível ou lubrificante'),('5664','Retorno de combustível ou lubrificante recebido para armazenagem'),('5665','Retorno simbólico de combustível ou lubrificante recebido para armazenagem'),('5666','Remessa por conta e ordem de terceiros de combustível ou lubrificante recebido para armazenagem'),('5901','Remessa para industrialização por encomenda'),('5902','Retorno de mercadoria utilizada na industrialização por encomenda'),('5903','Retorno de mercadoria recebida para industrialização e não aplicada no referido processo'),('5904','Remessa para venda fora do estabelecimento'),('5905','Remessa para depósito fechado ou armazém geral'),('5906','Retorno de mercadoria depositada em depósito fechado ou armazém geral'),('5907','Retorno simbólico de mercadoria depositada em depósito fechado ou armazém geral'),('5908','Remessa de bem por conta de contrato de comodato'),('5909','Retorno de bem recebido por conta de contrato de comodato'),('5910','Remessa em bonificação, doação ou brinde'),('5911','Remessa de amostra grátis'),('5912','Remessa de mercadoria ou bem para demonstração'),('5913','Retorno de mercadoria ou bem recebido para demonstração'),('5914','Remessa de mercadoria ou bem para exposição ou feira'),('5915','Remessa de mercadoria ou bem para conserto ou reparo'),('5916','Retorno de mercadoria ou bem recebido para conserto ou reparo'),('5917','Remessa de mercadoria em consignação mercantil ou industrial'),('5918','Devolução de mercadoria recebida em consignação mercantil ou industrial'),('5919','Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consignação mercantil ou industrial'),('5920','Remessa de vasilhame ou sacaria'),('5921','Devolução de vasilhame ou sacaria'),('5922','Lançamento efetuado a título de simples faturamento decorrente de venda para entrega futura'),('5923','Remessa de mercadoria por conta e ordem de terceiros, em venda à ordem'),('5924','Remessa para industrialização por conta e ordem do adquirente da mercadoria,'),('5925','Retorno de mercadoria recebida para industrialização por conta e ordem do adquirente da mercadoria, quando aquela não transitar pelo estabelecimento do adquirente'),('5926','Lançamento efetuado a título de reclassificação de mercadoria decorrente de formação de kit ou de sua desagregação'),('5927','Lançamento efetuado a título de baixa de estoque decorrente de perda, roubo ou deterioração'),('5928','Lançamento efetuado a título de baixa de estoque decorrente do encerramento da atividade da empresa'),('5929','Lançamento efetuado em decorrência de emissão de documento fiscal relativo a operação ou prestação também registrada em equipamento Emissor de Cupom Fiscal'),('5931','Lançamento efetuado em decorrência da responsabilidade de retenção do imposto por substituição tributária, atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na unidade da Federação onde iniciado o serviço'),('5932','Prestação de serviço de transporte iniciada em unidade da Federação diversa daquela onde inscrito o prestador'),('5933','Prestação de serviço tributado pelo ISSQN'),('5949','Outra saída de mercadoria ou prestação de serviço não especificado'),('6101','Venda de produção do estabelecimento'),('6102','Venda de mercadoria adquirida ou recebida de terceiros'),('6103','Venda de produção do estabelecimento, efetuada fora do estabelecimento'),('6104','Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento'),('6105','Venda de produção do estabelecimento que não deva por ele transitar'),('6106','Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar'),('6107','Venda de produção do estabelecimento, destinada a não contribuinte'),('6108','Venda de mercadoria adquirida ou recebida de terceiros, destinada a não contribuinte'),('6109','Venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('6110','Venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio'),('6111','Venda de produção do estabelecimento remetida anteriormente em consignação industrial'),('6112','Venda de mercadoria adquirida ou recebida de Terceiros remetida anteriormente em consignação industrial'),('6113','Venda de produção do estabelecimento remetida anteriormente em consignação mercantil'),('6114','Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação mercantil'),('6115','Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consignação mercantil'),('6116','Venda de produção do estabelecimento originada de encomenda para entrega futura'),('6117','Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura'),('6118','Venda de produção do estabelecimento entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem'),('6119','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem'),('6120','Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário pelo vendedor remetente, em venda à ordem'),('6122','Venda de produção do estabelecimento remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente'),('6123','Venda de mercadoria adquirida ou recebida de terceiros remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente'),('6124','Industrialização efetuada para outra empresa'),('6125','Industrialização efetuada para outra empresa quando a mercadoria recebida para utilização no processo de industrialização não transitar pelo estabelecimento adquirente da mercadoria'),('6151','Transferência de produção do estabelecimento'),('6152','Transferência de mercadoria adquirida ou recebida de terceiros'),('6153','Transferência de energia elétrica'),('6155','Transferência de produção do estabelecimento, que não deva por ele transitar'),('6156','Transferência de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar'),('6201','Devolução de compra para industrialização'),('6202','Devolução de compra para comercialização'),('6205','Anulação de valor relativo a aquisição de serviço de comunicação'),('6206','Anulação de valor relativo a aquisição de serviço de transporte'),('6207','Anulação de valor relativo à compra de energia elétrica'),('6208','Devolução de mercadoria recebida em transferência para industrialização'),('6209','Devolução de mercadoria recebida em transferência para comercialização'),('6210','Devolução de compra para utilização na prestação de serviço'),('6251','Venda de energia elétrica para distribuição ou comercialização'),('6252','Venda de energia elétrica para estabelecimento industrial'),('6253','Venda de energia elétrica para estabelecimento comercial'),('6254','Venda de energia elétrica para estabelecimento prestador de serviço de transporte'),('6255','Venda de energia elétrica para estabelecimento prestador de serviço de comunicação'),('6256','Venda de energia elétrica para estabelecimento de produtor rural'),('6257','Venda de energia elétrica para consumo por demanda contratada'),('6258','Venda de energia elétrica a não contribuinte'),('6301','Prestação de serviço de comunicação para execução de serviço da mesma natureza'),('6302','Prestação de serviço de comunicação a estabelecimento industrial'),('6303','Prestação de serviço de comunicação a estabelecimento comercial'),('6304','Prestação de serviço de comunicação a estabelecimento de prestador de serviço de transporte'),('6305','Prestação de serviço de comunicação a estabelecimento de geradora ou de distribuidora de energia elétrica'),('6306','Prestação de serviço de comunicação a estabelecimento de produtor rural'),('6307','Prestação de serviço de comunicação a não contribuinte'),('6351','Prestação de serviço de transporte para execução de serviço da mesma natureza'),('6352','Prestação de serviço de transporte a estabelecimento industrial'),('6353','Prestação de serviço de transporte a estabelecimento comercial'),('6354','Prestação de serviço de transporte a estabelecimento de prestador de serviço de comunicação'),('6355','Prestação de serviço de transporte a estabelecimento de geradora ou de distribuidora de energia elétrica'),('6356','Prestação de serviço de transporte a estabelecimento de produtor rural'),('6357','Prestação de serviço de transporte a não contribuinte'),('6359','Prestação de serviço de transporte a contribuinte ou a não contribuinte quando a mercadoria transportada está dispensada de emissão de nota fiscal'),('6401','Venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária, na condição de contribuinte substituto'),('6402','Venda de produção do estabelecimento de produto sujeito ao regime de substituição tributária, em operação entre contribuintes substitutos do mesmo produto'),('6403','Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituto'),('6404','Venda de mercadoria sujeita ao regime de substituição tributária, cujo imposto já tenha sido retido anteriormente'),('6408','Transferência de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('6409','Transferência de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária'),('6410','Devolução de compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária'),('6411','Devolução de compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária'),('6412','Devolução de bem do ativo imobilizado, em operação com mercadoria sujeita ao regime de substituição tributária'),('6413','Devolução de mercadoria destinada ao uso ou consumo, em operação com mercadoria sujeita ao regime de substituição tributária'),('6414','Remessa de produção do estabelecimento para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária'),('6415','Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, em operação com mercadoria sujeita ao regime de substituição tributária'),('6501','Remessa de produção do estabelecimento, com fim específico de exportação'),('6502','Remessa de mercadoria adquirida ou recebida de terceiros, com fim específico de exportação'),('6503','Devolução de mercadoria recebida com fim específico de exportação'),('6551','Venda de bem do ativo imobilizado'),('6552','Transferência de bem do ativo imobilizado'),('6553','Devolução de compra de bem para o ativo imobilizado'),('6554','Remessa de bem do ativo imobilizado para uso fora do estabelecimento'),('6555','Devolução de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento'),('6556','Devolução de compra de material de uso ou consumo'),('6557','Transferência de material de uso ou consumo'),('6603','Ressarcimento de ICMS retido por substituição tributária'),('6650','SAÍDAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES'),('6651','Venda de combustível ou lubrificante de produção do estabelecimento destinado à industrialização subseqüente'),('6652','Venda de combustível ou lubrificante de produção do estabelecimento destinado à comercialização'),('6653','Venda de combustível ou lubrificante de produção do estabelecimento destinado a consumidor ou usuário final'),('6654','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado à industrialização subseqüente'),('6655','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado à comercialização'),('6656','Venda de combustível ou lubrificante adquirido ou recebido de terceiros destinado a consumidor ou usuário final'),('6657','Remessa de combustível ou lubrificante adquirido ou recebido de terceiros para venda fora do estabelecimento'),('6658','Transferência de combustível ou lubrificante de produção do estabelecimento'),('6659','Transferência de combustível ou lubrificante adquirido ou recebido de terceiro'),('6660','Devolução de compra de combustível ou lubrificante adquirido para industrialização subseqüente'),('6661','Devolução de compra de combustível ou lubrificante adquirido para comercialização'),('6662','Devolução de compra de combustível ou lubrificante adquirido por consumidor ou usuário final'),('6663','Remessa para armazenagem de combustível ou lubrificante'),('6664','Retorno de combustível ou lubrificante recebido para armazenagem'),('6665','Retorno simbólico de combustível ou lubrificante recebido para armazenagem'),('6666','Remessa por conta e ordem de terceiros de combustível ou lubrificante recebido para armazenagem'),('6901','Remessa para industrialização por encomenda'),('6902','Retorno de mercadoria utilizada na industrialização por encomenda'),('6903','Retorno de mercadoria recebida para industrialização e não aplicada no referido processo'),('6904','Remessa para venda fora do estabelecimento'),('6905','Remessa para depósito fechado ou armazém geral'),('6906','Retorno de mercadoria depositada em depósito fechado ou armazém geral'),('6907','Retorno simbólico de mercadoria depositada em depósito fechado ou armazém geral'),('6908','Remessa de bem por conta de contrato de comodato'),('6909','Retorno de bem recebido por conta de contrato de comodato'),('6910','Remessa em bonificação, doação ou brinde'),('6911','Remessa de amostra grátis'),('6912','Remessa de mercadoria ou bem para demonstração'),('6913','Retorno de mercadoria ou bem recebido para demonstração'),('6914','Remessa de mercadoria ou bem para exposição ou feira'),('6915','Remessa de mercadoria ou bem para conserto ou reparo'),('6916','Retorno de mercadoria ou bem recebido para conserto ou reparo'),('6917','Remessa de mercadoria em consignação mercantil ou industrial'),('6918','Devolução de mercadoria recebida em consignação mercantil ou industrial'),('6919','Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consignação mercantil ou industrial'),('6920','Remessa de vasilhame ou sacaria'),('6921','Devolução de vasilhame ou sacaria'),('6922','Lançamento efetuado a título de simples faturamento decorrente de venda para entrega futura'),('6923','Remessa de mercadoria por conta e ordem de terceiros, em venda à ordem'),('6924','Remessa para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente'),('6925','Retorno de mercadoria recebida para industrialização por conta e ordem do adquirente da mercadoria, quando aquela não transitar pelo estabelecimento do adquirente'),('6929','Lançamento efetuado em decorrência de emissão de documento fiscal relativo a operação ou prestação também registrada em equipamento Emissor de Cupom Fiscal'),('6931','Lançamento efetuado em decorrência da responsabilidade de retenção do imposto por substituição tributária, atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na unidade da Federação onde iniciado o serviço'),('6932','Prestação de serviço de transporte iniciada em unidade da Federação diversa daquela onde inscrito o prestador'),('6933','Prestação de serviço tributado pelo ISSQN'),('6949','Outra saída de mercadoria ou prestação de serviço não especificado'),('7101','Venda de produção do estabelecimento'),('7102','Venda de mercadoria adquirida ou recebida de terceiros'),('7105','Venda de produção do estabelecimento, que não deva por ele transitar'),('7106','Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar'),('7127','Venda de produção do estabelecimento sob o regime de “drawback”'),('7201','Devolução de compra para industrialização'),('7202','Devolução de compra para comercialização'),('7205','Anulação de valor relativo à aquisição de serviço de comunicação'),('7206','Anulação de valor relativo a aquisição de serviço de transporte'),('7207','Anulação de valor relativo à compra de energia elétrica'),('7210','Devolução de compra para utilização na prestação de serviço'),('7211','Devolução de compras para industrialização sob o regime de drawback”'),('7251','Venda de energia elétrica para o exterior'),('7301','Prestação de serviço de comunicação para execução de serviço da mesma natureza'),('7358','Prestação de serviço de transporte'),('7501','Exportação de mercadorias recebidas com fim específico de exportação'),('7551','Venda de bem do ativo imobilizado'),('7553','Devolução de compra de bem para o ativo imobilizado'),('7556','Devolução de compra de material de uso ou consumo'),('7650','Saídas de Combustíveis, Derivados ou não de Petróleo e Lubrificantes'),('7651','Venda de combustível ou lubrificante de produção do estabelecimento'),('7654','Venda de combustível ou lubrificante adquirido ou recebido de terceiros'),('7930','Lançamento efetuado a título de devolução de bem cuja entrada tenha ocorrido sob amparo de regime especial aduaneiro de admissão temporária'),('7949','Outra saída de mercadoria ou prestação de serviço não especificado');
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
-- Table structure for table `cor`
--

DROP TABLE IF EXISTS `cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor` (
  `id_cor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor`
--

LOCK TABLES `cor` WRITE;
/*!40000 ALTER TABLE `cor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cor` ENABLE KEYS */;
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
-- Table structure for table `cst`
--

DROP TABLE IF EXISTS `cst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cst` (
  `id_cst` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_cst` varchar(3) DEFAULT NULL,
  `descricao_cst` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cst`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cst`
--

LOCK TABLES `cst` WRITE;
/*!40000 ALTER TABLE `cst` DISABLE KEYS */;
/*!40000 ALTER TABLE `cst` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (2,1,'dpto 1');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimensao`
--

DROP TABLE IF EXISTS `dimensao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensao` (
  `id_dimensao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dimensao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dimensao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimensao`
--

LOCK TABLES `dimensao` WRITE;
/*!40000 ALTER TABLE `dimensao` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimensao` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
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
  `id_atividade` int(11) unsigned NOT NULL,
  `cnpj_cpf` varchar(20) DEFAULT NULL COMMENT 'cnpj da empresa do sistema',
  `razao_social` varchar(100) DEFAULT NULL,
  `fantasia` varchar(100) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `numero_telefone` varchar(20) DEFAULT NULL,
  `tipo_telefone` char(1) DEFAULT NULL COMMENT '1 = fixo coml,2 = celular',
  `endereco` varchar(100) DEFAULT NULL,
  `numero_endereco` varchar(10) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `inscr_estadual` varchar(45) DEFAULT NULL,
  `inscr_municipal` varchar(45) DEFAULT NULL,
  `cep_empresa` varchar(10) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `class_empresa` int(1) DEFAULT NULL COMMENT '1 = Juridica, 2 = Fisica\n',
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '1' COMMENT '1 = ativo, 2 = inativado',
  PRIMARY KEY (`id_empresa`),
  KEY `fk_empresa_atividade_idx` (`id_atividade`),
  KEY `fk_cnpj` (`cnpj_cpf`),
  CONSTRAINT `fk_empresa_atividade` FOREIGN KEY (`id_atividade`) REFERENCES `atividades` (`id_atividades`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='empresa do sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`empresa_BEFORE_INSERT` BEFORE INSERT ON `empresa` FOR EACH ROW
BEGIN
set new.data_cadastro = now();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`empresa_BEFORE_UPDATE` BEFORE UPDATE ON `empresa` FOR EACH ROW
BEGIN
set new.data_alteracao = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `id_estoque` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `status` int(1) DEFAULT '1' COMMENT '1 = ativo, 2 = inativo',
  PRIMARY KEY (`id_estoque`),
  KEY `idx_produto` (`id_produto`),
  KEY `idx_local` (`id_local`),
  CONSTRAINT `fk_estoque_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`),
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`estoque_BEFORE_INSERT` BEFORE INSERT ON `estoque` FOR EACH ROW
BEGIN
set new.data_registro = now();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`estoque_BEFORE_UPDATE` BEFORE UPDATE ON `estoque` FOR EACH ROW
BEGIN
set new.data_alteracao = now();
END */;;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabela dos dados do cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fisica`
--

LOCK TABLES `fisica` WRITE;
/*!40000 ALTER TABLE `fisica` DISABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`fisica_BEFORE_INSERT` BEFORE INSERT ON `fisica` FOR EACH ROW
BEGIN
set new.cadastro_fisica = now();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`fisica_BEFORE_UPDATE` BEFORE UPDATE ON `fisica` FOR EACH ROW
BEGIN
set new.alterado_fisica = now();
END */;;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
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
  CONSTRAINT `fk_empresa_grupo` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`grupo_BEFORE_UPDATE` BEFORE UPDATE ON `grupo` FOR EACH ROW
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juridica`
--

LOCK TABLES `juridica` WRITE;
/*!40000 ALTER TABLE `juridica` DISABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`juridica_BEFORE_INSERT` BEFORE INSERT ON `juridica` FOR EACH ROW
BEGIN
set new.cadastro_juridica = now();

END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`juridica_BEFORE_UPDATE` BEFORE UPDATE ON `juridica` FOR EACH ROW
BEGIN
set new.alterado_juridica = now();

END */;;
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
  `status` int(1) DEFAULT '1' COMMENT '1 = ativo, 2 = inativado',
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
-- Table structure for table `lote_validade`
--

DROP TABLE IF EXISTS `lote_validade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lote_validade` (
  `id_lote` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) unsigned NOT NULL,
  `numero_lote` varchar(45) DEFAULT NULL,
  `data_lote` date DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  PRIMARY KEY (`id_lote`),
  KEY `idx_id_produto` (`id_produto`),
  CONSTRAINT `fk_lote_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote_validade`
--

LOCK TABLES `lote_validade` WRITE;
/*!40000 ALTER TABLE `lote_validade` DISABLE KEYS */;
/*!40000 ALTER TABLE `lote_validade` ENABLE KEYS */;
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
INSERT INTO `ncm` VALUES (1,'99910000','ENCOMENDAS POSTAIS'),(2,'99920000','AMOSTRAS'),(3,'99970000','MERCADORIAS DOADAS'),(4,'99997101','PEDRAS EM BRUTO DO CAPITULO 71 DA NCM'),(5,'99997102','PEDRAS LAPIDADAS/TRABALHADAS DO CAPITULO 71 DA NCM'),(6,'99997103','JOALHERIA DE OURO DO CAPITULO 71 DA NCM'),(7,'99997104','OUTROS ARTIGOS DO CAPITULO 71 DA NCM'),(8,'99980101','CONSUMO DE BORDO - COMBUSTIVEIS E LUBRIFP/EMBARCAC'),(9,'99980102','CONSUMO DE BORDO - COMBUSTIVEIS E LUBRIFP/AERONAVE'),(10,'99980201','CONSUMO DE BORDO - QQOUTRA MERCADORIA P/EMBARCACOE'),(11,'99980202','CONSUMO DE BORDO - QQOUTRA MERCADORIA P/AERONAVES'),(12,'99999900','QQOUTRA MERCADORIA SEM COBERTURA CAMBIAL'),(13,'01011100','CAVALOS REPRODUTORES,DE RACA PURA'),(14,'01011900','OUTROS CAVALOS,VIVOS'),(15,'01012000','ASININOS E MUARES VIVOS'),(16,'01021090','OUTROS BOVINOS REPRODUTORES DE RACA PURA'),(17,'01021010','BOVINOS REPRODUTORES DE RACA PURA,PRENHE OU CRIA A'),(18,'01029011','OUTROS BOVINOS PARA REPRODUCAO,PRENHE OU COM CRIA'),(19,'01029019','OUTROS BOVINOS PARA REPRODUCAO'),(20,'01029090','OUTROS BOVINOS VIVOS'),(21,'01031000','SUINOS REPRODUTORES DE RACA PURA'),(22,'01039100','OUTROS SUINOS VIVOS,DE PESO INFERIOR A 50KG'),(23,'01039200','OUTROS SUINOS VIVOS,DE PESO IGUAL OU SUPERIOR A 50'),(24,'01041011','OVINOS REPRODUTORES DE RACA PURA,PRENHE/COM CRIA A'),(25,'01041019','OUTROS OVINOS REPRODUTORES DE RACA PURA'),(26,'01041090','OUTROS OVINOS VIVOS'),(27,'01042010','CAPRINOS REPRODUTORES DE RACA PURA'),(28,'01042090','OUTROS CAPRINOS VIVOS'),(29,'01051110','GALOS E GALINHAS,P<=185G,DE LINHA PURA/HIBRIDA,P/R'),(30,'01051190','OUTROS GALOS E GALINHAS,VIVOS,PESO NAO SUPERIOR A '),(31,'01051200','PERUAS E PERUS,VIVOS,DE PESO NAO SUPERIOR A 185G'),(32,'01051900','PATOS,GANSOS E GALINHAS DANGOLA,VIVOS,DE PESO<=185'),(33,'01059200','OUTROS GALOS E GALINHAS,VIVOS,DE PESO<=2000G'),(34,'01059300','GALOS E GALINHAS,VIVOS,DE PESO SUPERIOR A 2000G'),(35,'01059900','PATOS,GANSOS,PERUS,PERUAS E PINTADAS,VIVOS,DE PESO'),(36,'01060090','OUTROS ANIMAIS VIVOS'),(37,'01060010','AVESTRUZES \"STRUTHIO CAMELUS\" PARA REPRODUCAO'),(38,'02011000','CARCACAS E MEIAS CARCACAS DE BOVINO,FRESCAS OU REF'),(39,'02012010','QUARTOS DIANTEIROS N/DESOSSADDE BOVINO,FRESCOS/REF'),(40,'02012020','QUARTOS TRASEIROS NAO DESOSSADDE BOVINO,FRESCOS/RE'),(41,'02012090','OUTRAS PECAS NAO DESOSSADAS DE BOVINO,FRESCAS OU R'),(42,'02013000','CARNES DESOSSADAS DE BOVINO,FRESCAS OU REFRIGERADA'),(43,'02021000','CARCACAS E MEIAS-CARCACAS DE BOVINO,CONGELADAS'),(44,'02022010','QUARTOS DIANTEIROS NAO DESOSSADOS DE BOVINO,CONGEL'),(45,'02022020','QUARTOS TRASEIROS NAO DESOSSADOS DE BOVINO,CONGELA'),(46,'02022090','OUTRAS PECAS NAO DESOSSADAS DE BOVINO,CONGELADAS'),(47,'02023000','CARNES DESOSSADAS DE BOVINO,CONGELADAS'),(48,'02031100','CARCACAS E MEIAS-CARCACAS DE SUINO,FRESCAS OU REFR'),(49,'02031200','PERNAS,PAS,ETCNAO DESOSSADDE SUINO,FRESCOS OU REFR'),(50,'02031900','OUTRAS CARNES DE SUINO,FRESCAS OU REFRIGERADAS'),(51,'02032100','CARCACAS E MEIAS-CARCACAS DE SUINO,CONGELADAS'),(52,'02032200','PERNAS,PAS E PEDACOS NAO DESOSSADOS DE SUINO,CONGE'),(53,'02032900','OUTRAS CARNES DE SUINO,CONGELADAS'),(54,'02041000','CARCACAS E MEIAS-CARCACAS DE CORDEIRO,FRESCAS OU R'),(55,'02042100','CARCACAS E MEIAS-CARCACAS DE OVINO,FRESCAS OU REFR'),(56,'02042200','OUTRAS PECAS NAO DESOSSADAS DE OVINO,FRESCAS OU RE'),(57,'02042300','CARNES DESOSSADAS DE OVINO,FRESCAS OU REFRIGERADAS'),(58,'02043000','CARCACAS E MEIAS-CARCACAS DE CORDEIRO,CONGELADAS'),(59,'02044100','CARCACAS E MEIAS-CARCACAS DE OVINO,CONGELADAS'),(60,'02044200','OUTRAS PECAS NAO DESOSSADAS DE OVINO,CONGELADAS'),(61,'02044300','CARNES DESOSSADAS DE OVINO,CONGELADAS'),(62,'02045000','CARNES DE CAPRINO,FRESCAS,REFRIGERADAS OU CONGELAD'),(63,'02050000','CARNES DE CAVALO,ASININO E MUAR,FRESCAS,REFRIGOU C'),(64,'02061000','MIUDEZAS COMESTIVEIS DE BOVINO,FRESCAS OU REFRIGER'),(65,'02062100','LINGUAS DE BOVINO,CONGELADAS'),(66,'02062200','FIGADOS DE BOVINO,CONGELADOS'),(67,'02062910','RABOS DE BOVINO,CONGELADOS'),(68,'02062990','OUTRAS MIUDEZAS COMESTIVEIS DE BOVINO,CONGELADAS'),(69,'02063000','MIUDEZAS COMESTIVEIS DE SUINO,FRESCAS OU REFRIGERA'),(70,'02064100','FIGADOS DE SUINO,CONGELADOS'),(71,'02064900','OUTRAS MIUDEZAS COMESTIVEIS DE SUINO,CONGELADAS'),(72,'02068000','MIUDEZAS COMESTIVEIS,DE OVINO,ETCFRESCAS/REFRIGERA'),(73,'02069000','MIUDEZAS COMESTIVEIS,DE OVINO,CAPRINO,ETCCONGELADA'),(74,'02071100','CARNES DE GALOS/GALINHAS,N/CORTPEDACOS,FRESCAS/REF'),(75,'02072400','CARNES DE PERUAS/PERUS,N/CORTPEDACOS,FRESCAS/REFRI'),(76,'02073200','CARNES DE PATOS,ETCN/CORTEM PEDACOS,FRESCAS/REFRIG'),(77,'02071200','CARNES DE GALOS/GALINHAS,N/CORTADAS EM PEDACOS,CON'),(78,'02072500','CARNES DE PERUAS/PERUS,N/CORTADAS EM PEDACOS,CONGE'),(79,'02073300','CARNES DE PATOS,GANSOS,ETCN/CORTEM PEDACOS,CONGELA'),(80,'02071300','PEDACOS E MIUDEZAS,DE GALOS/GALINHAS,FRESCOS/REFRI'),(81,'02072600','CARNES DE PERUAS/PERUS,EM PEDACOS,MIUDEZFRESCOS/RE'),(82,'02073400','FIGADOS GORDOS,DE PATOS/GANSOS/PINTADAS,FRESCOS/RE'),(83,'02073500','OUTSCARNES/MIUDEZAS,DE PATOS,GANSOS,ETCFRESCAS,REF'),(84,'02071400','PEDACOS E MIUDEZAS,COMESTDE GALOS/GALINHAS,CONGELA'),(85,'02072700','CARNES DE PERUAS/PERUS,EM PEDACOS E MIUDEZAS,CONGE'),(86,'02073600','OUTRAS CARNES,MIUDEZAS,DE PATOS,GANSOS,ETCCONGELAD'),(87,'02081000','CARNES/MIUDEZAS,DE COELHOS/LEBRES,FRESCAS/REFRIG/C'),(88,'02082000','COXAS DE RA,FRESCAS,REFRIGERADAS OU CONGELADAS'),(89,'02089000','CARNES E MIUDEZAS,DE OUTSANIMAIS,FRESCOS/REFRIG/CO'),(90,'02090011','TOUCINHO SEM PARTES MAGRAS,FRESCO/REFRIGERADO/CONG'),(91,'02090019','TOUCINHO SEM PARTES MAGRAS,SALGADO/SALMOURA/SECO/D'),(92,'02090021','GORDURA DE PORCO,FRESCA,REFRIGERADA OU CONGELADA'),(93,'02090029','GORDURA DE PORCO,N/FUNDIDA,SALGADA,EM SALMOURA,SEC'),(94,'02090090','GORDURA DE AVES,N/FUNDIDA,FRESCA,REFRIGERADA,CONGE'),(95,'02101100','PERNAS/PAS/PEDACOS,DE SUINO,N/DESOSSADOS,SALGADOS,'),(96,'02101200','BARRIGAS E PEITOS,ENTREMEADOS,DE SUINO,SALGADOS,ET'),(97,'02101900','OUTSCARNES DE SUINO,SALGADAS OU EM SALMOURA,SECAS,'),(98,'02102000','CARNES DE BOVINOS,SALGADAS/EM SALMOURA/SECAS/DEFUM'),(99,'02109000','CARNES E MIUDEZAS,DE OUTROS ANIMAIS,SALGADOS,ETC'),(100,'03011000','PEIXES ORNAMENTAIS,VIVOS'),(101,'03019110','TRUTAS (SALMO TRUTTA E ONCORHYNCHUS),PARA REPRODUC'),(102,'03019190','OUTRAS TRUTAS (SALMO TRUTTA E ONCORHYNCHUS),VIVAS'),(103,'03019210','ENGUIAS (ANGUILLA SPP) PARA REPRODUCAO'),(104,'03019290','OUTRAS ENGUIAS (ANGUILLA SPP) VIVAS'),(105,'03019310','CARPAS PARA REPRODUCAO'),(106,'03019390','OUTRAS CARPAS VIVAS'),(107,'03019910','OUTROS PEIXES PARA REPRODUCAO'),(108,'03019990','OUTROS PEIXES VIVOS'),(109,'03021100','TRUTAS FRESCAS,REFRIGEXCFILES,OUTSCARNES,FIGADOS,E'),(110,'03021200','SALMOES-DO-PACIFICO,ETCFRESCOS,REFRIGEXCFILES,ETC'),(111,'03021900','OUTROS SALMONIDEOS FRESCOS,REFRIGEXCFILES,ETC'),(112,'03022100','LINGUADOS-GIGANTES,FRESCOS,REFRIGEXCFILES,ETC'),(113,'03022200','SOLHAS OU PATRUCAS,FRESCAS,REFRIGEXCFILES,ETC'),(114,'03022300','LINGUADOS FRESCOS,REFRIGEXCFILES,OUTRAS CARNES,ETC'),(115,'03022900','OUTROS PEIXES CHATOS,FRESCOS,REFRIGEXCFILES,ETC'),(116,'03023100','ATUNS-BRANCOS OU GERMOES,FRESCOS/REFRIGEREXCFILES,'),(117,'03023200','ALBACORAS/ATUNS BARBATAMARELA,FRESCAS/REFRIGEXCFIL'),(118,'03023300','BONITOS-LISTRADOS,ETCFRESCOS,REFRIGEXCFILES,ETC'),(119,'03023900','OUTROS ATUNS FRESCOS,REFRIGEXCFILES,OUTSCARNES,ETC'),(120,'03024000','ARENQUES FRESCOS/REFRIGERADOS,EXCFILES,OUTSCARNES,'),(121,'03025000','BACALHAUS (GADUS) FRESCOS/REFRIGERADOS,EXCFILES,ET'),(122,'03026100','SARDINHAS,SARDINELAS,ETCFRESCAS,REFRIGEXCFILES,ETC'),(123,'03026200','HADDOCKS FRESCOS OU REFRIGEXCFILES,OUTRAS CARNES,E'),(124,'03026300','PEIXES-CARVAO FRESCOS,REFRIGEXCFILES,OUTSCARNES,ET'),(125,'03026400','CAVALAS,CAVALINHAS,ETCFRESCAS,REFRIGEXCFILES,ETC'),(126,'03026500','ESQUALOS FRESCOS,REFRIGEXCFILES,OUTRAS CARNES,ETC'),(127,'03026600','ENGUIAS FRESCAS,REFRIGEXCFILES,OUTRAS CARNES,ETC'),(128,'03026910','MERLUZAS FRESCAS,REFRIGEXCFILES,OUTRAS CARNES,ETC'),(129,'03026990','OUTROS PEIXES FRESCOS,REFRIGEXCFILES,OUTSCARNES,ET'),(130,'03027000','FIGADOS,OVAS E SEMEN,DE PEIXES,FRESCOS OU REFRIGER'),(131,'03031000','SALMOES-DO-PACIFICO,CONGELADOS,EXCFILES,ETC'),(132,'03032100','TRUTAS (SALMO TRUTTA,ETC) CONGELADAS,EXCFILES,ETC'),(133,'03032200','SALMOES-DO-ATLANTICO E DANUBIO,CONGELADOS,EXCFILES'),(134,'03032900','OUTROS SALMONIDEOS CONGELADOS,EXCFILES,OUTSCARNES,'),(135,'03033100','LINGUADOS-GIGANTES CONGELADOS,EXCFILESOUTSCARNES,E'),(136,'03033200','SOLHAS OU PATRUCAS,CONGELADAS,EXCFILES,OUTSCARNES,'),(137,'03033300','LINGUADOS CONGELADOS,EXCFILES,OUTSCARNES,FIGADOS,E'),(138,'03033900','OUTSPEIXES CHATOS,CONGELADOS,EXCFILES,OUTSCARNES,E'),(139,'03034100','ATUNS-BRANCOS OU GERMOES,CONGELADOS,EXCFILES,ETC'),(140,'03034200','ALBACORAS/ATUNS BARBATAMARELA,CONGELADAS,EXCFILES,'),(141,'03034300','BONITOS-LISTRADOS,ETCCONGELADOS,EXCFILES,ETC'),(142,'03034900','OUTSATUNS CONGELADOS,EXCFILES,OUTSCARNES,FIGADOS,E'),(143,'03035000','ARENQUES CONGELADOS,EXCFILES,OUTRAS CARNES,FIGADOS'),(144,'03036000','BACALHAUS (GADUS) CONGELADOS,EXCFILES,OUTSCARNES,E'),(145,'03037100','SARDINHAS,SARDINELAS,ETCCONGELADAS,EXCFILES,ETC'),(146,'03037200','HADDOCKS CONGELADOS,EXCFILES,OUTRAS CARNES,FIGADOS'),(147,'03037300','PEIXES-CARVAO CONGELADOS,EXCFILES,OUTRAS CARNES,ET'),(148,'03037400','CAVALAS,CAVALINHAS E SARDAS,CONGELADAS,EXCFILES,ET'),(149,'03037500','ESQUALOS CONGELADOS,EXCFILES,OUTRAS CARNES,FIGADOS'),(150,'03037600','ENGUIAS CONGELADAS,EXCFILES,OUTRAS CARNES,FIGADOS,'),(151,'03037700','PERCAS (ROBALOS E BAILAS) CONGELADAS,EXCFILES,ETC'),(152,'03037800','MERLUZAS E ABROTEAS,CONGELADAS,EXCFILES,ETC'),(153,'03037910','CORVINAS CONGELADAS,EXCFILES,OUTRAS CARNES,FIGADOS'),(154,'03037920','PESCADAS CONGELADAS,EXCFILES,OUTRAS CARNES,FIGADOS'),(155,'03037990','OUTROS PEIXES CONGELADOS,EXCFILES,OUTROS CARNES,ET'),(156,'03038000','FIGADOS,OVAS E SEMEN,DE PEIXES,CONGELADOS'),(157,'03041000','FILES E OUTRAS CARNES DE PEIXES,FRESCOS OU REFRIGE'),(158,'03042090','FILES DE OUTROS PEIXES,CONGELADOS'),(159,'03042010','FILES DE MERLUZAS,CONGELADOS'),(160,'03049000','OUTRAS CARNES DE PEIXES,CONGELADAS'),(161,'03051000','FARINHAS,POS E \"PELLETS\" DE PEIXES,P/ALIMENTACAO H'),(162,'03052000','FIGADOS,OVAS E SEMEN,DE PEIXES,SECOS,DEFUMADOS,ETC'),(163,'03053000','FILES DE PEIXES,SECOS,SALGADOS,EM SALMOURA,N/DEFUM'),(164,'03054100','SALMOES-DO-PACIFICO,DO ATLANTICO E DO DANUBIO,DEFU'),(165,'03054200','ARENQUES DEFUMADOS,MESMO EM FILES'),(166,'03054910','BACALHAUS (GADUS) DEFUMADOS,MESMO EM FILES'),(167,'03054990','OUTROS PEIXES DEFUMADOS,MESMO EM FILES'),(168,'03055100','BACALHAUS (GADUS) SECOS,MESMO SALGADOS MAS N/DEFUM'),(169,'03055910','BACALHAUS POLARES,LINGS,ZARBOS,ETCSECOS,NAO DEFUMA'),(170,'03055990','OUTROS PEIXES SECOS,MESMO SALGADOS MAS NAO DEFUMAD'),(171,'03056100','ARENQUES SALGADOS,NAO SECOS,NAO DEFUMADOS E EM SAL'),(172,'03056200','BACALHAUS (GADUS) SALGADOS,N/SECOS,N/DEFUMADOS,SAL'),(173,'03056300','ANCHOVAS SALGADAS,NAO SECAS,NAO DEFUMADAS E EM SAL'),(174,'03056900','OUTROS PEIXES SALGADOS,N/SECOS,N/DEFUMAD E EM SALM'),(175,'03061100','LAGOSTAS (PALINURUS,PANULIRUS E JASUS) CONGELADAS'),(176,'03061200','LAVAGANTES (\"HOMARDS\")(HOMARUS SPP) CONGELADOS'),(177,'03061300','CAMAROES CONGELADOS'),(178,'03061400','CARANGUEJOS CONGELADOS'),(179,'03061900','OUTSCRUSTACEOS CONGELINCLFARINHAS,ETCP/ALIMHUMANA'),(180,'03062100','LAGOSTAS (PALINURUS,PANULIRUS E JASUS) NAO CONGELA'),(181,'03062200','LAVAGANTES (\"HOMARDS\")(HOMARUS SPP) NAO CONGELADOS'),(182,'03062300','CAMAROES NAO CONGELADOS'),(183,'03062400','CARANGUEJOS NAO CONGELADOS'),(184,'03062900','OUTSCRUSTACEOS NAO CONGELINCLFARINHAS P/ALIMHUMANA'),(185,'03071000','OSTRAS VIVAS,FRESCAS,REFRIGERADAS,CONGELADAS,SECAS'),(186,'03072100','VIEIRAS,OUTSMARISCOS (PECTEN,ETC) VIVOS,FRESCOS,RE'),(187,'03072900','VIEIRAS,OUTSMARISCOS (PECTEN,ETC) CONGELADOS,SECOS'),(188,'03073100','MEXILHOES (MYTILUS,PERNA) VIVOS,FRESCOS,REFRIGERAO'),(189,'03073900','MEXILHOES (MYTILUS,PERNA) CONGELADOS,SECOS,SALGADO'),(190,'03074100','SIBAS,SEPIOLAS,POTAS E LULAS,VIVOS,FRESCOS,REFRIGE'),(191,'03074911','POTAS E LULAS (OMMASTREPHES,LOLIGO,ETC),CONGELADOS'),(192,'03074919','SIBAS (CHOCOS)(ETC) E SEPIOLAS,CONGELADOS'),(193,'03074920','SIBAS,SEPIOLAS,POTAS E LULAS,SECOS,SALGADOS,EM SAL'),(194,'03075100','POLVOS (OCTOPUS SPP) VIVOS,FRESCOS OU REFRIGERADOS'),(195,'03075910','POLVOS (OCTOPUS SPP) CONGELADOS'),(196,'03075920','POLVOS (OCTOPUS SPP) SECOS,SALGADOS OU EM SALMOURA'),(197,'03076000','CARACOIS,EXCOS DO MAR,VIVOS,FRESCOS,REFRIGERADOS,E'),(198,'03079100','OUTROS MOLUSCOS,INVERTEBRAQUATICVIVOS,FRESCOS,REFR'),(199,'03079900','OUTROS MOLUSCOS,INVERTEBRAQUATICCONGELADOS,SECOS,E'),(200,'04011010','LEITE UHT,CONTMATERIA GORDA<=1%,NAO CONCENTRADO,N/'),(201,'04011090','OUTSLEITES E CREMES,MATERGORDA<=1%,N/CONCENTRN/ADO'),(202,'04012010','LEITE UHT,1%<MATERIA GORDA<=6%,NAO CONCENTRADO,N/A'),(203,'04012090','OUTSLEITES E CREMES,1%<MATGORDA<=6%,N/CONCENTRN/AD'),(204,'04013010','LEITE CONTMATERIA GORDA>6%,NAO CONCENTRADO,N/ADOCI'),(205,'04013021','CREME DE LEITE,UHT,MATERIA GORDA>6%,NAO CONCENTRN/'),(206,'04013029','OUTROS CREMES DE LEITE,MATERGORDA>6%,N/CONCENTRN/A'),(207,'04021010','LEITE EM PO,MATGORDA<=1,5%,ARSENIO<5PPM,CONCENTRAD'),(208,'04021090','OUTSLEITES,CREMES,EM PO,MATGORDA<=1,5%,CONCENTRADO'),(209,'04022110','LEITE INTEGRAL,EM PO,MATERIA GORDA>15%,CONCENTRN/A'),(210,'04022120','LEITE PARCDESNATEM PO,MATGORDA>15%,CONCENTRN/ADOC'),(211,'04022130','CREME DE LEITE,EM PO,MATERIA GORDA>15%,CONCENTRN/A'),(212,'04022910','LEITE INTEGRAL,EM PO,ETCMATERIA GORDA>15%,ADOCICAD'),(213,'04022920','LEITE PARCIALMDESNATADO,EM PO,MATERIA GORDA>15%,AD'),(214,'04022930','CREME DE LEITE,EM PO,ETCMATERIA GORDA>15%,ADOCICAD'),(215,'04029100','OUTROS LEITES,CREMES DE LEITE,CONCENTRADOS,N/ADOCI'),(216,'04029900','OUTROS LEITES,CREMES DE LEITE,CONCENTRADOS,ADOCICA'),(217,'04031000','IOGURTE'),(218,'04039000','LEITELHO,LEITE,CREME DE LEITE,COALHADOS,FERMENTADO'),(219,'04041000','SORO DE LEITE,MODIFICADO OU NAO,MESMO CONCENTRADO,'),(220,'04049000','OUTROS PRODSCONSTITUIDOS DO LEITE,MESMO ADOCICADOS'),(221,'04051000','MANTEIGA'),(222,'04059010','OLEO BUTIRICO DE MANTEIGA (\"BUTTER OIL\")'),(223,'04052000','PASTAS DE ESPALHAR (BARRAR) DE PRODSPROVENDO LEITE'),(224,'04059090','OUTRAS MATERIAS GORDAS PROVENIENTES DO LEITE'),(225,'04061010','QUEIJO TIPO MUSSARELA,FRESCO (NAO CURADO)'),(226,'04061090','OUTSQUEIJOS FRESCOS (NAO CURADOS),INCLREQUEIJAO,ET'),(227,'04062000','QUEIJOS RALADOS OU EM PO,DE QUALQUER TIPO'),(228,'04063000','QUEIJOS FUNDIDOS,EXCETO RALADOS OU EM PO'),(229,'04064000','QUEIJOS DE PASTA MOFADA (AZUL)'),(230,'04069020','QUEIJOS CONT36%<=TEOR DE UMIDADE<46%,(MASSA SEMIDU'),(231,'04069010','QUEIJOS CONTTEOR DE UMIDADE<36%,EM PESO (MASSA DUR'),(232,'04069030','QUEIJOS CONT46%<=TEOR DE UMIDADE<55%,(MASSA MACIA)'),(233,'04069090','OUTROS QUEIJOS'),(234,'04070011','OVOS DE GALINHA,PARA INCUBACAO'),(235,'04070090','OUTROS OVOS DE AVES,COM CASCA,FRESCOS,CONSERVADCOZ'),(236,'04070019','OVOS DE OUTRAS AVES,PARA INCUBACAO'),(237,'04081100','GEMAS DE OVOS,SECAS'),(238,'04081900','GEMAS DE OVOS,FRESCAS,COZIDAS EM AGUA OU VAPOR,ETC'),(239,'04089100','OVOS DE AVES,SEM CASCA,SECOS'),(240,'04089900','OUTSOVOS DE AVES,SEM CASCA,FRESCOS,COZIDOS EM AGUA'),(241,'04090000','MEL NATURAL'),(242,'04100000','OUTROS PRODUTOS COMESTIVEIS DE ORIGEM ANIMAL'),(243,'05010000','CABELOS EM BRUTO E DESPERDICIOS DE CABELO'),(244,'05021011','CERDAS DE PORCO,LAVADAS,ALVEJADAS OU DESENGORDURAD'),(245,'05021019','OUTRAS CERDAS DE PORCO E SEUS DESPERDICIOS'),(246,'05021090','CERDAS DE JAVALI E SEUS DESPERDICIOS'),(247,'05029010','PELOS DE TEXUGO E OUTROS PELOS P/ESCOVAS,PINCEIS,E'),(248,'05029020','DESPERDICIOS DE PELOS'),(249,'05030000','CRINAS E SEUS DESPERDICIOS,MESMO EM MANTAS'),(250,'05040011','TRIPAS DE BOVINOS,FRESCAS,REFRIGCONGELSALGDEFUMADA'),(251,'05040012','TRIPAS DE OVINOS,FRESCAS,REFRIGCONGELSALGADDEFUMAD'),(252,'05040013','TRIPAS DE SUINOS,FRESCAS,REFRIGCONGELSALGADDEFUMAD'),(253,'05040090','BEXIGAS E ESTOMAGOS,DE ANIMAIS,EXCPEIXES,FRESCAS,E'),(254,'05040019','TRIPAS DE OUTROS ANIMAIS,EXCPEIXES,FRESCAS,REFRIGE'),(255,'05051000','PENAS PARA ENCHIMENTO OU ESTOFAMENTO,E PENUGEM'),(256,'05059000','PELES E OUTSPARTES DE AVES,COM SUAS PENAS,PENUGEM,'),(257,'05061000','OSSEINA E OSSOS ACIDULADOS'),(258,'05069000','OUTROS OSSOS E NUCLEOS CORNEOS,EM BRUTO,DESENGORDE'),(259,'05071000','MARFIM,SEUS POS E DESPERDICIOS'),(260,'05079000','CARAPACAS DE TARTARUGAS,CHIFRES,GALHADAS,CASCOS,ET'),(261,'05080000','CORAL,CONCHAS,CARAPACAS DE MOLUSCOS,ETCEM BRUTO,PR'),(262,'05090000','ESPONJAS NATURAIS DE ORIGEM ANIMAL'),(263,'05100090','OUTRAS SUBSTANCIAS DE ANIMAIS,P/PREPARPRODSFARMACE'),(264,'05100010','PANCREAS DE BOVINOS,P/PREPARPRODFARMACEUTFRESCAS,E'),(265,'05111000','SEMEN DE BOVINO'),(266,'05119110','OVAS DE PEIXES,FECUNDADAS PARA REPRODUCAO'),(267,'05119190','OUTROS PRODSDE PEIXES,ETCIMPROPRIOS P/ALIMENTHUMAN'),(268,'05119930','OVOS DE BICHO-DA-SEDA'),(269,'05119990','OUTROS PRODSDE ANIMAIS,IMPROPRIOS P/ALIMENTACAO HU'),(270,'05119910','EMBRIOES DE ANIMAIS'),(271,'05119920','SEMEN ANIMAL'),(272,'06011000','BULBOS,TUBERCULOS,RIZOMAS,ETCEM REPOUSO VEGETATIVO'),(273,'06012000','BULBOS,TUBERCULOS,ETCEM VEGETEM FLOR,MUDA DE CHICO'),(274,'06021000','ESTACAS NAO ENRAIZADAS E ENXERTOS'),(275,'06022000','ARVORES,ARBUSTOS E SILVADOS,DE FRUTOS COMESTIVEIS'),(276,'06023000','RODODENDROS E AZALEIAS,ENXERTADOS OU NAO'),(277,'06024000','ROSEIRAS,ENXERTADAS OU NAO'),(278,'06029010','MICELIOS DE COGUMELOS'),(279,'06029081','MUDAS DE CANA-DE-ACUCAR'),(280,'06029021','MUDAS DE ORQUIDEAS'),(281,'06029029','MUDAS DE OUTRAS PLANTAS ORNAMENTAIS'),(282,'06029082','MUDAS DE VIDEIRA'),(283,'06029083','MUDAS DE CAFE'),(284,'06029089','MUDAS DE OUTRAS PLANTAS'),(285,'06029090','OUTRAS PLANTAS VIVAS'),(286,'06031000','FLORES E SEUS BOTOES,FRESCOS,CORTADOS P/BUQUES,ETC'),(287,'06039000','FLORES E SEUS BOTOES,SECOS,ETCCORTADOS P/BUQUES,ET'),(288,'06041000','MUSGOS E LINQUENS,P/BUQUES OU ORNAMENTACAO'),(289,'06049100','FOLHAGEM,FOLHAS,RAMOS DE PLANTAS,FRESCOS,P/BUQUES,'),(290,'06049900','FOLHAGEM,FOLHAS,RAMOS DE PLANTAS,SECOS,ETCP/BUQUES'),(291,'07011000','BATATAS PARA SEMEADURA (BATATA SEMENTE)'),(292,'07019000','OUTRAS BATATAS FRESCAS OU REFRIGERADAS'),(293,'07020000','TOMATES,FRESCOS OU REFRIGERADOS'),(294,'07031011','CEBOLAS PARA SEMEADURA'),(295,'07031019','OUTRAS CEBOLAS FRESCAS OU REFRIGERADAS'),(296,'07031021','ECHALOTES PARA SEMEADURA'),(297,'07031029','OUTRAS \"ECHALOTES\" FRESCAS OU REFRIGERADAS'),(298,'07032010','ALHO PARA SEMEADURA'),(299,'07032090','OUTROS ALHOS FRESCOS OU REFRIGERADOS'),(300,'07039010','ALHO-PORRO E OUTSPRODSHORTICOLAS ALIACEOS,P/SEMEAD'),(301,'07039090','OUTSALHOS-PORROS,PRODSHORTICOLAS ALIACEOS,FRESCOS,'),(302,'07041000','COUVE-FLOR E BROCOLOS,FRESCOS OU REFRIGERADOS'),(303,'07042000','COUVE-DE-BRUXELAS,FRESCA OU REFRIGERADA'),(304,'07049000','COUVES,REPOLHO,ETCDO GENERO \"BRASSICA\",FRESCOS,REF'),(305,'07051100','ALFACES REPOLHUDAS,FRESCAS OU REFRIGERADAS'),(306,'07051900','OUTRAS ALFACES FRESCAS OU REFRIGERADAS'),(307,'07052100','CHICORIAS \"WITLOOF\",FRESCAS OU REFRIGERADAS'),(308,'07052900','OUTRAS CHICORIAS,FRESCAS OU REFRIGERADAS'),(309,'07061000','CENOURAS E NABOS,FRESCOS OU REFRIGERADOS'),(310,'07069000','BETERRABAS,RABANETES E OUTRAS RAIZES,FRESCAS,REFRI'),(311,'07070000','PEPINOS E PEPININHOS \"CORNICHONS\",FRESCOS,REFRIGER'),(312,'07081000','ERVILHAS (PISUM SATIVUM),FRESCAS OU REFRIGERADAS'),(313,'07082000','FEIJOES (VIGNA,PHASEOLUS SPP) FRESCOS OU REFRIGERA'),(314,'07089000','OUTROS LEGUMES DE VAGEM,FRESCOS OU REFRIGERADOS'),(315,'07091000','ALCACHOFRAS FRESCAS OU REFRIGERADAS'),(316,'07092000','ASPARGOS FRESCOS OU REFRIGERADOS'),(317,'07093000','BERINJELAS FRESCAS OU REFRIGERADAS'),(318,'07094000','AIPO FRESCO OU REFRIGERADO,EXCAIPO-RABANO'),(319,'07095100','COGUMELOS FRESCOS OU REFRIGERADOS'),(320,'07095200','TRUFAS FRESCAS OU REFRIGERADAS'),(321,'07096000','PIMENTOES E PIMENTAS,FRESCOS OU REFRIGERADOS'),(322,'07097000','ESPINAFRES FRESCOS OU REFRIGERADOS'),(323,'07099000','OUTROS PRODUTOS HORTICOLAS,FRESCOS OU REFRIGERADOS'),(324,'07101000','BATATAS CONGELADAS,NAO COZIDAS OU COZIDAS EM AGUA/'),(325,'07102100','ERVILHAS CONGELADAS,NAO COZIDAS/COZIDAS EM AGUA/VA'),(326,'07102200','FEIJOES CONGELADOS,NAO COZIDOS OU COZIDOS EM AGUA/'),(327,'07102900','OUTROS LEGUMES DE VAGEM,CONGN/COZIDOS/COZIDOS AGUA'),(328,'07103000','ESPINAFRES CONGELADN/COZIDOS OU COZIDOS EM AGUA/VA'),(329,'07104000','MILHO DOCE CONGELADO,N/COZIDO OU COZIDO EM AGUA/VA'),(330,'07108000','OUTROS PRODSHORTICOLAS CONGN/COZIDOS/COZIDOS AGUA/'),(331,'07109000','MISTURAS DE PRODSHORTSCONGN/COZIDOS/COZIDOS AGUA/E'),(332,'07111000','CEBOLAS CONSERVADAS EM AGUA SALGADA,SULFURADA,ETC'),(333,'07112010','AZEITONAS CONSERVCOM AGUA SALGADA'),(334,'07112020','AZEITONAS CONSERVCOM AGUA SULFURADA/ADICDE OUTS SU'),(335,'07112090','OUTRAS AZEITONAS CONSERVADAS TRANSITORIAMENTE'),(336,'07113010','ALCAPARRAS CONSERVADAS EM AGUA SALGADA,SULFURADA,E'),(337,'07113090','OUTRAS ALCAPARRAS CONSERVADAS TRANSITORIAMENTE'),(338,'07114000','PEPINOS E PEPININHOS CONSERVADOS EM AGUA SALGADA,E'),(339,'07119000','OUTROS PRODSHORTS/MISTURAS,CONSERVEM AGUA SALGADA,'),(340,'07129090','OUTSPRODSHORTS/MISTURAS,SECOS,INCLPEDACOS,FATIAS,E'),(341,'07122000','CEBOLAS SECAS,INCLPEDACOS,FATIAS,PO,ETCS/QQOUTPREP'),(342,'07123000','COGUMELOS E TRUFAS,SECOS,INCLPEDACOS,ETCS/QQOUTPRE'),(343,'07129010','ALHO COMUM EM PO SEM QUALQUER OUTRO PREPARO'),(344,'07131010','ERVILHAS (PISUM SATIVUM),SECAS,EM GRAOS,PARA SEMEA'),(345,'07131090','OUTRAS ERVILHAS (PISUM SATIVUM),SECAS,EM GRAOS'),(346,'07132010','GRAO-DE-BICO,SECO,PARA SEMEADURA'),(347,'07132090','OUTROS GRAOS-DE-BICO,SECOS'),(348,'07133110','FEIJOES (VIGNA MUNGO OU RADIATA) SECOS,PARA SEMEAD'),(349,'07133190','OUTROS FEIJOES (VIGNA MUNGO OU RADIATA),SECOS,EM G'),(350,'07133210','FEIJAO ADZUKI,SECO,PARA SEMEADURA'),(351,'07133290','OUTROS FEIJOES ADZUKI,SECOS,EM GRAOS'),(352,'07133311','FEIJAO COMUM,PRETO,SECO,PARA SEMEADURA'),(353,'07133319','OUTROS FEIJOES COMUNS,PRETOS,SECOS,EM GRAOS'),(354,'07133321','FEIJAO COMUM,BRANCO,SECO,PARA SEMEADURA'),(355,'07133329','OUTROS FEIJOES COMUNS,BRANCOS,SECOS,EM GRAOS'),(356,'07133391','OUTROS FEIJOES COMUNS,SECOS,PARA SEMEADURA'),(357,'07133399','OUTROS FEIJOES COMUNS,SECOS,EM GRAOS'),(358,'07133910','OUTROS FEIJOES (VIGNA OU PHASEOLUS),SECOS,P/SEMEAD'),(359,'07133990','OUTROS FEIJOES (VIGNA OU PHASEOLUS),SECOS,EM GRAOS'),(360,'07134010','LENTILHAS SECAS,PARA SEMEADURA'),(361,'07134090','OUTRAS LENTILHAS SECAS,EM GRAOS'),(362,'07135010','FAVAS E FAVA FORRAGEIRA,SECAS,PARA SEMEADURA'),(363,'07135090','OUTRAS FAVAS E FAVA FORRAGEIRA,SECAS,EM GRAOS'),(364,'07139010','OUTROS LEGUMES DE VAGEM,SECOS,EM GRAOS,PARA SEMEAD'),(365,'07139090','OUTROS LEGUMES DE VAGEM,SECOS,EM GRAOS'),(366,'07141000','RAIZES DE MANDIOCA,FRESCAS,REFRIGERADAS,CONGELOU S'),(367,'07142000','BATATAS-DOCES,FRESCAS,REFRIGERADAS,CONGELADAS OU S'),(368,'07149000','OUTSRAIZES,TUBERCULOS,FRESCOS,ETCE MEDULA DE SAGUE'),(369,'08011190','OUTROS COCOS SECOS'),(370,'08011110','COCOS SECOS,SEM CASCA,MESMO RALADOS'),(371,'08011900','COCOS FRESCOS'),(372,'08012200','CASTANHA-DO-PARA,FRESCA OU SECA,SEM CASCA'),(373,'08012100','CASTANHA-DO-PARA,FRESCA OU SECA,COM CASCA'),(374,'08013100','CASTANHA DE CAJU,FRESCA OU SECA,COM CASCA'),(375,'08013200','CASTANHA DE CAJU,FRESCA OU SECA,SEM CASCA'),(376,'08021100','AMENDOAS FRESCAS OU SECAS,COM CASCA'),(377,'08021200','AMENDOAS FRESCAS OU SECAS,SEM CASCA'),(378,'08022100','AVELAS (CORYLUS SPP) FRESCAS OU SECAS,COM CASCA'),(379,'08022200','AVELAS (CORYLUS SPP) FRESCAS OU SECAS,SEM CASCA'),(380,'08023100','NOZES FRESCAS OU SECAS,COM CASCA'),(381,'08023200','NOZES FRESCAS OU SECAS,SEM CASCA'),(382,'08024000','CASTANHAS (CASTANEA SPP) FRESCAS OU SECAS'),(383,'08025000','PISTACIOS FRESCOS OU SECOS'),(384,'08029000','OUTRAS FRUTAS DE CASCA RIJA,FRESCAS OU SECAS'),(385,'08030000','BANANAS FRESCAS OU SECAS'),(386,'08041010','TAMARAS FRESCAS'),(387,'08041020','TAMARAS SECAS'),(388,'08042010','FIGOS FRESCOS'),(389,'08042020','FIGOS SECOS'),(390,'08043000','ABACAXIS FRESCOS OU SECOS'),(391,'08044000','ABACATES FRESCOS OU SECOS'),(392,'08045000','GOIABAS,MANGAS E MANGOSTOES,FRESCOS OU SECOS'),(393,'08051000','LARANJAS FRESCAS OU SECAS'),(394,'08052000','TANGERINAS,MANDARINAS,SATSUMAS,ETCFRESCOS OU SECOS'),(395,'08053000','LIMOES E LIMAS,FRESCOS OU SECOS'),(396,'08054000','POMELOS (\"GRAPEFRUIT\") FRESCOS OU SECOS'),(397,'08059000','OUTROS CITRICOS FRESCOS OU SECOS'),(398,'08061000','UVAS FRESCAS'),(399,'08062000','UVAS SECAS'),(400,'08071900','MELOES FRESCOS'),(401,'08071100','MELANCIAS FRESCAS'),(402,'08072000','MAMOES (PAPAIAS) FRESCOS'),(403,'08081000','MACAS FRESCAS'),(404,'08082010','PERAS FRESCAS'),(405,'08082020','MARMELOS FRESCOS'),(406,'08091000','DAMASCOS FRESCOS'),(407,'08092000','CEREJAS FRESCAS'),(408,'08093010','PESSEGOS FRESCOS'),(409,'08093020','BRUGNONS E NECTARINAS,FRESCOS'),(410,'08094000','AMEIXAS E ABRUNHOS,FRESCOS'),(411,'08101000','MORANGOS FRESCOS'),(412,'08102000','FRAMBOESAS,AMORAS E AMORAS-FRAMBOESAS,FRESCAS'),(413,'08103000','GROSELHAS FRESCAS,INCLUSIVE O \"CASSIS\"'),(414,'08104000','AIRELAS,MIRTILOS E OUTSFRUTAS GENERO VACCINIUM,FRE'),(415,'08109000','OUTRAS FRUTAS FRESCAS'),(416,'08105000','QUIVIS \"KIWIS\",FRESCOS'),(417,'08111000','MORANGOS CONGELADOS,NAO COZIDOS/COZIDOS EM AGUA/VA'),(418,'08112000','FRAMBOESAS,AMORAS,GROSELHAS,CONGELADAS,COZIDAS OU '),(419,'08119000','OUTRAS FRUTAS CONGELADN/COZIDAS,COZIDAS EM AGUA/VA'),(420,'08121000','CEREJAS CONSERVADAS EM AGUA SALGADA,SULFURADA,ETC'),(421,'08122000','MORANGOS CONSERVADOS EM AGUA SALGADA,SULFURADA,ETC'),(422,'08129000','OUTRAS FRUTAS CONSERVADEM AGUA SALGADA,SULFURADA,E'),(423,'08131000','DAMASCOS SECOS'),(424,'08132010','AMEIXAS SECAS,COM CAROCO'),(425,'08132020','AMEIXAS SECAS,SEM CAROCO'),(426,'08133000','MACAS SECAS'),(427,'08134010','PERAS SECAS'),(428,'08134090','OUTRAS FRUTAS SECAS'),(429,'08135000','MISTURAS DE FRUTAS SECAS OU DE FRUTAS DE CASCA RIJ'),(430,'08140000','CASCAS DE CITRICOS,MELOES,MELANCIAS,FRESCAS,SECAS,'),(431,'09011110','CAFE NAO TORRADO,NAO DESCAFEINADO,EM GRAO'),(432,'09011190','CAFE NAO TORRADO,NAO DESCAFEINADO,EXCETO EM GRAO'),(433,'09011200','CAFE NAO TORRADO,DESCAFEINADO'),(434,'09012100','CAFE TORRADO,NAO DESCAFEINADO'),(435,'09012200','CAFE TORRADO,DESCAFEINADO'),(436,'09019000','CASCAS,PELICULAS DE CAFE E SUCEDANEOS DO CAFE'),(437,'09021000','CHA VERDE (NAO FERMENTADO),EM EMBALAGENS IMEDIATAS'),(438,'09022000','CHA VERDE (NAO FERMENTADO),APRESENTADO EM QQOUTFOR'),(439,'09023000','CHA PRETO (FERMENTADO/PARCIALM),EMBALAGIMEDIATAS<='),(440,'09024000','CHA PRETO (FERMENTADO/PARCIALM) APRESENTQQOUTFORMA'),(441,'09030010','MATE SIMPLESMENTE CANCHEADO'),(442,'09030090','OUTROS TIPOS DE MATE'),(443,'09041100','PIMENTA \"PIPER\",SECA'),(444,'09041200','PIMENTA \"PIPER\",TRITURADA OU EM PO'),(445,'09042000','PIMENTOES E PIMENTAS \"CAPSICUM\"/\"PIMENTA\",SECOS,PO'),(446,'09050000','BAUNILHA'),(447,'09061000','CANELA E FLORES DE CANELEIRA,NAO TRITURADAS NEM EM'),(448,'09062000','CANELA E FLORES DE CANELEIRA,TRITURADAS OU EM PO'),(449,'09070000','CRAVO-DA-INDIA (FRUTOS,FLORES E PEDUNCULOS)'),(450,'09081000','NOZ-MOSCADA'),(451,'09082000','MACIS'),(452,'09083000','AMOMOS E CARDAMOMOS'),(453,'09091010','SEMENTES DE ANIS (ANIS VERDE)'),(454,'09091020','SEMENTES DE BADIANA (ANIS ESTRELADO)'),(455,'09092000','SEMENTES DE COENTRO'),(456,'09093000','SEMENTES DE COMINHO'),(457,'09094000','SEMENTES DE ALCARAVIA'),(458,'09095000','SEMENTES DE FUNCHO E BAGAS DE ZIMBRO'),(459,'09101000','GENGIBRE'),(460,'09102000','ACAFRAO'),(461,'09103000','ACAFRAO-DA-TERRA (CURCUMA)'),(462,'09104000','TOMILHO E LOURO'),(463,'09105000','CARIL'),(464,'09109100','MISTURAS DE ESPECIARIAS'),(465,'09109900','OUTRAS ESPECIARIAS'),(466,'10011010','TRIGO DURO PARA SEMEADURA'),(467,'10011090','TRIGO DURO,EXCETO PARA SEMEADURA'),(468,'10019010','TRIGO (EXCETO TRIGO DURO) PARA SEMEADURA'),(469,'10020090','CENTEIO,EXCETO PARA SEMEADURA'),(470,'10020010','CENTEIO PARA SEMEADURA'),(471,'10030010','CEVADA PARA SEMEADURA'),(472,'10030099','OUTRAS ESPECIES DE CEVADA,EXCETO EM GRAO'),(473,'10030091','CEVADA CERVEJEIRA'),(474,'10030098','CEVADA EM GRAO,EXCETO CERVEJEIRA OU PARA SEMEADURA'),(475,'10040010','AVEIA PARA SEMEADURA'),(476,'10040090','AVEIA,EXCETO PARA SEMEADURA'),(477,'10051000','MILHO PARA SEMEADURA'),(478,'10059090','MILHO,EXCETO EM GRAO'),(479,'10059010','MILHO EM GRAO,EXCETO PARA SEMEADURA'),(480,'10061010','ARROZ (\"PADDY\") COM CASCA,PARA SEMEADURA'),(481,'10061092','ARROZ (\"PADDY\") COM CASCA,NAO PARBOILIZADO (N/ESTU'),(482,'10061091','ARROZ (\"PADDY\") COM CASCA,PARBOILIZADO (ESTUFADO)'),(483,'10062010','ARROZ (\"CARGO\" OU CASTANHO),DESCASCADO,PARBOILIZAD'),(484,'10062020','ARROZ (\"CARGO\" OU CASTANHO),DESCASCADO,NAO PARBOIL'),(485,'10063011','ARROZ SEMIBRANQUEADO,ETCPARBOILIZADO,POLIDO OU BRU'),(486,'10063019','OUTROS TIPOS DE ARROZ SEMIBRANQUEADO,ETCPARBOILIZA'),(487,'10063021','ARROZ SEMIBRANQUEADO,ETCN/PARBOILIZADO,POLIDO,BRUN'),(488,'10063029','OUTROS TIPOS DE ARROZ SEMIBRANQUEADO,ETCN/PARBOILI'),(489,'10064000','ARROZ QUEBRADO (TRINCA DE ARROZ)'),(490,'10070010','SORGO EM GRAO PARA SEMEADURA'),(491,'10070090','SORGO EM GRAO,EXCETO PARA SEMEADURA'),(492,'10081010','TRIGO MOURISCO PARA SEMEADURA'),(493,'10081090','TRIGO MOURISCO,EXCETO PARA SEMEADURA'),(494,'10082010','PAINCO PARA SEMEADURA'),(495,'10082090','PAINCO,EXCETO PARA SEMEADURA'),(496,'10083010','ALPISTE PARA SEMEADURA'),(497,'10083090','ALPISTE,EXCETO PARA SEMEADURA'),(498,'10089010','OUTROS CEREAIS PARA SEMEADURA'),(499,'10089090','OUTROS CEREAIS,EXCETO PARA SEMEADURA'),(500,'11010010','FARINHA DE TRIGO'),(501,'11010020','FARINHA DE MISTURA DE TRIGO COM CENTEIO'),(502,'11021000','FARINHA DE CENTEIO'),(503,'11022000','FARINHA DE MILHO'),(504,'11023000','FARINHA DE ARROZ'),(505,'11029000','FARINHA DE OUTROS CEREAIS'),(506,'11031100','GRUMOS E SEMOLAS,DE TRIGO'),(507,'11031200','GRUMOS E SEMOLAS,DE AVEIA'),(508,'11031300','GRUMOS E SEMOLAS,DE MILHO'),(509,'11031400','GRUMOS E SEMOLAS,DE ARROZ'),(510,'11031900','GRUMOS E SEMOLAS,DE OUTROS CEREAIS'),(511,'11032100','PELLETS DE TRIGO'),(512,'11032900','PELLETS DE OUTROS CEREAIS'),(513,'11041100','GRAOS DE CEVADA,ESMAGADOS OU EM FLOCOS'),(514,'11041200','GRAOS DE AVEIA,ESMAGADOS OU EM FLOCOS'),(515,'11041900','GRAOS DE OUTROS CEREAIS,ESMAGADOS OU EM FLOCOS'),(516,'11042100','GRAOS DE CEVADA,DESCASCADOS,EM PEROLAS,CORTADOS,ET'),(517,'11042200','GRAOS DE AVEIA,DESCASCADOS,EM PEROLAS,CORTADOS,ETC'),(518,'11042300','GRAOS DE MILHO,DESCASCADOS,EM PEROLAS,CORTADOS,ETC'),(519,'10019090','TRIGO (EXCTRIGO DURO OU P/SEMEADURA),E TRIGO C/CEN'),(520,'11042900','GRAOS DE OUTROS CEREAIS,DESCASCADOS,EM PEROLAS,ETC'),(521,'11043000','GERMES DE CEREAIS,INTEIROS,ESMAGADOS,EM FLOCOS,MOI'),(522,'11051000','FARINHA,SEMOLA E PO,DE BATATA'),(523,'11052000','FLOCOS,GRANULOS E \"PELLETS\",DE BATATA'),(524,'11061000','FARINHAS,SEMOLAS E POS,DOS LEGUMES DE VAGEM,SECOS'),(525,'11062000','FARINHAS,SEMOLAS E POS,DE SAGU,DE RAIZES E TUBERCU'),(526,'11063000','FARINHAS,SEMOLAS E POS,DE FRUTAS,CASCAS DE CITRICO'),(527,'11071010','MALTE NAO TORRADO,INTEIRO OU PARTIDO'),(528,'11071020','MALTE NAO TORRADO,MOIDO OU EM FARINHA'),(529,'11072010','MALTE TORRADO,INTEIRO OU PARTIDO'),(530,'11072020','MALTE TORRADO,MOIDO OU EM FARINHA'),(531,'11081100','AMIDO DE TRIGO'),(532,'11081200','AMIDO DE MILHO'),(533,'11081300','FECULA DE BATATA'),(534,'11081400','FECULA DE MANDIOCA'),(535,'11081900','OUTROS AMIDOS E FECULAS'),(536,'11082000','INULINA'),(537,'11090000','GLUTEN DE TRIGO,MESMO SECO'),(538,'12010010','SOJA PARA SEMEADURA'),(539,'12010090','OUTROS GRAOS DE SOJA,MESMO TRITURADOS'),(540,'12021000','AMENDOINS COM CASCA,NAO TORRADOS,NEM COZIDOS'),(541,'12022010','AMENDOINS DESCASCADOS,PARA SEMEADURA'),(542,'12022090','OUTROS GRAOS DE AMENDOINS,DESCASCADN/TORRADOS,N/CO'),(543,'12030000','COPRA EM GRAOS'),(544,'12040010','SEMENTES DE LINHO (LINHACA) PARA SEMEADURA'),(545,'12040090','OUTRAS SEMENTES DE LINHO (LINHACA),MESMO TRITURADA'),(546,'12050010','SEMENTES DE NABO SILVESTRE OU DE COLZA,PARA SEMEAD'),(547,'12050090','OUTSSEMENTES DE NABO SILVESTRE,DE COLZA,MESMO TRIT'),(548,'12060010','SEMENTES DE GIRASSOL,PARA SEMEADURA'),(549,'12060090','OUTRAS SEMENTES DE GIRASSOL,MESMO TRITURADAS'),(550,'12071010','NOZES E \"PALMISTE\",PARA SEMEADURA'),(551,'12071090','OUTRAS NOZES E \"PALMISTE\",MESMO TRITURADOS'),(552,'12072010','SEMENTES DE ALGODAO,PARA SEMEADURA'),(553,'12072090','OUTRAS SEMENTES DE ALGODAO,MESMO TRITURADAS'),(554,'12073010','SEMENTES DE RICINO,PARA SEMEADURA'),(555,'12073090','OUTRAS SEMENTES DE RICINO,MESMO TRITURADAS'),(556,'12074010','SEMENTES DE GERGELIM,PARA SEMEADURA'),(557,'12074090','OUTRAS SEMENTES DE GERGELIM,MESMO TRITURADAS'),(558,'12075010','SEMENTES DE MOSTARDA,PARA SEMEADURA'),(559,'12075090','OUTRAS SEMENTES DE MOSTARDA,MESMO TRITURADAS'),(560,'12076010','SEMENTES DE CARTAMO,PARA SEMEADURA'),(561,'12076090','OUTRAS SEMENTES DE CARTAMO,MESMO TRITURADAS'),(562,'12079110','SEMENTES DE DORMIDEIRA OU PAPOULA,PARA SEMEADURA'),(563,'12079190','OUTRAS SEMENTES DE DORMIDEIRA OU PAPOULA,MESMO TRI'),(564,'12079210','SEMENTES DE \"KARITE\",PARA SEMEADURA'),(565,'12079290','OUTRAS SEMENTES DE \"KARITE\",MESMO TRITURADAS'),(566,'12079910','OUTRAS SEMENTES E FRUTOS OLEAGINOSOS,PARA SEMEADUR'),(567,'12079990','OUTRAS SEMENTES E FRUTOS OLEAGINOSOS,MESMO TRITURA'),(568,'12081000','FARINHA DE SOJA'),(569,'12089000','FARINHAS DE OUTSSEMENTES,FRUTOS OLEAGEXCDE MOSTARD'),(570,'12091100','SEMENTES DE BETERRABA SACARINA,PARA SEMEADURA'),(571,'12091900','SEMENTES DE OUTRAS BETERRABAS,PARA SEMEADURA'),(572,'12092100','SEMENTES DE ALFAFA (LUZERNA),PARA SEMEADURA'),(573,'12092200','SEMENTES DE TREVO (TRIFOLIUM SPP),PARA SEMEADURA'),(574,'12092300','SEMENTES DE FESTUCA,PARA SEMEADURA'),(575,'12092400','SEMENTES DE PASTO DOS PRADOS DO KENTUCKY,PARA SEME'),(576,'12092500','SEMENTES DE AZEVEM,PARA SEMEADURA'),(577,'12092600','SEMENTES DE FLEOLO DOS PRADOS,PARA SEMEADURA'),(578,'12092900','OUTRAS SEMENTES FORRAGEIRAS,PARA SEMEADURA'),(579,'12093000','SEMENTES DE PLANTAS HERBACEAS,CULTP/FLORES,P/SEMEA'),(580,'12099100','SEMENTES DE PRODUTOS HORTICOLAS,PARA SEMEADURA'),(581,'12099900','OUTRAS SEMENTES,FRUTOS E ESPOROS,PARA SEMEADURA'),(582,'12101000','CONES DE LUPULO,FRESCOS,SECOS,N/TRITURADOS,N/MOIDO'),(583,'12102010','CONES DE LUPULO,TRITURADOS OU MOIDOS,OU EM \"PELLET'),(584,'12102020','LUPULINA'),(585,'12111000','RAIZES DE ALCACUZ,FRESCAS,SECAS,INCLCORTADAS,TRITU'),(586,'12112000','RAIZES DE \"GINSENG\",FRESCAS,SECAS,INCLCORTADTRITUR'),(587,'12119010','OREGANO FRESCO OU SECO,P/PERFUMARIA,MEDICINA,ETC'),(588,'12119090','OUTRAS PLANTAS E PARTES,P/PERFUMARIA,MEDICINA E SE'),(589,'12119020','COCA (FOLHAS) FRESCA OU SECA,P/PERFUMARIA,MEDICINA'),(590,'12119030','PALHA DE PAPOULA,FRESCA/SECA,P/PERFUMARIA,MEDICINA'),(591,'12121000','ALFARROBA INCLSEMENTES,FRESCAS/REFRIG/CONG/SECAS/E'),(592,'12122000','ALGAS FRESCAS,REFRIGERADAS,CONGELADAS,SECAS OU EM '),(593,'12123000','CAROCOS E AMENDOAS DE DAMASCOS,PESSEGOS E AMEIXAS'),(594,'12129100','BETERRABA SACARINA,FRESCA,REFRIGERCONGELADA,SECA,E'),(595,'12129200','CANA-DE-ACUCAR FRESCA,REFRIGERADA,CONGELADA,SECA,E'),(596,'12129900','OUTROS PRODSVEGETAIS UTILPRINCIPALMNA ALIMENTHUMAN'),(597,'12130000','PALHAS,CASCAS DE CEREAIS,EM BRUTO,MOIDAS,PRENSADAS'),(598,'12141000','FARINHAS E \"PELLETS\",DE ALFAFA (LUZERNA)'),(599,'12149000','RUTABAGAS,RAIZES FORRAGEIRAS E OUTROS PRODSFORRAGE'),(600,'13011000','GOMA-LACA'),(601,'13012000','GOMA-ARABICA'),(602,'13019000','OUTSGOMAS,RESINAS,GOMAS-RESINAS,OLEORRESINAS,NATUR'),(603,'33019040','OLEORRESINAS DE EXTRACAO'),(604,'13021110','CONCENTRADO DE PALHA DE PAPOULA'),(605,'13021190','OUTROS SUCOS E EXTRATOS VEGETAIS,DE OPIO'),(606,'13021200','SUCOS E EXTRATOS,DE ALCACUZ'),(607,'13021300','SUCOS E EXTRATOS,DE LUPULO'),(608,'13021400','SUCOS E EXTRATOS,DE PIRETRO OU DE RAIZES C/ROTENON'),(609,'13021910','SUCOS E EXTRATOS,DE MAMAO (\"CARICA PAPAYA\"),SECO'),(610,'13021920','SUCOS E EXTRATOS,DE SEMENTE DE POMELO (\"GRAPEFRUIT'),(611,'13021930','SUCOS E EXTRATOS DE GINKGO BILOBA SECO'),(612,'13021940','SUCOS E EXTRATOS,VALEPOTRIATOS'),(613,'13021950','SUCOS E EXTRATOS,DE \"GINSENG\"'),(614,'13021960','SUCOS E EXTRATOS,SILIMARINA'),(615,'13021990','SUCOS E EXTRATOS,DE OUTROS VEGETAIS'),(616,'13022010','MATERIAS PECTICAS (PECTINAS)'),(617,'13022090','OUTRAS MATERIAS PECTICAS,PECTINATOS E PECTATOS'),(618,'13023100','AGAR-AGAR'),(619,'13023211','FARINHA DE ENDOSPERMA'),(620,'13023219','OUTSPRODSMUCILAGESPESSANTES,DE ALFARROBA E SEMENTE'),(621,'13023220','PRODSMUCILAGINOSOS E ESPESSANTES,DE SEMENTES DE GU'),(622,'13023910','PRODSMUCILAGINOSOS E ESPESSANTES,DE CARRAGENINA'),(623,'13023990','PRODSMUCILAGINOSOS E ESPESSANTES,DERIVOUTROS VEGET'),(624,'14011000','BAMBUS PARA CESTARIA OU ESPARTARIA'),(625,'14012000','ROTINS PARA CESTARIA OU ESPARTARIA'),(626,'14019000','OUTRAS MATERIAS VEGETAIS PARA CESTARIA OU ESPARTAR'),(627,'14021000','SUMAUMA (\"KAPOC\") PARA ENCHIMENTO OU ESTOFAMENTO'),(628,'14029000','OUTRAS MATERIAS VEGETAIS,PARA ENCHIMENTO OU ESTOFA'),(629,'14031000','SORGO PARA VASSOURAS'),(630,'14039000','OUTRAS MATERIAS VEGETAIS P/FABRDE VASSOURAS OU ESC'),(631,'14041000','MATERIAS-PRIMAS VEGETAIS PARA TINTURARIA OU CURTIM'),(632,'14042010','LINTERES DE ALGODAO,EM BRUTO'),(633,'14042090','OUTROS LINTERES DE ALGODAO'),(634,'14049000','OUTROS PRODUTOS DE ORIGEM VEGETAL,PARA ENTRANCAR'),(635,'15010000','GORDURAS DE PORCO (INCLA BANHA) E GORDURA DE AVES'),(636,'15060000','OUTSGORDURAS,OLEOS,ANIMAIS,INCLREFINMAS N/QUIMMODI'),(637,'15020011','SEBO BOVINO,EM BRUTO'),(638,'15020012','SEBO BOVINO,FUNDIDO'),(639,'15020019','OUTROS SEBOS BOVINOS'),(640,'15020090','OUTRAS GORDURAS BOVINAS,OVINAS OU CAPRINAS'),(641,'15030000','ESTEARINA SOLAR,OLEO DE BANHA DE PORCO,ETCN/PREPAR'),(642,'15041011','OLEOS DE FIGADOS DE BACALHAU,EM BRUTO'),(643,'15041019','OUTROS OLEOS DE FIGADOS DE BACALHAU'),(644,'15041090','OLEOS DE FIGADOS DE OUTROS PEIXES E RESPECTIVAS FR'),(645,'15042000','GORDURAS E OLEOS,DE PEIXE E RESPECTIVAS FRACOES'),(646,'15043000','GORDURAS E OLEOS,DE MAMIFEROS MARINHOS,RESPECTFRAC'),(647,'15051000','SUARDA EM BRUTO'),(648,'15059010','LANOLINA'),(649,'15059090','OUTRAS SUBSTANCIAS GORDAS DERIVADAS DA SUARDA'),(650,'15071000','OLEO DE SOJA,EM BRUTO,MESMO DEGOMADO'),(651,'15079011','OLEO DE SOJA,REFINADO,EM RECIPIENTES COM CAPACIDAD'),(652,'15079019','OLEO DE SOJA,REFINADO,EM RECIPIENTES COM CAPACIDAD'),(653,'15079090','OUTROS OLEOS DE SOJA'),(654,'15081000','OLEO DE AMENDOIM,EM BRUTO'),(655,'15089000','OUTROS OLEOS DE AMENDOIM'),(656,'15091000','AZEITE DE OLIVA,VIRGEM'),(657,'15099010','AZEITE DE OLIVA,REFINADO'),(658,'15099090','OUTROS AZEITES DE OLIVA'),(659,'15100000','OUTROS OLEOS DE AZEITONAS E MISTURAS C/AZEITES DE '),(660,'15111000','OLEOS DE DENDE,EM BRUTO'),(661,'15119000','OUTROS OLEOS DE DENDE'),(662,'15121110','OLEO DE GIRASSOL,EM BRUTO'),(663,'15121120','OLEO DE CARTAMO,EM BRUTO'),(664,'15121911','OLEO DE GIRASSOL,REFINADO,EM RECIPIENTE C/CAPACID<'),(665,'15121919','OUTROS OLEOS DE GIRASSOL'),(666,'15121920','OUTROS OLEOS DE CARTAMO'),(667,'15122100','OLEO DE ALGODAO,EM BRUTO,MESMO DESPROVIDO DE \"GOSS'),(668,'15122910','OLEO DE ALGODAO,REFINADO'),(669,'15122990','OUTROS OLEOS DE ALGODAO'),(670,'15131100','OLEO DE COCO (OLEO DE COPRA),EM BRUTO'),(671,'15131900','OUTROS OLEOS DE COCO (OLEOS DE COPRA)'),(672,'15132110','OLEO DE \"PALMISTE\",EM BRUTO'),(673,'15132120','OLEO DE BABACU,EM BRUTO'),(674,'15132910','OUTROS OLEOS DE \"PALMISTE\"'),(675,'15132920','OUTROS OLEOS DE BABACU'),(676,'15141000','OLEOS DE NABO SILVESTRE,DE COLZA,DE MOSTARDA,EM BR'),(677,'15149010','OLEOS DE NABO SILVESTRE,DE COLZA,DE MOSTARDA,REFIN'),(678,'15149090','OUTROS OLEOS DE NABO SILVESTRE,DE COLZA OU DE MOST'),(679,'15151100','OLEO DE LINHACA,EM BRUTO'),(680,'15151900','OUTROS OLEOS DE LINHACA'),(681,'15152100','OLEO DE MILHO,EM BRUTO'),(682,'15152910','OLEO DE MILHO,REFINADO,EM RECIPIENTE COM CAPACIDAD'),(683,'15152990','OUTROS OLEOS DE MILHO'),(684,'15153000','OLEO DE RICINO'),(685,'15154010','OLEO DE TUNGUE,EM BRUTO'),(686,'15154020','OLEO DE TUNGUE,REFINADO'),(687,'15154090','OUTROS OLEOS DE TUNGUE'),(688,'15155000','OLEO DE GERGELIM'),(689,'15156000','OLEO DE JOJOBA'),(690,'15159000','OUTRAS GORDURAS E OLEOS,VEGETAIS,FIXOS,MESMO REFIN'),(691,'15161000','GORDURAS E OLEOS,ANIMAIS,HIDROGENSINTERESTERIFSETC'),(692,'15162000','GORDURAS E OLEOS,VEGETAIS,HIDROGENSINTERESTERIFSET'),(693,'15171000','MARGARINA,EXCETO A MARGARINA LIQUIDA'),(694,'15179090','OUTRAS MISTURAS,PREPARALIMENTDE GORDURAS,OLEOS,ETC'),(695,'15179010','MISTURAS DE OLEOS REFINADOS,EM RECIPIENTE C/CAPACI'),(696,'15180000','GORDURAS E OLEOS,ANIMAIS,VEGETAIS,COZIDOS,OXIDADOS'),(697,'38231100','ACIDO ESTEARICO (ACGRAXO MONOCARBOXILICO INDUSTRIA'),(698,'38231200','ACIDO OLEICO (ACIDO GRAXO MONOCARBOXILICO INDUSTRI'),(699,'38231300','ACIDO GRAXO (GORDO) DO \"TALL OIL\"'),(700,'38231900','OUTROS ACIDOS GRAXOS MONOCARBOXINDE OLEOS ACIDREFI'),(701,'38237020','ALCOOL LAURICO (ALCOOL GRAXO INDUSTRIAL)'),(702,'38237010','ALCOOL ESTEARICO (ALCOOL GRAXO INDUSTRIAL)'),(703,'38237030','OUTRAS MISTURAS DE ALCOOIS PRIMARIOS ALIFATICOS'),(704,'38237090','OUTROS ALCOOIS GRAXOS INDUSTRIAIS'),(705,'15200010','GLICERINA EM BRUTO'),(706,'15200020','AGUA E LIXIVIA,GLICERICAS'),(707,'29054500','GLICEROL'),(708,'15211000','CERAS VEGETAIS'),(709,'15219090','CERAS DE OUTSINSETOS E ESPERMACETE,MESMO REFINCORA'),(710,'15219011','CERA DE ABELHA,EM BRUTO'),(711,'15219019','OUTRAS CERAS DE ABELHA'),(712,'15220000','DEGRAS E RESIDUOS DO TRATAMDAS MATERIAS GRAXAS,ETC'),(713,'16010000','ENCHIDOS DE CARNE,MIUDEZAS,SANGUE,SUAS PREPARSALIM'),(714,'16021000','PREPARSALIMENTSHOMOGENEIZDE CARNES,MIUDEZAS,SANGUE'),(715,'16022000','PREPARSALIMENTICIAS E CONSERVAS,DE FIGADOS DE ANIM'),(716,'16023100','PREPARACOES ALIMENTICIAS E CONSERVAS,DE PERU'),(717,'16023900','PREPARACOES ALIMENTICIAS E CONSERVAS,DE OUTRAS AVE'),(718,'16023200','PREPARACOES ALIMENTICIAS E CONSERVAS,DE GALOS,GALI'),(719,'16024100','PREPARSALIMCONSERVAS,DE PERNAS,SEUS PEDACOS,DE SUI'),(720,'16024200','PREPARSALIMENTCONSERVAS,DE PAS,SEUS PEDACOS,DE SUI'),(721,'16024900','OUTRAS PREPARSALIMENTE CONSERVAS,DE SUINOS E MISTU'),(722,'16025000','PREPARACOES ALIMENTICIAS E CONSERVAS,DE BOVINOS'),(723,'16029000','OUTRAS PREPARSALIMENTCONSERVDE CARNES,MIUDEZSANGUE'),(724,'16030000','EXTRATOS E SUCOS,DE CARNES,DE PEIXES,DE CRUSTACEOS'),(725,'16041100','PREPARSE CONSERVAS,DE SALMOES,INTEIROS OU EM PEDAC'),(726,'16041200','PREPARSE CONSERVAS,DE ARENQUES,INTEIROS OU EM PEDA'),(727,'16041310','PREPARSE CONSERVAS,DE SARDINHAS,INTEIRAS OU EM PED'),(728,'16041390','PREPARSCONSERVAS,DE SARDINELAS,ESPADILHAS,INTPEDAC'),(729,'16041410','PREPARACOES E CONSERVAS,DE ATUNS,INTEIROS OU EM PE'),(730,'16041420','PREPARSCONSERVAS,DE BONITOS-LISTRADOS,INTEIROS,PED'),(731,'16041430','PREPARSCONSERVAS,DE BONITOS-CACHORROS,INTEIROS,PED'),(732,'16041500','PREPARSCONSERVAS,DE CAVALAS,CAVALINHAS,ETCINTPEDAC'),(733,'16041600','PREPARSE CONSERVAS,DE ANCHOVAS,INTEIRAS OU EM PEDA'),(734,'16041900','PREPARSE CONSERVAS,DE OUTSPEIXES,INTEIROS,EM PEDAC'),(735,'16042010','OUTRAS PREPARACOES E CONSERVAS,DE ATUNS'),(736,'16042090','OUTRAS PREPARACOES E CONSERVAS,DE OUTRAS PEIXES'),(737,'16042020','OUTRAS PREPARACOES E CONSERVAS,DE BONITOS-LISTRADO'),(738,'16042030','OUTRAS PREPARSE CONSERVAS,DE SARDINHAS,SARDINELAS,'),(739,'16043000','CAVIAR E SEUS SUCEDANEOS'),(740,'16051000','PREPARACOES E CONSERVAS,DE CARANGUEJOS'),(741,'16052000','PREPARACOES E CONSERVAS,DE CAMAROES'),(742,'16053000','PREPARACOES E CONSERVAS,DE LAVAGANTES (\"HOMARDS\")'),(743,'16054000','PREPARACOES E CONSERVAS,DE OUTROS CRUSTACEOS'),(744,'16059000','PREPARSE CONSERVAS,DE MOLUSCOS E OUTSINVERTEBRAQUA'),(745,'17011100','ACUCAR DE CANA,EM BRUTO'),(746,'17011200','ACUCAR DE BETERRABA,EM BRUTO'),(747,'17019100','OUTROS ACUCARES DE CANA,BETERRABA,COM AROMATIZCORA'),(748,'17019900','OUTSACUCARES DE CANA,BETERRABA,SACAROSE QUIMPURA,S'),(749,'17021100','LACTOSE E XAROPE DE LACTOSE,PESO>=99% DE LACTOSE,E'),(750,'17021900','OUTRAS LACTOSES E XAROPES DE LACTOSE'),(751,'17022000','ACUCAR E XAROPE,DE BORDO (ACER)'),(752,'17023011','GLICOSE QUIMICAMENTE PURA'),(753,'17023020','XAROPE DE GLICOSE CONTESTADO SECO,PESO<20% DE FRUT'),(754,'17023019','OUTRAS GLICOSES CONTENDESTADO SECO,PESO<20% DE FRU'),(755,'17024010','GLICOSE CONTENDO ESTADO SECO,20%<=PESO<50% DE FRUT'),(756,'17024020','XAROPE DE GLICOSE,CONTESTADO SECO,20%<=P<50% FRUTO'),(757,'17025000','FRUTOSE QUIMICAMENTE PURA'),(758,'17026010','FRUTOSE CONTENDO NO ESTADO SECO,PESO>50% DE FRUTOS'),(759,'17026020','XAROPE DE FRUTOSE,CONTNO ESTADO SECO,P>50% DE FRUT'),(760,'17029000','OUTROS ACUCARES,XAROPES DE ACUCARES,SUCEDANDO MEL,'),(761,'17031000','MELACOS DE CANA'),(762,'17039000','OUTROS MELACOS DA EXTRACAO OU REFINACAO DO ACUCAR'),(763,'17041000','GOMAS DE MASCAR,SEM CACAU,MESMO REVESTIDAS DE ACUC'),(764,'17049020','BOMBONS,CARAMELOS,CONFEITOS E PASTILHAS,SEM CACAU'),(765,'17049010','CHOCOLATE BRANCO,SEM CACAU'),(766,'17049090','OUTROS PRODUTOS DE CONFEITARIA,SEM CACAU'),(767,'18010000','CACAU INTEIRO OU PARTIDO,EM BRUTO OU TORRADO'),(768,'18020000','CASCAS,PELICULAS E OUTROS DESPERDICIOS DE CACAU'),(769,'18031000','PASTA DE CACAU,NAO DESENGORDURADA'),(770,'18032000','PASTA DE CACAU,TOTAL OU PARCIALMENTE DESENGORDURAD'),(771,'18040000','MANTEIGA,GORDURA E OLEO,DE CACAU'),(772,'18050000','CACAU EM PO,SEM ADICAO DE ACUCAR OU OUTROS EDULCOR'),(773,'18061000','CACAU EM PO,COM ADICAO DE ACUCAR OU OUTROS EDULCOR'),(774,'18062000','OUTSPREPARSALIMENTC/CACAU,EM BLOCOS,BARRAS,P>2KG,E'),(775,'18063110','CHOCOLATE RECHEADO,EM TABLETES,BARRAS E PAUS'),(776,'18063120','OUTRAS PREPARSALIMENTC/CACAU,RECHEADEM TABLETES,ET'),(777,'18063210','CHOCOLATE NAO RECHEADO,EM TABLETES,BARRAS E PAUS'),(778,'18063220','OUTSPREPARSALIMENTC/CACAU,N/RECHEADEM TABLETES,ETC'),(779,'18069000','OUTROS CHOCOLATES E PREPARACOES ALIMENTICIAS CONTC'),(780,'19011020','FARINHA LACTEA,PARA ALIMENTACAO DE CRIANCAS'),(781,'19011010','LEITE MODIFICADO,PARA ALIMENTACAO DE CRIANCAS'),(782,'19011030','PREPARSA BASE FARINHA,SEMOLA,AMIDO,P/ALIMDE CRIANC'),(783,'19011090','OUTRAS PREPARACOES PARA ALIMENTACAO DE CRIANCAS'),(784,'19012000','MISTURAS E PASTAS,P/PREPARPRODSPADARIA,PASTELARIA,'),(785,'19019010','EXTRATO DE MALTE'),(786,'19019020','DOCE DE LEITE'),(787,'19019090','OUTRAS PREPARACOES ALIMENTDE FARINHAS,ETCCACAU<40%'),(788,'19021100','MASSAS ALIMENTICIAS,CONTOVOS,N/COZIDAS,N/RECHEADAS'),(789,'19021900','OUTRAS MASSAS ALIMENTICIAS,NAO COZIDAS,NAO RECHEAD'),(790,'19022000','MASSAS ALIMENTRECHEADAS,INCLCOZIDAS,PREPARSOUTMODO'),(791,'19023000','OUTRAS MASSAS ALIMENTICIAS'),(792,'19024000','COUSCOUS'),(793,'19030000','TAPIOCA,SEUS SUCEDANEOS,DE FECULAS,EM FLOCOS,GRUMO'),(794,'19042000','PREPARSALIMENTOBTIDAS DE FLOCOS DE CEREAIS E MISTU'),(795,'19041000','PRODSA BASE DE CEREAIS,OBTIDOS POR EXPANSAO,TORREF'),(796,'19049000','OUTROS CEREAIS EM GRAOS,PRE-COZIDOS,PREPARSDE OUTM'),(797,'19051000','PAO DENOMINADO \"KNACKEBROT\"'),(798,'19052000','PAO DE ESPECIARIAS'),(799,'19053010','BOLACHAS E BISCOITOS,ADICIONADOS DE EDULCORANTES'),(800,'19053090','WAFFLES E WAFERS'),(801,'19054000','TORRADAS,PAO TORRADO E PRODUTOS SEMELHANTES TORRAD'),(802,'19059000','OUTROS PRODSDE PADARIA,PASTELARIA,INDDE BISCOITOS,'),(803,'20011000','PEPINOS E PEPININHOS,PREPARS/CONSERVVINAGRE,ACACET'),(804,'20012000','CEBOLAS PREPARADAS,CONSERVADAS EM VINAGRE,ACIDO AC'),(805,'20019000','OUTSPRODSHORTS,ETCPREPARS/CONSERVVINAGRE,ACACETICO'),(806,'20021000','TOMATES INTEIROS OU PEDACOS,PREPARADOS OU CONSERVA'),(807,'20029010','SUCOS DE TOMATES'),(808,'20029090','OUTSTOMATES PREPARSCONSERVSEXCEM VINAGRE,ACACETICO'),(809,'20031000','COGUMELOS PREPARADOS OU CONSERVADOS'),(810,'20032000','TRUFAS PREPARADAS OU CONSERVADAS'),(811,'20041000','BATATAS PREPARADAS OU CONSERVADAS,CONGELADAS'),(812,'20049000','OUTSPRODSHORTSPREPAR/CONSERVCONGEXCEM VINAGRE,ETC'),(813,'20051000','PRODSHORTICOLAS HOMOGENPREPARS/CONSERVN/CONGELADOS'),(814,'20052000','BATATAS PREPARADAS OU CONSERVADAS,NAO CONGELADAS'),(815,'20059000','OUTSPRODSHORTSPREPARS/CONSERVN/CONGEXCVINAGRE,ETC'),(816,'20054000','ERVILHAS PREPARADAS OU CONSERVADAS,NAO CONGELADAS'),(817,'20055100','FEIJAO EM GRAO,PREPARADO OU CONSERVADO,NAO CONGELA'),(818,'20055900','OUTSFEIJOES PREPARS/CONSERVSN/CONGEXCEM VINAGRE,ET'),(819,'20056000','ASPARGOS PREPARADOS OU CONSERVADOS,NAO CONGELADOS'),(820,'20057000','AZEITONAS PREPARADAS/CONSERVN/CONGEXCEM VINAGRE,ET'),(821,'20058000','MILHO DOCE,PREPARADO OU CONSERVADO,NAO CONGELADO'),(822,'20060000','PRODSHORTICOLAS,FRUTAS E CASCAS,ETCCONSERVSEM ACUC'),(823,'20071000','PREPARSHOMOGENDE FRUTAS,POR COZIMENTO,P/ALIMCRIANC'),(824,'20079100','DOCES,GELEIAS,\"MARMELADES\",PURES E PASTAS,DE CITRI'),(825,'20079910','GELEIAS E \"MARMELADES\",DE OUTRAS FRUTAS'),(826,'20079990','DOCES,PURES E PASTAS,DE OUTRAS FRUTAS'),(827,'20081100','AMENDOINS PREPARADOS OU CONSERVADOS'),(828,'20081900','OUTSFRUTAS DE CASCA RIJA,OUTSSEMENTES,PREPARS/CONS'),(829,'20082010','ABACAXIS PREPARADOS OU CONSERVEM AGUA EDULCORADA,E'),(830,'20082090','ABACAXIS PREPARADOS OU CONSERVDE OUTRO MODO'),(831,'20083000','CITRICOS PREPARADOS OU CONSERVADOS'),(832,'20084090','PERAS PREPARADAS OU CONSERVADAS DE OUTRO MODO'),(833,'20084010','PERAS PREPARS/CONSERVSEM AGUA EDULCORADA,INCLXAROP'),(834,'20085000','DAMASCOS PREPARADOS OU CONSERVADOS'),(835,'20086090','CEREJAS PREPARADAS OU CONSERVADAS DE OUTRO MODO'),(836,'20086010','CEREJAS PREPARS/CONSERVSEM AGUA EDULCORADA,INCLXAR'),(837,'20087010','PESSEGOS PREPARS/CONSERVEM AGUA EDULCORADA,INCLXAR'),(838,'20087090','PESSEGOS PREPARADOS OU CONSERVADOS DE OUTRO MODO'),(839,'20088000','MORANGOS PREPARADOS OU CONSERVADOS'),(840,'20089100','PALMITOS PREPARADOS OU CONSERVADOS'),(841,'20089290','MISTURAS DE FRUTAS PREPARADAS,CONSERVADAS DE OUTRO'),(842,'20089210','MISTURAS DE FRUTAS PREPARADAS,CONSERVSEM AGUA EDUL'),(843,'20089900','OUTSFRUTAS,PARTES DE PLANTAS,PREPARS/CONSERVSOUTMO'),(844,'20091100','SUCOS DE LARANJAS,CONGELADOS,NAO FERMENTADOS'),(845,'20091900','OUTROS SUCOS DE LARANJAS,NAO FERMENTADOS'),(846,'20092000','SUCOS DE POMELOS (\"GRAPEFRUIT\"),NAO FERMENTADOS'),(847,'20093000','SUCOS DE OUTROS CITRICOS,NAO FERMENTADOS'),(848,'20094000','SUCOS DE ABACAXIS (ANANASES),NAO FERMENTADOS'),(849,'20095000','SUCOS DE TOMATES,NAO FERMENTADOS'),(850,'20096000','SUCOS DE UVAS (INCLOS MOSTOS DE UVAS),NAO FERMENTA'),(851,'20097000','SUCOS DE MACAS,NAO FERMENTADOS'),(852,'20098000','SUCOS DE OUTRAS FRUTAS,PRODSHORTICOLAS,NAO FERMENT'),(853,'20099000','MISTURAS DE SUCOS,NAO FERMENTADOS'),(854,'21011110','CAFE SOLUVEL,MESMO DESCAFEINADO'),(855,'21011190','OUTROS EXTRATOS,ESSENCIAS E CONCENTRADOS,DE CAFE'),(856,'21011200','PREPARSA BASE DE EXTRATOS,ESSENCIAS,CONCENTRADDE C'),(857,'21012010','EXTRATOS,ESSENCIAS,CONCENTRADOS E SUAS PREPARSDE C'),(858,'21012020','EXTRATOS,ESSENCIAS,CONCENTRADOS E SUAS PREPARSDE M'),(859,'21013000','CHICORIA TORRADA,OUTROS SUCEDANEOS TORRADOS DO CAF'),(860,'21021000','LEVEDURAS VIVAS'),(861,'21022000','LEVEDURAS MORTAS,OUTROS MICROORGANMONOCELULARES MO'),(862,'21023000','POS PARA LEVEDAR,PREPARADOS'),(863,'21031010','MOLHOS DE SOJA,PREPARADOS,EMBALAGENS IMEDIATAS,P<='),(864,'21031090','OUTROS MOLHOS DE SOJA,PREPARADOS'),(865,'21032010','KETCHUP E OUTROS MOLHOS DE TOMATE,EMBALIMEDIATP<=1'),(866,'21032090','OUTROS \"KETCHUP\" E MOLHOS DE TOMATE,PREPARADOS'),(867,'21033010','FARINHA DE MOSTARDA'),(868,'21033021','MOSTARDA PREPARADA,EM EMBALAGENS IMEDIATAS,PESO<=1'),(869,'21033029','OUTRAS MOSTARDAS PREPARADAS'),(870,'21039011','MAIONESE EM EMBALAGENS IMEDIATAS,PESO<=1KG'),(871,'21039019','OUTRAS MAIONESES'),(872,'21039091','OUTSPREPARSP/MOLHOS,MOLHOS PREPARSEMBALIMEDP<=1KG'),(873,'21039099','OUTRAS PREPARACOES PARA MOLHOS E MOLHOS PREPARADOS'),(874,'21039021','CONDIMENTOS E TEMPEROS,COMPOSTOS,EMBALAGIMEDIATP<='),(875,'21039029','OUTROS CONDIMENTOS E TEMPEROS,COMPOSTOS'),(876,'21041011','PREPARACOES P/CALDOS E SOPAS,EMBALAGSIMEDIATAS,P<='),(877,'21041019','OUTRAS PREPARACOES PARA CALDOS E SOPAS'),(878,'21041021','CALDOS E SOPAS,PREPARADOS,EMBALAGENS IMEDIATAS,P<='),(879,'21041029','OUTROS CALDOS E SOPAS,PREPARADOS'),(880,'21042000','PREPARACOES ALIMENTICIAS COMPOSTAS,HOMOGENEIZADAS'),(881,'21050010','SORVETES,MESMO CONTENDO CACAU,EMBALAGSIMEDIATAS,P<'),(882,'21050090','OUTROS SORVETES,MESMO CONTENDO CACAU'),(883,'21061000','CONCENTRADOS DE PROTEINAS,SUBSTSPROTEICAS TEXTURIZ'),(884,'21069030','COMPLEMENTOS ALIMENTARES'),(885,'21069010','OUTRAS PREPARACOES PARA ELABORACAO DE BEBIDAS'),(886,'21069021','POS P/PREPARACOES DE PUDINS,EMBALAGENS IMEDIATAS,P'),(887,'21069029','POS P/PREPARSDE CREMES,SORVETES,GELATINAS,FLANS,ET'),(888,'21069090','OUTRAS PREPARACOES ALIMENTICIAS'),(889,'21069040','MISTURAS A BASE DE ASCORBATO SODIO,GLUCOSE,P/EMBUT'),(890,'22011000','AGUA MINERAL/GASEIFN/ADICIONACUCAR,N/AROMATIZADA,E'),(891,'22019000','OUTRAS AGUAS,SEM ACUCAR,N/AROMATIZADAS,ETCGELO E N'),(892,'22021000','AGUA INCLMINERAL/GASEIFADICIONACUCAR,AROMATIZADA,E'),(893,'22029000','OUTRAS BEBIDAS N/ALCOOLICAS,EXCSUCO FRUTAS,PRODSHO'),(894,'22030000','CERVEJAS DE MALTE'),(895,'22041010','VINHOS DE UVAS FRESCAS,TIPO CHAMPANHA (\"CHAMPAGNE\"'),(896,'22041090','OUTROS VINHOS DE UVAS FRESCAS,ESPUMANTES E ESPUMOS'),(897,'22042100','OUTSVINHOS,MOSTOS DE UVAS,FERMIMPEDALCOOL,RECIPS<='),(898,'22042900','OUTROS VINHOS,MOSTOS DE UVAS,FERMIMPEDPOR ADICAO A'),(899,'22043000','OUTROS MOSTOS DE UVAS'),(900,'22051000','VERMUTES,OUTROS VINHOS UVAS FRESCAS,AROMATIZRECIP<'),(901,'22059000','OUTROS VERMUTES E VINHOS DE UVAS FRESCAS,AROMATIZA'),(902,'22060010','SIDRA'),(903,'22060090','OUTSBEBIDAS FERMENTADAS E MISTURAS DE BEBIDAS FERM'),(904,'22071000','ALCOOL ETILICO N/DESNATURADO C/VOLTEOR ALCOOLICO>='),(905,'22072010','ALCOOL ETILICO DESNATURADO C/QQTEOR ALCOOLICO'),(906,'22072020','AGUARDENTE DESNATURADO COM QUALQUER TEOR ALCOOLICO'),(907,'22083020','UISQUES,EMBALAGENS DE CAPACIDADE<=2 LITROS'),(908,'22083010','UISQUES,VOLTEOR ALCOOLICO>50%,RECIPSCAPAC>=50 LITR'),(909,'22083090','OUTROS UISQUES'),(910,'22084000','CACHACA E CANINHA (RUM E TAFIA)'),(911,'22085000','GIM E GENEBRA'),(912,'22086000','VODCA'),(913,'22087000','LICORES'),(914,'22089000','OUTRAS BEBIDAS ALCOOLICAS'),(915,'22082000','AGUARDENTE DE VINHO OU DE BAGACO DE UVAS'),(916,'22090000','VINAGRES E SUCEDANOBTIDOS ACIDACETICO,P/USO ALIMEN'),(917,'23011010','FARINHAS,POS E \"PELLETS\" DE CARNE,IMPROPRP/ALIMHUM'),(918,'23011090','FARINHA DE MIUDEZAS,IMPROPRP/ALIMHUMANA E TORRESMO'),(919,'23012010','FARINHAS,POS,\"PELLETS\" DE PEIXES,IMPROPRSP/ALIMHUM'),(920,'23012090','FARINHAS,POS,DE CRUSTACEOS,ETCIMPROPRSP/ALIMHUMANA'),(921,'23021000','SEMEAS,FARELOS E OUTROS RESIDUOS,DE MILHO'),(922,'23022010','FARELO DE ARROZ'),(923,'23022090','SEMEAS E OUTROS RESIDUOS,DE ARROZ'),(924,'23023010','FARELO DE TRIGO'),(925,'23023090','SEMEAS E OUTROS RESIDUOS,DE TRIGO'),(926,'23024000','SEMEAS,FARELOS E OUTROS RESIDUOS,DE OUTROS CEREAIS'),(927,'23025000','SEMEAS,FARELOS E OUTROS RESIDUOS,DE LEGUMINOSAS'),(928,'23031000','RESIDUOS DA FABRICACAO DO AMIDO E RESIDUOS SEMELHA'),(929,'23032000','POLPAS,BAGACOS E OUTROS DERPERDICIOS DA INDDO ACUC'),(930,'23033000','BORRAS E DESPERDSDA INDDA CERVEJA E DAS DESTILARIA'),(931,'23040090','BAGACOS E OUTSRESIDUOS SOLIDOS,DA EXTRDO OLEO DE S'),(932,'23040010','FARINHAS E \"PELLETS\",DA EXTRACAO DO OLEO DE SOJA'),(933,'23050000','TORTAS E OUTROS RESIDUOS SOLIDOS,DO AMENDOIM'),(934,'23061000','TORTAS E OUTROS RESIDUOS SOLIDOS,DO ALGODAO'),(935,'23062000','TORTAS E OUTROS RESIDUOS SOLIDOS,DA LINHACA'),(936,'23063010','TORTAS,FARINHAS E \"PELLETS\",DO GIRASSOL'),(937,'23063090','OUTROS RESIDUOS SOLIDOS,DO GIRASSOL'),(938,'23064000','TORTAS,OUTROS RESIDSSOLIDOS,DO NABO SILVESTRE,DA C'),(939,'23065000','TORTAS E OUTROS RESIDUOS SOLIDOS,DO COCO OU DA COP'),(940,'23066000','TORTAS E OUTROS RESIDSOLIDOS,DE NOZES OU DE \"PALMI'),(941,'23069000','OUTSTORTAS E RESIDSOLIDOS DA EXTRGORDURA/OLEOS VEG'),(942,'23067000','TORTAS E OUTROS RESIDUOS SOLIDOS,DO GERME DE MILHO'),(943,'23070000','BORRAS DE VINHO E TARTARO EM BRUTO'),(944,'23081000','BOLOTAS DE CARVALHO E CASTANHAS-DA-INDIA,P/ALIMANI'),(945,'23089000','MATERIAS,DESPERDICIOS,RESIDSETCVEGETAIS,P/ALIMANIM'),(946,'23091000','ALIMENTOS PARA CAES E GATOS'),(947,'23099010','ALIMENTOS COMPOSTOS COMPLETOS,PARA ANIMAIS'),(948,'23099040','PREPARACOES CONTDICLAZURIL,UTILNA ALIMENTDE ANIMAI'),(949,'23099090','OUTRAS PREPARACOES PARA ALIMENTACAO DE ANIMAIS'),(950,'23099030','BOLACHAS E BISCOITOS,PARA ALIMENTACAO DE ANIMAIS'),(951,'23099020','PREPARACOES A BASE DE SAL IODADO,ETCP/ALIMENTANIMA'),(952,'24011030','FUMO N/MANUFATN/DESTALEM FLSSECAS,ETCTIPO VIRGINIA'),(953,'24011040','FUMO N/MANUFATN/DESTALEM FLSSECAS,ETCTIPO TURCO'),(954,'24011090','OUTROS FUMOS NAO MANUFATURADOS,NAO DESTALADOS'),(955,'24011010','FUMO N/MANUFATN/DESTALADO,EM FOLHAS,S/SECAR,N/FERM'),(956,'24011020','FUMO N/MANUFATN/DESTALEM FLSSECAS,ETCTIPO CAPEIRO'),(957,'24012030','FUMO N/MANUFTOTAL/PARCDESTALFLSSECAS,ETCVIRGINIA'),(958,'24012040','FUMO N/MANUFTOTAL/PARCDESTALFLSSECAS,TIPO \"BURLEY\"'),(959,'24012010','FUMO N/MANUFTOTAL/PARCDESTALEM FLSS/SECAR,N/FERMEN'),(960,'24012020','FUMO N/MANUFTOTAL/PARCDESTALFLSSECAS,FERMENCAPEIRO'),(961,'24012090','OUTROS FUMOS NAO MANUFATURADTOTAL/PARCIALMDESTALAD'),(962,'24013000','DESPERDICIOS DE FUMO'),(963,'24021000','CHARUTOS E CIGARRILHAS,DE FUMO'),(964,'24022000','CIGARROS DE FUMO'),(965,'24029000','CHARUTOS,CIGARRILHAS E CIGARROS,DE SUCEDANEOS DO F'),(966,'24031000','FUMO MANUFATURADO,P/FUMAR,MESMO CONTSUCEDANEOS DO '),(967,'24039100','FUMO MANUFATURADO,\"HOMOGENEIZADO\" OU \"RECONSTITUID'),(968,'24039910','EXTRATOS E MOLHOS,DE FUMO'),(969,'24039990','OUTROS PRODUTOS DO FUMO E SEUS SUCEDANEOS,MANUFATU'),(970,'25010011','SAL MARINHO,A GRANEL,SEM AGREGADOS'),(971,'25010020','SAL DE MESA'),(972,'25010019','OUTROS TIPOS DE SAL A GRANEL,SEM AGREGADOS'),(973,'25010090','OUTROS TIPOS DE SAL,CLORETO DE SODIO PURO E AGUA D'),(974,'25020000','PIRITAS DE FERRO NAO USTULADAS'),(975,'25030010','ENXOFRE A GRANEL,EXCSUBLIMADO,PRECIPITADO OU COLOI'),(976,'25030090','OUTSFORMAS DE ENXOFRE,EXCSUBLIMADO,PRECIPITCOLOIDA'),(977,'25041000','GRAFITA NATURAL EM PO OU EM ESCAMAS'),(978,'25049000','OUTRAS FORMAS DE GRAFITA NATURAL'),(979,'25051000','AREIAS SILICIOSAS E AREIAS QUARTZOSAS'),(980,'25059000','OUTRAS AREIAS NATURAIS,MESMO CORADAS'),(981,'25061000','QUARTZO'),(982,'25062100','QUARTZITOS EM BRUTO OU DESBASTADOS'),(983,'25062900','OUTRAS FORMAS DE QUARTZITOS'),(984,'25070010','CAULIM'),(985,'25070090','OUTRAS ARGILAS CAULINICAS,MESMO CALCINADAS'),(986,'25081000','BENTONITA'),(987,'25082000','TERRAS DESCORANTES E TERRAS DE PISAO (TERRAS \"FULL'),(988,'25083000','ARGILAS REFRATARIAS'),(989,'25084010','ARGILAS PLASTICAS,TEOR DE F2O3<15%,PERDA P/CALCIN>'),(990,'25084090','OUTRAS ARGILAS'),(991,'25085000','ANDALUZITA,CIANITA E SILIMANITA'),(992,'25086000','MULITA'),(993,'25087000','BARRO COZIDO EM PO (TERRA \"CHAMOTTE\") E TERRA DE D'),(994,'25090000','CRE'),(995,'25101010','FOSFATOS DE CALCIO,NATURAIS,NAO MOIDOS'),(996,'25101090','FOSFATOS ALUMINOCALCICOS,NATURSCRE-FOSFATADO,N/MOI'),(997,'25102010','FOSFATOS DE CALCIO,NATURAIS,MOIDOS'),(998,'25102090','FOSFATOS ALUMINOCALCICOS,NATURAIS,CRE-FOSFATADO,MO'),(999,'25111000','SULFATO DE BARIO NATURAL (BARITINA)'),(1000,'25112000','CARBONATO DE BARIO NATURAL (WITHERITA)'),(1001,'25120000','FARINHAS SILICIOSAS FOSSEIS/OUTSTERRAS SILICIOSAS,'),(1002,'25131100','PEDRAS-POMES EM BRUTO,FRAGMENTOS IRREGULINCLTRITUR'),(1003,'25131900','OUTRAS FORMAS DE PEDRA-POMES'),(1004,'25132000','ESMERIL,CORINDO/GRANADA NATURAIS,OUTSABRASIVOS NAT'),(1005,'25140000','ARDOSIA INCLDESBASTADA OU CORTADA EM BLOCOS OU PLA'),(1006,'25151100','MARMORES E TRAVERTINOS,EM BRUTO OU DESBASTADOS'),(1007,'25151210','MARMORES CORTADOS EM BLOCOS OU PLACAS'),(1008,'25151220','TRAVERTINOS CORTADOS EM BLOCOS OU PLACAS'),(1009,'25152000','GRANITOS BELGAS,OUTSPEDRAS CALCARIAS DE CANTARIA,E'),(1010,'25161100','GRANITO EM BRUTO OU DESBASTADO'),(1011,'25161200','GRANITO CORTADO EM BLOCOS OU PLACAS'),(1012,'25162100','ARENITO EM BRUTO OU DESBASTADO'),(1013,'25162200','ARENITO CORTADO EM BLOCOS OU PLACAS'),(1014,'25169000','OUTRAS PEDRAS DE CANTARIA OU DE CONSTRUCAO'),(1015,'25171000','CALHAUS,CASCALHOS E PEDRAS BRITADAS,PARA CONCRETO,'),(1016,'25172000','MACADAME DE ESCORIAS DE ALTOS-FORNOS,OUTSESCORIAS,'),(1017,'25173000','TARMACADAME'),(1018,'25174100','GRANULOS,LASCAS E POS,DE MARMORE'),(1019,'25174900','GRANULOS,LASCAS E POS,GRANITO E OUTSPEDRAS DE CANT'),(1020,'25181000','DOLOMITA NAO CALCINADA NEM SINTERIZADA,\"CRUA\"'),(1021,'25182000','DOLOMITA CALCINADA OU SINTERIZADA'),(1022,'25183000','AGLOMERADOS DE DOLOMITA'),(1023,'25191000','CARBONATO DE MAGNESIO NATURAL (MAGNESITA)'),(1024,'25199010','MAGNESIA ELETROFUNDIDA'),(1025,'25199090','MAGNESIA CALCINADA A FUNDO E OUTROS OXIDOS DE MAGN'),(1026,'25201011','GIPSITA EM PEDACOS IRREGULARES (PEDRAS)'),(1027,'25201019','OUTRAS FORMAS DE GIPSITAS'),(1028,'25201020','ANIDRITA'),(1029,'25202010','GESSO MOIDO,APTO PARA USO ODONTOLOGICO'),(1030,'25202090','OUTRAS FORMAS DE GESSO'),(1031,'25210000','CASTINAS,PEDRAS CALCARIAS P/FABRDE CAL OU DE CIMEN'),(1032,'25221000','CAL VIVA'),(1033,'25222000','CAL APAGADA'),(1034,'25223000','CAL HIDRAULICA'),(1035,'25231000','CIMENTOS NAO PULVERIZADOS (\"CLINKERS\")'),(1036,'25232100','CIMENTOS \"PORTLAND\",BRANCOS'),(1037,'25232910','CIMENTOS \"PORTLAND\",COMUNS'),(1038,'25232990','OUTROS TIPOS DE CIMENTO \"PORTLAND\"'),(1039,'25233000','CIMENTOS ALUMINOSOS'),(1040,'25239000','OUTROS CIMENTOS HIDRAULICOS'),(1041,'25240010','AMIANTO (ARBESTO) EM FIBRAS,NAO TRABALHADO'),(1042,'25240020','AMIANTO (ARBESTO) EM PO'),(1043,'25240090','OUTRAS FORMAS DE AMIANTO (ARBESTO)'),(1044,'25251000','MICA EM BRUTO OU CLIVADA EM FOLHAS,LAMELAS IRREGUL'),(1045,'25252000','MICA EM PO'),(1046,'25253000','DESPERDICIOS DE MICA'),(1047,'25261000','ESTEATITA NATURAL,NAO TRITURADA NEM EM PO'),(1048,'25262000','ESTEATITA NATURAL,TRITURADA OU EM PO E TALCO'),(1049,'25270000','CRIOLITA NATURAL E QUIOLITA NATURAL'),(1050,'25281000','BORATOS DE SODIO,NATURAIS E SEUS CONCENTRADOS'),(1051,'25289000','OUTROS BORATOS NATURAIS,ACIDO BORICO,NATURAL,H3BO3'),(1052,'25291000','FELDSPATO'),(1053,'25292100','ESPATOFLUOR CONTENDO PESO<=97% DE FLUORETO DE CALC'),(1054,'25292200','ESPATOFLUOR CONTENDO PESO>97% DE FLUORETO DE CALCI'),(1055,'25293000','LEUCITA,NEFELINA E NEFELINA-SIENITO'),(1056,'25301090','VERMICULITA E CLORITAS,NAO EXPANDIDAS'),(1057,'25301010','PERLITA NAO EXPANDIDA'),(1058,'25302000','KIESERITA,EPSOMITA (SULFATOS DE MAGNESIO NATURAIS)'),(1059,'25309040','TERRAS CORANTES'),(1060,'25304000','OXIDOS DE FERRO MICACEOS NATURAIS'),(1061,'25309010','ESPODUMENIO'),(1062,'25309020','AREIAS DE ZIRCONIO MICRONIZP/PREPARDE ESMALTES CER'),(1063,'25309090','OUTRAS MATERIAS MINERAIS'),(1064,'25309030','MINERAIS DE METAIS DAS TERRAS RARAS'),(1065,'26011100','MINERIOS DE FERRO NAO AGLOMERADOS E SEUS CONCENTRA'),(1066,'26011200','MINERIOS DE FERRO AGLOMERADOS E SEUS CONCENTRADOS'),(1067,'26012000','PIRITAS DE FERRO USTULADAS (CINZAS DE PIRITAS)'),(1068,'26020090','OUTROS MINERIOS DE MANGANES'),(1069,'26020010','MINERIOS DE MANGANES AGLOMERADOS E SEUS CONCENTRAD'),(1070,'26030010','SULFETOS DE MINERIOS DE COBRE'),(1071,'26030090','OUTROS MINERIOS DE COBRE E SEUS CONCENTRADOS'),(1072,'26040000','MINERIOS DE NIQUEL E SEUS CONCENTRADOS'),(1073,'26050000','MINERIOS DE COBALTO E SEUS CONCENTRADOS'),(1074,'26060012','BAUXITA CALCINADA (MINERIO DE ALUMINIO)'),(1075,'26060011','BAUXITA NAO CALCINADA (MINERIO DE ALUMINIO)'),(1076,'26060090','OUTROS MINERIOS DE ALUMINIO E SEUS CONCENTRADOS'),(1077,'26070000','MINERIOS DE CHUMBO E SEUS CONCENTRADOS'),(1078,'26080010','SULFETOS DE MINERIOS DE ZINCO'),(1079,'26080090','OUTROS MINERIOS DE ZINCO E SEUS CONCENTRADOS'),(1080,'26090000','MINERIOS DE ESTANHO E SEUS CONCENTRADOS'),(1081,'26100010','CROMITA (MINERIOS DE CROMO)'),(1082,'26100090','OUTROS MINERIOS DE CROMO E SEUS CONCENTRADOS'),(1083,'26110000','MINERIOS DE TUNGSTENIO E SEUS CONCENTRADOS'),(1084,'26121000','MINERIOS DE URANIO E SEUS CONCENTRADOS'),(1085,'26122000','MINERIOS DE TORIO E SEUS CONCENTRADOS'),(1086,'26131010','MOLIBDENITA USTULADA (MINERIOS DE MOLIBDENIO)'),(1087,'26131090','OUTSMINERIOS DE MOLIBDENIO,USTULADOS,SEUS CONCENTR'),(1088,'26139010','MOLIBDENITA NAO USTULADA (MINERIOS DE MOLIBDENIO)'),(1089,'26139090','OUTSMINERIOS DE MOLIBDENIO N/USTULADOS E CONCENTRA'),(1090,'26140010','ILMENITA (MINERIOS DE TITANIO)'),(1091,'26140090','OUTROS MINERIOS DE TITANIO E SEUS CONCENTRADOS'),(1092,'26151010','BADELEITA (MINERIO DE ZIRCONIO)'),(1093,'26151020','ZIRCONITA (MINERIO DE ZIRCONIO)'),(1094,'26151090','OUTROS MINERIOS DE ZIRCONIO E SEUS CONCENTRADOS'),(1095,'26159000','MINERIOS DE NIOBIO,TANTALO OU VANADIO,SEUS CONCENT'),(1096,'26161000','MINERIOS DE PRATA E SEUS CONCENTRADOS'),(1097,'26169000','MINERIOS DE OUTROS METAIS PRECIOSOS E SEUS CONCENT'),(1098,'26171000','MINERIOS DE ANTIMONIO E SEUS CONCENTRADOS'),(1099,'26179000','OUTROS MINERIOS E SEUS CONCENTRADOS'),(1100,'26180000','ESCORIA DE ALTOS-FORNOS GRANULDA FABRDO FERRO E AC'),(1101,'26190000','OUTRAS ESCORIAS E DESPERDICIOS,DA FABRDO FERRO E A'),(1102,'26201100','MATES DE GALVANIZACAO (CONTENDO ZINCO)'),(1103,'26201900','OUTRAS CINZAS E RESIDUOS CONTENDO ZINCO'),(1104,'26202000','CINZAS E RESIDUOS CONTENDO CHUMBO'),(1105,'26203000','CINZAS E RESIDUOS CONTENDO COBRE'),(1106,'26204000','CINZAS E RESIDUOS CONTENDO ALUMINIO'),(1107,'26205000','CINZAS E RESIDUOS CONTENDO VANADIO'),(1108,'26209010','CINZAS E RESIDUOS CONTENDO TITANIO'),(1109,'26209090','CINZAS E RESIDUOS CONTENDO OUTROS METAIS OU COMPOS'),(1110,'26210010','CINZAS DE ORIGEM VEGETAL'),(1111,'26210090','OUTRAS ESCORIAS E CINZAS,INCLAS CINZAS DE ALGAS'),(1112,'27011100','HULHA ANTRACITA,NAO AGLOMERADA'),(1113,'27011200','HULHA BETUMINOSA,NAO AGLOMERADA'),(1114,'27011900','OUTRAS HULHAS,MESMO EM PO,MAS NAO AGLOMERADAS'),(1115,'27012000','BRIQUETES,BOLAS EM AGLOMERADOS,ETCOBTIDOS DA HULHA'),(1116,'27021000','LINHITAS,MESMO EM PO,MAS NAO AGLOMERADAS'),(1117,'27022000','LINHITAS AGLOMERADAS'),(1118,'27030000','TURFA,INCLAGLOMERADA E A TURFA P/CAMA DE ANIMAIS'),(1119,'27040010','COQUES DE HULHA,DE LINHITA OU DE TURFA'),(1120,'27040090','SEMICOQUES DE HULHA,LINHITA OU TURFA,CARVAO DE RET'),(1121,'27050000','GAS DE HULHA,AGUA,ETCEXCDE PETROLEO/HIDROCARBGASOS'),(1122,'27060000','ALCATROES DE HULHA,DE LINHITA OU DE TURFA,ETC'),(1123,'27071000','BENZOIS (PRODSDA DESTILACAO DOS ALCATROES DE HULHA'),(1124,'27072000','TOLUOIS (PRODSDA DESTILACAO DOS ALCATROES DE HULHA'),(1125,'27073000','XILOIS (PRODSDA DESTILACAO DOS ALCATROES DE HULHA)'),(1126,'27074000','NAFTALENO (PRODSDA DESTILACAO DOS ALCATROES DE HUL'),(1127,'27075000','OUTSMISTURAS DOS HIDROCARBAROMATDESTIL>=65% A 250G'),(1128,'27076010','CRESOIS (FENOLICO)'),(1129,'27076090','OUTROS DERIVADOS FENOLICOS'),(1130,'27079100','OLEOS DE CREOSOTO'),(1131,'27079900','OUTSOLEOS E PRODSDA DESTILDOS ALCATROES DA HULHA,E'),(1132,'27081000','BREU OBTIDO DE ALCATROES MINERAIS'),(1133,'27082000','COQUE DE BREU OBTIDO DE ALCATROES MINERAIS'),(1134,'27090010','OLEOS BRUTOS DE PETROLEO'),(1135,'27090090','OLEOS BRUTOS DE MINERAIS BETUMINOSOS'),(1136,'27100041','GASOLEO (OLEO DIESEL)'),(1137,'27100042','FUEL-OIL (OLEO COMBUSTIVEL)'),(1138,'27100049','OUTROS OLEOS COMBUSTIVEIS'),(1139,'27100061','OLEOS LUBRIFICANTES SEM ADITIVOS'),(1140,'27100062','OLEOS LUBRIFICANTES COM ADITIVOS'),(1141,'27100021','GASOLINAS DE AVIACAO'),(1142,'27100029','OUTRAS GASOLINAS'),(1143,'27100031','QUEROSENES DE AVIACAO'),(1144,'27100039','OUTROS QUEROSENES'),(1145,'27100011','NAFTAS PARA PETROQUIMICA'),(1146,'27100019','OUTRAS NAFTAS'),(1147,'27100059','OUTRAS MISTURAS DE ALQUILIDENOS'),(1148,'27100051','DIISOBUTILENO (MISTURA DE ALQUILIDENOS)'),(1149,'27100099','OUTSOLEOS DE PETROLEO,MINERAIS BETUMINOSOS E PREPA'),(1150,'27100092','AGUARRAS MINERAL'),(1151,'27100091','HEXANO COMERCIAL'),(1152,'27100093','OLEOS MINERAIS BRANCOS (OLEOS DE VASELINA OU PARAF'),(1153,'27100095','OLEOS PARA ISOLAMENTO ELETRICO'),(1154,'27100094','LIQUIDOS PARA TRANSMISSOES HIDRAULICAS'),(1155,'27111100','GAS NATURAL,LIQUEFEITO'),(1156,'27111210','PROPANO EM BRUTO,LIQUEFEITO'),(1157,'27111290','OUTROS PROPANOS LIQUEFEITOS'),(1158,'27111300','BUTANOS LIQUEFEITOS'),(1159,'27111400','ETILENO,PROPILENO,BUTILENO E BUTADIENO,LIQUEFEITOS'),(1160,'27111990','OUTROS GASES LIQUEFEITOS DE HIDROCARBONETOS GASOSO'),(1161,'27111910','GAS LIQUEFEITO DE PETROLEO (GLP)'),(1162,'27112100','GAS NATURAL NO ESTADO GASOSO'),(1163,'27112910','BUTANOS NO ESTADO GASOSO'),(1164,'27112990','OUTSHIDROCARBGASOSOS E GAS PETROLEO,NO ESTADO GASO'),(1165,'27121000','VASELINA'),(1166,'27122000','PARAFINA CONTENDO PESO<075% DE OLEO'),(1167,'27129000','CERA DE PETROLEO MICROCRISTALINA,CERAS MINERAIS,ET'),(1168,'27131100','COQUE DE PETROLEO NAO CALCINADO'),(1169,'27131200','COQUE DE PETROLEO CALCINADO'),(1170,'27132000','BETUME DE PETROLEO'),(1171,'27139000','OUTSRESIDSDOS OLEOS DE PETROLEO,MINERAIS BETUMINOS'),(1172,'27141000','XISTOS E AREIAS BETUMINOSOS'),(1173,'27149000','BETUMES,ASFALTOS NATURAIS,ASFALTITAS,ROCHA ALFALTI'),(1174,'27150000','MISTURAS BETUMINOSAS A BASE DE ASFALTO,DE BETUMES,'),(1175,'27160000','ENERGIA ELETRICA'),(1176,'28011000','CLORO'),(1177,'28012090','OUTRAS FORMAS DE IODO'),(1178,'28012010','IODO SUBLIMADO'),(1179,'28013000','FLUOR E BROMO'),(1180,'28020000','ENXOFRE SUBLIMADO OU PRECIPITADO E ENXOFRE COLOIDA'),(1181,'28030011','NEGROS DE ACETILENO (NEGROS DE CARBONO)'),(1182,'28030019','OUTROS NEGROS DE CARBONO'),(1183,'28030090','OUTRAS FORMAS DE CARBONO'),(1184,'28041000','HIDROGENIO'),(1185,'28042100','ARGONIO (GASES RAROS)'),(1186,'28042910','HELIO LIQUIDO (GASES RAROS)'),(1187,'28042990','OUTROS GASES RAROS'),(1188,'28043000','NITROGENIO'),(1189,'28044000','OXIGENIO'),(1190,'28045000','BORO E TELURIO'),(1191,'28046100','SILICIO CONTENDO EM PESO>=9999% DE SILICIO'),(1192,'28046900','OUTROS SILICIOS'),(1193,'28047010','FOSFORO BRANCO'),(1194,'28047020','FOSFORO VERMELHO OU AMORFO'),(1195,'28047030','FOSFORO NEGRO'),(1196,'28048000','ARSENIO'),(1197,'28049000','SELENIO'),(1198,'28051100','SODIO (METAL ALCALINO)'),(1199,'28051900','OUTROS METAIS ALCALINOS'),(1200,'28052100','CALCIO (METAL ALCALINO TERROSO)'),(1201,'28052210','ESTRONCIO (METAL ALCALINO TERROSO)'),(1202,'28052220','BARIO (METAL ALCALINO TERROSO)'),(1203,'28053010','LIGA DE CERIO COM PESO<=5% DE FERRO (\"MISCHMETAL\")'),(1204,'28053090','OUTROS METAIS DE TERRAS RARAS,ESCANDIO E ITRIO'),(1205,'28054000','MERCURIO'),(1206,'28061010','CLORETO DE HIDROGENIO (ACCLORIDRICO),GASOSO,LIQUEF'),(1207,'28061020','CLORETO DE HIDROGENIO (ACCLORIDRICO),EM SOLUCAO AQ'),(1208,'28062000','ACIDO CLOROSSULFURICO'),(1209,'28070010','ACIDO SULFURICO'),(1210,'28070020','OLEUM (ACIDO SULFURICO FUMANTE)'),(1211,'28080010','ACIDO NITRICO'),(1212,'28080020','ACIDO SULFONITRICO'),(1213,'28091000','PENTOXIDO DE DIFOSFORO'),(1214,'28092011','ACIDO FOSFORICO COM TEOR DE ARSENIO>=8PPM'),(1215,'28092019','OUTROS ACIDOS FOSFORICOS'),(1216,'28092020','ACIDO METAFOSFORICO'),(1217,'28092030','ACIDO PIROFOSFORICO'),(1218,'28092090','OUTROS ACIDOS POLIFOSFORICOS'),(1219,'28100090','OXIDOS DE BORO E OUTROS ACIDOS BORICOS'),(1220,'28100010','ACIDO ORTOBORICO'),(1221,'28111100','FLUORETO DE HIDROGENIO (ACIDO FLUORIDRICO)'),(1222,'28111940','FLUORACIDOS E OUTROS COMPOSTOS DE FLUOR'),(1223,'28111930','ACIDO PERCLORICO'),(1224,'28111910','ACIDO AMINOSSULFONICO (ACIDO SULFAMICO)'),(1225,'28111990','OUTROS ACIDOS INORGANICOS'),(1226,'28111920','ACIDO FOSFONICO (ACIDO FOSFOROSO)'),(1227,'28111950','CIANETO DE HIDROGENIO'),(1228,'28112100','DIOXIDO DE CARBONO'),(1229,'28112210','DIOXIDO DE SILICIO OBTIDO POR PRECIPITACAO QUIMICA'),(1230,'28112230','GEL DE SILICA (DIOXIDO DE SILICIO)'),(1231,'28112220','DIOXIDO DE SILICIO TIPO AEROGEL'),(1232,'28112290','OUTROS DIOXIDOS DE SILICIO'),(1233,'28112300','DIOXIDO DE ENXOFRE'),(1234,'28112900','OUTSCOMPOSTOS OXIGENINORGANDOS ELEMENTOS N/METALIC'),(1235,'28121015','TRICLORETO DE ARSENIO'),(1236,'28121013','MONOCLORETO DE ENXOFRE'),(1237,'28121021','OXIDICLORETO DE ENXOFRE (CLORETO DE TIONILA)'),(1238,'28121014','DICLORETO DE ENXOFRE'),(1239,'28121022','OXITRICLORETO DE FOSFORO (CLORETO DE FOSFORILA)'),(1240,'28121012','PENTACLORETO DE FOSFORO'),(1241,'28121019','OUTROS DERIVADOS DO CLORETO'),(1242,'28121011','TRICLORETO DE FOSFORO'),(1243,'28121023','OXIDICLORETO DE CARBONO (FOSGENIO OU CLORETO CARBO'),(1244,'28121029','OUTROS OXICLORETOS DOS ELEMENTOS NAO METALICOS'),(1245,'28129000','OUTROS HALOGENETOS,OXIALOGENETOS DOS ELEMN/METALIC'),(1246,'28131000','DISSULFETO DE CARBONO'),(1247,'28139090','OUTSSULFETOS DOS ELEMN/METALE TRISSULFFOSFORO COM'),(1248,'28139010','PENTASSULFETO DE DIFOSFORO'),(1249,'28141000','AMONIACO ANIDRO'),(1250,'28142000','AMONIACO EM SOLUCAO AQUOSA (AMONIA)'),(1251,'28151100','HIDROXIDO DE SODIO (SODA CAUSTICA) SOLIDO'),(1252,'28151200','HIDROXIDO DE SODIO EM SOLAQUOSA (LIXIVSODA CAUSTIC'),(1253,'28152000','HIDROXIDO DE POTASSIO (POTASSA CAUSTICA)'),(1254,'28153000','PEROXIDOS DE SODIO OU DE POTASSIO'),(1255,'28161010','HIDROXIDO DE MAGNESIO'),(1256,'28161020','PEROXIDO DE MAGNESIO'),(1257,'28162000','OXIDO,HIDROXIDO E PEROXIDO DE ESTRONCIO'),(1258,'28163010','HIDROXIDO DE BARIO'),(1259,'28163090','OXIDO E PEROXIDO DE BARIO'),(1260,'28170010','OXIDO DE ZINCO (BRANCO DE ZINCO)'),(1261,'28170020','PEROXIDO DE ZINCO'),(1262,'28181010','CORINDO ARTIFICIAL,BRANCO,DE GRANULOMETRIA<=63 MIC'),(1263,'28181090','OUTROS CORINDOS ARTIFICIAIS,QUIMICAMDEFINIDO OU NA'),(1264,'28182010','ALUMINA CALCINADA'),(1265,'28182090','OUTROS OXIDOS DE ALUMINIO'),(1266,'28183000','HIDROXIDO DE ALUMINIO'),(1267,'28191000','TRIOXIDO DE CROMO'),(1268,'28199010','OXIDOS DE CROMO'),(1269,'28199020','HIDROXIDOS DE CROMO'),(1270,'28201000','DIOXIDO DE MANGANES'),(1271,'28209010','OXIDO MANGANOSO'),(1272,'28209020','TRIOXIDO DE DIMANGANES (SESQUIOXIDO DE MANGANES)'),(1273,'28209030','TETRAOXIDO DE TRIMANGANES (OXIDO SALINO DE MANGANE'),(1274,'28209040','HEPTAOXIDO DE DIMANGANES (ANIDRIDO PERMANGANICO)'),(1275,'28211011','OXIDO FERRICO COM TEOR DE FE2O3>=85%,EM PESO'),(1276,'28211019','OUTROS OXIDOS FERRICOS'),(1277,'28211030','HIDROXIDOS DE FERRO'),(1278,'28211020','OXIDO FERROSO-FERRICO (OXIDO MAGNETICO DE FERRO)'),(1279,'28211090','OUTROS OXIDOS DE FERRO'),(1280,'28212000','TERRAS CORANTES,PESO>=70% DE FERRO COMBINADO,EM FE'),(1281,'28220010','TETRAOXIDO DE TRICOBALTO (OXIDO SALINO DE COBALTO)'),(1282,'28220090','OUTSOXIDOS E HIDROXIDOS DE COBALTO,INCLOS COMERCIA'),(1283,'28230010','OXIDOS DE TITANIO,TIPO ANATASE'),(1284,'28230090','OUTROS OXIDOS DE TITANIO'),(1285,'28241000','MONOXIDO DE CHUMBO (LITARGIRIO,MASSICOTE)'),(1286,'28242000','MINIO (ZARCAO) E MINIO-LARANJA (\"MINE-ORANGE\")'),(1287,'28249000','OUTROS OXIDOS DE CHUMBO'),(1288,'28251010','HIDRAZINA E SEUS SAIS INORGANICOS'),(1289,'28251020','HIDROXILAMINA E SEUS SAIS INORGANICOS'),(1290,'28252010','OXIDO DE LITIO'),(1291,'28252020','HIDROXIDO DE LITIO'),(1292,'28253010','PENTOXIDO DE DIVANADIO'),(1293,'28253090','OUTROS OXIDOS E HIDROXIDOS DE VANADIO'),(1294,'28254010','OXIDO NIQUELOSO'),(1295,'28254090','OUTROS OXIDOS E HIDROXIDOS DE NIQUEL'),(1296,'28255010','OXIDO CUPRICO,COM TEOR DE CUO>=98%,EM PESO'),(1297,'28255090','OUTROS OXIDOS E HIDROXIDOS DE COBRE'),(1298,'28256010','OXIDOS DE GERMANIO'),(1299,'28256020','DIOXIDO DE ZIRCONIO'),(1300,'28257010','TRIOXIDO DE MOLIBDENIO'),(1301,'28257090','OUTROS OXIDOS E HIDROXIDOS DE MOLIBDENIO'),(1302,'28258010','TRIOXIDO DE ANTIMONIO'),(1303,'28258090','OUTROS OXIDOS DE ANTIMONIO'),(1304,'28259010','OXIDO DE CADMIO'),(1305,'28259090','OXIDOS,HIDROXIDOS E PEROXIDOS DE OUTROS METAIS,ETC'),(1306,'28259020','TRIOXIDO DE TUNGSTENIO (VOLFRAMIO)'),(1307,'28261190','OUTROS FLUORETOS DE AMONIO OU DE SODIO'),(1308,'28261110','FLUORETO ACIDO DE AMONIO'),(1309,'28261200','FLUORETOS DE ALUMINIO'),(1310,'28261990','OUTROS FLUORETOS'),(1311,'28261910','TRIFLUORETO DE CROMO'),(1312,'28262000','FLUOSSILICATOS DE SODIO OU DE POTASSIO'),(1313,'28263000','HEXAFLUORALUMINATO DE SODIO (CRIOLITA SINTETICA)'),(1314,'28269000','OUTSFLUOSSILICATOS,FLUORALUMINATOS,SAIS COMPLEXSFL'),(1315,'28271000','CLORETO DE AMONIO'),(1316,'28272010','CLORETO DE CALCIO,COM TEOR>=98% DE CACL2,EM BASE S'),(1317,'28272090','OUTROS CLORETOS DE CALCIO'),(1318,'28273110','CLORETO DE MAGNESIO,COM TEOR<98% MGCL2 E TEOR<=05%'),(1319,'28273190','OUTROS CLORETOS DE MAGNESIO'),(1320,'28273200','CLORETO DE ALUMINIO'),(1321,'28273300','CLORETO DE FERRO'),(1322,'28273400','CLORETO DE COBALTO'),(1323,'28273500','CLORETO DE NIQUEL'),(1324,'28273600','CLORETO DE ZINCO'),(1325,'28273999','OUTROS CLORETOS'),(1326,'28273800','CLORETO DE BARIO'),(1327,'28273950','CLORETO DE ANTIMONIO'),(1328,'28273910','CLORETO DE COBRE I (CLORETO CUPROSO,MONOCLORETO CO'),(1329,'28273930','CLORETO DE MERCURIO I (CLORETO MERCUROSO)'),(1330,'28273920','CLORETO DE TITANIO'),(1331,'28273960','CLORETO DE LITIO'),(1332,'28273970','CLORETO DE BISMUTO'),(1333,'28273991','CLORETO DE CADMIO'),(1334,'28273992','CLORETO DE CESIO'),(1335,'28273993','CLORETO DE CROMO'),(1336,'28273994','CLORETO DE ESTRONCIO'),(1337,'28273995','CLORETO DE MANGANES'),(1338,'28273940','CLORETO DE ZIRCONIO'),(1339,'28274110','OXICLORETOS DE COBRE'),(1340,'28274120','HIDROXICLORETOS DE COBRE'),(1341,'28274919','OUTROS OXICLORETOS'),(1342,'28274911','OXICLORETOS DE BISMUTO'),(1343,'28274912','OXICLORETOS DE ZIRCONIO'),(1344,'28274921','HIDROXICLORETOS DE ALUMINIO'),(1345,'28274929','OUTROS HIDROXICLORETOS'),(1346,'28275100','BROMETOS DE SODIO OU DE POTASSIO'),(1347,'28275900','OUTROS BROMETOS E OXIBROMETOS'),(1348,'28276012','IODETOS DE POTASSIO'),(1349,'28276011','IODETOS DE SODIO'),(1350,'28276019','OUTROS IODETOS'),(1351,'28276021','OXIIODETOS DE POTASSIO'),(1352,'28276029','OUTROS OXIIODETOS'),(1353,'28281000','HIPOCLORITOS DE CALCIO,INCLO COMERCIAL'),(1354,'28289011','HIPOCLORITOS DE SODIO'),(1355,'28289019','OUTROS HIPOCLORITOS'),(1356,'28289090','OUTROS CLORITOS E HIPOBROMITOS'),(1357,'28289020','CLORITO DE SODIO'),(1358,'28291100','CLORATOS DE SODIO'),(1359,'28291920','CLORATOS DE POTASSIO'),(1360,'28291910','CLORATOS DE CALCIO'),(1361,'28291990','OUTROS CLORATOS'),(1362,'28299050','PERCLORATOS'),(1363,'28299031','IODATOS DE POTASSIO'),(1364,'28299039','OUTROS IODATOS'),(1365,'28299032','IODATOS DE CALCIO'),(1366,'28299011','BROMATOS DE SODIO'),(1367,'28299012','BROMATOS DE POTASSIO'),(1368,'28299019','OUTROS BROMATOS'),(1369,'28299021','PERBROMATOS DE SODIO'),(1370,'28299022','PERBROMATOS DE POTASSIO'),(1371,'28299029','OUTROS PERBROMATOS'),(1372,'28299040','PERIODATOS'),(1373,'28301010','SULFETO DE DISSODIO'),(1374,'28301020','SULFETO DE MONOSSODIO (HIDROGENOSSULFETO DE SODIO)'),(1375,'28302000','SULFETO DE ZINCO'),(1376,'28303000','SULFETO DE CADMIO'),(1377,'28309011','SULFETOS DE MOLIBNEDIO IV (DISSULFETO DE MOLIBDENI'),(1378,'28309012','SULFETO DE BARIO'),(1379,'28309014','SULFETO DE CHUMBO'),(1380,'28309020','POLISSULFETOS'),(1381,'28309013','SULFETO DE POTASSIO'),(1382,'28309015','SULFETO DE ESTRONCIO'),(1383,'28309019','OUTROS SULFETOS'),(1384,'28311011','DITIONITOS (HIDROSSULFITOS) DE SODIO ESTABILIZADOS'),(1385,'28311019','OUTROS DITIONITOS (HIDROSSULFITOS) DE SODIO'),(1386,'28311021','SULFOXILATOS DE SODIO,ESTABILIZADOS COM FORMALDEID'),(1387,'28311029','OUTROS SULFOXILATOS DE SODIO'),(1388,'28319010','DITIONITO DE ZINCO'),(1389,'28319090','OUTROS DITIONITOS E SULFOXILATOS'),(1390,'28321090','OUTROS SULFITOS DE SODIO'),(1391,'28321010','SULFITO DE DISSODIO'),(1392,'28322000','OUTROS SULFITOS'),(1393,'28323020','TIOSSULFATO DE SODIO'),(1394,'28323090','OUTROS TIOSSULFATOS'),(1395,'28323010','TIOSSULFATO DE AMONIO'),(1396,'28331190','OUTROS SULFATOS DISSODICOS'),(1397,'28331110','SULFATO DISSODICO ANIDRO'),(1398,'28331900','OUTROS SULFATOS DE SODIO'),(1399,'28332100','SULFATO DE MAGNESIO'),(1400,'28332200','SULFATO DE ALUMINIO'),(1401,'28332300','SULFATO DE CROMO'),(1402,'28332400','SULFATO DE NIQUEL'),(1403,'28332510','SULFATO CUPROSO'),(1404,'28332520','SULFATO CUPRICO'),(1405,'28332600','SULFATO DE ZINCO'),(1406,'28332710','SULFATO DE BARIO COM TEOR EM PESO>=975% DE BASO4'),(1407,'28332790','OUTROS SULFATOS DE BARIO'),(1408,'28332910','SULFATO DE ANTIMONIO'),(1409,'28332950','SULFATO NEUTRO DE CHUMBO'),(1410,'28332990','OUTROS SULFATOS'),(1411,'28332930','SULFATO DE ESTRONCIO'),(1412,'28332920','SULFATO DE LITIO'),(1413,'28332940','SULFATO DE MERCURIO'),(1414,'28333000','ALUMES'),(1415,'28334020','PEROXOSSULFATO (PERSULFATO) DE AMONIO'),(1416,'28334090','OUTROS PEROXOSSULFATOS (PERSULFATOS)'),(1417,'28334010','PEROXOSSULFATO (PERSULFATO) DE SODIO'),(1418,'28341010','NITRITO DE SODIO'),(1419,'28341090','OUTROS NITRITOS'),(1420,'28342110','NITRATO DE POTASSIO,COM TEOR EM PESO<=98% DE KNO3'),(1421,'28342190','OUTROS NITRATOS DE POTASSIO'),(1422,'28342200','NITRATO DE BISMUTO'),(1423,'28342930','NITRATO DE ALUMINIO'),(1424,'28342990','OUTROS NITRATOS'),(1425,'28342910','NITRATO DE CALCIO COM TEOR EM PESO<=16% DE NITROGE'),(1426,'28342940','NITRATO DE LITIO'),(1427,'28342920','NITRATO DE MERCUCIO'),(1428,'28351011','FOSFINATO (HIPOFOSFITO) DE SODIO'),(1429,'28351019','OUTROS FOSFINATOS (HIPOFOSFITOS)'),(1430,'28351021','FOSFONATO (FOSFITO) DIBASICO DE CHUMBO'),(1431,'28351029','OUTROS FOSFONATOS (FOSFITOS)'),(1432,'28352970','FOSFATO DE TRIAMONIO'),(1433,'28352200','FOSFATO MONO OU DISSODICO'),(1434,'28352300','FOSFATO DE TRISSODIO'),(1435,'28352400','FOSFATO DE POTASSIO'),(1436,'28352500','FOSFATO HIDROGENO-ORTOFOSFATO DE CALCIO (DICALCICO'),(1437,'28352600','OUTROS FOSFATOS DE CALCIO'),(1438,'28352920','FOSFATO DE COBALTO'),(1439,'28352930','FOSFATO DE COBRE'),(1440,'28352940','FOSFATO DE CROMO'),(1441,'28352950','FOSFATO DE ESTRONCIO'),(1442,'28352910','FOSFATO DE FERRO'),(1443,'28352960','FOSFATO DE MANGANES'),(1444,'28352990','OUTROS FOSFATOS'),(1445,'28353100','TRIFOSFATO DE SODIO (TRIPOLIFOSFATO DE SODIO)'),(1446,'28353920','PIROFOSFATOS DE SODIO'),(1447,'28353930','PIROFOSFATO DE ZINCO'),(1448,'28353910','METAFOSFATOS DE SODIO'),(1449,'28353990','OUTROS POLIFOSFATOS'),(1450,'28361000','CARBONATOS DE AMONIO INCLUSIVE O COMERCIAL'),(1451,'28362010','CARBONATO DISSODICO ANIDRO'),(1452,'28362090','OUTROS CARBONATOS DISSODICOS'),(1453,'28363000','HIDROGENOCARBONATO (BICARBONATO) DE SODIO'),(1454,'28364000','CARBONATOS DE POTASSIO'),(1455,'28365000','CARBONATO DE CALCIO'),(1456,'28366000','CARBONATO DE BARIO'),(1457,'28367000','CARBONATO DE CHUMBO'),(1458,'28369100','CARBONATOS DE LITIO'),(1459,'28369200','CARBONATO DE ESTRONCIO'),(1460,'28369911','CARBONATO DE MAGNESIO COM DENSIDADE<200KG/M3'),(1461,'28369912','CARBONATO DE ZIRCONIO'),(1462,'28369919','OUTROS CARBONATOS'),(1463,'28369920','PEROXOCARBONATOS (PERCARBONATOS)'),(1464,'28371100','CIANETO E OXICIANETO DE SODIO'),(1465,'28371914','CIANETO DE COBRE I (CIANETO CUPROSO)'),(1466,'28371915','CIANETO DE COBRE II (CIANETO CUPRICO)'),(1467,'28371920','OUTROS OXIANETOS'),(1468,'28371911','CIANETO DE POTASSIO'),(1469,'28371912','CIANETO DE ZINCO'),(1470,'28371913','CIANETO DE MERCURIO'),(1471,'28371919','OUTROS CIANETOS'),(1472,'28372011','FERROCIANETO DE SODIO'),(1473,'28372021','FERRICIANETO DE POTASSIO'),(1474,'28372012','FERROCIANETO DE FERRO II (FERROCIANETO FERROSO)'),(1475,'28372019','OUTROS FERROCIANETOS'),(1476,'28372022','FERRICIANETO DE FERRO II (FERRICIANETO FERROSO)'),(1477,'28372023','FERRICIANETO DE FERRO III (FERRICIANETO FERRICO)'),(1478,'28372029','OUTROS FERRICIANETOS'),(1479,'28372090','OUTROS CIANETOS COMPLEXOS'),(1480,'28380090','FULMINATOS,CIANATOS E OUTROS TIOCIANATOS'),(1481,'28380010','TIOCIANATO DE SODIO'),(1482,'28391100','METASSILICATOS DE SODIO'),(1483,'28391900','OUTROS SILICATOS DE SODIO'),(1484,'28392000','SILICATO DE POTASSIO'),(1485,'28399020','SILICATO DE ALUMINIO'),(1486,'28399040','SILICATO DE CHUMBO'),(1487,'28399010','SILICATO DE MAGNESIO'),(1488,'28399030','SILICATO DE ZIRCONIO'),(1489,'28399090','OUTROS SILICATOS'),(1490,'28401100','TETRABORATO DISSODICO (BORAX REFINADO) ANIDRO'),(1491,'28401900','OUTROS TETRABORATOS DISSODICOS (BORAX REFINADO)'),(1492,'28402000','OUTROS BORATOS'),(1493,'28403000','PEROXOBORATOS (PERBORATOS)'),(1494,'28411010','ALUMINATO DE SODIO'),(1495,'28411020','ALUMINATO DE MAGNESIO'),(1496,'28411030','ALUMINATO DE BISMUTO'),(1497,'28411090','OUTROS ALUMINATOS'),(1498,'28412000','CROMATOS DE ZINCO OU DE CHUMBO'),(1499,'28413000','DICROMATO DE SODIO'),(1500,'28414000','DICROMATO DE POTASSIO'),(1501,'28415011','CROMATO DE AMONIO E DICROMATO DE AMONIO'),(1502,'28415019','OUTROS CROMATOS E DICROMATOS'),(1503,'28415012','CROMATO DE POTASSIO'),(1504,'28415013','CROMATO DE SODIO'),(1505,'28415020','PEROXOCROMATOS'),(1506,'28416100','PERMANGANATO DE POTASSIO'),(1507,'28416910','MANGANITOS'),(1508,'28416920','MANGANATOS'),(1509,'28416930','OUTROS PERMANGANATOS'),(1510,'28417010','MOLIBDATO DE AMONIO'),(1511,'28417020','MOLIBDATO DE SODIO'),(1512,'28417090','OUTROS MOLIBDATOS'),(1513,'28418090','OUTROS TUNGSTATOS (VOLFRAMATOS)'),(1514,'28418010','TUNGSTATO (VOLFRAMATO) DE AMONIO'),(1515,'28418020','TUNGSTATO (VOLFRAMATO) DE CHUMBO'),(1516,'28419049','OUTROS ESTANATOS'),(1517,'28419041','ESTANATO DE BARIO'),(1518,'28419042','ESTANATO DE BISMUTO'),(1519,'28419043','ESTANATO DE CALCIO'),(1520,'28419021','FERRITO DE BARIO'),(1521,'28419029','OUTROS FERRITOS E FERRATOS'),(1522,'28419011','TITANATO DE CHUMBO'),(1523,'28419012','TITANATOS DE BARIO OU DE BISMUTO'),(1524,'28419013','TITANATOS DE CALCIO OU DE ESTRONCIO'),(1525,'28419014','TITANATO DE MAGNESIO'),(1526,'28419015','TITANATOS DE LANTANIO OU DE NEODIMIO'),(1527,'28419019','OUTROS TITANATOS'),(1528,'28419030','VANADATOS'),(1529,'28419050','PLUMBATOS'),(1530,'28419070','ZINCATOS'),(1531,'28419060','ANTIMONIATOS'),(1532,'28419090','OUTROS SAIS DOS ACIDOS OXOMETALICOS OU PEROXOMETAL'),(1533,'28421000','SILICATOS DUPLOS OU COMPLEXOS'),(1534,'28429000','OUTROS SAIS DOS ACIDOS OU PEROXOACIDOS INORGANICOS'),(1535,'28431000','METAIS PRECIOSOS NO ESTADO COLOIDAL'),(1536,'28432100','NITRATO DE PRATA'),(1537,'28432910','VITELINATO DE PRATA'),(1538,'28432990','OUTROS COMPOSTOS DE PRATA'),(1539,'28433090','OUTROS COMPOSTOS DE OURO'),(1540,'28433010','SULFETO DE OURO EM DISPERSAO DE GELATINA'),(1541,'28439000','OUTSCOMPOSTOS INORG/ORGAMALGAMAS,DE METAIS PRECIOS'),(1542,'28441000','URANIO NATURAL E SEUS COMPOSTOS,LIGAS,DISPERSOES,E'),(1543,'28442000','URANIO ENRIQUECIDO EM U235,PLUTONIO,SEUS COMPOSTOS'),(1544,'28443000','URANIO EMPOBRECIDO EM U235,TORIO,SEUS COMPOSTOS,ET'),(1545,'28444010','MOLIBDENIO 99 ABSORVEM ALUMINA,P/OBTENCAO TECNECIO'),(1546,'28444020','COBALTO 60'),(1547,'28444090','OUTROS ELEMENTOS,ISOTOPOS E COMPOSTOS,RADIOATIVOS,'),(1548,'28444030','IODO 131'),(1549,'28445000','ELEMENTOS COMBUSTIVEIS,USADOS,DE REATORES NUCLEARE'),(1550,'28451000','AGUA PESADA (OXIDO DE DEUTERIO)'),(1551,'28459000','OUTROS ISOTOPOS E SEUS COMPOSTOS INORGANOU ORGANIC'),(1552,'28461010','OXIDO CERICO'),(1553,'28461090','OUTROS COMPOSTOS DE CERIO'),(1554,'28469010','OXIDO DE PRASEODIMIO'),(1555,'28469020','CLORETOS DOS DEMAIS METAIS DAS TERRAS RARAS'),(1556,'28469090','OUTSCOMPOSTOS DOS METAIS DAS TERRAS RARAS,DE ITRIO'),(1557,'28469030','GADOPENTETATO DE DIMEGLUMINA'),(1558,'28470000','PEROXIDO DE HIDROGENIO (AGUA OXIGENADA)'),(1559,'28480030','FOSFETO DE COBRE,CONTENDO PESO>15% DE FOSFORO'),(1560,'28480010','FOSFETO DE ALUMINIO'),(1561,'28480020','FOSFETO DE MAGNESIO'),(1562,'28480090','OUTROS FOSFETOS DE CONSTITUICAO QUIMICA DEFINIDA O'),(1563,'28491000','CARBONETO DE CALCIO'),(1564,'28492000','CARBONETO DE SILICIO'),(1565,'28499090','OUTROS CARBONETOS DE CONSTITQUIMICA DEFINIDA OU NA'),(1566,'28499010','CARBONETO DE BORO'),(1567,'28499020','CARBONETO DE TANTALO'),(1568,'28499030','CARBONETO DE TUNGSTENIO (VOLFRAMIO)'),(1569,'28500010','NITRETO DE BORO'),(1570,'28500090','HIDRETOS,AZIDAS,BORETOS E OUTROS NITRETOS E SILICI'),(1571,'28500020','SILICIETO DE CALCIO'),(1572,'28510090','OUTSCOMPOSTOS INORGANICOS,AR LIQUIDO,AR COMPRIMIDO'),(1573,'28510010','CIANAMIDA E SEUS DERIVADOS METALICOS'),(1574,'28510020','SULFOCLORETOS DE FOSFORO'),(1575,'28510031','CLORETO DE CIANOGENIO'),(1576,'28510039','CIANOGENIO E SEUS OUTROS HALOGENETOS'),(1577,'29011000','HIDROCARBONETOS ACICLICOS SATURADOS'),(1578,'29012100','ETILENO NAO SATURADO'),(1579,'29012200','PROPENO (PROPILENO) NAO SATURADO'),(1580,'29012300','BUTENO (BUTILENO) NAO SATURADO E SEUS ISOMEROS'),(1581,'29012410','BUTA-1,3-DIENO NAO SATURADO'),(1582,'29012420','ISOPRENO NAO SATURADO'),(1583,'29012900','OUTROS HIDROCARBONETOS ACICLICOS NAO SATURADOS'),(1584,'29021100','CICLOEXANO'),(1585,'29021910','LIMONENO'),(1586,'29021990','OUTSHIDROCARBONETOS CICLANICOS,CICLENICOS,CICLOTER'),(1587,'29022000','BENZENO'),(1588,'29023000','TOLUENO'),(1589,'29024100','O-XILENO'),(1590,'29024200','M-XILENO'),(1591,'29024300','P-XILENO'),(1592,'29024400','MISTURA DE ISOMEROS DO XILENO'),(1593,'29025000','ESTIRENO'),(1594,'29026000','ETILBENZENO'),(1595,'29027000','CUMENO'),(1596,'29029010','DIFENILA (1,1-BIFENILA)'),(1597,'29029020','NAFTALENO (HIDROCARBONETO CICLICO)'),(1598,'29029030','ANTRACENO'),(1599,'29029090','OUTROS HIDROCARBONETOS CICLICOS'),(1600,'29029040','ALFA-METILESTIRENO'),(1601,'29031110','CLOROMETANO (CLORETO DE METILA)'),(1602,'29031120','CLOROETANO (CLORETO DE ETILA)'),(1603,'29031200','DICLOROMETANO (CLORETO DE METILENO)'),(1604,'29031300','CLOROFORMIO (TRICLOROMETANO)'),(1605,'29031400','TETRACLORETO DE CARBONO'),(1606,'29031500','1,2-DICLOROETANO (CLORETO DE ETILENO)'),(1607,'29031600','1,2-DICLOROPROPANO (CLORETO PROPILENO) E DICLOROBU'),(1608,'29031910','1,1,1-TRICLOROETANO (METILCLOROFORMIO)'),(1609,'29031920','1,1,2-TRICLOROETANO'),(1610,'29031990','OUTSDERIVADOS CLORADOS SATURADDOS HIDROCARBACICLIC'),(1611,'29032100','CLORETO DE VINILA (CLOROETILENO)'),(1612,'29032200','TRICLOROETILENO'),(1613,'29032300','TETRACLOROETILENO (PERCLOROETILENO)'),(1614,'29032900','OUTSDERIVSCLORADOS N/SATURADDOS HIDROCARBACICLICOS'),(1615,'29033011','1,1,1,2-TETRAFLUORETANO'),(1616,'29033012','1,1,3,3,3-PENTAFLUOR-2-(TRIFLUORMETIL)PROP-1-ENO'),(1617,'29033019','OUTSDERIVADOS FLUORADOS DOS HIDROCARBONETOS ACICLI'),(1618,'29033021','BROMOMETANO'),(1619,'29033029','OUTSDERIVADOS BROMADOS DOS HIDROCARBONETOS ACICLIC'),(1620,'29033032','IODOFORMIO'),(1621,'29033031','IODOETANO'),(1622,'29033039','OUTROS DERIVADOS IODADOS DOS HIDROCARBONETOS ACICL'),(1623,'29034200','DICLORODIFLUORMETANO'),(1624,'29034100','TRICLOROFLUORMETANO'),(1625,'29034510','CLOROTRIFLUORMETANO'),(1626,'29034911','CLORODIFLUORMETANO'),(1627,'29034300','TRICLOROTRIFLUORETANOS'),(1628,'29034400','DICLOROTETRAFLUORETANOS E CLOROPENTAFLUORETANO'),(1629,'29034520','PENTACLOROFLUORETANO'),(1630,'29034530','TETRACLORODIFLUORETANOS'),(1631,'29034912','CLOROFLUORETANOS'),(1632,'29034931','HALOTANO (BROMOCLOROTRIFLUORETANO)'),(1633,'29034939','OUTROS DERIVADOS DO BROMOCLOROTRIFLUORETANO'),(1634,'29034700','OUTSDERIVSPERALOGDOS HIDROCARBACICLC/2 HALOGDIFER'),(1635,'29034919','OUTSDERIVSDO METANO,ETANO,ETCHALOGENC/FLUOR E CLOR'),(1636,'29034600','BROMOCLORODIFLUORMETANO,BROMOTRIFLUORMETANO,ETC'),(1637,'29034920','DERIVSDO METANO,ETANO,PROPANO,HALOGENC/FLUOR E BRO'),(1638,'29034541','HEPTACLOROFLUORPROPANOS'),(1639,'29034542','HEXACLORODIFLUORPROPANOS'),(1640,'29034543','PENTACLOROTRIFLUORPROPANOS'),(1641,'29034544','TETRACLOROTETRAFLUORPROPANOS'),(1642,'29034545','TRICLOROPENTAFLUORPROPANOS'),(1643,'29034546','DICLOROEXAFLUORPROPANOS'),(1644,'29034547','CLOROEPTAFLUORPROPANOS'),(1645,'29034590','OUTSDERIVSPERALOGDOS HIDROCARBACICLC/FLUOR E CLORO'),(1646,'29034990','OUTSDERIVSHALOGENDOS HIDROCACICLC/2 HALOGENDIFER'),(1647,'29035110','LINDANO (1,2,3,4,5,6-HEXACLOROCICLOEXANO)'),(1648,'29035190','OUTROS DERIVADOS DO 1,2,3,4,5,6-HEXACLOROCICLOEXAN'),(1649,'29035910','ALDRIN (DERIVHALOGENDOS HIDROCARBONCICLANICOS,ETC)'),(1650,'29035920','HEPTACLORO (DERIVHALOGENDOS HIDROCARBCICLANICOS,ET'),(1651,'29035990','OUTSDERIVSHALOGENDOS HIDROCARBONETOS CICLANICOS,ET'),(1652,'29036110','CLOROBENZENO'),(1653,'29036120','O-DICLOROBENZENO'),(1654,'29036130','P-DICLOROBENZENO'),(1655,'29036210','HEXACLOROBENZENO'),(1656,'29036220','DDT [1,1,1-TRICLORO-2,2-BIS(P-CLOROFENIL)ETANO]'),(1657,'29036929','OUTSDERIVADOS HALOGENDOS HIDROCARBAROMATICOS C/BRO'),(1658,'29036911','CLORETO DE BENZILA'),(1659,'29036912','P-CLOROTOLUENO'),(1660,'29036913','CLORETO DE NEOFILA'),(1661,'29036923','BROMODIFENILMETANO'),(1662,'29036914','TRICLOROBENZENOS'),(1663,'29036919','OUTSDERIVSHALOGENDOS HIDROCARBAROMATICOS COM CLORO'),(1664,'29036990','OUTSDERIVSHALOGENADOS DOS HIDROCARBONETOS AROMATIC'),(1665,'29036916','CLORETO DE BENZILIDENO'),(1666,'29036915','CLORONAFTALENOS'),(1667,'29036922','BROMETOS DE XILILA'),(1668,'29036917','CLORETOS DE XILILA'),(1669,'29036921','BROMOBENZENO'),(1670,'29036931','4-CLORO-ALFA,ALFA,ALFA-TRIFLUORTOLUENO'),(1671,'29036939','OUTSDERIVSHALOGENDOS HIDROCARBAROMATC/CLORO,FLUOR'),(1672,'29041020','ACIDO DODECILBENZENOSSULFONICO E SEUS SAIS'),(1673,'29041060','ACIDO BENZENOSSULFONICO E SEUS SAIS'),(1674,'29041011','ACIDO METANOSSULFONICO'),(1675,'29041051','NAFTALENOSSULFONATOS DE SODIO'),(1676,'29041052','ACIDO BETA-NAFTALENOSSULFONICO'),(1677,'29041053','ACIDO ALQUIL E DIAQUILNAFTALENOSSULFONICO E SEUS S'),(1678,'29041059','OUTSACIDOS NAFTALENOSSULFONICOS,SAIS,ESTERES ETILI'),(1679,'29041040','ACIDO ETANOSSULFONICO E ACIDO ETILENOSSULFONICO'),(1680,'29041012','METANOSSULFONATO DE CHUMBO'),(1681,'29041013','METANOSSULFONATO DE ESTANHO'),(1682,'29041019','OUTROS DERIVADOS DO ACIDO METANOSSULFONICO E SEUS '),(1683,'29041030','ACIDO TOLUENOSSULFONICO,XILENOSSULFONICO E SEUS SA'),(1684,'29041090','OUTSDERIVADOS SULFONADOS DOS HIDROCARBONETOS,SAIS,'),(1685,'29042059','OUTROS DERIVADOS NITRADOS DO BENZENO'),(1686,'29042030','DINITROTOLUENOS'),(1687,'29042041','2,4,6-TRINITROTOLUENO (TNT)'),(1688,'29042049','OUTROS TRINITROTOLUENOS'),(1689,'29042051','NITROBENZENO'),(1690,'29042060','DERIVADOS NITRADOS DO XILENO'),(1691,'29042090','OUTSDERIVSNITRADOS OU NITROSADOS DOS HIDROCARBONET'),(1692,'29042020','NITROPROPANOS'),(1693,'29042052','1,3,5-TRINITROBENZENO'),(1694,'29042010','MONONITROTOLUENOS (MNT)'),(1695,'29042070','MONONITROETANO E NITROMETANOS'),(1696,'29049030','CLORETO DE P-TOLUENOSSULFONILA (CLORETO DE TOSILA)'),(1697,'29049090','OUTSDERIVSSULFONADOS,NITRADOS,ETCDOS HIDROCARBONET'),(1698,'29049012','1-CLORO-2,4-DINITROBENZENO'),(1699,'29049013','2-CLORO-1,3-DINITROBENZENO'),(1700,'29049016','1,2-DICLORO-4-NITROBENZENO'),(1701,'29049017','TRICLORONITROMETANO (CLOROPICRINA)'),(1702,'29049015','O-NITROCLOROBENZENO E M-NITROCLOROBENZENO'),(1703,'29049011','1-CLORO-4-NITROBENZENO'),(1704,'29049019','OUTROS DERIVADOS NITROALOGENADOS DOS HIDROCARBONET'),(1705,'29049014','4-CLORO-ALFA,ALFA,ALFA-TRIFLUOR-3,5-DINITROTOLUENO'),(1706,'29049021','ACIDO DINITROESTILBENODISSULFONICO'),(1707,'29049029','OUTROS DERIVADOS NITROSSULFONADOS DOS HIDROCARBONE'),(1708,'29049040','CLORETO DE O-TOLUENOSSULFONILA'),(1709,'29051100','METANOL (ALCOOL METILICO)'),(1710,'29051210','ALCOOL PROPILICO (PROPAN-1-OL)'),(1711,'29051220','ALCOOL ISOPROPILICO (PROPAN-2-OL)'),(1712,'29051300','BUTAN-1-OL (ALCOOL N-BUTILICO)'),(1713,'29051420','ALCOOL SEC-BUTILICO'),(1714,'29051410','ALCOOL ISOBUTILICO'),(1715,'29051430','ALCOOL TER-BUTILICO'),(1716,'29051500','PENTANOL (ALCOOL AMILICO) E SEUS ISOMEROS'),(1717,'29051600','OCTANOL (ALCOOL OCTILICO) E SEUS ISOMEROS'),(1718,'29051710','ALCOOL LAURILICO (DODECAN-1-OL)'),(1719,'29051720','ALCOOL CETILICO (HEXADECAN-1-OL)'),(1720,'29051730','ALCOOL ESTEARICO (OCTADECAN-1-OL)'),(1721,'29051911','N-DECANOL'),(1722,'29051991','4-METILPENTAN-2-OL'),(1723,'29051929','OUTROS ALCOOLATOS METALICOS'),(1724,'29051921','ETILATO DE MAGNESIO'),(1725,'29051922','METILATO DE SODIO'),(1726,'29051923','ETILATO DE SODIO'),(1727,'29051919','OUTROS DECANOIS,SATURADOS'),(1728,'29051999','OUTROS MONOALCOOIS SATURADOS'),(1729,'29051912','ISODECANOL'),(1730,'29051992','ISONONANOL'),(1731,'29051993','ISOTRIDECANOL'),(1732,'29051994','TETRAIDROLINALOL (3,7-DIMETILOCTAN-3-OL)'),(1733,'29051995','3,3-DIMETILBUTAN-2-OL (ALCOOL PINACOLILICO)'),(1734,'29052910','ALCOOL ALILICO'),(1735,'29052290','OUTROS ALCOOIS TERPENICOS ACICLICOS,NAO SATURADOS'),(1736,'29052210','LINALOL'),(1737,'29052220','GERANIOL'),(1738,'29052230','DIIDROMIRCENOL (2,6-DIMETIL-7-OCTEN-2-OL)'),(1739,'29052990','OUTROS MONOALCOOIS NAO SATURADOS'),(1740,'29053100','ETILENOGLICOL (ETANODIOL)'),(1741,'29053200','PROPILENOGLICOL (PROPANO-1,2-DIOL)'),(1742,'29053910','2-METIL-2,4-PENTANODIOL (HEXILENOGLICOL)'),(1743,'29053920','TRIMETILENOGLICOL (1,3-PROPANODIOL)'),(1744,'29053990','OUTROS ALCOOIS DIOIS,NAO SATURADOS'),(1745,'29053930','1,3-BUTILENOGLICOL (1,3-BUTANODIOL)'),(1746,'29054100','2-ETIL-2-(HIDROXIMETIL)PROPANO-1,3-DIOL (TRIMETIOL'),(1747,'29054200','PENTAERITRITOL (PENTAERITRITA)'),(1748,'29054300','MANITOL'),(1749,'29054400','D-GLUCITOL (SORBITOL) (POLIALCOOL)'),(1750,'29054900','OUTROS POLIALCOOIS,NAO SATURADOS'),(1751,'29055010','HIDRATO DE CLORAL'),(1752,'29055020','ETCLORVINOL (\"ETHCHLORVYNOL\")'),(1753,'29055090','OUTSDERIVSHALOGENETCDOS ALCOOIS ACICLICOS,N/SATURA'),(1754,'29061100','MENTOL'),(1755,'29061200','CICLOEXANOL,METILCICLOEXANOIS E DIMETILCICLOEXANOI'),(1756,'29061300','ESTEROIS E INOSITOIS'),(1757,'29061400','TERPINEOIS'),(1758,'29061990','OUTROS ALCOOIS CICLANICOS,CICLENICOS E CICLOTERPEN'),(1759,'29061920','BORNEOL E ISOBORNEOL'),(1760,'29061930','TERPINA E SEU HIDRATO'),(1761,'29061940','ALCOOL FENCHILICO (1,3,3-TRIMETIL-2-NORBORNANOL)'),(1762,'29061910','DERIVADOS DO MENTOL'),(1763,'29062100','ALCOOL BENZILICO'),(1764,'29062910','2-FENILETANOL'),(1765,'29062920','DICOFOL'),(1766,'29062990','OUTROS ALCOOIS CICLICOS AROMATICOS E SEUS DERIVADO'),(1767,'29071100','FENOL (HIDROXIBENZENO) E SEUS SAIS'),(1768,'29071200','CRESOIS E SEUS SAIS'),(1769,'29071300','OCTILFENOL,NONILFENOL,SEUS ISOMEROS E SAIS'),(1770,'29071400','XILENOIS E SEUS SAIS'),(1771,'29071590','OUTROS NAFTOIS E SEUS SAIS'),(1772,'29071510','BETA-NAFTOL E SEUS SAIS'),(1773,'29071910','2,6-DI-TER-BUTIL-P-CRESOL E SEUS SAIS'),(1774,'29071920','O-FENILFENOL E SEUS SAIS'),(1775,'29071930','P-TER-BUTILFENOL E SEUS SAIS'),(1776,'29071990','OUTROS MONOFENOIS'),(1777,'29072100','RESORCINOL E SEUS SAIS'),(1778,'29072200','HIDROQUINONA E SEUS SAIS'),(1779,'29072300','4-4-ISOPROPILIDENODIFENOL E SEUS SAIS'),(1780,'29072900','OUTROS POLIFENOIS'),(1781,'29145020','1,8-DIIDROXI-3-METIL-9-ANTRONA E SUA FORMA ENOLICA'),(1782,'29073000','FENOIS-ALCOOIS'),(1783,'29081011','4-CLORO-M-CRESOL E SEUS SAIS'),(1784,'29081016','PENTACLOROFENOL E SEUS SAIS'),(1785,'29081012','DICLOROFENOIS E SEUS SAIS'),(1786,'29081013','P-CLOROFENOL'),(1787,'29081014','TRICLOROFENOIS E SEUS SAIS'),(1788,'29081019','OUTSDERIVHALOGDOS FENOIS/FENOIS-ALCOOIS,SAIS,C/CLO'),(1789,'29081021','2,4,6-TRIBROMOFENOL'),(1790,'29081015','TETRACLOROFENOIS E SEUS SAIS'),(1791,'29081029','OUTSDERIVHALOGDOS FENOIS/FENOIS-ALCOOIS,SAIS,C/BRO'),(1792,'29081090','OUTSDERIVSHALOGDOS FENOIS/FENOIS-ALCOOIS E SEUS SA'),(1793,'29082010','DERIVADOS SULFONADOS DOS FENOIS,SEUS SAIS E ESTERE'),(1794,'29082090','DERIVADOS SULFONADOS DOS FENOIS-ALCOOIS,SAIS E EST'),(1795,'29089011','4,6-DINITRO-O-CRESOL E SEUS SAIS'),(1796,'29089019','OUTSDERIVNITRADOS DOS FENOIS/FENOIS-ALCOOIS,SEUS S'),(1797,'29089012','P-NITROFENOL E SEUS SAIS'),(1798,'29089021','DISOFENOL'),(1799,'29089013','ACIDO PICRICO'),(1800,'29089029','OUTSDERIVSNITROALOGENADOS DOS FENOIS/FENOIS-ALCOOI'),(1801,'29089090','OUTSDERIVADOS NITROSADOS,ETCDOS FENOIS/FENOIS-ALCO'),(1802,'29091100','ETER DIETILICO (OXIDO DE DIETILA)'),(1803,'29091910','ETER METIL-TER-BUTILICO (MTBE)'),(1804,'29091990','OUTSETERES ACICLICOS E SEUS DERIVADOS HALOGENADOS,'),(1805,'29092000','ETERES CICLANICOS,CICLENICOS,CICLOTERPENICOS E DER'),(1806,'29093011','ANETOL'),(1807,'29093012','ETER DIFENILICO (ETER FENILICO)'),(1808,'29093014','ETER FENILETIL-ISOAMILICO'),(1809,'29093013','ETER DIBENZILICO (ETER BENZILICO)'),(1810,'29093019','OUTROS ETERES AROMATICOS'),(1811,'29093029','OUTROS DERIVADOS HALOGENADOS,ETCDOS ETERES AROMATI'),(1812,'29093021','OXIFLUORFENO'),(1813,'29094100','2,2-OXIDIETANOL (DIETILENOGLICOL)'),(1814,'29094200','ETERES MONOMETILICOS DO ETILENOGLICOL/DIETILENOGLI'),(1815,'29094310','ETERES MONOBUTILICOS DO ETILENOGLICOL'),(1816,'29094320','ETERES MONOBUTILICOS DO DIETILENOGLICOL'),(1817,'29094411','ETER ETILICO DO ETILENOGLICOL'),(1818,'29094421','ETER ETILICO DO DIETILENOGLICOL'),(1819,'29094412','ETER ISOBUTILICO DO ETILENOGLICOL'),(1820,'29094413','ETER HEXILICO DO ETILENOGLICOL'),(1821,'29094419','OUTROS ETERES MONOALQUILICOS DO ETILENOGLICOL'),(1822,'29094429','OUTROS ETERES MONOALQUILICOS DO DIETILENOGLICOL'),(1823,'29094910','GUAIFENESINA'),(1824,'29094921','TRIETILENOGLICOL'),(1825,'29094931','DIPROPILENOGLICOL'),(1826,'29094990','OUTROS ETERES-ALCOOIS E SEUS DERIVADOS HALOGENADOS'),(1827,'29094950','ALCOOL FENOXIBENZILICO'),(1828,'29094922','TETRAETILENOGLICOL'),(1829,'29094923','PENTAETILENOGLICOL E SEUS ETERES'),(1830,'29094924','ETER FENILICO DO ETILENOGLICOL'),(1831,'29094929','OUTROS ETILENOGLICOIS E SEUS ETERES'),(1832,'29094932','ETERES DO MONO-,DI- E TRIPROPILENOGLICOL'),(1833,'29094939','OUTROS PROPILENOGLICOIS E SEUS ETERES'),(1834,'29094941','ETER ETILICO DO BUTILENOGLICOL'),(1835,'29094949','BUTILENOGLICOIS E OUTROS ETERES'),(1836,'29095090','ETERES-ALCOOIS-FENOIS E SEUS DERIVADOS HALOGENADOS'),(1837,'29095012','EUGENOL'),(1838,'29095013','ISOEUGENOL'),(1839,'29095011','TRICLOSAN'),(1840,'29095019','OUTROS ETERES-FENOIS'),(1841,'29096020','PEROXIDOS DE ALCOOIS,ETERES,CETONAS,DERIVSHALOGENE'),(1842,'29096013','HIDROPEROXIDO DE P-MENTANO'),(1843,'29096011','HIDROPEROXIDO DE DIISOPROPILBENZENO'),(1844,'29096012','HIDROPEROXIDO DE TER-BUTILA'),(1845,'29096019','OUTSHIDROPEROXIDOS DE ALCOOIS,ETERES,CETONAS E DER'),(1846,'29101000','OXIRANO (OXIDO DE ETILENO)'),(1847,'29102000','METILOXIRANO (OXIDO DE PROPILENO)'),(1848,'29103000','1-CLORO-2,3-EPOXIPROPANO (EPICLORIDRINA)'),(1849,'29109010','OXIDO DE ESTIRENO'),(1850,'29109090','OUTROS EPOXIDOS,EPOXIALCOOIS,ETCCOM 3 ATOMOS NO CI'),(1851,'29110090','OUTROS ACETAIS,SEMI-ACETAIS E SEUS DERIVSHALOGENET'),(1852,'29110010','DIMETILACETAL DO 2-NITROBENZALDEIDO'),(1853,'29121100','METANAL (FORMALDEIDO)'),(1854,'29121200','ETANAL (ACETALDEIDO)'),(1855,'29121300','BUTANAL (BUTIRALDEIDO,ISOMERO NORMAL)'),(1856,'29121921','CITRAL'),(1857,'29121911','GLIOXAL'),(1858,'29121929','OUTROS MONOALDEIDOS NAO SATURADOS'),(1859,'29121991','HEPTANAL'),(1860,'29121922','CITRONELAL (3,7-DIMETIL-6-OCTENAL)'),(1861,'29121919','OUTROS DIALDEIDOS'),(1862,'29121912','GLUTARALDEIDO'),(1863,'29121923','BERGAMAL (3,7-DIMETIL-2-METILENO-6-OCTENAL)'),(1864,'29121999','OUTSALDEIDOS ACICLICOS N/CONTOUTSFUNCOES OXIGENADA'),(1865,'29122100','BENZALDEIDO (ALDEIDO BENZOICO)'),(1866,'29122910','ALDEIDO ALFA-AMILCINAMICO'),(1867,'29122920','ALDEIDO ALFA-HEXILCINAMICO'),(1868,'29122990','OUTROS ALDEIDOS CICLICOS N/CONTOUTSFUNCOES OXIGENA'),(1869,'29123090','OUTROS ALDEIDOS-ALCOOIS'),(1870,'29123010','4-(4-HIDROXI-4METILPENTIL)-3-CICLOEXENO-1-CARBOXIA'),(1871,'29124100','VANILINA (ALDEIDO METILPROTOCATEQUICO)'),(1872,'29124200','ETILVANILINA (ALDEIDO ETILPROTOCATEQUICO)'),(1873,'29124910','3-FENOXIBENZALDEIDO'),(1874,'29124930','3,4,5-TRIMETOXIBENZALDEIDO'),(1875,'29124920','3-HIDROXIBENZALDEIDO'),(1876,'29124990','OUTROS ALDEIDOS-ETERES,ALDEIDOS-FENOIS E C/FUNCOES'),(1877,'29125000','POLIMEROS CICLICOS DOS ALDEIDOS'),(1878,'29126000','PARAFORMALDEIDO'),(1879,'29130010','TRICLOROACETALDEIDO'),(1880,'29130090','OUTSDERIVADOS HALOGENADOS,SULFONADOS,ETCDOS ALDEID'),(1881,'29141100','ACETONA NAO CONTENDO OUTRAS FUNCOES OXIGENADAS'),(1882,'29141200','BUTANONA (METILETILCETONA)'),(1883,'29141300','4-METILPENTAN-2-ONA (METILISOBUTILCETONA)'),(1884,'29141910','FORONA'),(1885,'29141929','OUTRAS DICETONAS'),(1886,'29141990','OUTRAS CETONAS ACICLICAS N/CONTOUTSFUNCOES OXIGENA'),(1887,'29141921','ACETILACETONA'),(1888,'29141922','ACETONILACETONA'),(1889,'29141923','DIACETILA'),(1890,'29141940','PSEUDOIONONAS'),(1891,'29141930','METILEXILCETONA'),(1892,'29142100','CANFORA'),(1893,'29142210','CICLOEXANONA'),(1894,'29142220','METILCICLOEXANONAS'),(1895,'29142310','IONONAS'),(1896,'29142320','METILIONONAS'),(1897,'29142910','CARVONA'),(1898,'29142920','1-MENTONA'),(1899,'29142990','OUTSCETONAS CICLANICAS,ETCN/CONTOUTSFUNCOES OXIGEN'),(1900,'29143990','OUTRAS CETONAS AROMATICAS N/CONTOUTRAS FUNCOES OXI'),(1901,'29143910','ACETOFENONA'),(1902,'29143100','FENILACETONA (FENILPROPAN-2-ONA)'),(1903,'29144010','4-HIDROXI-4-METILPENTANO-2-ONA (DIACETONA ALCOOL)'),(1904,'29144099','OUTRAS CETONAS-ALCOOIS E CETONAS-ALDEIDOS'),(1905,'29144091','BENZOINA'),(1906,'29145010','NABUMETONA'),(1907,'29145090','OUTSCETONAS-FENOIS E CETONAS CONTOUTSFUNCOES OXIGE'),(1908,'29146100','ANTRAQUINONA'),(1909,'29146920','MENADIONA'),(1910,'29146990','OUTRAS QUINONAS'),(1911,'29146910','LAPACHOL'),(1912,'29147029','OUTROS DERIVADOS SULFONADOS DAS CETONAS E QUINONAS'),(1913,'29147019','OUTROS DERIVADOS HALOGENADOS DAS CETONAS E QUINONA'),(1914,'29147021','BISSULFITO SODICO DE MENADIONA'),(1915,'29147011','1-CLORO-5-HEXANONA'),(1916,'29147090','OUTRAS CETONAS,MESMO CONTENDO OUTRAS FUNCOES OXIGE'),(1917,'29151100','ACIDO FORMICO'),(1918,'29151210','SAL DE SODIO,DO ACIDO FORMICO'),(1919,'29151290','OUTROS SAIS DO ACIDO FORMICO'),(1920,'29151390','OUTROS ESTERES DO ACIDO FORMICO'),(1921,'29151310','ESTER DE GERANILA,DO ACIDO FORMICO'),(1922,'29152100','ACIDO ACETICO'),(1923,'29152200','ACETATO DE SODIO'),(1924,'29152300','ACETATO DE COBALTO'),(1925,'29152400','ANIDRIDO ACETICO'),(1926,'29152900','OUTROS SAIS DO ACIDO ACETICO'),(1927,'29153100','ACETATO DE ETILA'),(1928,'29153200','ACETATO DE VINILA'),(1929,'29153300','ACETATO DE N-BUTILA'),(1930,'29153400','ACETATO DE ISOBUTILA'),(1931,'29153500','ACETATO DE 2-ETOXIETILA'),(1932,'29153910','ACETATO DE LINALILA'),(1933,'29153931','ACETATO DE N-PROPILA'),(1934,'29153929','OUTROS ACETATOS DE GLICERILA'),(1935,'29153921','TRIACETINA'),(1936,'29153942','ACETATO DE HEXENILA'),(1937,'29153939','OUTROS ACETATOS MONOALCOOIS ACICLSATUR,ATOMO DE C<'),(1938,'29153992','ESTERES DE BORNILA'),(1939,'29153999','OUTROS ESTERES DO ACIDO ACETICO'),(1940,'29153951','ACETATO DE BENZESTROL'),(1941,'29153952','ACETATO DE DIENOESTROL'),(1942,'29153955','ACETATO DE ESTILDESTROL'),(1943,'29153953','ACETATO DE HEXESTROL'),(1944,'29153954','ACETATO DE MESTILBOL'),(1945,'29153961','ACETATO DE TRICLORO-ALFA-FENILETILA'),(1946,'29153963','DIACETATO DE ETILENOGLICOL (DIACETATO DE ETILENO)'),(1947,'29153941','ACETATO DE DECILA'),(1948,'29153962','ACETATO DE TRICLOROMETILFENILCARBINILA'),(1949,'29153991','ESTERES DE 2-TER-BUTILCICLOEXILA'),(1950,'29153993','ESTERES DE DIMETILBENZILCARBINILA'),(1951,'29153994','BIS(P-ACETOXIFENIL)CICLOEXILIDENOMETANO (CICLOFENI'),(1952,'29154010','ACIDO MONOCLOROACETICO'),(1953,'29154020','MONOCLOROACETATO DE SODIO'),(1954,'29154090','ACIDO DI- OU TRICLOROACETICO,SEUS SAIS E ESTERES'),(1955,'29155010','ACIDO PROPIONICO'),(1956,'29155020','SAIS DO ACIDO PROPIONICO'),(1957,'29155030','ESTERES DO ACIDO PROPIONICO'),(1958,'29156011','ACIDO BUTIRICO E SEUS SAIS'),(1959,'29156019','OUTROS ESTERES DO ACIDO BUTIRICO'),(1960,'29156012','BUTIRATO DE ETILA'),(1961,'29156029','ACIDO VALERICO E SEUS OUTSSAIS E ESTERES'),(1962,'29157010','ACIDO PALMITICO,SEUS SAIS E ESTERES'),(1963,'29157020','ACIDO ESTEARICO (ACMONOCARBOXILICO ACICLICO SATURA'),(1964,'29157031','SAIS DE ZINCO DO ACIDO ESTEARICO'),(1965,'29157039','OUTROS SAIS DO ACIDO ESTEARICO'),(1966,'29157040','ESTERES DO ACIDO ESTEARICO'),(1967,'29159021','ACIDO 2-ETILEXANOICO (ACIDO 2-ETILEXOICO)'),(1968,'29159022','2-ETILEXANOATO DE ESTANHO II'),(1969,'29159029','OUTROS SAIS E ESTERES DO ACIDO 2-ETILEXANOICO'),(1970,'29159031','ACIDO MIRISTICO'),(1971,'29159033','MIRISTATO DE ISOPROPILA'),(1972,'29159010','CLORETO DE CLOROACETILA'),(1973,'29159060','PERACIDOS DOS ACIDOS MONOCARBOXILICOS ACICLICOS SA'),(1974,'29159032','ACIDO CAPRILICO'),(1975,'29159039','OUTROS SAIS E ESTERES DOS ACIDOS MIRISTICO OU CAPR'),(1976,'29156021','ACIDO PIVALICO'),(1977,'29159090','OUTROS ACIDOS MONOCARBOXILICOS ACICLICOS SATURADOS'),(1978,'29159050','PEROXIDOS DOS ACIDOS MONOCARBOXILICOS ACICLICOS SA'),(1979,'29159041','ACIDO LAURICO'),(1980,'29159042','SAIS E ESTERES DO ACIDO LAURICO'),(1981,'29161110','ACIDO ACRILICO'),(1982,'29161120','SAIS DO ACIDO ACRILICO'),(1983,'29161210','ESTERES DE METILA DO ACIDO ACRILICO'),(1984,'29161220','ESTERES DE ETILA DO ACIDO ACRILICO'),(1985,'29161230','ESTERES DE BUTILA DO ACIDO ACRILICO'),(1986,'29161240','ESTERES DE 2-ETILEXILA DO ACIDO ACRILICO'),(1987,'29161290','OUTROS ESTERES DO ACIDO ACRILICO'),(1988,'29161310','ACIDO METACRILICO'),(1989,'29161320','SAIS DO ACIDO METACRILICO'),(1990,'29161410','ESTERES DE METILA DO ACIDO METACRILICO'),(1991,'29161420','ESTERES DE ETILA DO ACIDO METACRILICO'),(1992,'29161430','ESTERES DE N-BUTILA DO ACIDO METACRILICO'),(1993,'29161490','OUTROS ESTERES DO ACIDO METACRILICO'),(1994,'29161519','ACIDO OLEICO,OUTSSAIS E ESTERES (ACMONOCARBOXACICL'),(1995,'29161511','OLEATO DE MANITOL'),(1996,'29161520','ACIDO LINOLEICO E ACIDO LINONENICO,SEUS SAIS E EST'),(1997,'29161911','SORBATO DE POTASSIO'),(1998,'29161919','ACIDO SORBICO,SEUS OUTROS SAIS E ESTERES'),(1999,'29161923','UNDECILENATO DE ZINCO'),(2000,'29161929','OUTROS SAIS E ESTERES DO ACIDO UNDECILENICO'),(2001,'29161921','ACIDO UNDECILENICO'),(2002,'29161922','UNDECILINATO DE METILA'),(2003,'29161990','OUTROS ACIDOS MONOCARBOXILICOS ACICLICOS N/SATURAD'),(2004,'29162012','CLORETO DO AC3(2,2DICLOROVINIL)2,2DIMETILCICLOPR(D'),(2005,'29162011','ACIDO 3(2,2DIBROMOVINIL)-2,2DIMETILCICLOPROPANOCAR'),(2006,'29162014','PERMETRINA'),(2007,'29162019','OUTROS DERIVADOS DO ACIDO CICLOPROPANOCARBOXILICO'),(2008,'29162090','OUTROS ACIDOS MONOCARBOXILCICLANICOS,CICLENICOS,ET'),(2009,'29162013','ALETRINAS'),(2010,'29162015','BIFENTRIN'),(2011,'29163110','ACIDO BENZOICO'),(2012,'29163132','ESTERES DE BENZILA DO ACIDO BENZOICO'),(2013,'29163131','ESTERES DE METILA DO ACIDO BENZOICO'),(2014,'29163139','OUTROS ESTERES DO ACIDO BENZOICO'),(2015,'29163121','SAIS DE SODIO DO ACIDO BENZOICO'),(2016,'29163122','SAIS DE AMONIO DO ACIDO BENZOICO'),(2017,'29163129','OUTROS SAIS DO ACIDO BENZOICO'),(2018,'29163210','PEROXIDO DE BENZOILA'),(2019,'29163220','CLORETO DE BENZOILA'),(2020,'29163400','ACIDO FENILACETICO E SEUS SAIS'),(2021,'29163500','ESTERES DO ACIDO FENILACETICO'),(2022,'29163940','PERBENZOATO DE TER-BUTILA'),(2023,'29163930','ACIDO 4-CLORO-3-NITROBENZOICO'),(2024,'29163990','OUTROS ACIDOS MONOCARBOXILICOS AROMATICOS,ETC'),(2025,'29163910','CLORETO DE 4-CLORO-ALFA-(1-METILETIL)BENZENOACETIL'),(2026,'29163920','IBUPROFENO'),(2027,'29171110','ACIDO OXALICO E SEUS SAIS'),(2028,'29171120','ESTERES DO ACIDO OXALICO'),(2029,'29171210','ACIDO ADIPICO'),(2030,'29171220','SAIS E ESTERES DO ACIDO ADIPICO'),(2031,'29171310','ACIDO AZELAICO,SEUS SAIS E ESTERES'),(2032,'29171321','ACIDO SEBACICO'),(2033,'29171323','SEBACATO DE DIOCTILA'),(2034,'29171322','SEBACATO DE DIBUTILA'),(2035,'29171329','OUTROS SAIS E ESTERES DO ACIDO SEBACICO'),(2036,'29171400','ANIDRIDO MALEICO'),(2037,'29171921','ACIDO MALEICO'),(2038,'29171922','SAIS E ESTERES DO ACIDO MALEICO'),(2039,'29171930','ACIDO FUMARICO,SEUS SAIS E ESTERES'),(2040,'29171910','DIOCTILSULFOSSUCCINATO DE SODIO'),(2041,'29171990','OUTROS ACIDOS POLICARBOXILICOS ACICLICOS,ETC'),(2042,'29172000','ACIDO POLICARBOXILICO CICLANICO,CICLENICO,ETC'),(2043,'29173100','ORTOFTALATOS DE DIBUTILA'),(2044,'29173200','ORTOFTALATOS DE DIOCTILA'),(2045,'29173300','ORTOFTALATOS DE DINONILA OU DE DIDECILA'),(2046,'29173400','OUTROS ESTERES DO ACIDO ORTOFTALICO'),(2047,'29173500','ANIDRIDO FTALICO'),(2048,'29173600','ACIDO TEREFTALICO E SEUS SAIS'),(2049,'29173700','TEREFTALATO DE DIMETILA'),(2050,'29173911','ESTERES DO ACIDO M-FTALICO'),(2051,'29173919','ACIDO M-FTALICO E SEUS SAIS'),(2052,'29173920','ACIDO O-FTALICO E SEUS SAIS'),(2053,'29173931','ESTERES DE DIOCTILA DO ACIDO TEREFTALICO'),(2054,'29173939','OUTROS ESTERES DO ACIDO TEREFTALICO'),(2055,'29173940','SAIS E ESTERES DO ACTRIMELITICO (1,2,4-BENZENOTRIC'),(2056,'29173950','ANIDRIDO TRIMELITICO (AC1,3DIOXO-5ISOBENZOFURANOCA'),(2057,'29173990','OUTROS ACIDOS POLICARBOXILICOS AROMATICOS,ETC'),(2058,'29181100','ACIDO LACTICO,SEUS SAIS E ESTERES'),(2059,'29181200','ACIDO TARTARICO'),(2060,'29181310','SAIS DO ACIDO TARTARICO'),(2061,'29181320','ESTERES DO ACIDO TARTARICO'),(2062,'29181400','ACIDO CITRICO'),(2063,'29181500','SAIS E ESTERES DO ACIDO CITRICO'),(2064,'29181610','GLUCONATO DE CALCIO'),(2065,'29181690','ACIDO GLUCONICO,SEUS OUTROS SAIS E ESTERES'),(2066,'29181700','ACIDO FENILGLICOLICO (ACMANDELICO),SEUS SAIS E EST'),(2067,'29181929','ACIDO BILIAR,SEUS OUTROS SAIS,ESTERES E DERIVADOS'),(2068,'29181990','OUTROS ACIDOS CARBOXILICOS FUNCAO ALCOOL,ANIDRIDOS'),(2069,'29181910','BROMOPROPILATO'),(2070,'29181921','URSODIOL (ACIDO URSODEOXICOLICO)'),(2071,'29181922','ACIDO QUENODEOXICOLICO'),(2072,'29181930','ACIDO 12-HIDROXIESTEARICO'),(2073,'29181941','ACIDO BENZILICO (ACIDO 2,2-DIFENIL-2-HIDROXIACETIC'),(2074,'29181942','SAIS DO ACIDO BENZILICO'),(2075,'29181943','ESTERES DO ACIDO BENZILICO'),(2076,'29182110','ACIDO SALICILICO'),(2077,'29182120','SAIS DO ACIDO SALICILICO'),(2078,'29182211','ACIDO O-ACETILSALICILICO'),(2079,'29182212','O-ACETILSALICILATO DE ALUMINIO'),(2080,'29182219','OUTROS SAIS DO ACIDO O-ACETILSALICILICO'),(2081,'29182220','ESTERES DO ACIDO O-ACETILSALICILICO'),(2082,'29182300','OUTROS ESTERES DO ACIDO SALICILICO E SEUS SAIS'),(2083,'29182930','ACIDO GALICO,SEUS SAIS E ESTERES'),(2084,'29182910','ACIDO HIDROXINAFTOICO'),(2085,'29182921','ACIDO P-HIDROXIBENZOICO'),(2086,'29182922','METILPARABENO'),(2087,'29182923','PROPILPARABENO'),(2088,'29182929','OUTROS SAIS E ESTERES DO ACIDO P-HIDROXIBENZOICO'),(2089,'29182990','OUTROS ACIDOS CARBOXILICOS FUNCAO FENOL,ANIDRIDOS,'),(2090,'29182940','TETRAKIS(3(3,5DTBUTIL-4HIDROXIF)PROPPENTAERITRITIL'),(2091,'29182950','3-(3,5-DTBUTIL-4HIDROXIFENIL)PROPIONATO DE OCTADEC'),(2092,'29183031','ACIDO DEIDROCOLICO'),(2093,'29183032','DEIDROCOLATO DE SODIO'),(2094,'29183033','DEIDROCOLATO DE MAGNESIO'),(2095,'29183039','OUTROS SAIS DO ACIDO DEIDROCOLICO'),(2096,'29183090','OUTROS ACIDOS CARBOXILICOS FUNCAO ALDEIDO,CETONA,E'),(2097,'29183010','CETOPROFENO'),(2098,'29183040','ACETILACETATO DE 2-NITROMETILBENZILIDENO'),(2099,'29183020','BUTIRILACETATO DE METILA'),(2100,'29189012','ACIDO 2,4-DICLOROFENOXIACETICO,SEUS SAIS E SEUS ES'),(2101,'29189011','ACIDO FENOXIACETICO,SEUS SAIS E ESTERES'),(2102,'29189092','ACIDO METILCLOROFENOXIACETICO,SEUS SAIS E ESTERES'),(2103,'29189013','ACIDO 2,4,5-TRICLOROFENOXIACETICO'),(2104,'29189029','OUTROS ACIDOS FENOXIBUTIRICOS,SEUS SAIS,ESTERES,DE'),(2105,'29189030','ACIFLUORFEN SODICO'),(2106,'29189099','OUTROS ACIDOS CARBOXILICOS FUNCAO OXIGENSUPLEMENTE'),(2107,'29400021','ACIDO LACTOBIONICO'),(2108,'29400023','BROMOLACTOBIONATO DE CALCIO'),(2109,'29400022','LACTOBIONATO DE CALCIO'),(2110,'29400029','OUTSSAIS,DERIVSHALOGENSULFONETCDO ACLACTOBIONICO'),(2111,'29189040','NAPROXENO'),(2112,'29189019','OUTROS DERIVADOS DO ACIDO FENOXIACETICO,SAIS E EST'),(2113,'29189021','ACIDO DICLOROFENOXIBUTIRICO,SEUS SAIS E ESTERES'),(2114,'29189050','ACIDO 3(2CLOROALFA,ALFA,ALFATRIFLUOR-PTOLILOXI)BEN'),(2115,'29189060','DICLOFOP-METILA'),(2116,'29189091','FENOFIBRATO'),(2117,'29189093','5-(2-CLORO-4-TRIFLUORMETILFENOX)-2NITROBETC(LACTOF'),(2118,'29189094','ACIDO 4-(4-HIDROXIFENOXI)-3,5-DIIODOFENILACETICO'),(2119,'29189095','TIRATRICOL (TRIAC) E SEU SAL SODICO'),(2120,'29190020','ESTER FOSFORICO DE TRICRESILA'),(2121,'29190030','ESTER FOSFORICO DE TRIFENILA'),(2122,'29190040','DICLORVOS (DDVP)'),(2123,'29190060','CLORFENVINFOS'),(2124,'29190010','ESTER FOSFORICO DE TRIBUTILA'),(2125,'29190050','LACTOFOSFATO DE CALCIO'),(2126,'29190090','OUTSESTERES FOSFORICOS,SEUS SAIS,DERIVHALOGENADOS,'),(2127,'29201090','OUTSESTERES TIOFOSFORICOS,SEUS SAIS,DERIVSHALOGENE'),(2128,'29201020','METIL PARATION'),(2129,'29201010','FENITROTION'),(2130,'29201031','CLORETO DE FOSFOROTIOATO DE DIMETILA,CONCENTRPESO>'),(2131,'29201039','OUTROS CLORETOS DE FOSFOROTIOATO DE DIMETILA'),(2132,'29209061','FOSFITOS DE DIMETILA'),(2133,'29209062','FOSFITOS DE TRIMETILA'),(2134,'29209019','OUTROS FOSFITOS,EXCETO OS DE METILA E DE ETILA'),(2135,'29209064','FOSFITOS DE TRIETILA'),(2136,'29209013','FOSFITO DE ALQUILA DE C3 A C13 OU DE ALQUIL-ARILA'),(2137,'29209014','FOSFITO DE DIFENILA'),(2138,'29209015','OUTROS FOSFITOS DE ARILA'),(2139,'29209016','FOSETIL AL'),(2140,'29209017','FOSFITO DE TRIS-(2,4-DI-TER-BUTILFENILA)'),(2141,'29209063','FOSFITOS DE DIETILA'),(2142,'29209069','OUTROS FOSFITOS DE METILA OU DE ETILA'),(2143,'29209041','SULFATO DE ALQUILA DE C6 A C22'),(2144,'29209042','SULFATO DE MONOALQUIL(DI OU TRI)ETILENOGLICOL'),(2145,'29209049','OUTROS SULFATOS DE ESTERES DE ACIDOS INORGANICOS'),(2146,'29209051','SILICATO DE ETILA'),(2147,'29209059','OUTROS SILICATOS DE ESTERES DE ACIDOS INORGANICOS'),(2148,'29209021','ENDOSSULFAN'),(2149,'29209022','PROPARGITE'),(2150,'29209029','OUTROS SULFITOS DE ESTERES DE ACIDOS INORGANICOS'),(2151,'29209090','OUTSESTERES DOS ACIDOS INORGANSAIS,DERIVSHALOGENET'),(2152,'29209031','NITRATO DE PROPATILA'),(2153,'29209039','OUTROS NITRATOS DE ESTERES DE ACIDOS INORGANICOS'),(2154,'29209032','NITROGLICERINA'),(2155,'29209033','TETRANITRATO DE PENTAERITRITOL (PETN,NITROPENTA,ET'),(2156,'29211111','MONOMETILAMINA'),(2157,'29211112','SAIS DE MONOMETILAMINA'),(2158,'29211121','DIMETILAMINA'),(2159,'29211131','TRIMETILAMINA'),(2160,'29211132','CLORIDRATO DE TRIMETILAMINA'),(2161,'29211122','2,4-DICLOROFENOXIACETATO DE DIMETILAMINA'),(2162,'29211123','METILCLOROFENOXIACETATO DE DIMETILAMINA'),(2163,'29211129','OUTROS SAIS DE DIMETILAMINA'),(2164,'29211139','OUTROS SAIS DE TRIMETILAMINA'),(2165,'29211210','DIETILAMINA'),(2166,'29211220','ETANSILATO (\"ETHAMSYLATE\")'),(2167,'29211290','OUTROS SAIS DE DIETILAMINA'),(2168,'29211911','MONOETILAMINA E SEUS SAIS'),(2169,'29211912','TRIETILAMINA'),(2170,'29211919','OUTRAS ETILAMINAS,SEUS DERIVADOS E SEUS SAIS'),(2171,'29211913','BIS(2-CLOROETIL)ETILAMINA'),(2172,'29211914','TRICLORMETINA (TRIS(2-CLOROETIL)AMINA)'),(2173,'29211991','CLORMETINA (BIS(2-CLOROETIL)METILAMINA)'),(2174,'29211992','N,N-DIAQUIL-2-CLOROETILAMINA,C/GRUPALQUILA C1 A C3'),(2175,'29211921','MONO-N-PROPILAMINA E SEUS SAIS'),(2176,'29211922','DI-N-PROPILAMINA E SEUS SAIS'),(2177,'29211923','MONOISOPROPILAMINA E SEUS SAIS'),(2178,'29211924','DIISOPROPILAMINA E SEUS SAIS'),(2179,'29211929','OUTRAS N-PROPILAMINAS,ISOPROPILAMINAS E SEUS SAIS'),(2180,'29211931','DIISOBUTILAMINA E SEUS SAIS'),(2181,'29211939','OUTRAS BUTILAMINAS E SEUS SAIS'),(2182,'29211999','OUTSMONOAMINAS ACICLICAS E SEUS DERIVSE SEUS SAIS'),(2183,'29211941','METILDIALQUILAMINAS'),(2184,'29211949','MONOALQUIL- E OUTSDIALQUILAMINAS,ALQUILA DE C10 A '),(2185,'29212100','ETILENODIAMINA E SEUS SAIS'),(2186,'29212200','HEXAMETILENODIAMINA E SEUS SAIS'),(2187,'29212910','DIETILENOTRIAMINA E SEUS SAIS'),(2188,'29212920','TRIETILENOTETRAMINA E SEUS SAIS'),(2189,'29212990','OUTRAS POLIAMINAS ACICLICAS,SEUS DERIVADOS E SEUS '),(2190,'29213011','MONOCICLOEXILAMINA E SEUS SAIS'),(2191,'29213019','OUTRAS CICLOEXILAMINAS E SEUS SAIS'),(2192,'29213012','DICICLOEXILAMINA'),(2193,'29213090','OUTSMONOAMINAS E POLIAMINAS CICLANICAS,CICLENICAS,'),(2194,'29213020','PROPILEXEDRINA'),(2195,'29214100','ANILINA E SEUS SAIS'),(2196,'29214211','ACIDO SULFANILICO E SEUS SAIS'),(2197,'29214219','OUTROS ACIDOS AMINOBENZENOSSULFONICOS E SEUS SAIS'),(2198,'29214221','3,4-DICLOROANILINA E SEUS SAIS'),(2199,'29214229','OUTRAS CLOROANILINAS E SEUS SAIS'),(2200,'29214231','4-NITROANILINA'),(2201,'29214239','OUTRAS NITROANILINAS E SEUS SAIS'),(2202,'29214241','5-CLORO-2-NITROANILINA'),(2203,'29214249','OUTRAS CLORONITROANILINAS E SEUS SAIS'),(2204,'29214290','OUTROS DERIVADOS DA ANILINA E SEUS SAIS'),(2205,'29214311','O-TOLUIDINA'),(2206,'29214319','OUTRAS TOLUIDINAS E SEUS SAIS'),(2207,'29214321','3-NITRO-4-TOLUIDINA E SEUS SAIS'),(2208,'29214322','TRIFLURALINA'),(2209,'29214323','4-CLORO-2-TOLUIDINA'),(2210,'29214329','OUTROS DERIVADOS DAS TOLUIDINAS E SEUS SAIS'),(2211,'29214410','DIFENILAMINA E SEUS SAIS'),(2212,'29214421','N-OCTILDIFENILAMINA'),(2213,'29214422','N-NONILDIFENILAMINA'),(2214,'29214429','OUTROS DERIVADOS DA DIFENILAMINA E SEUS SAIS'),(2215,'29214500','1-NAFTILAMINA (ALFA),2-NAFTILAMINA (BETA),DERIVSE '),(2216,'29214921','2,4-XILIDINA E SEUS SAIS'),(2217,'29214929','OUTRAS XILIDINAS,SEUS DERIVADOS E SEUS SAIS'),(2218,'29214922','PENDIMETALINA'),(2219,'29214910','CLORIDRATO DE FENFLURAMINA'),(2220,'29214941','ANFETAMINA (DI-ALFA-METILFENETILAMINA) E SEUS SAIS'),(2221,'29214990','OUTRAS MONOAMINAS AROMATICAS,SEUS DERIVADOS E SEUS'),(2222,'29214931','SULFATO DE TRANILCIPROMINA'),(2223,'29214939','OUTRAS TRANILCIPROMINAS E SEUS SAIS'),(2224,'29214942','LEVANFETAMINA (I-ALFA-METILFENETILAMINA) E SEUS SA'),(2225,'29214943','DESANFETAMINA (\"DEXAMPHETAMINE\") E SEUS SAIS'),(2226,'29214944','ETILANFETAMINA (\"N-ETHYLAMPHETAMINE\") E SEUS SAIS'),(2227,'29214945','BENZFETAMINA E SEUS SAIS'),(2228,'29214946','MEFENOREX E SEUS SAIS'),(2229,'29214949','OUTSMETILFENETILAMINA,SEUS DERIVADOS E SEUS SAIS'),(2230,'29214951','FENCANFAMINA E SEUS SAIS'),(2231,'29214952','LEFETAMINA E SEUS SAIS'),(2232,'29214953','FENTERMINA E SEUS SAIS'),(2233,'29215111','M-FENILENODIAMINA E SEUS SAIS'),(2234,'29215120','DERIVADOS SULFONADOS DAS FENILENODIAMINAS,DERIVSE '),(2235,'29215135','N-FENIL-P-FENILENODIAMINA (4-AMINODIFENILAMINA) E '),(2236,'29215131','N,N-DI-SEC-BUTIL-P-FENILENODIAMINA'),(2237,'29215132','N-ISOPROPIL-N-FENIL-P-FENILENODIAMINA'),(2238,'29215133','N-(1,3-DIMETILBUTIL)-N-FENIL-P-FENILENODIAMINA'),(2239,'29215134','N-(1,4-DIMETILPENTIL)-N-FENIL-P-FENILENODIAMINA'),(2240,'29215139','OUTROS DERIVADOS DAS FENILENODIAMINAS E SEUS SAIS'),(2241,'29215112','DIAMINOTOLUENOS (TOLUILENODIAMINAS)'),(2242,'29215119','O-FENILENODIAMINA,P-FENILENODIAMINA E SEUS SAIS'),(2243,'29215190','OUTROS DERIVADOS DE DIAMINOTULENOS E SEUS SAIS'),(2244,'29215911','3,3-DICLOROBENZIDINA'),(2245,'29215919','BENZIDINA,SEUS OUTROS DERIVADOS E SAIS'),(2246,'29215921','4,4-DIAMINODIFENILMETANO'),(2247,'29215939','OUTRAS DIAMINODIFENILAMINAS,SEUS DERIVADOS E SEUS '),(2248,'29215990','OUTRAS POLIAMINAS AROMATICAS,SEUS DERIVADOS E SEUS'),(2249,'29215929','OUTROS DIAMINODIFENILMETANOS'),(2250,'29215931','4,4-DIAMINODIFENILAMINA E SEUS SAIS'),(2251,'29215932','ACIDO 4,4-DIAMINODIFENILAMINO-2-SULFONICO E SEUS S'),(2252,'29221100','MONOETANOLAMINA E SEUS SAIS'),(2253,'29221200','DIETANOLAMINA E SEUS SAIS'),(2254,'29221310','TRIETANOLAMINA'),(2255,'29221320','SAIS DE TRIETANOLAMINA'),(2256,'29221921','CITRATO DE ORFENADRINA'),(2257,'29221999','OUTROS AMINOALCOOIS,SEUS ETERES,ESTERES E SAIS'),(2258,'29221992','FUMARATOS DE BENCICLANO'),(2259,'29221912','2,4-DICLOROFENOXIACETATO DE TRIISOPROPANOLAMINA'),(2260,'29221913','2,4-DICLOROFENOXIACETATO DE DIMETILPROPANOLAMINA'),(2261,'29221931','CLORIDRATO DE AMBROXOL'),(2262,'29221941','CLORIDRATO DE CLOBUTINOL'),(2263,'29221939','AMBROXOL E SEUS OUTROS SAIS'),(2264,'29221949','CLOBUTINOL E SEUS OUTROS SAIS'),(2265,'29221919','PROPANOLAMINAS,SEUS OUTROS SAIS E DERIVADOS'),(2266,'29221929','ORFENADRINA E SEUS OUTROS SAIS'),(2267,'29221911','MONOISOPROPANOLAMINA'),(2268,'29221951','N,N-DIMETIL-2-AMINOETANOL E SEUS SAIS PROTONADOS'),(2269,'29221952','N,N-DIETIL-2-AMINOETANOL E SEUS SAIS PROTONADOS'),(2270,'29221959','OUTROS N,N-DIALQUIL-2-AMINOETANOL,SEUS SAIS PROTON'),(2271,'29221961','METILDIETANOLAMINA E SEUS SAIS PROTONADOS'),(2272,'29221962','ETILDIETANOLAMINA E SEUS SAIS PROTONADOS'),(2273,'29221969','OUTROS N-ALQUIL-DIETANOLAMINA E SEUS SAIS PROTONAD'),(2274,'29221991','1-P-NITROFENIL-2-AMINO-1,3-PROPANODIOL'),(2275,'29221993','CLEMBUTEROL (\"CLENBUTEROL\") E SEU CLORIDRATO'),(2276,'29221994','MIRTECAINA'),(2277,'29221995','TAMOXIFEN E SEU CITRATO'),(2278,'29221996','DEXTROPROPOXIFENO E SEUS SAIS PROTONADOS'),(2279,'29222100','ACIDO AMINONAFTOLSULFONICO E SEUS SAIS'),(2280,'29222290','ANISIDINAS,FENETIDINAS E SEUS SAIS'),(2281,'29222210','DIANISIDINAS E SEUS SAIS'),(2282,'29222911','P-AMINOFENOL'),(2283,'29222919','O-AMINOFENOIS,M-AMINOFENOIS E SEUS SAIS'),(2284,'29222920','NITROANISIDINAS E SEUS SAIS'),(2285,'29222990','OUTSAMINONAFTOIS,AMINOFENOIS,SEUS ETERES,ESTERES,S'),(2286,'29223010','AMINOANTRAQUINONAS E SEUS SAIS'),(2287,'29223090','OUTSAMINOALDEIDOS,AMINOCETONAS,AMINOQUINONAS,SEUS '),(2288,'29223031','DIETILPROPIONA (\"AMFEPRAMONE\")'),(2289,'29223032','METADONA'),(2290,'29223033','NORMETADONA'),(2291,'29223021','CLORIDRATO DE KETAMINA'),(2292,'29223029','KETAMINA E SEUS OUTROS SAIS'),(2293,'29223039','SAIS DE DIETILPROPIONA,METADONA OU NORMETADONA'),(2294,'29224110','LISINA'),(2295,'29224190','ESTERES E SAIS,DA LISINA'),(2296,'29224210','ACIDO GLUTAMICO'),(2297,'29224220','SAIS DO ACIDO GLUTAMICO'),(2298,'29224300','ACIDO ANTRANILICO E SEUS SAIS'),(2299,'29224990','OUTROS AMINOACIDOS,SEUS ESTERES E SAIS'),(2300,'29224920','ACIDO ETILENODIAMINOTETRACETICO (EDTA) E SEUS SAIS'),(2301,'29224931','ACIDO IMINODIACETICO'),(2302,'29224932','SAIS DO ACIDO IMINODIACETICO'),(2303,'29224910','GLICINA E SEUS SAIS'),(2304,'29224959','OUTROS SAIS E DERIVADOS DE ALFA-FENILGLICINA'),(2305,'29224951','ALFA-FENILGLICINA'),(2306,'29224952','CLORIDRATO DO CLORETO DE D(-)ALFA-AMINOBENZENOACET'),(2307,'29224940','ACIDO DIETILENOTRIAMINOPENTACETICO E SEUS SAIS'),(2308,'29224961','DICLOFENACO DE SODIO'),(2309,'29224962','DICLOFENACO DE POTASSIO'),(2310,'29224963','DICLOFENACO DE DIETILAMONIO'),(2311,'29224969','OUTROS DICLOFENACOS,SEUS SAIS E DERIVADOS'),(2312,'29224971','TILIDINA'),(2313,'29224979','SAIS DE TILIDINA'),(2314,'29225011','CLORIDRATO DE FENILEFRINA'),(2315,'29225021','CLORIDRATO DE PROPAFENONA'),(2316,'29225031','LEVODOPA'),(2317,'29225032','METILDOPA'),(2318,'29225041','TARTARATO DE METOPROLOL'),(2319,'29225049','METOPROLOL E SEUS OUTROS SAIS'),(2320,'29225050','PROPANOLOL E SEUS SAIS'),(2321,'29225099','OUTSAMINOALCOOISFENOIS,AMINOACIDOSFENOIS,ETCFUNCOX'),(2322,'29225019','FENILEFRINA E SEUS OUTROS SAIS'),(2323,'29225029','PROPAFENONA E SEUS OUTROS SAIS'),(2324,'29225039','TIROSINA,SEUS OUTROS DERIVADOS E SAIS'),(2325,'29225091','N(1METOXICARBONIL)PROPEN-2IL)ALFA AMINO P-ETC(NAPO'),(2326,'29231000','COLINA E SEUS SAIS'),(2327,'29232000','LECITINAS E OUTROS FOSFOAMINOLIPIDIOS'),(2328,'29239010','BETAINA E SEUS SAIS'),(2329,'29239090','OUTROS SAIS E HIDROXIDOS DE AMONIO QUATERNARIOS'),(2330,'29239020','DERIVADOS DA COLINA'),(2331,'29239030','CLORETO DE 3-CLORO-2-HIDROXIPROPILTRIMETILAMONIO'),(2332,'29239040','HALOGENETOS DE ALQUIL-TRIMETILAMONIO,C/ALQUILA C6 '),(2333,'29239050','HALOGENETOS DE DIALQUIL- OU ALQUIL-BENZIL-DIMETILA'),(2334,'29239060','HALOGENETOS DE PENTAMETIL-ALQUIL-PROPILENODIAMONIO'),(2335,'29241042','DICROTOFOS'),(2336,'29241011','2-CLORO-N-METILACETOACETAMIDA'),(2337,'29241041','MONOCROTOFOS'),(2338,'29241022','N,N-DIMETILFORMAMIDA'),(2339,'29241031','ACRILAMIDA'),(2340,'29241093','N,N(DIESTEAROIL)ETILENODIAMINA (ETILEN-BIS-ESTEARA'),(2341,'29241092','CARISOPRODOL'),(2342,'29241099','OUTRAS AMIDAS ACICLICAS,SEUS DERIVADOS E SAIS'),(2343,'29241029','OUTRAS FORMAMIDAS E ACETAMIDAS'),(2344,'29241021','N-METILFORMAMIDA'),(2345,'29241019','ACETOACETAMIDAS E SEUS OUTROS DERIVADOS E SAIS'),(2346,'29241032','METACRILAMIDAS'),(2347,'29241039','OUTROS DERIVADOS DAS ACRILAMIDAS'),(2348,'29241049','CROTONAMIDAS E SEUS OUTROS DERIVADOS'),(2349,'29241091','N,N-DIMETILUREIA'),(2350,'29241094','DIETANOLAMIDAS DE ACIDOS GRAXOS DE C12 A C18'),(2351,'29242119','CARBANILIDAS,SEUS OUTROS DERIVADOS E SAIS'),(2352,'29242111','HEXANITROCARBANILIDAS'),(2353,'29242120','DIURON'),(2354,'29242190','OUTRAS UREINAS,SEUS DERIVADOS E SAIS'),(2355,'29242913','ACETAMINOFEN (PARACETAMOL)'),(2356,'29242931','CARBARIL'),(2357,'29242945','IODAMIDA'),(2358,'29242914','LIDOCAINA E SEU CLORIDRATO'),(2359,'29242952','METOCLOPRAMIDA E SEU CLORIDRATO'),(2360,'29242963','PRILOCAINA E SEU CLORIDRATO'),(2361,'29242941','TECLOZAM'),(2362,'29242942','ATENOLOL E ALACLOR'),(2363,'29242949','OUTRAS ACETAMIDAS E SEUS DERIVADOS'),(2364,'29242951','BROMOPRIDA'),(2365,'29242912','4-AMINOACETANILIDA'),(2366,'29242911','ACETANILIDA'),(2367,'29242944','ACIDO IOXAGLICO'),(2368,'29242992','DIFLUBENZURON'),(2369,'29242943','METOLACLOR'),(2370,'29242993','METALAXIL'),(2371,'29242961','PROPANIL'),(2372,'29242200','ACIDO 2-ACETAMIDOBENZOICO'),(2373,'29241095','MEPROBAMATO'),(2374,'29242939','OUTROS CARBAMATOS'),(2375,'29242933','ETINAMATO (\"ETHINAMATE\")'),(2376,'29242999','OUTRAS AMIDAS CICLICAS,SEUS DERIVADOS E SAIS'),(2377,'29242991','ASPARTAME'),(2378,'29242915','2,5-DIMETOXIACETANILIDA'),(2379,'29242919','OUTROS DERIVADOS DA ACETANILIDA E SEUS SAIS'),(2380,'29242920','ANILIDAS DOS ACIDOS HIDROXINAFTOICOS,SEUS DERIVSE '),(2381,'29242932','PROPOXUR'),(2382,'29242946','CLORETO DO ACIDO P-ACETAMIDOBENZENOSSULFONICO'),(2383,'29242959','OUTRAS METOXIBENZAMIDAS,SEUS DERIVADOS E SAIS'),(2384,'29242962','FLUTAMIDA'),(2385,'29242969','OUTRAS PROPANAMIDAS,SEUS DERIVADOS E SAIS'),(2386,'29242994','TRIFLUMURON'),(2387,'29242995','BUCLOSAMIDA'),(2388,'29251100','SACARINA E SEUS SAIS'),(2389,'29251910','TALIDOMIDA'),(2390,'29251920','GLUTETIMIDA'),(2391,'29251990','OUTRAS IMIDAS,SEUS DERIVADOS E SAIS'),(2392,'29252011','ASPARTATO DE L-ARGININA'),(2393,'29252019','ARGININA E SEUS OUTROS SAIS'),(2394,'29252029','OUTROS DERIVADOS DA GUANIDINA E SEUS SAIS'),(2395,'29252021','GUANIDINA'),(2396,'29252023','CLOREXIDINA E SEUS SAIS'),(2397,'29252030','AMITRAZ'),(2398,'29252022','N,N-DIFENILGUANIDINA'),(2399,'29252040','ISETIONATO DE PENTAMIDINA'),(2400,'29252050','N-(3,7-DIMETIL-7-HIDROXIOCTILIDENO)ANTRANILATO MET'),(2401,'29252090','OUTRAS IMINAS,SEUS DERIVADOS E SAIS'),(2402,'29261000','ACRILONITRILA'),(2403,'29262000','1-CIANOGUANIDINA (DICIANDIAMIDA)'),(2404,'29269011','VERAPAMIL'),(2405,'29269012','CLORIDRATO DE VERAPAMIL'),(2406,'29269019','OUTROS SAIS DE VERAPAMIL'),(2407,'29269091','ADIPONITRILA (1,4-DICIANOBUTANO)'),(2408,'29269021','ALCOOL ALFA-CIANO-3-FENOXIBENZILICO'),(2409,'29269023','CIPERMETRINA'),(2410,'29269024','DELTAMETRINA'),(2411,'29269025','FENVALERATO'),(2412,'29269093','CLOSANTEL'),(2413,'29269095','CLOROTALONIL'),(2414,'29269092','CIANIDRINA DE ACETONA (ACETONA CIANIDRINA)'),(2415,'29269032','4-CIANO-2-DIMETILAMINO-4,4-DIFENILBUTANO (INTMETAD'),(2416,'29269022','CIFLUTRIN'),(2417,'29269026','CIALOTRIN (\"CYHALOTHRIN\")'),(2418,'29269029','OUTSDERIVSESTERES DO ALCOOL ALFA-CIANO-3-FENOXIBEN'),(2419,'29269031','FEMPROPOREX (\"FENPROPROREX\")'),(2420,'29269039','SAIS DO FEMPROPOREX OU 4-CIANO-2-DIMETILAMINO-4,4-'),(2421,'29269096','CIANOACRILATOS DE ETILA'),(2422,'29269099','OUTROS COMPOSTOS DE FUNCAO NITRILA'),(2423,'29270021','AZODICARBONAMIDA'),(2424,'29270010','COMPOSTOS DIAZOICOS'),(2425,'29270029','OUTROS COMPOSTOS AZOICOS'),(2426,'29270030','COMPOSTOS AZOXICOS'),(2427,'29280011','METILETILACETOXIMA'),(2428,'29280020','CARBIDOPA'),(2429,'29280030','2-HIDRAZINOETANOL'),(2430,'29280042','DERIVADOS DA FENILIDRAZINA'),(2431,'29280019','OUTRAS ACETOXIMAS,SEUS DERIVADOS E SEUS SAIS'),(2432,'29280041','FENILIDRAZINA'),(2433,'29280090','OUTROS DERIVADOS ORGANICOS DA HIDRAZINA E HIDROXIL'),(2434,'29291010','DIISOCIANATO DE DIFENILMETANO'),(2435,'29291021','MISTURA DE ISOMEROS DE DIISOCIANATOS DE TOLUENO'),(2436,'29291029','OUTROS DIISOCIANATOS DE TOLUENO'),(2437,'29291030','ISOCIANATO DE 3,4-DICLOROFENILA'),(2438,'29291090','OUTROS ISOCIANATOS'),(2439,'29299011','ACIDO CICLAMICO DE SODIO E SEUS SAIS'),(2440,'29299012','ACIDO CICLAMICO DE CALCIO E SEUS SAIS'),(2441,'29299019','OUTROS ACIDOS CICLAMICOS E SEUS SAIS'),(2442,'29299021','DIALOGENETOS DE N,N-DIALQUIL-FOSFOROAMIDATOS,ETC'),(2443,'29299022','N,N-DIALQUIL-FOSFOROAMIDATOS DE DIALQUILA,ETC'),(2444,'29299029','OUTROS N,N-DIALQUIL-FOSFOROAMIDATOS E SEUS DERIVAD'),(2445,'29299090','OUTROS COMPOSTOS DE FUNCOES NITROGENADAS'),(2446,'29301000','DITIOCARBONATOS (XANTATOS E XANTOGENATOS)'),(2447,'29302022','DIETILDITIOCARBAMATO DE ZINCO'),(2448,'29302021','ZIRAM E DIMETILDITIOCARBAMATO DE SODIO'),(2449,'29302023','DIBUTILDITIOCARBAMATO DE ZINCO'),(2450,'29302024','METAM SODIO'),(2451,'29302029','OUTROS DITIOCARBAMATOS'),(2452,'29302011','EPTC (TIOCARBAMATO)'),(2453,'29302012','CARTAP'),(2454,'29302013','TIOBENCARB (DIETILTIOCARBAMATO DE S-4-CLOROBENZILA'),(2455,'29302019','OUTROS TIOCARBAMATOS'),(2456,'29303022','DISSULFIRAM'),(2457,'29303021','THIRAM'),(2458,'29303012','SULFIRAM'),(2459,'29303011','MONOSSULFETO DE TETRAMETILTIOURAMA'),(2460,'29303019','OUTROS MONOSSULFETOS DE TIOURAMA'),(2461,'29303029','OUTROS DISSULFETOS DE TIOURAMA'),(2462,'29303090','TETRASSULFETOS DE TIOURAMA'),(2463,'29304010','DL-METIONINA,TEOR DE CINZAS SULFATADAS>01% EM PESO'),(2464,'29304090','OUTRAS METIONINAS'),(2465,'29309011','ACIDO TIOGLICOLICO E SEUS SAIS'),(2466,'29309021','TIOUREIA'),(2467,'29309012','CISTEINA'),(2468,'29309051','FORATO'),(2469,'29309052','DISSULFOTON'),(2470,'29309053','ETION'),(2471,'29309031','2-(ETILTIO)ETANOL COM UMA CONCENTRACAO>=98%'),(2472,'29309061','ACEFATO'),(2473,'29309097','OUTSCOMPOSTOS C/1 ATOMO FOSFORO LIGA 1 GRUPO ALQUI'),(2474,'29309099','OUTROS TIOCOMPOSTOS ORGANICOS'),(2475,'29309054','DIMETOATO'),(2476,'29309085','1,3-BIS(2-CLOROETILTIO)-N-PROPANO'),(2477,'29309038','TIODIGLICOL (SULFETO DE BIS(2-HIDROXIETILA))'),(2478,'29309081','SULFETO DE 2-CLOROETILA E DE CLOROMETILA'),(2479,'29309082','SULFETO DE BIS(2-CLOROETILA)'),(2480,'29309033','CLOROTIOFORMIATO DE S-ETILA'),(2481,'29309023','4-METIL-3-TIOSEMICARBAZIDA'),(2482,'29309079','OUTRAS SULFONAS'),(2483,'29309096','HIDROGENIO ALQUIL (DE C1 A C3) FOSFONOTIOATOS DE '),(2484,'29309059','OUTROS FOSFORODITIOATOS,SEUS DERIVADOS E SAIS'),(2485,'29309057','TIOMETON'),(2486,'29309062','METAMIDOFOS'),(2487,'29309036','CARBOCISTEINA'),(2488,'29309055','VAMIDOTION (FOSFORODITIOATO DE 0,0-DIMETILA S-(ETC'),(2489,'29309032','3-(METILTIO)PROPANAL E ALDICARB'),(2490,'29309022','TIOFANATO-METILA'),(2491,'29309035','METOMIL'),(2492,'29309056','PROFENOFOS'),(2493,'29309039','OUTROS TIOETERES,TIOESTERES,SEUS DERIVADOS E SAIS'),(2494,'29309029','OUTRAS TIOAMIDAS,SEUS DERIVADOS E SAIS'),(2495,'29309083','BIS(2-CLOROETILTIO)METANO'),(2496,'29309086','1,4-BIS(2-CLOROETILTIO)-N-BUTANO'),(2497,'29309049','OUTSFOSFOROTIOATOS E SEUS DERIVSE SAIS DESTES PROD'),(2498,'29309084','1,2-BIS(2-CLOROETILTIO)ETANO'),(2499,'29309089','OXIDO DE BIS(2-CLOROETILTIOETILA)'),(2500,'29309091','CAPTAN'),(2501,'29309013','N,N-DIALQUIL-2-AMINOETANOTIOL E SEUS SAIS PROTONAD'),(2502,'29309019','OUTROS TIOIS,SEUS DERIVADOS E SAIS'),(2503,'29309034','ACIDO 2-HIDROXI-4-(METILTIO)BUTANOICO E SEU SAL CA'),(2504,'29309037','4-SULFATOETILSULFONIL-2,5-DIMETOXIANILINA,ETC'),(2505,'29309041','0,0-DIETIL-FOSFOROTIOATO DE S-(2-(DIETILAMINO)ETIL'),(2506,'29309069','OUTROS FOSFOROAMIDOTIOATOS,SEUS DERIVADOS E SAIS'),(2507,'29309071','TIAPRIDA'),(2508,'29309087','1,5-BIS(2-CLOROETILTIO)-N-PENTANO'),(2509,'29309088','OXIDO DE BIS(2-CLOROETILTIOMETILA)'),(2510,'29309093','METILENO-BIS-TIOCIANATO'),(2511,'29309094','DIMETILTIOFOSFORAMIDA'),(2512,'29309095','ETILDITIOFOSFONATO DE O-ETILA E DE S-FENILA (FONOF'),(2513,'29309014','TIMEROSAL'),(2514,'29310010','COMPOSTOS ORGANO-MERCURIAIS'),(2515,'29310090','OUTROS COMPOSTOS ORGANO-INORGANICOS'),(2516,'29310029','OUTROS COMPOSTOS ORGANO-SILICICOS'),(2517,'29310021','BIS(TRIMETILSILIL)UREIA'),(2518,'29310034','TRICLORFON'),(2519,'29310031','ETEFON,DIFENILFOSFONATO (4,4-BIS[(DIMETOXIFOSFINIL'),(2520,'29310036','HIDROGENOFOSFONATO DE BIS(2-ETILEXILO)'),(2521,'29310032','GLIFOSATO E SEU SAL DE MONOISOPROPILAMINA'),(2522,'29310039','OUTROS COMPOSTOS ORGANO-FOSFOROSOS'),(2523,'29310033','ETIDRONATO DISSODICO'),(2524,'29310035','GLUFOZINATO DE AMONIO'),(2525,'29310037','ACIDO FOSFONOMETILIMINODIACETICO E ACTRIMETILFOSFO'),(2526,'29310071','ALQUIL (DE C1 A C3) FOSFORO-FLUORIDATO DE O-ALQUIL'),(2527,'29310072','METILFOSFONOCLORIDATO DE O-ISOPROPILA'),(2528,'29310073','METILFOSFONOCLORIDATO DE O-PINACOLILA'),(2529,'29310074','DIFLUORETO DE ALQUILFOSFONILA,C/GRUPALQUILA DE C1 '),(2530,'29310075','HIDROGENIO ALQUIL (DE C1 A C3) FOSFONITOS DE,ETC'),(2531,'29310076','OUTSCOMPOSTOS C/1 ATOMO FOSFORO LIG1 GRUPALQUILA,E'),(2532,'29310077','N,N-DIALQUIL FOSFOROAMIDOCIANIDATOS DE O-ALQUILA,E'),(2533,'29310041','ACETATO DE TRIFENILESTANHO'),(2534,'29310042','TETRAOCTILESTANHO'),(2535,'29310043','CIEXATIM'),(2536,'29310044','HIDROXIDO DE TRIFENILESTANHO'),(2537,'29310045','OXIDO DE FEMBUTATIN (OXIDO DE \"FENBUTATIN\")'),(2538,'29310049','OUTROS COMPOSTOS ORGANO-METALICOS DO ESTANHO'),(2539,'29310046','SAIS DE DIMETIL-ESTANHO,ETCDO ACIDO CARBOXIL/TIOGL'),(2540,'29310051','ACIDO METILARSINICO E SEUS SAIS'),(2541,'29310052','2-CLOROVINIL-DICLOROARSINA'),(2542,'29310059','OUTROS COMPOSTOS ORGANO-ARSENIAIS'),(2543,'29310053','BIS(2-CLOROVINIL)CLOROARSINA'),(2544,'29310054','TRIS(2-CLOROVINIL)ARSINA'),(2545,'29310061','TRICLORETO DE ETILALUMINIO (SESQUICLORETO ETILALUM'),(2546,'29310062','CLORETO DE DIETILALUMINIO'),(2547,'29310069','OUTROS COMPOSTOS ORGANO-ALUMINICOS'),(2548,'29321100','TETRAIDROFURANO'),(2549,'29321200','2-FURALDEIDO (FURFURAL)'),(2550,'29321300','ALCOOL FURFURILICO E ALCOOL TETRAIDROFURFURILICO'),(2551,'29321910','RANITIDINA E SEUS SAIS'),(2552,'29321930','NITROVIN'),(2553,'29321950','DIACETATO DE 5-NITROFURFURILIDENO (NFDA)'),(2554,'29321990','OUTSCOMPOSTOS HETEROCICLC/1 CICLO FURANO,N/CONDENS'),(2555,'29321920','NAFRONIL'),(2556,'29321940','BIORESMETRINA'),(2557,'29322110','CUMARINA'),(2558,'29322190','METILCUMARINAS E ETILCUMARINAS'),(2559,'29322920','FENOLFTALEINA'),(2560,'29322930','ESPIRONOLACTONA'),(2561,'29322910','CUMAFOS (\"COUMAPHOS\")'),(2562,'29322990','OUTRAS LACTONAS'),(2563,'29329914','CARBOFURANO'),(2564,'29329991','CLORIDRATO DE AMIODARONA'),(2565,'29329913','DINITRATO DE ISOSSORBIDA'),(2566,'29329999','OUTROS COMPOSTOS HETEROCICLDE HETEROATOMOS DE OXIG'),(2567,'29329911','EUCALIPTOL'),(2568,'29329100','ISOSSAFROL'),(2569,'29329400','SAFROL'),(2570,'29329300','PIPERONAL'),(2571,'29329924','MERBROMINA'),(2572,'29329200','1-(1,3-BENZODIOXOL-5-IL) PROPAN-2-ONA'),(2573,'29329995','TETRAIDROCANABINOL E SEUS ISOMEROS'),(2574,'29400091','TIOCOLQUICOSIDO'),(2575,'29329922','ABAMECTINA'),(2576,'29329912','QUERCETINA'),(2577,'29329923','MOXIDECTINA'),(2578,'29329992','1,3,4,6,7,8-HEXAIDRO-4,6,6,7,8,8-HEXAMETILCICLOPEN'),(2579,'29329993','DIBENZILIDENO-SORBITOL'),(2580,'29329994','CARBOSULFAN ((DIBUTILAMINOTIO) METILCARBAMATO DE 2'),(2581,'29331111','DIPIRONA'),(2582,'29331112','MAGNOPIROL (\"DIPIRONA MAGNESICA\")'),(2583,'29331120','METILENO-BIS (4METILAMINO-1FENIL-2,3-DIMETIL)PIRAZ'),(2584,'29331119','OUTROS ACIDOS 1-FENIL-2,3-DIMETIL-5-PIRAZOLONA-4-'),(2585,'29331190','OUTRAS FENAZONAS (ANTIPIRINAS) E SEUS DERIVADOS'),(2586,'29331990','OUTSCOMPOSTOS HETEROCICLC/1 CICLO PIRAZOL,N/CONDEN'),(2587,'29331919','OUTRAS FENILBUTAZONAS E SEUS SAIS'),(2588,'29331911','FENILBUTAZONA CALCICA'),(2589,'29332121','FENITOINA E SEU SAL SODICO'),(2590,'29332129','OUTROS SAIS DA FENITOINA'),(2591,'29332110','IPRODIONA'),(2592,'29332190','OUTRAS HIDANTOINAS E SEUS DERIVADOS'),(2593,'29332992','HISTIDINA E SEUS SAIS'),(2594,'29332930','CIMETIDINA E SEUS SAIS'),(2595,'29332912','METRONIDAZOL E SEUS SAIS'),(2596,'29332940','4-METIL-5-HIDROXIMETILIMIDAZOL E SEUS SAIS'),(2597,'29332925','CLOTRIMAZOL'),(2598,'29332999','OUTSCOMPOSTOS HETEROCICL1 CICLO IMIDAZOL N/CONDENS'),(2599,'29332911','2-METIL-5-NITROIMIDAZOL'),(2600,'29332921','ECONAZOL E SEU NITRATO'),(2601,'29332922','NITRATO DE MICONAZOL'),(2602,'29332929','OUTROS COMPOSTOS HETEROCICLICOS C/CICLO BENZENO CL'),(2603,'29332913','TINIDAZOL'),(2604,'29332991','IMIDAZOL'),(2605,'29332919','OUTSCOMPOSTOS HETEROCICLICOS COM 1 CICLO NITROIMID'),(2606,'29332923','CLORIDRATO DE CLONIDINA'),(2607,'29332924','NITRATO DE ISOCONAZOL'),(2608,'29332993','ONDANSETRON E SEUS SAIS'),(2609,'29332994','1-HIDROXIETIL-2-UNDECANOILIMIDAZOLINA'),(2610,'29332995','1-HIDROXIETIL-2-(8-HEPTADECENOIL) IMIDAZOLINA'),(2611,'29333946','OMEPRAZOL'),(2612,'29349054','TIOCONAZOL'),(2613,'29333110','PIRIDINA'),(2614,'29333120','SAIS DE PIRIDINA'),(2615,'29333993','3-CIANOPIRIDINA'),(2616,'29333989','OUTSCOMPOSTOS HETEROCICLC/PIRIDINA,N- RADALQUILA,E'),(2617,'29333991','CLORIDRATO DE FENAZOPIRIDINA'),(2618,'29333933','ACIDO ISONICOTINICO'),(2619,'29333992','ISONIAZIDA'),(2620,'29333943','NIFEDIPINA'),(2621,'29333994','4,4-BIPIRIDINA'),(2622,'29333921','PICLORAM'),(2623,'29333931','TERFENADINA'),(2624,'29333932','BIPERIDENO E SEUS SAIS'),(2625,'29333983','CLORIDRATO DE BUPIVACAINA'),(2626,'29333959','OUTSCOMPOSTOS HETEROCICLFUNCALCOOL,ACIDCARBOXILETC'),(2627,'29333987','FENTANIL E SEUS SAIS'),(2628,'29333915','HALOPERIDOL'),(2629,'29333981','CLORIDRATO DE BENZETIMIDA'),(2630,'29333914','HALOXIFOP (ACIDO (RS)-2-[4-(3-CLORO-5-TRIFLUORMETI'),(2631,'29333922','CLORPIRIFOS'),(2632,'29333912','DROPERIDOL'),(2633,'29333200','PIPERIDINA E SEUS SAIS'),(2634,'29333986','FENCICLIDINA (\"PHENCYCLIDINE\") E SEUS SAIS'),(2635,'29333995','BEZITRAMIDA (\"BEZITRAMIDE\")'),(2636,'29333939','FENOPERIDINA E SEUS SAIS'),(2637,'29333941','CLORIDRATO DE DIFENOXILATO'),(2638,'29333954','DIFENOXILATO'),(2639,'29333996','DIPIPANONA E SEUS SAIS'),(2640,'29333936','CETOBEMIDONA (\"KETOBEMIDONE\")'),(2641,'29333919','OUTSCOMPOSTHETEROCICLC/FLUOR E/OU BROMO,LIGCOVALEN'),(2642,'29333949','METILFENIDATO E SEUS SAIS'),(2643,'29333985','4-CIANO-1-METIL-4-FENILPIPERIDINA E SEUS SAIS'),(2644,'29333942','CLORIDRATO DE MEPERIDINA (CLORIDRATO DE PETIDINA)'),(2645,'29333952','PETIDINA (MEPERIDINA)'),(2646,'29333997','PIRITRAMIDA'),(2647,'29333929','OUTSCOMPOSTOS HETEROCICLC/CLORO,SEM FLUOR NEM BROM'),(2648,'29333953','TRIMEPERIDINA'),(2649,'29333999','OUTSCOMPOSTOS HETEROCICL1 CICLO PIRIDINA N/CONDENS'),(2650,'29333911','BROMAZEPAM'),(2651,'29333913','ACIDO NIFLUMICO'),(2652,'29333923','MALATO ACIDO DE CLEBOPRIDA (MALATO DE CLEBOPRIDA)'),(2653,'29333924','CLORIDRATO DE CLOPERAMIDA'),(2654,'29333925','ACIDO 2-(2METIL-3CLOROANILINO) NICOTINICO/SAL DE L'),(2655,'29333934','5-ETIL-2,3-DICARBOXIPIRIDINA (5-EPDC)'),(2656,'29333935','IMAZETAPIR (AC(RS)-5-ETIL-2-(4-ISOPROPIL-4-METIL-5'),(2657,'29333937','DIFENOXINA E SEUS SAIS'),(2658,'29333938','PENTAZOCINA E SEUS SAIS'),(2659,'29333944','NITRENDIPINA'),(2660,'29333945','MALEATO DE PIRILAMINA'),(2661,'29333947','ALFENTANIL E SEUS SAIS'),(2662,'29333948','ANILERIDINA E SEUS SAIS'),(2663,'29333951','PIPRADROL (PIPRADOL) E SEUS SAIS'),(2664,'29333955','QUINUCLIDIN-3-OL'),(2665,'29333956','BENZILATO DE 3-QUINUCLIDINILA'),(2666,'29333957','NIMODIPINA'),(2667,'29333982','CLORIDRATO DE MEPIVACAINA'),(2668,'29333984','DICLORETO DE PARAQUAT'),(2669,'29333998','PROPIRAM E SEUS SAIS'),(2670,'29334012','ROSOXACINA'),(2671,'29334020','OXAMINIQUINA'),(2672,'29334013','IMAZAQUIN'),(2673,'29334090','OUTSCOMPOSTOS HETEROCICLICOS C/1 CICLO QUINOLEINA,'),(2674,'29334019','OUTROS DERIVADOS DO ACIDO QUINOLINOCARBOXILICO'),(2675,'29334030','BROXIQUINOLINA'),(2676,'29334011','ACIDO 2,3-QUINOLINODICARBOXILICO'),(2677,'29335117','FENOBARBITAL (\"PHENOBARBITAL\") E SEUS SAIS'),(2678,'29335119','OUTSMALONILUREIAS,COM 1 OU 2 GRUPOS ETILA NO CARBO'),(2679,'29335199','OUTRAS MALONILUREIAS E SEUS DERIVADOS E SEUS SAIS'),(2680,'29335112','BARBITAL E SEUS SAIS'),(2681,'29335115','METILFENOBARBITAL (\"MEPHOBARBITAL\") E SEUS SAIS'),(2682,'29335193','SECOBARBITAL E SEUS SAIS'),(2683,'29335111','AMOBARBITAL E SEUS SAIS'),(2684,'29335113','BUTOBARBITAL (\"BUTETHAL\") E SEUS SAIS'),(2685,'29335114','CICLOBARBITAL (\"CYCLOBARBITAL\") E SEUS SAIS'),(2686,'29335116','PENTOBARBITAL E SEUS SAIS'),(2687,'29335118','SECBUTABARBITAL (ACIDO 5-ETIL-5-SEC-BUTILBARBITURI'),(2688,'29335191','ALOBARBITAL (\"ALLOBARBITAL\") E SEUS SAIS'),(2689,'29335192','BUTALBITAL E SEUS SAIS'),(2690,'29335194','VINILBITAL (\"VINYLBITAL\") E SEUS SAIS'),(2691,'29335917','LOPRAZOLAM E SEUS SAIS'),(2692,'29335915','ENROFLOXACINA,SAIS DE PIPERAZINA'),(2693,'29335921','BROMACIL'),(2694,'29335923','FLUOROURACIL'),(2695,'29335931','PROPILTIOURACIL'),(2696,'29335991','MINOXIDIL'),(2697,'29335941','TRIMETOPRIMA'),(2698,'29335992','2-AMINOPIRIMIDINA'),(2699,'29335944','NICARBAZINA'),(2700,'29335922','TERBACIL'),(2701,'29335943','TOSILATOS DE DIPIRIDAMOL'),(2702,'29335932','DIAZINON'),(2703,'29335934','AZATIOPRINA'),(2704,'29335935','6-MERCAPTOPURINA'),(2705,'29335939','OUTSCOMPOSTHETEROCCICLO PIRIMIDINA,ENXOFRE,S/HALOG'),(2706,'29335912','PRAZIQUANTEL'),(2707,'29335919','OUTROS COMPOSTOS HETEROCICLICOS,COM CICLO PIPERAZI'),(2708,'29335999','OUTSCOMPOSTOS HETEROCICLC/CICLO PIRIMIDINA/PIPERAZ'),(2709,'29335913','NORFLOXACINA E SEU NICOTINATO'),(2710,'29349034','ACIDO NUCLEICO E SEUS SAIS'),(2711,'29335933','PIRAZOFOS'),(2712,'29335942','ACICLOVIR'),(2713,'29335949','OUTSCOMPHETEROCCICLPIRIMIDINA,FUNCALCOOL E/OU ETER'),(2714,'29335911','OXATOMIDA'),(2715,'29335914','FLUNARIZINA E SEU DICLORIDRATO'),(2716,'29335916','CLORIDRATO DE BUSPIRONA'),(2717,'29335918','ZIPEPROL E SEUS SAIS'),(2718,'29335924','MECLOQUALONA E SEUS SAIS'),(2719,'29335929','OUTSCOMPOSTHETEROCCICLO PIRIMIDINA,HALOGLIGCOVALEN'),(2720,'29335945','BISSULFITO DE MENADIONA DIMETILPIRIMIDINOL'),(2721,'29335993','METAQUALONA (\"METHAQUALONE\") E SEUS SAIS'),(2722,'29336100','MELAMINA'),(2723,'29336911','2,4,6-TRICLOROTRIAZINA (CLORETO CIANURICO)'),(2724,'29336919','OUTSCOMPOSTHETEROCCICLO TRIAZINA,C/CLORO LIGCOVALE'),(2725,'29336922','HEXAZINONA'),(2726,'29336912','MERCAPTODICLOROTRIAZINA'),(2727,'29336929','OUTSCOMPOSTHETEROCCICLO TRIAZINA,S/CLORO LIGCOVALE'),(2728,'29336999','OUTSCOMPOSTOS HETEROCICL1 CICLO TRIAZINA N/CONDENS'),(2729,'29336913','ATRAZINA'),(2730,'29336914','SIMAZINA'),(2731,'29336991','AMETRINA'),(2732,'29336916','ANILAZINA'),(2733,'29336915','CIANAZINA'),(2734,'29336923','METRIBUZIM'),(2735,'29339091','AZINFOS ETILICO'),(2736,'29336921','N,N,N-TRIIDROXIETILEXAIDROTRIAZINA'),(2737,'29337100','6-HEXANOLACTAMA (EPSILON-CAPROLACTAMA)'),(2738,'29337910','PIRACETAM'),(2739,'29337930','METIPRILONA (\"METHYPRYLON\")'),(2740,'29337990','OUTRAS LACTAMAS'),(2741,'29337920','CLOBAZAM'),(2742,'29339092','ACIDO NALIDIXICO'),(2743,'29339035','HEXAMETILENOIMINA'),(2744,'29339027','CLONAZEPAM'),(2745,'29339012','CLORIDRATO DE AMILORIDA'),(2746,'29339031','DIBENZOAZEPINA (IMINOESTILBENO)'),(2747,'29339013','PINDOLOL'),(2748,'29339011','PIRAZINAMIDA'),(2749,'29339041','CLEMASTINA E SEUS DERIVADOS,SAIS DESTES PRODUTOS'),(2750,'29339051','BENOMIL'),(2751,'29339062','TRIADIMEFON'),(2752,'29339093','CLOFAZIMINA'),(2753,'29339022','DIAZEPAM'),(2754,'29339032','CARBAMAZEPINA'),(2755,'29339083','NITRAZEPAM'),(2756,'29339054','MEBENDAZOL'),(2757,'29339034','MOLINATE (HEXAIDROAZEPIN-1-CARBOTIOATO DE S-ETILA)'),(2758,'29339021','CLORDIAZEPOXIDO (\"CHLORDIAZEPOXIDE\")'),(2759,'29339057','MAZINDOL'),(2760,'29339044','ALIZAPRIDA'),(2761,'29339061','TRIADIMENOL'),(2762,'29339063','TRIAZOFOS (FOSFOROTIOATO DE O,O-DIETILA-O-(1-FENIL'),(2763,'29339033','CLORIDRATO DE CLOMIPRAMINA'),(2764,'29309092','CAPTAFOL'),(2765,'29339019','OUTSCOMPOSTHETEROC1 CICLO PIRAZINA N/CONDENSADO,ET'),(2766,'29339099','OUTSCOMPOSTOS HETEROCICLDE HETEROATOMOS DE NITROGE'),(2767,'29339059','OUTROS COMPOSTOS HETEROCICLICOS,COM CICLO IMIDAZOL'),(2768,'29339039','OUTROS COMPOSTOS HETEROCICLICOS,COM 1 CICLO AZEPIN'),(2769,'29339045','BUFLOMEDIL E SEUS DERIVADOS,SAIS DESTES PRODUTOS'),(2770,'29339069','OUTSCOMPOSTHETEROCICLC/1 CICLO TRIAZOL N/CONDENSAD'),(2771,'29334041','LEVORFANOL'),(2772,'29339029','SAIS E ESTERES DE COMPOSTHETEROCICLC/1CICLO DIAZEP'),(2773,'29339049','OUTROS COMPOSTOS HETEROCICLICOS,COM 1 CICLO PIRROL'),(2774,'29334049','SAIS E ESTERES DE LEVORFANOL'),(2775,'29336992','METENAMINA (HEXAMETILENOTETRAMINA) E SEUS SAIS'),(2776,'29339023','OXAZEPAM'),(2777,'29339024','ALPRAZOLAM'),(2778,'29339025','TRIAZOLAM'),(2779,'29339026','CAMAZEPAM'),(2780,'29339028','CLORAZEPATO'),(2781,'29339042','AMISULPRIDA'),(2782,'29339043','SULTOPRIDA'),(2783,'29339046','MALEATO DE ENALAPRIL'),(2784,'29339047','KETOROLAC TROMETAMINA'),(2785,'29339048','PIROVALERONA (\"PYROVALERONE\") E SEUS SAIS'),(2786,'29339052','OXIFENDAZOL'),(2787,'29339053','ALBENDAZOL E SEU SULFOXIDO'),(2788,'29339055','FLUBENDAZOL'),(2789,'29339056','FEMBENDAZOL (\"FENBENDAZOLE\")'),(2790,'29339058','MIDAZOLAM E SEUS SAIS'),(2791,'29339071','DELORAZEPAM (7-CLORO-5-(2-CLOROFENIL)-1,3-DIIDRO-2'),(2792,'29339072','ESTAZOLAM'),(2793,'29339073','FLUDIAZEPAM'),(2794,'29339074','FLUNITRAZEPAM'),(2795,'29339075','FLURAZEPAM E SEUS SAIS'),(2796,'29339076','HALAZEPAM'),(2797,'29339077','LOFLAZEPATO DE ETILA'),(2798,'29339078','LORAZEPAM'),(2799,'29339079','LORMETAZEPAM'),(2800,'29339081','MEDAZEPAM E SEUS SAIS'),(2801,'29339082','NIMETAZEPAM'),(2802,'29339084','NORDAZEPAM (N-DESMETILDIAZEPAM)'),(2803,'29339085','PINAZEPAM'),(2804,'29339086','PRAZEPAM'),(2805,'29339087','TEMAZEPAM'),(2806,'29339088','TETRAZEPAM'),(2807,'29339089','OUTSCOMPOSTOS HETEROCICLC/1 CICLO DIAZEPINA,SEUS S'),(2808,'29339095','METILSULFATO DE AMEZINIO'),(2809,'29339096','HIDRAZIDA MALEICA E SEUS SAIS'),(2810,'29341010','FENTIAZAC'),(2811,'29341030','TIABENDAZOL'),(2812,'29341020','CLORIDRATO DE TIAZOLIDINA'),(2813,'29341090','OUTSCOMPOSTOS HETEROCICLC/1 CICLO TIAZOL N/CONDENS'),(2814,'29342010','2-MERCAPTOBENZOTIAZOL E SEUS SAIS'),(2815,'29342020','2,2-DITIOBIS(BENZOTIAZOL) (DISSULFETO DE BENZOTIAZ'),(2816,'29342031','2-(TERBUTILAMINOTIO)BENZOTIAZOL (N-TERBUTIL-BENZOT'),(2817,'29342032','2-(CICLOEXILAMINOTIO)BENZOTIAZOL(N-CICLOEXIL-BENZO'),(2818,'29342033','2-(DICICLOEXILAMINOTIO)BENZOTIAZOL (N,N-DICICLOEXI'),(2819,'29342034','2-(4-MORFONILITIO)BENZOTIAZOL (N-OXIDIETILENO-BENZ'),(2820,'29342039','OUTROS BENZOTIAZOIS-SULFENAMIDAS'),(2821,'29342040','2-(TIOCIANOMETILTIO)BENZOTIAZOL (TCMTB)'),(2822,'29342090','OUTSCOMPOSTOS HETEROCICLICOS COM CICLOS DE BENZOTI'),(2823,'29343090','OUTSCOMPOSTOS HETEROCICLC/ESTRUTDE CICLO FENOTIAZI'),(2824,'29343010','MALEATO DE METOTRIMEPRAZINA (MALEATO DE LEVOMEPROM'),(2825,'29343030','PROMETAZINA'),(2826,'29349071','FENMETRAZINA (\"PHENMETRAZINE\") E SEUS SAIS'),(2827,'29349042','ACIDO 6-AMINOPENICILANICO'),(2828,'29349041','TIOFENO'),(2829,'29349052','TETRAMISOL'),(2830,'29349053','LEVAMISOL E SEUS SAIS'),(2831,'29349011','MORFOLINA E SEUS SAIS'),(2832,'29349024','FURAZOLIDONA'),(2833,'29349091','TIMOLOL'),(2834,'29349092','MALEATO ACIDO DE TIMOLOL'),(2835,'29349031','CETOCONAZOL'),(2836,'29349051','TEBUTIURON'),(2837,'29349099','OUTROS COMPOSTOS HETEROCICLICOS'),(2838,'29349025','CITARABINA'),(2839,'29343020','ENANTATO DE FLUFENAZINA'),(2840,'29349014','ANIDRIDO ISATOICO (2H-3,1-BENZOXAZINA-2,4-(1H)-DIO'),(2841,'29349045','CLORMEZANONA'),(2842,'29350023','PIROXICAM'),(2843,'29349015','4,4-DITIODIMORFOLINA'),(2844,'29349044','ACIDO 7-AMINODESACETOXIFALOSPORANICO'),(2845,'29349043','ACIDO 7-AMINOCEFALOSPORANICO'),(2846,'29349039','OUTSCOMPOSTOS HETEROCICLC/HETEROATOMOS DE NITROGOX'),(2847,'29349012','PIRENOXINA SODICA (CATALINO SODICO)'),(2848,'29349032','CLORIDRATO DE PRAZOSINA'),(2849,'29349013','NIMORAZOL'),(2850,'29349026','OXADIAZONA'),(2851,'29349049','OUTSCOMPOSTHETEROCHETEROATOM<=2 ENXOFRE,INCLNITROG'),(2852,'29349017','DEXTROMORAMIDA (D-MORAMIDA) E SEUS SAIS'),(2853,'29349029','OUTSCOMPOSTOS HETEROCICLC/3 HETEROATOMNITROGE OXIG'),(2854,'29349069','OUTSCOMPOSTOS HETEROCC/HETEROATOMENXOFRE INCLNITRO'),(2855,'29349019','OUTSCOMPOSTOS HETEROCICLICOS COM 1 CICLO OXAZINA,E'),(2856,'29349016','KETAZOLAM'),(2857,'29349018','FENDIMETRAZINA (\"PHENDIMETRAZINE\") E SEUS SAIS'),(2858,'29349021','CLOXAZOLAM'),(2859,'29349022','ZIDOVUDINA (AZT)'),(2860,'29349023','TIMIDINA'),(2861,'29349027','HALOXAZOLAM'),(2862,'29349028','OXAZOLAM'),(2863,'29349033','TALNIFLUMATO'),(2864,'29349035','AMINOREX E SEUS SAIS'),(2865,'29349036','PEMOLINA E SEUS SAIS'),(2866,'29349046','9-(N-METIL-4-PIPERIDINILIDENO)TIOXANTENO'),(2867,'29349047','SUFENTANIL E SEUS SAIS'),(2868,'29349055','CLOTIAZEPAM'),(2869,'29349059','OUTROS COMPOSTHETEROCICLC/3 HETEROATOMENXOFRE E NI'),(2870,'29349061','CLORIDRATO DE TIZANIDINA'),(2871,'29349062','BROTIZOLAM'),(2872,'29349072','MESOCARB (3(ALFA-METILFENETIL)-N-(FENILCARBAMOIL) '),(2873,'29350091','CLORAMINA-B E CLORAMINA-T'),(2874,'29350022','FTALILSULFATIAZOL'),(2875,'29350099','OUTRAS SULFONAMIDAS'),(2876,'29350019','OUTRAS SULFONAMIDAS C/HETEROCICLO(S) C/HETEROATOMO'),(2877,'29350011','SULFADIAZINA E SEU SAL SODICO'),(2878,'29350096','SULFAGUANIDINA'),(2879,'29350015','SULFAMETAZINA (4,6-DIMETIL-2SULFANILAMIDOPIRIMIDIN'),(2880,'29350021','FUROSEMIDA'),(2881,'29350025','SULFAMETOXAZOL'),(2882,'29350029','OUTRAS SULFONAMIDAS COM OUT(S)HETEROCICLO(S)'),(2883,'29350095','BUMETANIDA'),(2884,'29350013','SULPIRIDA'),(2885,'29350014','VERALIPRIDA'),(2886,'29350094','NIMESULIDA'),(2887,'29350012','CLORTALIDONA'),(2888,'29350024','TENOXICAM'),(2889,'29350092','GLIBURIDA'),(2890,'29350093','TOLUENOSSULFONAMIDAS'),(2891,'29361000','PROVITAMINAS,NAO MISTURADAS'),(2892,'29362111','VITAMINA A1 ALCOOL (RETINOL)'),(2893,'29362112','ACETATO DE VITAMINA A1 ALCOOL'),(2894,'29362113','PALMITATO DE VITAMINA A1 ALCOOL'),(2895,'29362119','OUTROS DERIVADOS DA VITAMINA A1 ALCOOL,NAO MISTURA'),(2896,'29362190','OUTRAS VITAMINAS A E SEUS DERIVADOS,NAO MISTURADOS'),(2897,'29362210','CLORIDRATO DE VITAMINA B1 (TIAMINA),NAO MISTURADO'),(2898,'29362220','MONONITRATO DE VITAMINA B1 (TIAMINA),NAO MISTURADO'),(2899,'29362290','OUTRAS VITAMINAS B1 E SEUS DERIVADOS,NAO MISTURADO'),(2900,'29362310','VITAMINA B2 (RIBOFLAVINA),NAO MISTURADA'),(2901,'29362320','5-FOSFATO SODICO DE VITAMINA B2 NAO MISTURADO'),(2902,'29362390','OUTROS DERIVADOS DA VITAMINA B2,NAO MISTURADOS'),(2903,'29362410','D-PANTOTENATO DE CALCIO,NAO MISTURADO'),(2904,'29362490','OUTROS ACIDOS D- OU DL-PANTOTENICO (VITAMB3/B5),DE'),(2905,'29362520','CLORIDRATO DE PIRIDOXINA,NAO MISTURADO'),(2906,'29362510','VITAMINA B6,NAO MISTURADA'),(2907,'29362590','OUTROS DERIVADOS DA VITAMINA B6,NAO MISTURADOS'),(2908,'29362610','VITAMINA B12 (CIANOCOBALAMINA),NAO MISTURADA'),(2909,'29362620','COBAMAMIDA NAO MISTURADA'),(2910,'29362630','HIDROXOCOBALAMINA E SEUS SAIS,NAO MISTURADOS'),(2911,'29362690','OUTROS DERIVADOS DA VITAMINA B12,NAO MISTURADOS'),(2912,'29362710','VITAMINA C (ACIDO L- OU DL-ASCORBICO),NAO MISTURAD'),(2913,'29362720','ASCORBATO DE SODIO,NAO MISTURADO'),(2914,'29362790','OUTROS DERIVADOS DA VITAMINA C,NAO MISTURADOS'),(2915,'29362811','D- OU DL-ALFA-TOCOFEROL,NAO MISTURADOS'),(2916,'29362812','ACETATO DE D- OU DL-ALFA-TOCOFEROL,NAO MISTURADOS'),(2917,'29362819','OUTSDERIVADOS DE D- OU DL-ALFA-TOCOFEROL,N/MISTURA'),(2918,'29362890','OUTRAS VITAMINAS E E SEUS DERIVADOS,NAO MISTURADOS'),(2919,'29362911','VITAMINA B9 (ACIDO FOLICO) E SEUS SAIS,NAO MISTURA'),(2920,'29362919','OUTROS DERIVADOS DA VITAMINA B9,NAO MISTURADOS'),(2921,'29362921','VITAMINA D3 (COLECALCIFEROL),NAO MISTURADA'),(2922,'29362929','OUTRAS VITAMINAS D E SEUS DERIVADOS,NAO MISTURADOS'),(2923,'29362931','VITAMINA H (BIOTINA),NAO MISTURADA'),(2924,'29362939','OUTROS DERIVADOS DA VITAMINA H,NAO MISTURADOS'),(2925,'29362951','ACIDO NICOTINICO,NAO MISTURADO'),(2926,'29362952','NICOTINAMIDA NAO MISTURADA'),(2927,'29362953','NICOTINATO DE SODIO,NAO MISTURADO'),(2928,'29362940','VITAMINAS K E SEUS DERIVADOS,NAO MISTURADOS'),(2929,'29362959','OUTROS DERIVADOS DO ACIDO NICOTINICO,NAO MISTURADO'),(2930,'29362990','OUTRAS VITAMINAS E SEUS DERIVADOS,NAO MISTURADOS'),(2931,'29369000','PROVITAMINAS E VITAMINAS,MISTURADAS'),(2932,'29371010','ACTH (CORTICOTROFINA)'),(2933,'29371020','HCG (GONADOTROFINA CORIONICA)'),(2934,'29371030','PMSG (GONADOTROFINA SERICA)'),(2935,'29371090','OUTSHORMONIOS DO LOBO ANTERIOR DA HIPOFISE,ETCDERI'),(2936,'29371040','MENOTROPINAS'),(2937,'29372110','CORTISONA'),(2938,'29372120','HIDROCORTISONA'),(2939,'29372130','PREDNISONA (DEIDROCORTISONA)'),(2940,'29372140','PREDNISOLONA (DEIDROIDROCORTISONA)'),(2941,'29372210','DEXAMETASONA E SEUS ACETATOS'),(2942,'29372221','ACETONIDA DA TRIANCINOLONA'),(2943,'29372231','VALERATO DE DIFLUCORTOLONA'),(2944,'29372239','FLUORCORTOLONA E OUTROS DERIVADOS'),(2945,'29372290','OUTSDERIVSHALOGENDOS HORMONIOS CORTICOSSUPRA-RENAI'),(2946,'29372910','METILIPREDNISOLONA E SEUS DERIVADOS'),(2947,'29372920','21-SUCCINATO SODICO DE HIDROCORTISONA'),(2948,'29372229','TRIANCINOLONA E OUTROS DERIVADOS'),(2949,'29372990','OUTROS HORMONIOS CORTICOSSUPRA-RENAIS E SEUS DERIV'),(2950,'29379100','INSULINA E SEUS SAIS'),(2951,'29379210','MEDROXIPROGESTERONA E SEUS DERIVADOS'),(2952,'29379270','LINESTRENOL'),(2953,'29379249','ESTRADIOL E OUTROS ESTERES,SAIS E DERIVADOS'),(2954,'29379231','ESTRIOL E SEU SUCCINATO'),(2955,'29379239','OUTROS ESTERES E SAIS DO ESTRIOL'),(2956,'29379221','L-NORGESTREL (LEVONORGESTREL)'),(2957,'29379222','DL-NORGESTREL'),(2958,'29379229','NORGESTREL E OUTROS DERIVADOS'),(2959,'29379251','ALILESTRENOL'),(2960,'29379259','ESTERES E SAIS DO ALILESTRENOL'),(2961,'29379291','ACETATO DE ETINODIOL'),(2962,'29379241','HEMISSUCCINATO DE ESTRADIOL'),(2963,'29379242','FEMPROPIONATO DE ESTRADIOL (17-(3-FENILPROPIONATO)'),(2964,'29379260','DESOGESTREL'),(2965,'29379299','OUTROS ESTROGENIOS E PROGESTOGENIOS'),(2966,'29379930','OXITOCINA'),(2967,'29379940','LEVOTIROXINA SODICA'),(2968,'29379950','LIOTIRONINA SODICA'),(2969,'29379920','MESTEROLONA E SEUS DERIVADOS'),(2970,'29379911','ACETATO DE CIPROTERONA'),(2971,'29379990','OUTSHORMONIOS,DERIVSE ESTEROIDES UTILCOMO HORMONIO'),(2972,'29379919','CIPROTERONA E OUTROS DERIVADOS'),(2973,'29381000','RUTOSIDIO (RUTINA) E SEUS DERIVADOS'),(2974,'29389090','OUTSHETEROSIDEOS,SEUS SAIS,ETERES,ESTERES E DERIVA'),(2975,'29389010','DESLANOSIDEO'),(2976,'29329921','IVERMECTIN'),(2977,'29389020','ESTEVIOSIDEO'),(2978,'29391011','CLORIDRATO E SULFATO DE MORFINA'),(2979,'29391016','MORFINA'),(2980,'29391012','CODEINA E SEUS SAIS'),(2981,'29391093','ETORFINA E SEUS SAIS'),(2982,'29391019','ETILMORFINA (\"ETHYLMORPHINE\") E SEUS SAIS'),(2983,'29391026','HIDROMORFONA (\"HYDROMORFONE\") E SEUS SAIS'),(2984,'29391021','NICOMORFINA E SEUS SAIS'),(2985,'29391029','OUTROS DERIVADOS DA MORFINA E SAIS DESTES PRODUTOS'),(2986,'29391018','OXICODONA (\"OXYCODONE\") E SEUS SAIS'),(2987,'29391022','OXIMORFONA (\"OXYMORPHONE\") E SEUS SAIS'),(2988,'29391025','TEBAINA (\"THEBAINE\") E SEUS SAIS'),(2989,'29391024','TEBACONA (\"THEBACON\") E SEUS SAIS'),(2990,'29391013','HEROINA (DIACETILMORFINA) E SEUS SAIS'),(2991,'29391014','HIDROCODONA (\"HYDROCODONE\") E SEUS SAIS'),(2992,'29391015','FOLCODINA (\"PHOLCODINE\") E SEUS SAIS'),(2993,'29391017','DIIDROCODEINA E SEUS SAIS'),(2994,'29391031','HIDROMORFONA (\"HYDROMORFONE\") E SEUS SAIS'),(2995,'29391091','BUPRENORFINA E SEUS SAIS'),(2996,'29391099','OUTROS ALCALOIDES DO OPIO,SEUS DERIVADOS E SEUS SA'),(2997,'29392100','QUININA E SEUS SAIS'),(2998,'29392900','OUTROS ALCALOIDES DA QUINA,SEUS DERIVADOS E SAIS'),(2999,'29393010','CAFEINA'),(3000,'29393020','SAIS DA CAFEINA'),(3001,'29394990','OUTROS DERIVADOS DA EFEDRINA E SEUS SAIS'),(3002,'29394910','CATINA E SEUS SAIS'),(3003,'29394100','EFEDRINA E SEUS SAIS'),(3004,'29394200','PSEUDOEFEDRINA (DCI) E SEUS SAIS'),(3005,'29395010','TEOFILINA'),(3006,'29395020','AMINOFILINA'),(3007,'29395030','FENETILINA E SEUS SAIS'),(3008,'29395090','DERIVADOS E SAIS DA TEOFILINA E AMINOFILINA'),(3009,'29396100','ERGOMETRINA (DCI) E SEUS SAIS'),(3010,'29396200','ERGOTAMINA (DCI) E SEUS SAIS'),(3011,'29396931','MESILATO DE DIIDROERGOCORNINA'),(3012,'29396941','MESILATO DE ALFA-DIIDROERGOCRIPTINA'),(3013,'29396942','MESILATO DE BETA-DIIDROERGOCRIPTINA'),(3014,'29396951','ERGOCRISTINA'),(3015,'29396990','OUTROS ALCALOIDES DA CRAVAGEM DO CENTEIO,SEUS DERI'),(3016,'29396300','ACIDO LISERGICO E SEUS SAIS'),(3017,'29396911','MALEATO DE METILERGOMETRINA'),(3018,'29396919','OUTROS DERIVADOS DA ERGOMETRINA (DCI) E SEUS SAIS'),(3019,'29396921','MESILATO DE DIIDROERGOTAMINA'),(3020,'29396929','OUTROS DERIVADOS DA ERGOTAMINA (DCI) E SEUS SAIS'),(3021,'29396939','ERGOCORNINA E OUTROS DERIVADOS E SAIS'),(3022,'29396949','ERGOCRIPTINA E OUTROS DERIVADOS E SAIS'),(3023,'29396952','METANOSSULFONATO DE DIIDROERGOCRISTINA'),(3024,'29396959','OUTROS DERIVADOS DA ERGOCRISTINA E SEUS SAIS'),(3025,'29397000','NICOTINA E SEUS SAIS'),(3026,'29399011','BROMETO DE N-BUTILESCOPOLAMINA'),(3027,'29399031','PILOCARPINA,SEU NITRATO OU CLORIDRATO'),(3028,'29399039','OUTROS SAIS DA PILOCARPINA'),(3029,'29399020','TEOBROMINA,SEUS DERIVADOS E SAIS'),(3030,'29399041','COCAINA E SEUS SAIS'),(3031,'29391092','CONCENTRADO DE PALHA DE PAPOULA'),(3032,'29399019','ESCOPOLAMINA,OUTROS DERIVADOS E SAIS'),(3033,'29399042','ECGONINA E SEUS SAIS'),(3034,'29399049','OUTROS DERIVADOS DA COCAINA E SEUS SAIS'),(3035,'29399051','LEVOMETANFETAMINA (1-N,ALFA-DIMETILFENETILAMINA) E'),(3036,'29399052','METANFETAMINA (D-N,ALFA-DIMETILFENETILAMINA) E SAI'),(3037,'29399053','RACEMATO DE METANFETAMINA (D1-N,ALFA-DIMETILFENETI'),(3038,'29399059','OUTSDIMETILFENETILAMINAS,SEUS DERIVADOS E SEUS SAI'),(3039,'29399090','OUTROS ALCALOIDES VEGETAIS,SEUS SAIS,ETERES,ESTERE'),(3040,'29400099','OUTROS ETERES E ESTERES DE ACUCARES E SEUS SAIS'),(3041,'29400012','ARABINOSE'),(3042,'29400092','FRUTOSE-1,6-DIFOSFATO DE CALCIO OU DE SODIO'),(3043,'29400011','GALACTOSE'),(3044,'29400013','RAMNOSE'),(3045,'29400019','OUTROS ACUCARES QUIMICAMENTE PUROS'),(3046,'29400093','MALTITOL'),(3047,'29400094','LACTOGLUCONATO DE CALCIO'),(3048,'29411010','AMPICILINA E SEUS SAIS'),(3049,'29411020','AMOXICILINA E SEUS SAIS'),(3050,'29411031','PENICILINA V POTASSICA'),(3051,'29411041','PENICILINA G POTASSICA'),(3052,'29411043','PENICILINA G PROCAINICA'),(3053,'29411042','PENICILINA G BENZATINICA'),(3054,'29411049','OUTRAS PENICILINAS G,DERIVADOS E SAIS'),(3055,'29411039','OUTRAS PENICILINAS V,DERIVADOS E SAIS'),(3056,'29411090','OUTSPENICILINAS,DERIVSC/ESTRUTACPENICILANICO E SAI'),(3057,'29412010','SULFATOS DE ESTREPTOMICINAS'),(3058,'29412090','ESTREPTOMICINAS,OUTROS DERIVADOS E SAIS'),(3059,'29413010','CLORIDRATO DE TETRACICLINA'),(3060,'29413020','OXITETRACICLINA'),(3061,'29413031','MINOCICLINA'),(3062,'29413032','SAIS DE MINOCICLINA'),(3063,'29413090','TETRACICLINA,OUTROS DERIVADOS E SAIS'),(3064,'29414011','CLORANFENICOL,SEU PALMITATO,SUCCINATO OU HEMISSUCC'),(3065,'29414090','OUTROS DERIVADOS E SAIS,DO CLORANFENICOL'),(3066,'29414020','TIANFENICOL E SEUS ESTERES'),(3067,'29414019','OUTROS ESTERES DO CLORANFENICOL'),(3068,'29415090','OUTROS DERIVADOS DA ERITROMICINA E SEUS SAIS'),(3069,'29415010','CLARITROMICINA'),(3070,'29415020','ERITROMICINA E SEUS SAIS'),(3071,'29419041','SULFATO DE NEOMICINA'),(3072,'29419011','RIFAMICINA S'),(3073,'29419012','RIFAMPICINA (RIFAMICINA AMP)'),(3074,'29419013','RIFAMICINA SV SODICA'),(3075,'29419019','OUTRAS RIFAMICINAS,SEUS DERIVSE SAIS DESTES PRODUT'),(3076,'29419091','GRISEOFULVINA E SEUS SAIS'),(3077,'29419061','NISTATINA E SEUS SAIS'),(3078,'29419042','EMBONATO DE GENTAMICINA (PAMOATO DE GENTAMICINA)'),(3079,'29419043','SULFATO DE GENTAMICINA'),(3080,'29419021','CLORIDRATO DE LINCOMICINA'),(3081,'29419022','FOSFATO DE CLINDAMICINA'),(3082,'29419029','LINCOMICINA,OUTROS DERIVADOS E SAIS DESTES PRODUTO'),(3083,'29419062','ANFOTERICINA B E SEUS SAIS'),(3084,'29419033','CEFACLOR E CEFALEXINA MONOIDRATADOS,E CEFALOTINA S'),(3085,'29419081','POLIMIXINAS E SEUS SAIS'),(3086,'29419031','CEFTRIAXONA E SEUS SAIS'),(3087,'29419036','CEFOXITINA E SEUS SAIS'),(3088,'29419071','MONENSINA SODICA'),(3089,'29419072','NARASINA'),(3090,'29419039','OUTRAS CEFALOSPORINAS E CEFAMICINAS,DERIVADOS E SA'),(3091,'29419082','SULFATO DE COLISTINA'),(3092,'29419051','EMBONATO DE ESPIRAMICINA (PAMOATO DE ESPIRAMICINA)'),(3093,'29419092','FUMARATO DE TIAMULINA'),(3094,'29419099','OUTROS ANTIBIOTICOS'),(3095,'29419059','OUTROS MACROLIDIOS E SEUS SAIS'),(3096,'29419083','VIRGINIAMICINAS E SEUS SAIS'),(3097,'29419069','OUTROS POLIENOS E SEUS SAIS'),(3098,'29419032','CEFOPERAZONA E SEUS SAIS,E CEFAZOLINA SODICA'),(3099,'29419034','CEFADROXIL E SEUS SAIS'),(3100,'29419089','OUTROS POLIPEPTIDIOS E SEUS SAIS'),(3101,'29419049','OUTROS AMINOGLUCOSIDEOS E SEUS SAIS'),(3102,'29419079','OUTROS POLIETERES E SEUS SAIS'),(3103,'29419035','CEFOTAXIMA SODICA'),(3104,'29419037','CEFALOSPORINA C'),(3105,'29419073','AVILAMICINAS'),(3106,'29420000','OUTROS COMPOSTOS ORGANICOS'),(3107,'30011010','FIGADOS DESSECADOS,PARA USO OPOTERAPICO'),(3108,'30011090','GLANDULAS E OUTROS ORGAOS,PARA USO OPOTERAPICO'),(3109,'30012010','EXTRATOS DE FIGADOS,PARA USO OPOTERAPICO'),(3110,'30012090','EXTRATOS DE GLANDULAS,OUTSORGAOS,ETCP/USO OPOTERAP'),(3111,'30019010','HEPARINA E SEUS SAIS'),(3112,'30019090','OUTRAS SUBSTSHUMANAS/ANIMAIS,P/FINS TERAPEUTPROFIL'),(3113,'30019020','PEDACOS DE PERICARDIO DE ORIGEM BOVINA OU SUINA'),(3114,'30021019','OUTROS ANTI-SOROS ESPECIFDE ANIMAIS/PESSOAS,IMUNIZ'),(3115,'35029010','SOROALBUMINA'),(3116,'30021011','SOROS ANTIOFIDICOS E OUTROS SOROS ANTIVENENOSOS'),(3117,'30021023','OUTRAS IMUNOGLOBULINAS SERICAS'),(3118,'30021024','CONCENTRADO DE FATOR VIII'),(3119,'30021029','OUTSFRACOES DO SANGUE,PRODIMUNOLMODIFEXCMEDICAMENT'),(3120,'30021032','PLASMINA (FIBRINOLISINA)'),(3121,'30021031','SOROALBUMINA PREPARADO COMO MEDICAMENTO'),(3122,'30021039','OUTSFRACOES DO SANGUE,PRODIMUNOLMODIF(MEDICAMENTOS'),(3123,'30021035','IMUNOGLOBULINA G,LIOFILIZADA OU EM SOLUCAO'),(3124,'30021033','UROQUINASE'),(3125,'30021034','IMUNOGLOBULINA E CLORIDRATO DE HISTAMINA,ASSOCIADO'),(3126,'30021036','INTERFERON BETA'),(3127,'30021012','SORO ANTITETANICO'),(3128,'30021013','SORO ANTICATARRAL'),(3129,'30021014','SORO ANTIPIOGENICO'),(3130,'30021015','SORO ANTIDIFTERICO'),(3131,'30021016','ANTI-SOROS POLIVALENTES'),(3132,'30021022','IMUNOGLOBULINA ANTI-RH'),(3133,'30022012','VACINA CONTRA A POLIOMIELITE,EXCEM DOSES'),(3134,'30022022','VACINA CONTRA A POLIOMIELITE,EM DOSES'),(3135,'30022013','VACINA CONTRA A HEPATITE B,EXCEM DOSES'),(3136,'30022023','VACINA CONTRA A HEPATITE B,EM DOSES'),(3137,'30022015','VACINA CONTRA A MENINGITE,EXCEM DOSES'),(3138,'30022025','VACINA CONTRA A MENINGITE,EM DOSES'),(3139,'30022029','OUTRAS VACINAS PARA MEDICINA HUMANA,EM DOSES'),(3140,'30022018','VACINAS ANTICATARRAL E ANTIPIOGENICO,EXCEM DOSES'),(3141,'30022028','VACINAS ANTICATARRAL E ANTIPIOGENICO,EM DOSES'),(3142,'30022016','VACINA CONTRA RUBEOLA,SARAMPO E CAXUMBA,EXCEM DOSE'),(3143,'30022026','VACINA CONTRA RUBEOLA,SARAMPO E CAXUMBA,EM DOSES'),(3144,'30022017','OUTRAS VACINAS TRIPLICES,EXCEM DOSES'),(3145,'30022027','OUTRAS VACINAS TRIPLICES,EM DOSES'),(3146,'30022014','VACINA CONTRA O SARAMPO,EXCEM DOSES'),(3147,'30022024','VACINA CONTRA O SARAMPO,EM DOSES'),(3148,'30022011','VACINA CONTRA A GRIPE,EXCEM DOSES'),(3149,'30022019','OUTRAS VACINAS PARA MEDICINA HUMANA,EXCEM DOSES'),(3150,'30022021','VACINA CONTRA A GRIPE,EM DOSES'),(3151,'30023060','VACINA VETERINARIA,CONTRA A FEBRE AFTOSA'),(3152,'30023010','VACINA VETERINARIA,CONTRA A RAIVA'),(3153,'30023090','OUTRAS VACINAS PARA MEDICINA VETERINARIA'),(3154,'30023020','VACINA VETERINARIA,CONTRA A COCCIDIOSE'),(3155,'30023030','VACINA VETERINARIA,CONTRA A QUERATO-CONJUNTIVITE'),(3156,'30023040','VACINA VETERINARIA,CONTRA A CINOMOSE'),(3157,'30023050','VACINA VETERINARIA,CONTRA A LEPTOSPIROSE'),(3158,'30023070','VACINA VETERINCONTRA ENFERMIDNEWCASTLE,GUMBORO,ETC'),(3159,'30023080','VACINA VETERINCOMBCONTRA ENFERMNEWCASTLE,GUMBORO,E'),(3160,'30029099','OUTRAS TOXINAS,CULTURAS DE MICROORGANISMOS,PRODSSE'),(3161,'30029020','ANTITOXINAS DE ORIGEM MICROBIANA'),(3162,'30029030','TUBERCULINAS'),(3163,'30029092','OUTRAS TOXINAS,CULTURAS DE MICROORGANISMOS,P/SAUDE'),(3164,'30029010','REAGENTES DE ORIGEM MICROBIANA PARA DIAGNOSTICO'),(3165,'30029091','OUTRAS TOXINAS,CULTURAS DE MICROORGANISMOS,P/SAUDE'),(3166,'30029093','SAXITOXINA'),(3167,'30029094','RICINA'),(3168,'30031011','MEDICAMENTO CONTAMPICILINA OU SEUS SAIS,EXCEM DOSE'),(3169,'30031012','MEDICAMENTO CONTAMOXICILINA OU SEUS SAIS,EXCEM DOS'),(3170,'30031013','MEDICAMENTO CONTPENICILINA G BENZATINICA,EXCEM DOS'),(3171,'30031014','MEDICAMENTO CONTPENICILINA G POTASSICA,EXCEM DOSES'),(3172,'30031015','MEDICAMENTO CONTPENICILINA G PROCAINICA,EXCEM DOSE'),(3173,'30031019','MEDICAMENTO CONTOUTSPENICILINAS/DERIVSEXCEM DOSES'),(3174,'30031020','MEDICAMENTO CONTESTREPTOMICINAS/DERIVADOS EXCEM DO'),(3175,'30032079','MEDICAMENTO CONTPOLIPEPTIDIOS/OUTSDERIVSEXCEM DOSE'),(3176,'30032029','MEDICAMENTO CONTMACROLIDIOS/OUTSDERIVSEXCEM DOSES'),(3177,'30032059','MEDICAMENTO C/CEFALOSPORINAS/CEFAMICINAS/ETCEXCDOS'),(3178,'30032069','MEDICAMENTO CONTAMINOGLICOSIDIOS/OUTSDERIVSEXCDOSE'),(3179,'30032099','MEDICAMENTO CONTENDO OUTROS ANTIBIOTICOS,EXCEM DOS'),(3180,'30032011','MEDICAMENTO CONTENDO CLORANFENICOL,ETCEXCEM DOSES'),(3181,'30032019','MEDICAMENTO CONTANFENICOIS/OUTSDERIVADOS EXCEM DOS'),(3182,'30032021','MEDICAMENTO CONTERITROMICINA/SEUS SAIS,EXCEM DOSES'),(3183,'30032031','MEDICAMENTO CONTRIFAMICINA SV SODICA,EXCEM DOSES'),(3184,'30032032','MEDICAMENTO CONTENDO RIFAMPICINA,EXCEM DOSES'),(3185,'30032039','MEDICAMENTO CONTANSAMICINAS/OUTSDERIVSEXCEM DOSES'),(3186,'30032041','MEDICAMENTO CONTCLORIDRATO DE LINCOMICINA,EXCEM DO'),(3187,'30032049','MEDICAMENTO CONTLINCOSAMIDAS/OUTSDERIVSEXCEM DOSES'),(3188,'30032051','MEDICAMENTO CONTENDO CEFALOTINA SODICA,EXCEM DOSES'),(3189,'30032052','MEDICAMENTO C/CEFACLOR/CEFALEXINA MONOIDRATADEXCDO'),(3190,'30032061','MEDICAMENTO CONTSULFATO DE GENTAMICINA,EXCEM DOSES'),(3191,'30032062','MEDICAMENTO CONTDAUNORUBICINA,EXCEM DOSES'),(3192,'30032063','MEDICAMENTO CONTPIRARUBICINA,EXCEM DOSES'),(3193,'30032071','MEDICAMENTO CONTENDO VANCOMICINA,EXCEM DOSES'),(3194,'30032072','MEDICAMENTO CONTENDO ACTINOMICINAS,EXCEM DOSES'),(3195,'30032091','MEDICAMENTO CONTENDO MITOMICINA,EXCEM DOSES'),(3196,'30032092','MEDICAMENTO CONTENDO FUMARATO DE TIAMULINA,EXCEM D'),(3197,'30032093','MEDICAMENTO CONTBLEOMICINAS OU SEUS SAIS,EXCEM DOS'),(3198,'30032094','MEDICAMENTO CONTENDO IMIPENEM,EXCEM DOSES'),(3199,'30033100','MEDICAMENTO CONTINSULINA,N/CONTANTIBIOTEXCEM DOSES'),(3200,'30033911','MEDICAMENTO C/HORMONIO CRESCIM(SOMATROFINA),EXCDOS'),(3201,'30033912','MEDICAMENTO C/HCG (GONADOTROFINA CORIONICA),EXCDOS'),(3202,'30033913','MEDICAMENTO CONTMENOTROPINAS,N/CONTANTIBIOTEXCDOSE'),(3203,'30033914','MEDICAMENTO CONTENDO ACTH (CORTICOTROFINA),EXCEM D'),(3204,'30033915','MEDICAMENTO CONTPMSG (GONADOTROFINA SERICA),EXCDOS'),(3205,'30033916','MEDICAMENTO CONTSOMATOSTATINA/SEUS SAIS,EXCEM DOSE'),(3206,'30033917','MEDICAMENTO CONTENDO ACETATO DE BUSERELINA,EXCEM D'),(3207,'30033918','MEDICAMENTO CONTTRIPTORELINA/SEUS SAIS,EXCEM DOSES'),(3208,'30033919','MEDICAMENTO CONTLEUPROLIDA OU SEU ACETATO,EXCEM DO'),(3209,'30033921','MEDICAMENTO CONTENDO LH-RH (GONADORELINA),EXCEM DO'),(3210,'30033922','MEDICAMENTO CONTENDO OXITOCINA,EXCEM DOSES'),(3211,'30033923','MEDICAMENTO CONTENDO SAIS DE INSULINA,EXCEM DOSES'),(3212,'30033924','MEDICAMENTO CONTENDO TIMOSINAS,EXCEM DOSES'),(3213,'30033925','MEDICAMENTO CONTENDO OCTRETIDA,EXCEM DOSES'),(3214,'30033926','MEDICAMENTO CONTENDO GOSERELINA,EXCEM DOSES'),(3215,'30033929','MEDICAMENTO C/OUTSHORMONPOLIPEPTIDICOS,ETCEXCDOSES'),(3216,'30033931','MEDICAMENTO CONTHEMISSUCCINATO DE ESTRADIOL,EXCDOS'),(3217,'30033932','MEDICAMENTO CONTFEMPROPIONATO DE ESTRADIOL,EXCDOSE'),(3218,'30033933','MEDICAMENTO CONTESTRIOL OU SEU SUCCINATO,EXCEM DOS'),(3219,'30033934','MEDICAMENTO CONTENDO ALILESTRENOL,EXCEM DOSES'),(3220,'30033935','MEDICAMENTO CONTENDO LINESTRENOL,EXCEM DOSES'),(3221,'30033936','MEDICAMENTO CONTACETATO MAGESTROL,FORMESTANO,EXCDO'),(3222,'30033937','MEDICAMENTO CONTENDO DESOGESTREL,EXCEM DOSES'),(3223,'30033939','MEDICAMENTO CONTOUTSESTROGENIOS/PROGESTOGENEXCDOSE'),(3224,'30033981','MEDICAMENTOS CONTLEVOTIROXINA SODICA,EXCEM DOSES'),(3225,'30033982','MEDICAMENTOS CONTLIOTIRONINA SODICA,EXCEM DOSES'),(3226,'30033990','MEDICAMENTO CONTOUTSHORMONIOS/DERIVSETCEXCEM DOSES'),(3227,'30034010','MEDICAMENTO CONTVIMBLASTINA/SEUS DERIVSEXCEM DOSES'),(3228,'30034020','MEDICAMENTO CONTPILOCARPINA/SEU NITRATO/ETCEXCDOSE'),(3229,'30034030','MEDICAMENTO C/METANOSSULFDIIDROERGOCRISTINA,EXCDOS'),(3230,'30034040','MEDICAMENTO CONTENDO CODEINA OU SEUS SAIS,EXCEM DO'),(3231,'30034090','MEDICAMENTO CONTOUTSALCALOIDES/DERIVSETCEXCDOSES'),(3232,'30039076','MEDICAMC/AC2-(2 METIL-3 CLOROANILINA) NICOTEXCDOSE'),(3233,'30039073','MEDICAMENTO C/OXIFENDAZOL/ALBENDAZOL,ETCEXCEM DOSE'),(3234,'30039044','MEDICAMENTO CONTENDO TAMOXIFEN/SEU CITRATO,EXCEM D'),(3235,'30039048','MEDICAMENTO CONTMELFALANO,CLORAMBUCIL,ETCEXCEM DOS'),(3236,'30039058','MEDICAMENTO CONTCARMUSTINA/LOMUSTINA,ETCEXCEM DOSE'),(3237,'30039074','MEDICAMENTO CONTTRIAZOLAM/ALPRAZOLAM,ETCEXCEM DOSE'),(3238,'30039099','OUTSMEDICAMCONTPRODSMISTURADOS,P/FINS TERAPEUTETC'),(3239,'30039041','MEDICAMENTO C/SULFATO DE TRANILCIPROMINA,ETCEXCDOS'),(3240,'30039043','MEDICAMENTO C/CLEMBUTEROL/SEU CLORIDRATO,EXCEM DOS'),(3241,'30039053','MEDICAMENTO C/LIDOCAINA/SEU CLORIDRATO,ETCEXCEM DO'),(3242,'30039071','MEDICAMENTO C/TERFENADINA/TALNIFLUMATO,ETCEXCEM DO'),(3243,'30039078','MEDICAMENTO C/CICLOSPORINA A,FLUSPIRILENO,ETCEXCDO'),(3244,'30039069','MEDICAMENTO C/OUTSTIOCOMPOSTOS ORGANETCEXCEM DOSES'),(3245,'30039031','MEDICAMENTO CONTENDO PERMETRINA,ETCEXCEM DOSES'),(3246,'30039039','MEDICAMENTO C/OUTSACIDOS CARBOXILICOS,ETCEXCEM DOS'),(3247,'30039042','MEDICAMENTO C/ACIDO SULFANILICO,SAIS,ETCEXCEM DOSE'),(3248,'30039064','MEDICAMENTO CONTCLORIDRATO DE AMIODARONA,EXCEM DOS'),(3249,'30039079','MEDICAMC/OUTSCOMPHETEROCHETEROATNITROGEXCDOSES'),(3250,'30039081','MEDICAMENTO CONTLEVAMISOL/SEUS SAIS,ETCEXCEM DOSES'),(3251,'30039089','MEDICAMENTO C/OUTSCOMPOSTHETEROCICLETCEXCEM DOSES'),(3252,'30039049','MEDICAMENTO C/OUTSCOMPOSTOS FUNCAO AMINA,ETCEXCDOS'),(3253,'30039088','MEDICAMENTO CONTENDO TOPOTECAN,URACIL,ETCEXCEM DOS'),(3254,'30039021','MEDICAMENTO CONTENDO ESTREPTOQUINASE,EXCEM DOSES'),(3255,'30039029','MEDICAMENTO C/OUTSENZIMAS,N/CONTVITAMSETCEXCDOSES'),(3256,'30039091','MEDICAMENTO CONTENDO EXTRATO DE POLEN,EXCEM DOSES'),(3257,'30039011','MEDICAMENTO C/FOLINATO CALCIO (LEUCOVORINA),EXCDOS'),(3258,'30039012','MEDICAMENTO CONTACIDO NICOTINICO,ETCEXCEM DOSES'),(3259,'30039013','MEDICAMENTO CONTHIDROXOCOBALAMINA,ETCEXCEM DOSES'),(3260,'30039014','MEDICAMENTO CONTVITAMINA A1 (RETINOL),ETCEXCEM DOS'),(3261,'30039015','MEDICAMENTO CONTD-PANTOTENATO DE CALCIO,ETCEXCDOSE'),(3262,'30039016','MEDICAMENTO C/ESTERES DAS VITAMINAS A E D,ETCEXCDO'),(3263,'30039017','MEDICAMENTO CONTACIDO RETINOICO (TRETINOINA),EXCDO'),(3264,'30039019','MEDICAMENTO C/OUTSVITAMINAS,PROVITAMDERIVSEXCDOSES'),(3265,'30039022','MEDICAMENTO CONTENDO L-ASPARAGINASE,EXCEM DOSES'),(3266,'30039023','MEDICAMENTO CONTENDO DEOXIMBONUCLEASE,EXCEM DOSES'),(3267,'30039032','MEDICAMENTO CONTACIDO DEIDROCOLICO,ETCEXCEM DOSES'),(3268,'30039033','MEDICAMENTO C/ACIDO GLUCONICO/SAIS/ESTERES,EXCEM D'),(3269,'30039034','MEDICAMENTO C/ACIDO O-ACETILSALICILICO/ETCEXCEM DO'),(3270,'30039035','MEDICAMENTO C/TIRATRICOL/LACTOFOSFATO CALCIO,EXCDO'),(3271,'30039036','MEDICAMENTO CONTACIDO LACTICO/SAIS/ETCEXCEM DOSES'),(3272,'30039037','MEDICAMENTO CONTACIDO FUMARICO/SAIS/ETCEXCEM DOSES'),(3273,'30039038','MEDICAMENTO CONTETRETINATO,MILTEFOSINA,ETCEXCDOSES'),(3274,'30039045','MEDICAMENTO CONTLEVODOPA/ALFA-METILDOPA,EXCEM DOSE'),(3275,'30039046','MEDICAMENTO C/CLORIDRATO DE FENILEFRINA,ETCEXCDOSE'),(3276,'30039047','MEDICAMENTO CONTDICLOFENACO DE SODIO,ETCEXCEM DOSE'),(3277,'30039051','MEDICAMENTO CONTENDO METOCLOPRAMIDA,ETCEXCEM DOSES'),(3278,'30039052','MEDICAMENTO CONTATENOLOL/PRILOCAINA/ETCEXCEM DOSES'),(3279,'30039054','MEDICAMENTO CONTENDO FEMPROPOREX,EXCEM DOSES'),(3280,'30039055','MEDICAMENTO CONTPARACETAMOL OU BROMOPRIDA,EXCEM DO'),(3281,'30039056','MEDICAMENTO CONTAMITRAZ OU CIPERMETRINA,EXCEM DOSE'),(3282,'30039057','MEDICAMENTO CONTCLOREXIDINA/SEUS SAIS,ETCEXCEM DOS'),(3283,'30039059','MEDICAMENTO C/OUTSCOMPFUNCCARBOXIAMIDA,ETCEXCDOSES'),(3284,'30039061','MEDICAMENTO C/DINITRATO DE ISOSSORBIDA,ETCEXCEM DO'),(3285,'30039062','MEDICAMENTO CONTENDO TIAPRIDA,EXCEM DOSES'),(3286,'30039063','MEDICAMENTO CONTENDO ETIDRONATO DISSODICO,EXCEM DO'),(3287,'30039065','MEDICAMENTO CONTNITROVIN OU MOXIDECTINA,EXCEM DOSE'),(3288,'30039066','MEDICAMENTO CONTENDO ESPIRONOLACTONA,EXCEM DOSES'),(3289,'30039067','MEDICAMENTO CONTCARBOCISTEINA OU SULFIRAM,EXCEM DO'),(3290,'30039068','MEDICAMENTO CONTENDO ETOPOSIDO,EXCEM DOSES'),(3291,'30039072','MEDICAMENTO C/NIFEDIPINA/NITRENDIPINA,ETCEXCEM DOS'),(3292,'30039075','MEDICAMENTO C/FENITOINA/SEU SAL SODICO,ETCEXCEM DO'),(3293,'30039077','MEDICAMENTO C/NICARBAZINA/NORFLOXACINA,ETCEXCEM DO'),(3294,'30039082','MEDICAMENTO C/SULFADIAZINA/SEU SAL SODICO,ETCEXCDO'),(3295,'30039083','MEDICAMENTO CONTKETAZOLAM/SULPIRIDA,ETCEXCEM DOSES'),(3296,'30039084','MEDICAMC/FTALILSULFATIAZOL/BUMETANIDA,ETCEXCEM DOS'),(3297,'30039085','MEDICAMENTO C/ENANTATO DE FLUFENAZINA,ETCEXCEM DOS'),(3298,'30039086','MEDICAMENTO C/FUROSEMIDA/CLORTALIDONA,ETCEXCEM DOS'),(3299,'30039087','MEDICAMENTO C/CLORIDRATO DE TIZANIDINA,ETCEXCEM DO'),(3300,'30039092','MEDICAMENTO CONTDISOFENOL/CRISAROBINA,ETCEXCEM DOS'),(3301,'30039093','MEDICAMENTO CONTENDO DICOFLENACO RESINATO,EXCEM DO'),(3302,'30039094','MEDICAMENTO CONTENDO SILIMARINA,EXCEM DOSES'),(3303,'30039095','MEDICAMENTO CONTPROPOFOL,BUSULFANO,MITOTANO,EXCDOS'),(3304,'30041011','MEDICAMENTO CONTENDO AMPICILINA OU SEUS SAIS,EM DO'),(3305,'30041012','MEDICAMENTO CONTENDO AMOXICILINA OU SEUS SAIS,EM D'),(3306,'30041013','MEDICAMENTO CONTENDO PENICILINA G BENZATINICA,EM D'),(3307,'30041014','MEDICAMENTO CONTENDO PENICILINA G POTASSICA,EM DOS'),(3308,'30041015','MEDICAMENTO CONTENDO PENICILINA G PROCAINICA,EM DO'),(3309,'30041019','MEDICAMENTO CONTOUTSPENICILINAS/SEUS DERIVSEM DOSE'),(3310,'30041020','MEDICAMENTO CONTESTREPTOMICINAS/SEUS DERIVSEM DOSE'),(3311,'30042021','MEDICAMENTO CONTENDO ERITROMICINA OU SEUS SAIS,EM '),(3312,'30042059','OUTROS MEDICAMENTOS CONTENDO CEFALOSPORINAS,ETCEM '),(3313,'30042079','OUTSMEDICAMENTOS CONTPOLIPEPTIDEOS/DERIVADOS,EM DO'),(3314,'30042039','OUTROS MEDICAMENTOS CONTANSAMICINAS/DERIVADOS,EM D'),(3315,'30042029','OUTROS MEDICAMENTOS CONTMACROLIDEOS/DERIVADOS,EM D'),(3316,'30042049','OUTROS MEDICAMENTOS CONTLINCOSAMIDAS/DERIVADOS,EM '),(3317,'30042099','MEDICAMENTOS CONTENDO OUTROS ANTIBIOTICOS,EM DOSES'),(3318,'30042011','MEDICAMENTO C/CLORANFENICOL/SEU PALMITATO,ETCEM DO'),(3319,'30042019','MEDICAMENTO CONTENDO ANFENICOIS/OUTROS SAIS,EM DOS'),(3320,'30042031','MEDICAMENTO CONTENDO RIFAMICINA SV SODICA,EM DOSES'),(3321,'30042032','MEDICAMENTO CONTENDO RIFAMPICINA,EM DOSES'),(3322,'30042041','MEDICAMENTO CONTENDO CLORIDRATO DE LINCOMICINA,EM '),(3323,'30042051','MEDICAMENTO CONTENDO CAFALOTINA SODICA,EM DOSES'),(3324,'30042052','MEDICAMENTO C/CEFACLOR/CEFALEXINA MONOIDRATADSEM D'),(3325,'30042061','MEDICAMENTO CONTENDO SULFATO DE GENTAMICINA,EM DOS'),(3326,'30042062','MEDICAMENTO CONTENDO DAUNORUBICINA,EM DOSES'),(3327,'30042063','MEDICAMENTO CONTENDO PIRARUBICINA,EM DOSES'),(3328,'30042069','OUTSMEDICAMENTOS CONTAMINOGLUCOSIDIOS/DERIVSEM DOS'),(3329,'30042071','MEDICAMENTO CONTENDO VANCOMICINA,EM DOSES'),(3330,'30042072','MEDICAMENTO CONTENDO ACTINOMICINAS,EM DOSES'),(3331,'30042091','MEDICAMENTO CONTENDO MITOMICINA,EM DOSES'),(3332,'30042092','MEDICAMENTO CONTENDO FUMARATO DE TIAMULINA,EM DOSE'),(3333,'30042093','MEDICAMENTO CONTENDO BLEOMICINAS OU SEUS SAIS,EM D'),(3334,'30042094','MEDICAMENTO CONTENDO IMIPENEM,EM DOSES'),(3335,'30043100','MEDICAMENTO CONTENDO INSULINA,EM DOSES'),(3336,'30043200','MEDICAMENTO C/HORMONIOS CORTICOSSUPRA-RENAIS,EM DO'),(3337,'30043990','OUTSMEDICAMENTOS C/HORMONIOS/DERIV/ASTEROIDES,EM D'),(3338,'30043925','MEDICAMENTO CONTENDO CALCITONINA,EM DOSES'),(3339,'30043911','MEDICAMENTO C/HORMONIO CRESCIM(SOMATOTROFINA),EM D'),(3340,'30043912','MEDICAMENTO CONTHCG (GONADOTROFINA CORIONICA),EM D'),(3341,'30043913','MEDICAMENTO CONTENDO MENOTROPINAS,EM DOSES'),(3342,'30043914','MEDICAMENTO CONTENDO ACTH (CORTICOTROFINA),EM DOSE'),(3343,'30043915','MEDICAMENTO CONTPMSG (GONADOTROFINA SERICA),EM DOS'),(3344,'30043916','MEDICAMENTO CONTSOMATOSTATINA OU SEUS SAIS,EM DOSE'),(3345,'30043917','MEDICAMENTO CONTENDO ACETATO DE BUSERELINA,EM DOSE'),(3346,'30043918','MEDICAMENTO CONTENDO TRIPTORELINA OU SEUS SAIS,EM '),(3347,'30043919','MEDICAMENTO CONTENDO LEUPROLIDE,EM DOSES'),(3348,'30043921','MEDICAMENTO CONTENDO LH-RH (GONADORELINA),EM DOSES'),(3349,'30043922','MEDICAMENTO CONTENDO OXITOCINA,EM DOSES'),(3350,'30043923','MEDICAMENTO CONTENDO SAIS DE INSULINA,EM DOSES'),(3351,'30043924','MEDICAMENTO CONTENDO TIMOSINAS,EM DOSES'),(3352,'30043926','MEDICAMENTO CONTENDO OCTREOTIDA,EM DOSES'),(3353,'30043927','MEDICAMENTO CONTENDO GOSERELINA,EM DOSES'),(3354,'30043929','MEDICAMC/OUTROS HORMONIOS POLIPEPTIDICOS,ETCEM DOS'),(3355,'30043931','MEDICAMENTO CONTHEMISSUCCINATO DE ESTRADIOL,EM DOS'),(3356,'30043932','MEDICAMENTO CONTFEMPROPIONATO DE ESTRADIOL,EM DOSE'),(3357,'30043933','MEDICAMENTO CONTENDO ESTRIOL OU SEU SUCCINATO,EM D'),(3358,'30043934','MEDICAMENTO CONTENDO ALILESTRENOL,EM DOSES'),(3359,'30043935','MEDICAMENTO CONTENDO LINESTRENOL,EM DOSES'),(3360,'30043936','MEDICAMENTO CONTACETATO MEGESTROL,FORMESTANO,EM DO'),(3361,'30043937','MEDICAMENTO CONTENDO DESOGESTREL,EM DOSES'),(3362,'30043939','MEDICAMENTO C/OUTSESTROGENIOS/PROGESTOGENIOS,EM DO'),(3363,'30043981','MEDICAMENTOS COM LEVOTIROXINA SODICA,EM DOSES'),(3364,'30043982','MEDICAMENTOS COM LIOTIRONINA SODICA,EM DOSES'),(3365,'30044010','MEDICAMENTO CONTVIMBLASTINA/SEUS DERIVADOS,EM DOSE'),(3366,'30044040','MEDICAMENTO CONTENDO CODEINA OU SEUS SAIS,EM DOSES'),(3367,'30044090','OUTSMEDICAMENTOS C/ALCALOIDES,S/HORMONIOS,ETCEM DO'),(3368,'30044020','MEDICAMC/PILOCARPINA/SEU NITRATO/CLORIDRATO,EM DOS'),(3369,'30044030','MEDICAMC/METANOSSULFONATO DE DIIDROERGOCRISTINA,DO'),(3370,'30045010','MEDICAMENTO C/FOLINATO DE CALCIO (LEUCOVORINA),EM '),(3371,'30045020','MEDICAMENTO C/ACNICOTINICO/SEU SAL SODICO,ETCEM DO'),(3372,'30045030','MEDICAMENTO C/HIDROXOCOVALAMINA/SEUS SAIS,ETCEM DO'),(3373,'30045040','MEDICAMENTO CONTENDO VITAMINA A1 (RETINOL),ETCEM D'),(3374,'30045050','MEDICAMENTO CONTD-PANTOTENATO DE CALCIO/ETCEM DOSE'),(3375,'30045060','MEDICAMENTO CONTACIDO RETINOICO (TRETINOINA),EM DO'),(3376,'30045090','MEDICAMENTO C/OUTSVITAMINAS/PROVITAMINAS,ETCEM DOS'),(3377,'30049034','MEDICAMENTO CONTENDO TAMOXIFEN OU SEU CITRATO,EM D'),(3378,'30049038','MEDICAMENTO CONTENDO MELFALANO,CLORAMBUCIL,ETCEM D'),(3379,'30049063','MEDICAMENTO CONTOXIFENDAZOL/ALBENDAZOL,ETCEM DOSES'),(3380,'30049068','MEDICAMENTO C/CICLOSPORINA A,FLUSPIRILENO,ETCEM DO'),(3381,'30049064','MEDICAMENTO CONTENDO TRIAZOLAM/ALPRAZOLAM,ETCEM DO'),(3382,'30049039','OUTROS MEDICAMC/COMPOSTOS DE FUNCAO AMINA,ETCEM DO'),(3383,'30049021','MEDICAMENTO C/PERMETRINA/NITRATO PROPATILA,ETCEM D'),(3384,'30049032','MEDICAMENTO C/ACIDO SULFANILICO/SEUS SAIS,ETCEM DO'),(3385,'30049049','OUTSMEDICAMC/COMPDE FUNCAO CARBOXIAMIDA,ETCEM DOSE'),(3386,'30049054','MEDICAMENTO CONTENDO CLORIDRATO DE AMIODARONA,EM D'),(3387,'30049061','MEDICAMENTO CONTTERFENADINA/TALNIFLUMATO,ETCEM DOS'),(3388,'30049062','MEDICAMENTO CONTNIFEDIPINA/NITRENDIPINA,ETCEM DOSE'),(3389,'30049069','OUTSMEDICAMC/COMPHETEROCICLHETEROATNITROGEM DOSES'),(3390,'30049071','MEDICAMENTO C/LEVAMISOL/SEUS SAIS/TETRAMISOL,EM DO'),(3391,'30049076','MEDICAMENTO CONTFUROSEMIDA/CLORTALIDONA,ETCEM DOSE'),(3392,'30049066','MEDICAMC/AC2-(2-METIL-3-CLOROANILINA) NICOTEM DOSE'),(3393,'30049067','MEDICAMENTO CONTNICARBAZINA/NORFLOXACINA,ETCEM DOS'),(3394,'30049079','OUTROS MEDICAMENTOS C/COMPOSTOS HETEROCICLETCEM DO'),(3395,'30049029','OUTSMEDICAMC/ACMONOCARBOXILACICLN/SATETCEM DOSES'),(3396,'30049019','MEDICAMENTO CONTENDO OUTRAS ENZIMAS,EM DOSES'),(3397,'30049059','OUTSMEDICAMENTOS C/PRODSPOS2930 A 2932,ETCEM DOSES'),(3398,'30049078','MEDICAMENTO CONTTOPOTECAN,URACIL,TEGAFUR,ETCEM DOS'),(3399,'30049011','MEDICAMENTO CONTENDO ESTREPTOQUINASE,EM DOSES'),(3400,'30049012','MEDICAMENTO CONTENDO L-ASPARAGINASE,EM DOSES'),(3401,'30049013','MEDICAMENTO CONTENDO DEOXIRRIBONUCLEASE,EM DOSES'),(3402,'30049022','MEDICAMENTO CONTENDO ACIDO DEIDROCOLICO,ETCEM DOSE'),(3403,'30049023','MEDICAMENTO CONTACIDO GLUCONICO/SAIS/ESTERES,EM DO'),(3404,'30049024','MEDICAMENTO CONTACIDO O-ACETILSALICILICO,ETCEM DOS'),(3405,'30049025','MEDICAMCONTTIRATRICOL/LACTOFOSFATO CALCIO,EM DOSES'),(3406,'30049026','MEDICAMENTO CONTACIDO LACTICO/SEUS SAIS,ETCEM DOSE'),(3407,'30049027','MEDICAMENTO CONTACIDO FUMARICO/SEUS SAIS,ETCEM DOS'),(3408,'30049028','MEDICAMENTO CONTETRETINATO,MILTEFOSINA,ETCEM DOSES'),(3409,'30049031','MEDICAMENTO C/SULFATO DE TRANILCIPROMINA,ETCEM DOS'),(3410,'30049033','MEDICAMENTO CONTCLEMBUTEROL OU SEU CLORIDRATO,EM D'),(3411,'30049035','MEDICAMENTO CONTLEVODOPA OU ALFA-METILDOPA,EM DOSE'),(3412,'30049036','MEDICAMENTO CONTCLORIDRATO DE FENILEFRINA,ETCEM DO'),(3413,'30049037','MEDICAMENTO CONTENDO DICLOFENACO DE SODIO,ETCEM DO'),(3414,'30049041','MEDICAMENTOS C/METOCLOPRAMIDA/CLORIDRATO,ETCEM DOS'),(3415,'30049042','MEDICAMENTO CONTATENOLOL/PRILOCAINA,ETCEM DOSES'),(3416,'30049043','MEDICAMENTO CONTLIDOCAINA/SEU CLORIDRATO,ETCEM DOS'),(3417,'30049044','MEDICAMENTO CONTENDO FEMPROPOREX,EM DOSES'),(3418,'30049045','MEDICAMENTO CONTPARACETAMOL OU BROMOPRIDA,EM DOSES'),(3419,'30049046','MEDICAMENTO CONTENDO AMITRAZ OU CIPERMETRINA,EM DO'),(3420,'30049047','MEDICAMENTO CONTENDO CLOREXIDINA/SEUS SAIS,ETCEM D'),(3421,'30049048','MEDICAMENTO CONTENDO CARMUSTINA/LOMUSTINA,ETCEM DO'),(3422,'30049051','MEDICAMENTO CONTDINITRATO DE ISOSSORBIDA,ETCEM DOS'),(3423,'30049052','MEDICAMENTO CONTENDO TIAPRIDA,EM DOSES'),(3424,'30049053','MEDICAMENTO CONTENDO ETIDRONATO DISSODICO,EM DOSES'),(3425,'30049055','MEDICAMENTO CONTENDO NITROVIN OU MOXIDECTINA,EM DO'),(3426,'30049056','MEDICAMENTO CONTENDO ESPIRONOLACTONA,EM DOSES'),(3427,'30049057','MEDICAMENTO CONTENDO CARBOCISTEINA OU SULFIRAM,EM '),(3428,'30049058','MEDICAMENTO CONTENDO ETOPOSIDIO,EM DOSES'),(3429,'30049065','MEDICAMENTO CONTFENITOINA/SEU SAL SODICO,ETCEM DOS'),(3430,'30049072','MEDICAMENTO C/SULFADIAZINA/SEU SAL SODICO,ETCEM DO'),(3431,'30049073','MEDICAMENTO CONTENDO KETAZOLAM/SULPIRIDA,ETCEM DOS'),(3432,'30049074','MEDICAMENTO C/FTALILSULFATIAZOL/BUMETANIDA,ETCEM D'),(3433,'30049075','MEDICAMENTO CONTENANTATO DE FLUFENAZINA,ETCEM DOSE'),(3434,'30049077','MEDICAMENTO CONTCLORIDRATO DE TIZANIDINA,ETCEM DOS'),(3435,'30049091','MEDICAMENTO CONTENDO EXTRATO DE POLEN,EM DOSES'),(3436,'30049092','MEDICAMENTO CONTENDO DISOFENOL/CRISAROBINA,ETCEM D'),(3437,'30049093','MEDICAMENTO CONTENDO DICLOFENACO RESINATO,EM DOSES'),(3438,'30049094','MEDICAMENTO CONTENDO SILIMARINA,EM DOSES'),(3439,'30049095','MEDICAMENTO CONTPROPOFOL,BUSULFANO,MITOTANO,EM DOS'),(3440,'30049099','OUTROS MEDICAMCONTPRODSP/FINS TERAPEUTICOS,ETCDOSE'),(3441,'30051019','OUTSPENSOS ADESIVOS,IMPREGNADOS,ETCSUBSTFARMACEUTI'),(3442,'30051030','PENSOS ADESIVOS IMPERMEAVEIS APLICAVEIS SOBRE MUCO'),(3443,'30051012','PENSOS ADESIVOS CONTESTRADIOL,ABSORCAO POR VIA CUT'),(3444,'30051020','PENSOS ADESIVOS CIRURGICOS DE OBSERVDIRETA DE FERI'),(3445,'30051090','OUTSPENSOS ADESIVOS,ARTIGOS ANALOGOS C/CAMADA ADES'),(3446,'30051011','PENSOS ADESIVOS CONTNITROGLICERINA,ABSORVVIA CUTAN'),(3447,'30051040','PENSOS ADESIVOS COM OBTURADOR,PARA COLOSTOMIA'),(3448,'30051050','PENSOS ADESIVOS C/FECHO DE CORRER,P/FECHAR FERIMEN'),(3449,'30059019','OUTROS PENSOS REABSORVIVEIS'),(3450,'30059090','OUTSPASTAS,GAZES,SEMELHP/USO MEDICINAL,CIRURGICO,E'),(3451,'30059011','PENSOS REABSORVIVEIS,DE ACIDO POLIGLICOLICO'),(3452,'30059012','PENSOS REABSORVSDE COPOLIMDE ACIDO GLICOLICO/LACTI'),(3453,'30059020','CAMPOS CIRURGICOS,DE FALSO TECIDO'),(3454,'30061090','OUTROS CATEGUTES ESTERILIZADOS,ETCP/SUTURAS CIRURG'),(3455,'30061011','MATERIAIS PARA SUTURAS CIRURGICAS,DE POLIDIEXZANON'),(3456,'30061020','MATERIAIS PARA SUTURAS CIRURGICAS,DE ACO INOXIDAVE'),(3457,'30061019','OUTROS MATERIAIS PARA SUTURAS CIRURGICAS,SINTETICO'),(3458,'30062000','REAGENTES P/DETERMINACAO DOS GRUPOS/FATORES SANGUI'),(3459,'30063011','PREPARACAO OPACIFICANTE,DE LOEXOL,P/EXAME RADIOGRA'),(3460,'30063013','PREPARACAO OPACIFICANTE,DE LOPAMIDOL,P/EXAME RADIO'),(3461,'30063019','OUTSPREPARACOES OPACIFICANTES,PARA EXAMES RADIOLOG'),(3462,'30063012','PREPAROPACIFDE LOCARMATO DIMEGLUMINA,P/EXAMRADIOGR'),(3463,'30063015','PREPAROPACIFDIOXIDO DE ZIRCONIO,ETCP/EXAME RADIOGR'),(3464,'30063021','REAGENTE DE DIAGNOSTDE SOMATOLIBERINA,P/ADMINPACIE'),(3465,'30063029','OUTSREAGENTES DE DIAGNOSTICO,P/SER ADMINISTRPACIEN'),(3466,'30064011','CIMENTOS PARA OBTURACAO DENTARIA'),(3467,'30064012','OUTROS PRODUTOS PARA OBTURACAO DENTARIA'),(3468,'30064020','CIMENTOS PARA RECONSTITUICAO OSSEA'),(3469,'30065000','ESTOJOS E CAIXAS DE PRIMEIROS-SOCORROS,GUARNECIDOS'),(3470,'30066000','PREPARSQUIMSCONTRACEPTIVAS,DE HORMONIOS/ESPERMICID'),(3471,'31010000','ADUBOS OU FERTILIZANTES DE ORIGEM ANIMAL/VEGETAL,E'),(3472,'31021090','OUTRAS UREIAS,MESMO EM SOLUCAO AQUOSA'),(3473,'31021010','UREIA COM TEOR DE NITROGENIO>45% EM PESO'),(3474,'31022100','SULFATO DE AMONIO'),(3475,'31022910','SULFONITRATO DE AMONIO'),(3476,'31022990','OUTSSAIS DUPLOS/MISTURAS,DE SULFATO/NITRATO DE AMO'),(3477,'31023000','NITRATO DE AMONIO,MESMO EM SOLUCAO AQUOSA'),(3478,'31024000','MISTURAS DE NITRATO DE AMONIO C/CARBONATO DE CALCI'),(3479,'31025011','NITRATO DE SODIO,NATURAL,COM TEOR DE NITROGENIO<=1'),(3480,'31025019','OUTROS NITRATOS DE SODIO,NATURAIS'),(3481,'31025090','OUTROS NITRATOS DE SODIO'),(3482,'31026000','SAIS DUPLOS E MISTURAS DE NITRATOS DE CALCIO E AMO'),(3483,'31027000','CIANAMIDA CALCICA'),(3484,'31028000','MISTURAS DE UREIA C/NITRATO DE AMONIO,EM SOLAQUOSA'),(3485,'31029000','OUTSADUBOS OU FERTILIZMINERAIS/QUIMICOS,NITROGENAD'),(3486,'31031010','SUPERFOSFATO,TEOR DE PENTOXIDO DE FOSFORO (P2O5)<='),(3487,'31031020','SUPERFOSFATO,TEOR DE PENTOXIDO DE FOSFORO,22%<P2O5'),(3488,'31031030','SUPERFOSFATO,TEOR DE PENTOXIDO DE FOSFORO (P2O5)>4'),(3489,'31032000','ESCORIAS DE DESFOSFORACAO'),(3490,'31039011','HIDROGENO-ORTOFOSFATO DE CALCIO,TEOR DE P2O5<=46%'),(3491,'31039019','OUTROS HIDROGENOS-ORTOFOSFATOS DE CALCIO'),(3492,'31039090','OUTROS ADUBOS OU FERTILIZSMINERAIS/QUIMICOS,FOSFAT'),(3493,'31041000','CARNALITA E OUTROS SAIS DE POTASSIO,NATURAIS,EM BR'),(3494,'31042010','CLORETO DE POTASSIO,TEOR DE OXIDO DE POTASSIO(K2O)'),(3495,'31042090','OUTROS CLORETOS DE POTASSIO'),(3496,'31043010','SULFATO DE POTASSIO,TEOR DE OXIDO DE POTASSIO(K2O)'),(3497,'31043090','OUTROS SULFATOS DE POTASSIO'),(3498,'31049010','SULFATO DUPLO DE POTASSIO E DE MAGNESIO,TEOR DE K2'),(3499,'31049090','OUTROS ADUBOS OU FERTILIZSMINERAIS/QUIMICOS,POTASS'),(3500,'31051000','ADUBOS OU FERTILIZANTES EM TABLETES/EMBALAGENS P<='),(3501,'31052000','ADUBOS OU FERTILIZANTES C/NITROGENIO,FOSFORO E POT'),(3502,'31053010','HIDROGENO-ORTOFOSFATO DE DIAMONIO,TEOR ARSENIO>=6M'),(3503,'31053090','OUTROS HIDROGENOS-ORTOFOSFATOS DE DIAMONIO'),(3504,'31054000','DIIDROGENO-ORTOFOSFATO DE AMONIO,INCLMISTHIDROGENE'),(3505,'31055100','ADUBOS OU FERTILIZANTES C/NITRATO E FOSFATO'),(3506,'31055900','OUTSADUBOS/FERTILIZMINERQUIMC/NITROGENIO E FOSFORO'),(3507,'31056000','ADUBOS OU FERTILIZANTES C/FOSFORO E POTASSIO'),(3508,'31059011','NITRATO DE SODIO POTASSICO,TEOR DE N<=15% E K2O<=1'),(3509,'31059019','OUTROS NITRATOS DE SODIO POTASSICO'),(3510,'31059090','OUTSADUBOS/FERTILIZMINERQUIMC/NITROGENIO E POTASSI'),(3511,'32011000','EXTRATO TANANTE,DE QUEBRACHO'),(3512,'32012000','EXTRATO TANANTE,DE MIMOSA'),(3513,'32019012','EXTRATO TANANTE,DE CARVALHO OU DE CASTANHEIRO'),(3514,'32019011','EXTRATO TANANTE,DE GAMBIR'),(3515,'32019019','OUTROS EXTRATOS TANANTES,DE ORIGEM VEGETAL'),(3516,'32019020','TANINOS'),(3517,'32019090','SAIS,ETERES,ESTERES E OUTROS DERIVADOS DOS TANINOS'),(3518,'32021000','PRODUTOS TANANTES ORGANICOS SINTETICOS'),(3519,'32029011','PRODUTOS TANANTES,A BASE DE SAIS DE CROMO'),(3520,'32029012','PRODUTOS TANANTES,A BASE DE SAIS DE TITANIO'),(3521,'32029013','PRODUTOS TANANTES,A BASE DE SAIS DE ZIRCONIO'),(3522,'32029019','OUTROS PRODUTOS TANANTES INORGANICOS'),(3523,'32029021','PREPARACOES TANANTES,A BASE DE COMPOSTOS DE CROMO'),(3524,'32029029','OUTRAS PREPARACOES TANANTES'),(3525,'32029030','PREPARACOES ENZIMATICAS,PARA A PRE-CURTIMENTA'),(3526,'32030011','HEMATEINA (MATERIA CORANTE)'),(3527,'32030012','FISETINA (MATERIA CORANTE)'),(3528,'32030013','MORINA (MATERIA CORANTE)'),(3529,'32030019','OUTRAS MATERIAS CORANTES,DE ORIGEM VEGETAL'),(3530,'32030021','CARMIM DE COCHONILHA (MATERIA CORANTE)'),(3531,'32030029','OUTRAS MATERIAS CORANTES,DE ORIGEM ANIMAL'),(3532,'32030030','PREPARSA BASE DE MATERIAS CORANTES,ORIGVEGETAL/ANI'),(3533,'32041100','CORANTES DISPERSOS E SUAS PREPARACOES'),(3534,'32041210','CORANTES ACIDOS,MESMO METALIZADOS E SUAS PREPARACO'),(3535,'32041220','CORANTES MORDENTES E SUAS PREPARACOES'),(3536,'32041300','CORANTES BASICOS E SUAS PREPARACOES'),(3537,'32041400','CORANTES DIRETOS E SUAS PREPARACOES'),(3538,'32041590','OUTROS CORANTES A CUBA E SUAS PREPARACOES'),(3539,'32041510','CORANTE INDIGO BLUE,SEGUNDO COLOUR INDEX 73000'),(3540,'32041520','CORANTE DIBENZANTRONA'),(3541,'32041530','CORANTE 12,12-DIMETOXIDIBENZANTRONA'),(3542,'32041600','CORANTES REAGENTES E SUAS PREPARACOES'),(3543,'32041700','PIGMENTOS E SUAS PREPARACOES'),(3544,'32041990','OUTSMATERIAS CORANTES ORGANICAS SINTETE SUAS PREPA'),(3545,'32041920','CORANTES SOLUVEIS EM SOLVENTES (CORANTES SOLVENTES'),(3546,'32041930','CORANTES AZOICOS'),(3547,'32041911','CAROTENOIDES'),(3548,'32041912','PREPARACOES CONTBETA-CAROTENO,ETCP/COLORIR ALIMENT'),(3549,'32041913','OUTRAS PREPARACOES P/COLORIR ALIMENTOS'),(3550,'32041919','OUTRAS PREPARACOES A BASE DE CARATENOIDES'),(3551,'32042011','DERIVSDO ACIDO 4,4-BIS-(1,3,5)TRIAZINIL-6-AMINOEST'),(3552,'32042019','OUTSDERIVSDO ESTILBENO,UTILAGENTE AVIVAMFLUORESCEN'),(3553,'32042090','OUTSPRODSORGANSINTETUTILAGENTE AVIVAMFLUORESCENTE'),(3554,'32049000','OUTRAS MATERIAS CORANTES ORGANICAS SINTETICAS,ETC'),(3555,'32050000','LACAS CORANTES E SUAS PREPARACOES'),(3556,'32061111','PIGMENTO RUTILO,PARTICULA>=06 MICRONS,C/MODIFICADO'),(3557,'32061119','OUTSPIGMENTOS TIPO RUTILO,C/DIOXIDO TITANIO>=80% S'),(3558,'32061990','OUTROS PIGMENTOS E PREPARSA BASE DE DIOXIDO DE TIT'),(3559,'32061120','OUTROS PIGMENTOS CONTENDO DIOXIDO DE TITANIO>=80% '),(3560,'32061130','PREPARACOES A BASE DE DIOXIDO DE TITANIO,PESO>=80%'),(3561,'32062000','PIGMENTOS E PREPARACOES A BASE DE COMPOSTOS DE CRO'),(3562,'32063000','PIGMENTOS E PREPARACOES A BASE DE COMPOSTOS DE CAD'),(3563,'32064100','ULTRAMAR E SUAS PREPARACOES'),(3564,'32064210','LITOPONIO'),(3565,'32064290','OUTSPIGMENTOS E PREPARACOES A BASE DE SULFETO DE Z'),(3566,'32064300','PIGMENTOS E PREPARACOES A BASE DE HEXACIANOFERRATO'),(3567,'32061910','PIGMENTO CONSTPOR MICA REVESTPELICULA DIOXIDO TITA'),(3568,'32064900','OUTRAS MATERIAS CORANTES E PREPARACOES'),(3569,'32065011','HALOFOSFATOS DE CALCIO,ETCC/SUBSTRADIOATIVUTILLUMI'),(3570,'32065019','OUTROS PRODSINORGANUTILLUMINOFOROS,C/SUBSTRADIOATI'),(3571,'32065021','HALOFOSFATOS DE CALCIO,ETCS/SUBSTRADIOATIVUTILLUMI'),(3572,'32065029','OUTROS PRODSINORGANUTILLUMINOFOROS,S/SUBSTRADIOATI'),(3573,'32071090','OUTSPIGMENTOS,OPACIFICANTES/CORES,PREPARADOS E PRE'),(3574,'32071010','PIGMENTO,OPACIFICANTE,ETCA BASE DE ZIRCONIO/SEUS S'),(3575,'32072010','ENGOBOS'),(3576,'32072099','OUTSCOMPOSICOES VITRIFICAVEIS E PREPARACOES SEMELH'),(3577,'32072091','COMPOSICOES VITRIFE PREPARUTILFABRCIRCUITO IMPRESS'),(3578,'32073000','POLIMENTOS LIQUIDOS E PREPARACOES SEMELHANTES'),(3579,'32074010','FRITAS DE VIDRO,EM PO,EM GRANULOS,EM LAMELAS OU FL'),(3580,'32074090','OUTROS VIDROS EM PO,EM GRANULOS,EM LAMELAS OU EM F'),(3581,'32081010','TINTAS DE POLIESTERES,DISPERSOS/DISSOLVMEIO N/AQUO'),(3582,'32081020','VERNIZES DE POLIESTERES,DISPERSOS/DISSOLVMEIO N/AQ'),(3583,'32081030','SOLUCOES DE POLIESTERES,DISPERSOS/DISSOLVMEIO N/AQ'),(3584,'32082010','TINTAS DE POLIMACRIL/VINILDISPERSOS/DISSOLVN/AQUOS'),(3585,'32082020','VERNIZES DE POLIMACRIL/VINILDISPERS/DISSOLVN/AQUOS'),(3586,'32082030','SOLUCOES DE POLIMACRIL/VINILDISPERS/DISSOLVN/AQUOS'),(3587,'32089010','TINTAS DE OUTSPOLIMSINTETCDISPERS/DISSOLVN/AQUOSO'),(3588,'32089021','VERNIZES DE DERIVSCELULOSE,DISPERSOS/DISSOLVN/AQUO'),(3589,'32089029','VERNIZES DE OUTPOLIMSINTETCDISPERS/DISSOLVN/AQUOSO'),(3590,'32089031','SOLUCOES DE SILICONES,DISPERSOS/DISSOLVSMEIO N/AQU'),(3591,'32089039','OUTRAS SOLUCOES POLIMSINTETCDISPERS/DISSOLVN/AQUOS'),(3592,'32091010','TINTAS DE POLIMACRIL/VINILDISPERS/DISSOLVMEIO AQUO'),(3593,'32091020','VERNIZES DE POLIMACRIL/VINILDISPERSOS/DISSOLVAQUOS'),(3594,'32099011','TINTAS DE POLITETRAFLUORETILENO,DISPERS/DISSOLVAQU'),(3595,'32099019','TINTAS DE OUTSPOLIMSINTETCDISPERSOS/DISSOLVAQUOSO'),(3596,'32099020','VERNIZES DE OUTSPOLIMSINTETCDISPERS/DISSOLVAQUOSO'),(3597,'32100010','OUTRAS TINTAS'),(3598,'32100020','OUTROS VERNIZES'),(3599,'32100030','PIGMENTOS A AGUA PREPARADOS,UTILIZP/ACABAMDE COURO'),(3600,'32110000','SECANTES PREPARADOS'),(3601,'32121000','FOLHAS PARA MARCAR A FERRO'),(3602,'32129010','ALUMINIO EM PO,ETCEMPASTADO C/SOLVENTE HIDROCARBON'),(3603,'32129090','OUTSPIGMENTOS DISPERSMEIOS N/AQUOSOS,ESTLIQUIDO,ET'),(3604,'32131000','CORES EM SORTIDOS,P/PINTURA ARTISTICA,ATIVIDEDUCAT'),(3605,'32139000','OUTSCORES P/PINTURA ARTISTICA,ATIVIDADE EDUCATIVA,'),(3606,'32141010','MASTIQUE DE VIDRACEIRO,CIMENTOS DE RESINAS,OUTSMAS'),(3607,'32141020','INDUTOS UTILIZADOS EM PINTURA'),(3608,'32149000','INDUTOS N/REFRATARIOS DO TIPO UTILIZADOS EM ALVENA'),(3609,'32151100','TINTAS PRETAS,DE IMPRESSAO'),(3610,'32151900','OUTRAS TINTAS DE IMPRESSAO'),(3611,'32159000','TINTAS DE ESCREVER OU DE DESENHAR E OUTRAS TINTAS'),(3612,'33011100','OLEO ESSENCIAL,DE BERGAMOTA'),(3613,'33011210','OLEO ESSENCIAL,DE \"PETIT GRAIN\" DE LARANJA'),(3614,'33011290','OUTROS OLEOS ESSENCIAIS,DE LARANJA'),(3615,'33011300','OLEO ESSENCIAL,DE LIMAO'),(3616,'33011400','OLEO ESSENCIAL,DE LIMA'),(3617,'33011900','OLEO ESSENCIAL,DE OUTROS CITRICOS'),(3618,'33012100','OLEO ESSENCIAL,DE GERANIO'),(3619,'33012200','OLEO ESSENCIAL,DE JASMIM'),(3620,'33012300','OLEO ESSENCIAL,DE ALFAZEMA OU LAVANDA'),(3621,'33012400','OLEO ESSENCIAL,DE HORTELA-PIMENTA (MENTHA PIPERITA'),(3622,'33012510','OLEO ESSENCIAL,DE MENTA JAPONESA (MENTHA ARVENSIS)'),(3623,'33012520','OLEO ESSENCIAL,DE \"MENTHA SPEARMINT\"(MENTHA VIRIDI'),(3624,'33012590','OLEO ESSENCIAL,DE OUTRAS MENTAS'),(3625,'33012600','OLEO ESSENCIAL,DE VETIVER'),(3626,'33012918','OLEO ESSENCIAL,DE CABREUVA'),(3627,'33012912','OLEO ESSENCIAL,DE CEDRO'),(3628,'33012911','OLEO ESSENCIAL,DE CITRONELA'),(3629,'33012919','OLEO ESSENCIAL,DE EUCALIPTO'),(3630,'33012916','OLEO ESSENCIAL,DE PALMA ROSA'),(3631,'33012915','OLEO ESSENCIAL,DE PAU-ROSA'),(3632,'33012913','OLEO ESSENCIAL,DE PAU SANTO (BULNESIA SARMIENTOL)'),(3633,'33012914','OLEO ESSENCIAL,DE \"LEMONGRASS\"'),(3634,'33012917','OLEO ESSENCIAL,DE CORIANDRO'),(3635,'33012990','OUTROS OLEOS ESSENCIAIS'),(3636,'33013000','RESINOIDES'),(3637,'33019010','SOLUCOES CONCENTRDE OLEOS ESSENCIAIS DO TRATAMFLOR'),(3638,'33019020','SUBPRODSTERPENICOS RESIDSDA DESTERPOLEOS ESSENCIAI'),(3639,'33019030','AGUA DESTILADA AROMATE SOLAQUOSA DE OLEOS ESSENCIA'),(3640,'33021000','MISTURAS UTILMATERIA BASICA P/INDSALIMENTAR/DE BEB'),(3641,'33029019','OUTRAS MISTURAS UTILIZCOMO MATERIA BASICA P/PERFUM'),(3642,'33029011','VETIVEROL PARA PERFUMARIA'),(3643,'33029090','OUTRAS MISTURAS UTILIZCOMO MATERIA BASICA P/INDUST'),(3644,'33030010','PERFUMES (EXTRATOS)'),(3645,'33030020','AGUA-DE-COLONIA'),(3646,'33041000','PRODUTOS DE MAQUILAGEM PARA OS LABIOS'),(3647,'33042010','SOMBRA,DELINEADOR,LAPIS PARA SOBRANCELHAS E RIMEL'),(3648,'33042090','OUTROS PRODUTOS DE MAQUILAGEM PARA OS OLHOS'),(3649,'33043000','PREPARACOES PARA MANICUROS E PEDICUROS'),(3650,'33049100','POS,INCLUIDOS OS COMPACTOS,PARA MAQUILAGEM'),(3651,'33049910','CREMES DE BELEZA,CREMES NUTRITIVOS E LOCOES TONICA'),(3652,'33049990','OUTSPRODUTOS DE BELEZA OU DE MAQUILAGEM PREPARADOS'),(3653,'33051000','XAMPUS PARA OS CABELOS'),(3654,'33052000','PREPARSP/ONDULACAO/ALISAMENTO/PERMANENTES,DOS CABE'),(3655,'33053000','LAQUES PARA OS CABELOS'),(3656,'33059000','OUTRAS PREPARACOES CAPILARES'),(3657,'33061000','DENTIFRICIOS'),(3658,'33069000','OUTRAS PREPARACOES PARA HIGIENE BUCAL OU DENTARIA,'),(3659,'33071000','PREPARACOES PARA BARBEAR (ANTES,DURANTE OU APOS)'),(3660,'33072010','DESODORANTES CORPORAIS E ANTIPERSPIRANTES,LIQUIDOS'),(3661,'33072090','OUTROS DESODORANTES CORPORAIS E ANTIPERSPIRANTES'),(3662,'33073000','SAIS PERFUMADOS E OUTRAS PREPARACOES PARA BANHOS'),(3663,'33074100','AGARBATE E OUTSPREPARODORIFERAS QUE ATUEM P/COMBUS'),(3664,'33074900','OUTSPREPARACOES PARA PERFUMAR OU DESODORIZAR AMBIE'),(3665,'33079000','OUTROS PRODSDE PERFUMARIA OU TOUCADOR,PREPARADOS,E'),(3666,'34011190','OUTROS PRODS/PREPARSDE TOUCADOR,EM BARRAS,PEDACOS,'),(3667,'34011110','SABOES MEDICINAIS,EM BARRAS,PEDACOS,FIGURA MOLDADA'),(3668,'34011900','OUTSSABOES/PRODUTOS/PREPARACOES,EM BARRAS,PEDACOS,'),(3669,'34012010','SABOES DE TOUCADOR,SOB OUTRAS FORMAS'),(3670,'34012090','OUTROS SABOES'),(3671,'34021110','DIBUTILNAFTALENOSSULFATO DE SODIO (AGENTE ORGANSUP'),(3672,'34021120','N-METIL-N-OLEITAURATO DE SODIO (AGENTE ORGANDE SUP'),(3673,'34021130','ALQUILSULFONATO DE SODIO,SECUNDARIO (AGENTE ORGSUP'),(3674,'34021190','OUTROS AGENTES ORGANICOS DE SUPERFICIE,ANIONICOS'),(3675,'34021210','ACETATO DE OLEILAMINA (AGENTE ORGANICO DE SUPERFIC'),(3676,'34021290','OUTROS AGENTES ORGANICOS DE SUPERFICIE,CATIONICOS'),(3677,'34021300','AGENTES ORGANICOS DE SUPERFICIE,NAO IONICOS'),(3678,'34021900','OUTROS AGENTES ORGANICOS DE SUPERFICIE'),(3679,'34022000','PREPARACOES TENSOATIVAS,PARA LAVAGEM E LIMPEZA'),(3680,'34029039','OUTRAS PREPARACOES PARA LAVAGEM (DETERGENTES)'),(3681,'34029031','PREPARSDE NONILFENOL ETOXILADO (DETERGENTE) P/LAVA'),(3682,'34029011','MISTURAS DE AGENTE ORGANDE SUPERFCONTPRODSN/IONICO'),(3683,'34029019','OUTRAS MISTURAS DE AGENTES ORGANICOS DE SUPERFICIE'),(3684,'34029021','SOLUCOES OU EMULSOES HIDRO-ALCOOLICAS DE (1-PERFLU'),(3685,'34029029','OUTRAS SOLUCOES OU EMULSOES DE PRODUTOS TENSOATIVO'),(3686,'34029090','OUTSPREPARACOES TENSOATIVAS E PREPARACOES PARA LIM'),(3687,'34031110','PREPARSCONTOLEOS DE PETROLEO,ETCP/TRATMATERTEXTIL'),(3688,'34031120','PREPARSCONTOLEOS DE PETROLEO,ETCP/TRATCOUROS/PELES'),(3689,'34031190','PREPARSCONTOLEOS DE PETROLEO,ETCP/TRATOUTSMATERIAS'),(3690,'34031900','OUTSPREPARSCONTOLEOS DE PETROLEO/MINERSBETUMINOSOS'),(3691,'34039110','OUTRAS PREPARACOES PARA TRATAMENTO DE MATERIA TEXT'),(3692,'34039120','OUTRAS PREPARACOES PARA TRATAMENTO DE COUROS E PEL'),(3693,'34039190','OUTRAS PREPARACOES PARA TRATAMENTO DE OUTRAS MATER'),(3694,'34039900','OUTSPREPARSLUBRIFICANTES/ANTIADERENTES/ANTIFERRUGE'),(3695,'34041000','CERA DE LINHITA MODIFICADA QUIMICAMENTE'),(3696,'34042010','CERAS ARTIFICIAIS DE POLIETILENO-GLICOIS'),(3697,'34042020','CERAS PREPARADAS DE POLIETILENO-GLICOIS'),(3698,'34049011','CERA ARTIFICIAL DE POLIETILENO,EMULSIONAVEL'),(3699,'34049012','OUTRAS CERAS ARTIFICIAIS,DE POLIETILENO'),(3700,'34049013','CERA ARTIFICIAL DE POLIPROPILENOGLICOIS'),(3701,'34049019','OUTRAS CERAS ARTIFICIAIS'),(3702,'34049021','CERA PREPARADA A BASE DE VASELINA E ALCOOIS DE LAN'),(3703,'34049029','OUTRAS CERAS PREPARADAS'),(3704,'34051000','POMADAS,CREMES E PREPARSSEMELHSP/CALCADOS OU COURO'),(3705,'34052000','ENCAUSTICAS/PREPARSP/CONSERVSDE MOVEIS,ETCDE MADEI'),(3706,'34053000','PREPARACOES P/DAR BRILHO A PINTURA DE CARROCARIAS,'),(3707,'34054000','PASTAS,POS E OUTRAS PREPARACOES PARA AREAR'),(3708,'34059000','OUTSPREPARACOES PARA DAR BRILHO EM VIDROS,METAIS,E'),(3709,'34060000','VELAS,PAVIOS,CIRIOS E ARTIGOS SEMELHANTES'),(3710,'34070020','CERAS PARA DENTISTAS'),(3711,'34070090','OUTRAS COMPOSICOES PARA DENTISTAS,A BASE DE GESSO'),(3712,'34070010','PASTAS PARA MODELAR'),(3713,'35011000','CASEINAS'),(3714,'35019019','OUTROS CASEINATOS E DERIVADOS DAS CASEINAS'),(3715,'35019011','CASEINATO DE SODIO'),(3716,'35019020','COLAS DE CASEINA'),(3717,'35021100','OVALBUMINA SECA'),(3718,'35021900','OUTRAS OVALBUMINAS'),(3719,'35022000','LACTALBUMINA,INCLCONCENTRAD>=2 PROTEINAS DE SORO L'),(3720,'35029090','OUTRAS ALBUMINAS,ALBUMINATOS E OUTSDERIVDAS ALBUMI'),(3721,'35030011','GELATINAS DE OSSEINA,SEUS DERIVSC/GRAU PUREZA>=999'),(3722,'35030012','GELATINAS DE OSSEINA,SEUS DERIVSC/GRAU PUREZA<9998'),(3723,'35030090','ICTIOCOLA,OUTSCOLAS DE ORIGANIMAL,EXCCOLA DE CASEI'),(3724,'35030019','OUTRAS GELATINAS E SEUS DERIVADOS'),(3725,'35040011','PEPTONAS E PEPTONATOS'),(3726,'35040019','OUTROS DERIVADOS DAS PEPTONAS'),(3727,'35040020','PROTEINAS DE SOJA EM PO,TEOR PROTEINA EM BASE SECA'),(3728,'35040090','OUTRAS MATERIAS PROTEICAS,SEUS DERIVADOS E PO DE P'),(3729,'35051000','DEXTRINA E OUTROS AMIDOS E FECULAS MODIFICADOS'),(3730,'35052000','COLAS A BASE DE AMIDOS OU DE FECULAS,DE DEXTRINA,E'),(3731,'35061090','OUTSPRODSUTILIZADOS COMO COLAS OU ADESIVOS,PESO<=1'),(3732,'35061010','PRODSUTILCOMO COLAS,ADESIVOS,DE CIANOACRILATOS,P<='),(3733,'35069110','ADESIVOS A BASE DE BORRACHA'),(3734,'35069190','OUTROS ADESIVOS A BASE DE PLASTICOS'),(3735,'35069120','ADESIVOS A BASE DE PLASTICOS,DISPERSOS,P/DISPERSAR'),(3736,'35069900','OUTRAS COLAS E ADESIVOS PREPARADOS'),(3737,'35071000','COALHO E SEUS CONCENTRADOS'),(3738,'35079011','ALFA-AMILASE (ASPERGILLUS ORYZAE)'),(3739,'35079022','BROMELINA'),(3740,'35079021','FIBRINUCLEASES'),(3741,'35079026','PAPAINA'),(3742,'35079039','OUTRAS ENZIMAS E SEUS CONCENTRADOS'),(3743,'35079029','OUTRAS PROTEASES E SEUS CONCENTRADOS'),(3744,'35079019','OUTRAS AMILASES E SEUS CONCENTRADOS'),(3745,'35079023','ESTREPTOQUINASE'),(3746,'35079024','ESTREPTODORNASE'),(3747,'35079025','MISTURA DE ESTREPTOQUINASE E ESTREPTODORNASE'),(3748,'35079031','LISOZIMA E SEU CLORIDRATO'),(3749,'35079041','ENZIMAS PREPARADAS A BASE DE CELULASES'),(3750,'35079049','OUTRAS ENZIMAS PREPARADAS'),(3751,'36010000','POLVORAS PROPULSIVAS'),(3752,'36020000','EXPLOSIVOS PREPARADOS,EXCETO POLVORAS PROPULSIVAS'),(3753,'36030000','ESTOPINS/RASTILHOS,DE SEGURANCA,CORDEIS DETONANTES'),(3754,'36041000','FOGOS DE ARTIFICIO'),(3755,'36049090','OUTROS FOGUETES DE SINALIZACAO E ARTIGOS DE PIROTE'),(3756,'36049010','FOGUETES E CARTUCHOS CONTRA O GRANIZO E SEMELHANTE'),(3757,'36050000','FOSFOROS,EXCETO OS ARTIGOS DE PIROTECNIA'),(3758,'36061000','COMBUSTIVEIS LIQETCUTILP/CARREGISQUEIRO,CAP<=300CM'),(3759,'36069000','FERROCERIO E OUTSLIGAS PIROFOSFORICAS,ARTMATINFLAM'),(3760,'37011029','OUTSCHAPAS/FILMPLANOS,P/RAIOS X,SENSIB2 FN/IMPRESS'),(3761,'37011021','CHAPAS/FILMPLANOS,P/RAIOS X ODONTSENSIB2 FN/IMPRES'),(3762,'37011010','CHAPAS/FILMES PLANOS,P/RAIOS X,SENSIB1 FACE,N/IMPR'),(3763,'37012010','FILMES PLANOS,REVELINSTANTSENSIBN/IMPRP/FOTO CORES'),(3764,'37012020','FILMES PLANREVELINSTANTSENSIBN/IMPRP/FOTO MONOCROM'),(3765,'37013010','OUTSCHAPAS/FILMPLANSENSIBN/IMPRD>255MM,P/FOTCORES'),(3766,'37013021','CHAPAS ALUMINIO,PLANSENSIBPOLIMFOTOSSN/IMPRD>255MM'),(3767,'37013029','OUTSCHAPAS PLANAS,SENSIBPOLIMFOTOSSN/IMPRESD>255MM'),(3768,'37013022','CHAPAS POLIESTER,PLANSENSPOLIMFOTOSSN/IMPRD>255MM'),(3769,'37013031','CHAPAS ALUMINIO,PLANAS,SENSIBOUTPROCN/IMPRESD>255M'),(3770,'37013039','OUTSCHAPAS PLANAS,SENSIBOUTRO PROCN/IMPRESDIM>255M'),(3771,'37013040','FILMES PLANOS,P/ARTES GRAFICAS,SENSIBN/IMPRESSD>25'),(3772,'37013050','FILMES PLANHELIOGRAFPOLIESTER,SENSIBN/IMPRESD>255M'),(3773,'37013090','OUTSCHAPAS E FILMES PLANOS,SENSIBN/IMPRESSDIM>255M'),(3774,'37019100','OUTSCHAPAS/FILMES,PLANOS,SENSIBN/IMPRESSP/FOTO COR'),(3775,'37019900','OUTSCHAPAS/FILMES,PLANOS,SENSIBN/IMPRP/FOTO MONOCR'),(3776,'37021020','FILMES P/RAIOS X,SENSIBIL2 FACES,N/IMPRESSIONEM RO'),(3777,'37021010','FILMES P/RAIOS X,SENSIBIL1 FACE,N/IMPRESSIONEM ROL'),(3778,'37022010','FILMES DE REVELINSTANTN/IMPRESFOTO A CORES,EM ROLO'),(3779,'37022020','FILMES DE REVELINSTANTN/IMPRESFOTO MONOCROMEM ROLO'),(3780,'37023100','OUTSFILMES P/FOTO CORES,SENSIBN/IMPRESL<=105MM,ROL'),(3781,'37023200','FILMES C/EMULSHALOGPRATA,SENSIBN/IMPRL<=105MM,ROLO'),(3782,'37023900','OUTSFILMES N/PERFURSENSIBN/IMPRESSL<=105MM,EM ROLO'),(3783,'37024100','FILMES P/FOTO CORES,SENSIBN/IMPRL>610MM,C>200M,ROL'),(3784,'37024210','FILMES P/ARTES GRAFSSENSIBN/IMPRL>610MM,C>200M,ROL'),(3785,'37024290','OUTSFILMES N/PERFURSENSIBN/IMPRL>610MM,C>200M,ROLO'),(3786,'37024310','FILMES P/ARTES GRAFSENSIBN/IMPRL>610MM,C<=200M,ROL'),(3787,'37024320','FILMES HELIOGRPOLIESTSENSN/IMPRL>61CM,C<=200M,ROLO'),(3788,'37024390','OUTSFILMES N/PERFSENSIBN/IMPRL>610MM,C<=200M,ROLOS'),(3789,'37024410','FILMES P/FOTO CORES,SENSIBN/IMPR105<L<=610MM,EM RO'),(3790,'37024421','FILMES P/ARTES GRAFMONOCRN/IMPR105<L<=610MM,EM ROL'),(3791,'37024429','OUTSFILMES MONOCROMSENSIBN/IMPRES105<L<=610MM,ROLO'),(3792,'37025110','FILMES P/FOTO CORES,N/IMPRESSL<=16MM,C<=14M,EM BOB'),(3793,'37025190','OUTSFILMES P/FOTO CORES,N/IMPRESSL<=16MM,C<=14M,RO'),(3794,'37025200','FILMES P/FOTO CORES,SENSIBN/IMPRESL<=16MM,C>14M,RO'),(3795,'37025300','FILMES P/DIAPOSITCORES,N/IMPR16<L<=35MM,C<=30M,ROL'),(3796,'37025411','FILMES P/FOTO CORES,SENSIBN/IMPRL=35MM,C<=30M,BOBI'),(3797,'37025419','OUTSFILMES P/FOTO CORES,N/IMPRESSL=35MM,C<=30M,ROL'),(3798,'37025491','FILMES P/FOTO CORES,N/IMPR16<L<35MM,C<=30M,EM BOBI'),(3799,'37025499','OUTSFILMES P/FOTO CORES,N/IMPR16<L<35MM,C<=30M,ROL'),(3800,'37025510','FILMES P/FOTO CORES,SENSIBN/IMPRL=35MM,C>30M,EM RO'),(3801,'37025590','FILMES P/FOTO CORES,SENSIBN/IMPR16<L<35MM,C>30M,RO'),(3802,'37025600','FILMES P/FOTO CORES,SENSIBN/IMPRESSL>35MM,EM ROLOS'),(3803,'37029100','OUTROS FILMES SENSIBN/IMPRESSL<=16MM,C<=14M,EM ROL'),(3804,'37029200','OUTROS FILMES SENSIBN/IMPRESSL<=16MM,C>14M,EM ROLO'),(3805,'37029300','OUTROS FILMES SENSIBN/IMPR16MM<L<=35MM,C<=30M,EM R'),(3806,'37029400','OUTSFILMES SENSIBN/IMPRES16MM<L<=35MM,C>14M,EM ROL'),(3807,'37029500','OUTROS FILMES SENSIBN/IMPRESSL>35MM,EM ROLOS'),(3808,'37031010','PAPEL,ETCP/FOTO CORES,SENSIBN/IMPREM ROLOS,L>610MM'),(3809,'37031021','PAPEL HELIOGRAFMONOCROMSENSIBN/IMPREM ROLOS,L>610M'),(3810,'37031029','OUTSPAPEIS P/FOTO MONOCROMSENSIBN/IMPRROLOS,L>610M'),(3811,'37032000','OUTROS PAPEIS P/FOTO A CORES,SENSIBILN/IMPRESSIONA'),(3812,'37039010','PAPEL P/FOTOCOMPOSICAO,SENSIBILIZADO,NAO IMPRESSIO'),(3813,'37039090','OUTSPAPEIS,CARTOES E TEXTEIS FOTOGRAFSENSIBN/IMPRE'),(3814,'37040000','CHAPAS,FILMES,ETCFOTOGRAFICOS,IMPRESSMAS N/REVELAD'),(3815,'37051000','CHAPAS,FILMES FOTOGRAFIMPRESSREVELADOS,P/REPRODOFS'),(3816,'37052000','MICROFILMES IMPRESSIONADOS E REVELADOS'),(3817,'37059010','FOTOMASCARAS SOBRE VIDRO PLANO,POSITIVAS,ETC'),(3818,'37059090','OUTRAS CHAPAS E FILMES FOTOGRAFICOS,IMPRESSE REVEL'),(3819,'37061000','FILMES CINEMATOGRAFICOS IMPRESSE REVELADOS,L>=35MM'),(3820,'37069000','OUTROS FILMES CINEMATOGRAFICOS IMPRESSE REVELADOS'),(3821,'37071000','EMULSOES P/SENSIBILIZACAO DE SUPERFSP/USO FOTOGRAF'),(3822,'37079010','FIXADORES PARA USO FOTOGRAFICO'),(3823,'37079021','REVELADORES A BASE DE NEGRO DE FUMO,ETCP/REPRODDOC'),(3824,'37079029','OUTROS REVELADORES PARA USO FOTOGRAFICO'),(3825,'37079030','COMPOSTDIAZOICOS FOTOSSENSP/PREPAREMULSOES FOTOGRA'),(3826,'37079090','OUTRAS PREPARACOES QUIMICAS P/USOS FOTOGRAFICOS,ET'),(3827,'38011000','GRAFITA ARTIFICIAL'),(3828,'38012090','OUTRAS GRAFITAS COLOIDAIS OU SEMICOLOIDAIS'),(3829,'38012010','SUSPENSAO SEMICOLOIDAL EM OLEOS MINERAIS (GRAFITA)'),(3830,'38013010','PASTA CARBONADA PARA ELETRODOS'),(3831,'38013090','PASTAS SEMELHAS CARBONADAS P/REVESTINTERIOR DE FOR'),(3832,'38019000','OUTSPREPARSBASE DE GRAFITA/OUTSCARBONOS,EM PASTA,E'),(3833,'38021000','CARVOES ATIVADOS'),(3834,'38029020','BENTONITA (MATERIA MINERAL NATURAL ATIVADA)'),(3835,'38029030','ATAPULGITA'),(3836,'38029040','OUTRAS ARGILAS E TERRAS ATIVADAS'),(3837,'38029010','FARINHAS SILICIOSAS FOSSEIS (ATIVADAS)'),(3838,'38029050','BAUXITA (MATERIA MINERAL NATURAL ATIVADA)'),(3839,'38029090','OUTRAS MATERIAS MINERAIS NATURAIS ATIVADAS,ETC'),(3840,'38030000','TALL-OIL MESMO REFINADO'),(3841,'38040011','LIXIVIA RESIDUAL DA FABRPASTA DE CELULOSE,AO SULFI'),(3842,'38040020','LIGNOSSULFONATOS'),(3843,'38040012','LIXIVIA RESIDUAL DA FABRPASTA CELULOSE,A SODA/SULF'),(3844,'38051000','ESSENCIAS DE TEREBINTINA,DE PINHEIRO OU ETC'),(3845,'38052000','OLEO DE PINHO'),(3846,'38059000','OUTSESSENCIAS TERPENICAS DA DESTIL/TRATAMMADEIRAS,'),(3847,'38061000','COLOFONIAS E ACIDOS RESINICOS'),(3848,'38063000','GOMAS ESTERES (GOMAS FUNDIDAS)'),(3849,'38069011','COLOFONIAS OXIDADAS,HIDROGENADAS,DESIDROGENADAS,ET'),(3850,'38062000','SAIS DE COLOFONIAS,ACIDOS RESINICOS OU DE SEUS DER'),(3851,'38069012','ABIETATOS DE METILA OU BENZILA,HIDROABIETATO DE ME'),(3852,'38069019','OUTROS DERIVADOS DE COLOFONIAS OU DE ACIDOS RESINI'),(3853,'38069090','OUTRAS ESSENCIAS DE COLOFONIA E OLEOS DE COLOFONIA'),(3854,'38070000','ALCATROES DE MADEIRA,OLEOS DE ALCATRAO DE MADEIRA,'),(3855,'38081010','INSETICIDAS PARA USO DOMISSANITARIO DIRETO'),(3856,'38081022','INSETICIDA A BASE DE CIPERMETRINAS OU DE PERMETRIN'),(3857,'38081024','INSETICIDA A BASE DE DISSULFOTON OU DE ENDOSSULFAN'),(3858,'38081025','INSETICIDA A BASE DE FOSFETO DE ALUMINIO'),(3859,'38081026','INSETICIDA A BASE DE TRICLORFON OU DE DICLORVOS'),(3860,'38081027','INSETICIDA A BASE DE OLEO MINERAL'),(3861,'38081021','INSETICIDA A BASE DE ACEFATO/\"BACILLUS THURINGIENS'),(3862,'38081023','INSETICIDA A BASE DE MONOCROTOFOS OU DE DICROTOFOS'),(3863,'38081029','OUTROS INSETICIDAS APRESENTADOS DE OUTRO MODO'),(3864,'38082010','FUNGICIDAS PARA USO DOMISSANITARIO DIRETO'),(3865,'38082021','FUNGICIDA A BASE DE HIDROXIDO DE COBRE,ETC'),(3866,'38082022','FUNGICIDA A BASE DE ZIRAM OU DE ENXOFRE'),(3867,'38082023','FUNGICIDA A BASE DE MANCOZEB OU DE MANEB'),(3868,'38082024','FUNGICIDA A BASE DE SULFIRAM'),(3869,'38082025','FUNGICIDA A BASE DE COMPOSTOS DE CROMO/COBRE OU AR'),(3870,'38082029','OUTROS FUNGICIDAS APRESENTADOS DE OUTRO MODO'),(3871,'38083010','HERBICIDAS PARA USO DOMISSANITARIO DIRETO'),(3872,'38083021','HERBICIDA A BASE DE 2,4-D/DE 2,4-DB/SEUS DERIVS/DE'),(3873,'38083022','HERBICIDA A BASE DE ATRAZINA,ALACLOR,DIURON OU AME'),(3874,'38083023','HERBICIDA A BASE GLIFOSATO/SAL MONOISOPROPILAMINA,'),(3875,'38083024','HERBICIDA A BASE DE DICLORETO DE PARAQUAT,PROPANIL'),(3876,'38083025','HERBICIDA A BASE DE PENTACLOROFENOL/SEUS SAIS,ETC'),(3877,'38083029','OUTROS HERBICIDAS APRESENTADOS DE OUTRO MODO'),(3878,'38083031','INIBIDORES DE GERMINACAO PARA USO DOMISSANITARIO D'),(3879,'38083032','OUTSINIBIDORES DE GERMINACAO APRESENTADOS DE OUTMO'),(3880,'38083040','REGULADORES DE CRESCIMPLANTAS,P/USO DOMISSANITDIRE'),(3881,'38083051','REGULADORES DE CRESCIMPLANTAS,BASE HIDRAZIDA MALEI'),(3882,'38083059','OUTSREGULADORES DE CRESCIMPLANTAS,APRESENTOUTMODO'),(3883,'38084010','DESINFETANTES PARA USO DOMISSANITARIO DIRETO'),(3884,'38084021','DESINFETANTE A BASE DE THIRAM'),(3885,'38084022','DESINFETANTE A BASE DE 2-(TIOCIANOMETILTIO)BENZOTI'),(3886,'38084029','OUTROS DESINFETANTES APRESENTADOS DE OUTRO MODO'),(3887,'38089026','RATICIDAS APRESENTADOS DE OUTRO MODO'),(3888,'38089010','RODENTICIDAS/OUTSPRODSSEMELHP/USO DOMISSANITDIRETO'),(3889,'38089021','ACARICIDAS A BASE AMITRAZ,CLORFENVINFOS,METAMIDOFO'),(3890,'38089022','ACARICIDAS A BASE CIEXATIN,OXIDO DE FEMBUTATIN,ETC'),(3891,'38089023','OUTROS ACARICIDAS APRESENTADOS DE OUTRO MODO'),(3892,'38089024','NEMATICIDAS A BASE DE METAM SODIO,APRESENTADOS OUT'),(3893,'38089025','OUTROS NEMATICIDAS APRESENTADOS DE OUTRO MODO'),(3894,'38089029','OUTROS RODENTICIDAS/PRODSSEMELHAPRESENTADOS OUTMOD'),(3895,'38091010','PREPARACOES A BASE DE MATERIAS AMILACEAS P/INDTEXT'),(3896,'38091090','OUTRAS PREPARACOES A BASE DE MATERIAS AMILACEAS'),(3897,'38099120','PREPARACOES MORDENTES P/INDUSTRIA TEXTIL/INDSSEMEL'),(3898,'38099130','PRODSIGNIFUGOS PARA INDUSTRIA TEXTIL OU INDSSEMELH'),(3899,'38099141','IMPERMEABILIZANTE A BASE DE PARAFINA,ETCP/INDTEXTI'),(3900,'38099149','OUTROS IMPERMEABILIZANTES P/INDTEXTIL/INDSSEMELH'),(3901,'38099110','APRESTOS PREPARADOS UTILNA INDUSTRIA TEXTIL/SEMELH'),(3902,'38099190','OUTROS AGENTES DE APRESTO/ACABAMENTO,ETCP/INDTEXTI'),(3903,'38099211','IMPERMEABILIZANTE A BASE DE PARAFINA,ETCP/INDPAPEL'),(3904,'38099290','OUTROS AGENTES DE APRESTO/ACABAMENTO,ETCP/INDDO PA'),(3905,'38099219','OUTROS IMPERMEABILIZANTES P/INDDO PAPEL/INDSSEMELH'),(3906,'38099390','OUTROS AGENTES DE APRESTO/ACABAMENTO,ETCP/INDDO CO'),(3907,'38099311','IMPERMEABILIZANTE A BASE DE PARAFINA,ETCP/INDCOURO'),(3908,'38099319','OUTROS IMPERMEABILIZANTES P/INDDO COURO OU INDSSEM'),(3909,'38101010','PREPARACOES PARA DECAPAGEM DE METAIS'),(3910,'38101020','PASTAS E POS PARA SOLDAR'),(3911,'38109000','OUTROS FLUXOS/PREPARSAUXILIARES/VARETAS,P/SOLDAR,E'),(3912,'38111100','PREPARSANTIDETONANTES A BASE DE COMPOSTOS DE CHUMB'),(3913,'38111900','OUTRAS PREPARACOES ANTIDETONANTES'),(3914,'38112110','ADITIVO MELHORADDO INDICE VISCOSIDC/OLEO PETROLEO,'),(3915,'38112130','ADITIVO DISPERSANTE SEM CINZAS,CONTOLEO PETROLEO,E'),(3916,'38112120','ADITIVO ANTIDESG/ANTICORR/ANTIOXIDC/OLEO PETROLEO,'),(3917,'38112140','ADITIVO DETERGENTE METALICO,CONTOLEO DE PETROLEO,E'),(3918,'38112150','OUTSPREPARSCONT1 OU MAIS ADITIVO C/OLEO PETROLEO,E'),(3919,'38112190','OUTSADITIVOS CONTOLEO DE PETROLEO,ETCP/OLEOS LUBRI'),(3920,'38112910','OUTROS ADITIVOS DISPERSANTES SEM CINZAS'),(3921,'38112920','OUTROS ADITIVOS DETERGENTES METALICOS'),(3922,'38112990','OUTROS ADITIVOS PARA OLEOS LUBRIFICANTES'),(3923,'38119010','OUTSADITIVOS DISPERSS/CINZAS,P/OLEO PETROLEO COMBU'),(3924,'38119090','OUTSADITIVOS PREPARADOS,P/OLEOS MINERAIS/OUTSLIQUI'),(3925,'38121000','PREPARACOES DENOMINADAS \"ACELERADORES DE VULCANIZA'),(3926,'38122000','PLASTIFICANTES COMPOSTOS PARA BORRACHA OU PLASTICO'),(3927,'38123011','PREPARSANTIOXIDSP/BORRACHA,DERIVSN DE P-FENILENODI'),(3928,'38123021','PREPARSANTIOXIDSP/PLASTICO,DERIVSN DE P-FENILENODI'),(3929,'38123013','PREPARSANTIOXIDSP/BORRACHA,DE 2,2,4-TRIMETIL-1,2-E'),(3930,'38123029','OUTSPREPARSANTIOXID/OUTSESTABILCOMPOSTOS,P/PLASTIC'),(3931,'38123019','OUTSPREPARSANTIOXID/OUTSESTABILCOMPOSTOS,P/BORRACH'),(3932,'38123012','PREPARSANTIOXIDSP/BORRACHA,DE FOSFITOS DE ALQUILA,'),(3933,'38130000','COMPOSICOES E CARGAS P/APARSEXTINTORES,GRANADAS,ET'),(3934,'38140000','OUTROS SOLVENTES E DILUENTES ORGANICOS COMPOSTOS,E'),(3935,'38151100','CATALISADOR EM SUPORTE,SUBSTATIVA=NIQUEL OU COMPOS'),(3936,'38151200','CATALISADOR EM SUPORTE,SUBSTATIVA=METAL PRECIOSO/C'),(3937,'38151920','CATALISADOR EM SUPORTE,SUBSTATIVA=COBRE/SEUS COMPO'),(3938,'38151930','CATALISADOR EM SUPORTE,SUBSTATIVA=MOLIBDENIO/COMPO'),(3939,'38151910','CATALISADOR EM SUPORTE,SUBSTATIVA=PENTOXIDO DE VAN'),(3940,'38151990','OUTROS CATALISADORES EM SUPORTE'),(3941,'38159010','OUTSPREPARACOES CATALITICAS P/CRAQUEAMENTO DE PETR'),(3942,'38159091','OUTSPREPARSCATALITICAS,SUBSTATIVA=ISOPRENILALUMINI'),(3943,'38159099','OUTRAS PREPARACOES CATALITICAS'),(3944,'38160011','CIMENTO/ARGAMASSA,A BASE MAGNESITA CALCINADA,REFRA'),(3945,'38160012','CIMENTO E ARGAMASSA,A BASE DE SILIMANITA,REFRATARI'),(3946,'38160019','OUTROS CIMENTOS E ARGAMASSAS,REFRATARIOS'),(3947,'38160021','PREPARACOES REFRATARIAS CONT>=50% DE CORINDON E GR'),(3948,'38160029','OUTSPREPARACOES A BASE DE CROMO-MAGNESITA,ETCREFRA'),(3949,'38160090','OUTROS CONCRETOS E COMPOSICOES SEMELHANTES,REFRATA'),(3950,'38171000','MISTURAS DE ALQUILBENZENOS'),(3951,'38172000','MISTURAS DE ALQUILNAFTALENOS'),(3952,'38180010','ELEMENTOS QUIMSIMPURIFSDE SILICIO,P/UTILELETRONICA'),(3953,'38180090','OUTSELEMENTOS QUIMICOS IMPURIFICADOS P/UTILELETRON'),(3954,'38190000','LIQUIDOS P/FREIOS HIDRAULICOS,ETCC/OLEOS PETROLEO<'),(3955,'38200000','PREPARSANTICONGELANTES/LIQUIDOS PREPARP/DESCONGELA'),(3956,'38210000','MEIOS DE CULTURA PREPARSP/DESENVOLVDE MICRORGANISM'),(3957,'38220000','REAGENTES DE DIAGNOSTICO/LABORATORIO,EM SUPORTE/PR'),(3958,'38241000','AGLUTINANTES PREPARADOS P/MOLDES OU NUCLEOS DE FUN'),(3959,'38242010','ACIDO NAFTENICO E SEUS ESTERES'),(3960,'38242020','SAIS DOS ACIDOS NAFTENICOS,INSOLUVEIS EM AGUA'),(3961,'38243000','CARBONETOS METALICOS N/AGLOMERMISTURADOS ENTRE SI,'),(3962,'38244000','ADITIVOS PREPARADOS P/CIMENTOS,ARGAMASSAS OU CONCR'),(3963,'38245000','ARGAMASSAS E CONCRETOS,NAO REFRATARIOS'),(3964,'38246000','SORBITOL,EXCETO O POLIALCOOL D-GLUCITOL'),(3965,'38249041','PREPARSDESINCRUSTANTES,ANTICORROSIVAS OU ANTIOXIDA'),(3966,'38249074','PREPARACOES A BASE DE HIDROXIDO DE NIQUEL/CADMIO,E'),(3967,'38249089','OUTROS PRODSE PREPARSA BASE DE COMPOSTOS ORGANICOS'),(3968,'38249042','MISTURA EUTETICA DE DIFENILA E OXIDO DE DIFENILA'),(3969,'38249043','PREPARACOES CONTENDO TRIMETIL-3,9-DIETILDECANO'),(3970,'38249049','OUTROS FLUIDOS PARA TRANSFERENCIA DE CALOR'),(3971,'38249090','OUTROS PRODSE PREPARSDAS INDSQUIMS/INDSCONEXAS,ETC'),(3972,'38249037','RETICULANTES PARA SILICONES'),(3973,'38249062','PREPARACOES DE CLORODIFLUORMETANO E PENTAFLUORETAN'),(3974,'38247110','MISTURAS CONTENDO TRICLOROTRIFLUORETANOS'),(3975,'38247190','OUTSMISTURAS C/HIDROCARBACICLPERALOGC/FLUOR E CLOR'),(3976,'38247900','OUTSMISTURAS C/DERIVSPERALOGHIDROCACICL2 HALOGDIF'),(3977,'38249075','PREPARACOES UTILIZADAS NA ELABDE MEIOS DE CULTURA,'),(3978,'38249079','OUTROS PRODSE PREPARSA BASE DE ELEMENTOS QUIMICOS,'),(3979,'38249083','TRIISOCIANATO DE TIOFOSFATO FENILA/TRIFENILMEM SOL'),(3980,'38249084','MISTURA DE OXIDO DE PROPILENO,C/TEOR OXIDO ETILENO'),(3981,'38249081','PREPARSDE ANIDRIDO POLIISOBUTENILSUCCINICO,EM OLEO'),(3982,'38249061','PREPARACOES DE TETRAFLUORETANO E PENTAFLUORETANO'),(3983,'38249063','PREPARSDE CLORODIFLUORMETANO E CLOROTETRAFLUORETAN'),(3984,'38249052','MISTURAS DE POLIETILENOGLICOIS'),(3985,'38249024','PREPARACOES CONTCAPRILATO E CAPRATO DE PROPILENOGL'),(3986,'38249053','POLIPROPILENOGLICOL LIQUIDO'),(3987,'38249011','SALINOMICINA MICELIAL'),(3988,'38249012','PRODSINTERMEDSC/TEOR DE CIANOCOBALAMINA<=55% EM PE'),(3989,'38249014','SENDURAMICINA SODICA,DA FABRICACAO DA SENDURAMICIN'),(3990,'38249015','MADURAMICINA AMONICA,EM SOLALCOOLDA FABRMADURAMICI'),(3991,'38249077','ADUBOS OU FERTILIZANTES FOLIARES CONTZINCO OU MANG'),(3992,'38249034','PREPARSC/POLIETILENOAMINAS,ETCP/COAGULACAO DO LATE'),(3993,'38249021','ACIDO GRAXO (GORDO) DIMERIZADO'),(3994,'38249072','PREPARACOES A BASE DE SILICA EM SUSPENSAO COLOIDAL'),(3995,'38249078','PREPARACOES A BASE DE OXIDO DE ALUMINIO E DE ZIRCO'),(3996,'38249013','PRODSINTERMEDIARIOS DA FABRICACAO DA PRIMICINA AMO'),(3997,'38249019','OUTSPRODSINTERMEDDA FABRANTIBIOTICOS,VITAMINAS,ETC'),(3998,'38249022','PREPARACOES CONTENDO ACIDOS GRAXOS (GORDOS) DIMERI'),(3999,'38249023','PREPARSC/ESTEAROILBENZOILMETANO,PALMITOILBENZOILME'),(4000,'38249025','PREPARSC/TRIGLICERIDIOS DOS ACIDOS CAPRILICO E CAP'),(4001,'38249026','ESTERES DE ALCOOIS GRAXOS DE C12/C20 DO ACMETACRIL'),(4002,'38249027','ESTERES DE ACIDOS MONOCARBOXILDE C10 RAMIFSC/GLICE'),(4003,'38249029','OUTSDERIVADOS DE ACIDOS GRAXOS INDUSTRIAIS,PREPARS'),(4004,'38249031','PREPARACOES CONTENDO ISOCIANATOS DE HEXAMETILENO'),(4005,'38249032','PREPARACOES CONTENDO OUTROS ISOCIANATOS'),(4006,'38249033','PREPARACOES CONTENDO AMINAS GRAXAS DE C8 A C22'),(4007,'38249035','OUTRAS PREPARACOES CONTENDO POLIETILENOAMINAS'),(4008,'38249036','MISTURAS DE MONO-,DI- E TRIISOPROPANOLAMINAS'),(4009,'38249039','OUTSPREPARSP/BORRACHA/PLASTICOS,P/ENDURECRESINAS,E'),(4010,'38249051','ANTIESPUMANTES C/FOSFATO TRIBUTILA,SOLALCOOL ISOPR'),(4011,'38249054','RETARDANTE DE CHAMA C/MISTURAS TRIFENILFOSFATOS IS'),(4012,'38249059','OUTSPREPARSC/ESTERES DE ACIDO INORGAN/SEUS DERIVSE'),(4013,'38249071','CAL SODADA E CARBONATO DE CALCIO HIDROFUGO'),(4014,'38249073','PREPARSA BASE DE CARBETO VOLFRAMIO,NIQUEL=AGLOMERE'),(4015,'38249076','COMPOSTOS ABSORVA BASE METAIS P/APERFVACUO NOS TUB'),(4016,'38249082','HALQUINOL'),(4017,'38249085','METILATO DE SODIO EM METANOL'),(4018,'38249086','MANEB,MANCOZEB E CLORETO DE BENZALCONIO'),(4019,'38249087','DISPERSAO AQUOSA DE MICROCAPSULAS DE POLIURETANO,E'),(4020,'38249088','MISTURAS DE DIALOGENETOS N,N-DIALQUILFOSFOROAMIDIC'),(4021,'39011010','POLIETILENO LINEAR,DENSIDADE<094,EM FORMA PRIMARIA'),(4022,'39011092','POLIETILENO SEM CARGA,DENSIDADE<094,EM FORMA PRIMA'),(4023,'39011091','POLIETILENO COM CARGA,DENSIDADE<094,EM FORMA PRIMA'),(4024,'39012021','POLIETILENO S/CARGA,VULCANIZDENS>13,EM FORMA PRIMA'),(4025,'39012029','OUTROS POLIETILENOS S/CARGA,D>=094,EM FORMAS PRIMA'),(4026,'39012011','POLIETILENO C/CARGA,VULCANIZD>=13,EM FORMA PRIMARI'),(4027,'39012019','OUTROS POLIETILENOS C/CARGA,D>=094,EM FORMAS PRIMA'),(4028,'39013010','COPOLIMERO DE ETILENO/ACETATO VINILA,EM LIQUIDOS,P'),(4029,'39013090','COPOLIMERO ETILENO/ACETATO VINILA,EM OUTSFORMAS PR'),(4030,'39019010','COPOLIMERO DE ETILENO/ACIDO ACRILICO,EM FORMAS PRI'),(4031,'39019020','COPOLIMEROS DE ETILENO/MONOMEROS ETCEM FORMAS PRIM'),(4032,'39019030','POLIETILENO CLOROSSULFONADO,EM FORMA PRIMARIA'),(4033,'39019090','OUTROS POLIMEROS DE ETILENO,EM FORMAS PRIMARIAS'),(4034,'39021020','POLIPROPILENO SEM CARGA,EM FORMA PRIMARIA'),(4035,'39021010','POLIPROPILENO COM CARGA,EM FORMA PRIMARIA'),(4036,'39022000','POLIISOBUTILENO EM FORMA PRIMARIA'),(4037,'39023000','COPOLIMEROS DE PROPILENO,EM FORMAS PRIMARIAS'),(4038,'39029000','OUTROS POLIMEROS DE PROPILENO/OLEFINAS,EM FORMAS P'),(4039,'39031120','POLIESTIRENO EXPANSIVEL,SEM CARGA,EM FORMA PRIMARI'),(4040,'39031110','POLIESTIRENO EXPANSIVEL,COM CARGA,EM FORMA PRIMARI'),(4041,'39031900','OUTROS POLIESTIRENOS EM FORMAS PRIMARIAS'),(4042,'39032000','COPOLIMEROS DE ESTIRENO-ACRILONITRILA,EM FORMAS PR'),(4043,'39033020','COPOLIMEROS DE ACRILONITRILA-BUTADIENO-ESTIRENO,S/'),(4044,'39033010','COPOLIMEROS DE ACRILONITRILA-BUTADIENO-ESTIRENO,C/'),(4045,'39039010','COPOLIMEROS DE METACRILATO DE METILA-BUTADIENO-EST'),(4046,'39039090','OUTROS POLIMEROS DE ESTIRENO,EM FORMAS PRIMARIAS'),(4047,'39041010','POLICLORETO DE VINILA,OBTPROCSUSPENSAO,FORMA PRIMA'),(4048,'39041020','POLICLORETO DE VINILA,OBTPROCEMULSAO,FORMA PRIMARI'),(4049,'39041090','OUTROS POLICLORETOS DE VINILA,EM FORMAS PRIMARIAS'),(4050,'39042100','POLICLORETO DE VINILA,N/PLASTIFICADO,EM FORMA PRIM'),(4051,'39042200','POLICLORETO DE VINILA,PLASTIFICADO,EM FORMA PRIMAR'),(4052,'39043000','COPOLIMEROS DE CLORETO,ACETATO DE VINILA,FORMAS PR'),(4053,'39044010','COPOLIMEROS DE CLORETO,ACETATO VINILA C/ACDIBASICO'),(4054,'39044090','OUTSCOPOLIMEROS DE CLORETO DE VINILA,FORMAS PRIMAR'),(4055,'39045090','OUTROS POLIMEROS DE CLORETO VINILIDENO,FORMAS PRIM'),(4056,'39045010','COPOLIMEROS DE CLORETO DE VINILIDENO,S/EMULSIONANT'),(4057,'39046110','POLITETRAFLUORETILENO EM LIQUIDOS E PASTAS'),(4058,'39046190','OUTROS POLITETRAFLUORETILENOS EM FORMAS PRIMARIAS'),(4059,'39046910','COPOLIMERO DE FLUORETO DE VINILIDENO,HEXAFLUORPROP'),(4060,'39046990','OUTROS POLIMEROS FLUORADOS,EM FORMAS PRIMARIAS'),(4061,'39049000','OUTSPOLIMDE CLORETO VINILA/OLEFINAS HALOGFORMAS PR'),(4062,'39051200','ACETATO DE POLIVINILA,EM DISPERSAO AQUOSA'),(4063,'39052100','COPOLIMEROS DE ACETATO DE VINILA,EM DISPERSAO AQUO'),(4064,'39051910','ACETATO DE POLIVINILA,COM ALCOOL VINILICO,EM BLOCO'),(4065,'39051990','OUTROS POLIMEROS DE ACETATO DE POLIVINILA,FORMAS P'),(4066,'39052900','OUTSCOPOLIMEROS DE ACETATO DE VINILA,FORMAS PRIMAR'),(4067,'39053000','ALCOOL POLIVINILICO,EM FORMA PRIMARIA'),(4068,'39059120','COPOLIMERO POLIVINILBUTIRAL,EM FORMA PRIMARIA'),(4069,'39059131','COPOLIMERO POLIVINILPIRROLIDONA IODADA,FORMAS PRIM'),(4070,'39059132','COPOLIMERO DE VINILPIRROLIDONA,ETCEM SOLUCAO ALCOO'),(4071,'39059139','OUTSCOPOLIMEROS POLIVINILPIRROLIDONAS,FORMAS PRIMA'),(4072,'39059110','COPOLIMERO POLIVINILFORMAL,EM FORMA PRIMARIA'),(4073,'39059190','OUTROS COPOLIMEROS DE ACETATO DE VINILA,ETCFORMAS '),(4074,'39059900','OUTROS POLIMEROS DE ACETATO DE VINILA,ETCFORMAS PR'),(4075,'39061000','POLIMETACRILATO DE METILA,EM FORMA PRIMARIA'),(4076,'39069022','COPOLIMERO DE METACRILATO 2-DIISOPROPILEM SUSPENSE'),(4077,'39069029','OUTSPOLIMEROS ACRILICOS,EM LIQUIDO/PASTA,EM SOLVOR'),(4078,'39069031','ACIDO POLIACRILICO E SAIS,EM LIQ/PASTA,EM OUTSSOLV'),(4079,'39069032','SAL SODICO DO ACPOLIACRILAMEM LIQPASTAOUTSSOLVETC'),(4080,'39069044','POLIACRILATO DE SODIO,EM BLOCOS IRREGULARES,PEDACO'),(4081,'39069011','ACIDO POLIACRILICO E SAIS,EM LIQ/PASTA,SOLUVEL EM '),(4082,'39069012','SAL SODICO DO ACPOLIACRILAMIDICO,EM LIQETCSOLUVAGU'),(4083,'39069019','OUTSPOLIMEROS ACRILICOS,EM LIQE PASTAS,SOLUVEM AGU'),(4084,'39069039','OUTSPOLIMEROS ACRILICOS,EM LIQPASTA,EM OUTSSOLVETC'),(4085,'39069021','ACIDO POLIACRILICO E SAIS,EM LIQ/PASTA,EM SOLVENTO'),(4086,'39069041','ACIDO POLIACRILICO E SAIS,EM BLOCOS IRREGULPEDACOS'),(4087,'39069042','SAL SODICO DO ACPOLIACRILEM PEDACOS,ETCSOLUVEM AGU'),(4088,'39069043','CARBOXIPOLIMETILENO,EM PO'),(4089,'39069049','OUTSPOLIMEROS ACRILICOS,EM BLOCOS IRREGULPEDACOS,E'),(4090,'39071011','POLIACETAIS COM CARGA,EM LIQUIDOS E PASTAS'),(4091,'39071021','POLIACETAIS SEM CARGA,EM LIQUIDOS E PASTAS'),(4092,'39071022','POLIACETAIS SEM CARGA,EM BLOCOS IRREGULETCN/ESTABI'),(4093,'39071029','POLIACETAIS SEM CARGA,EM OUTRAS FORMAS PRIMARIAS'),(4094,'39071019','POLIACETAIS COM CARGA,EM OUTRAS FORMAS PRIMARIAS'),(4095,'39072012','POLIOXIFENILENO SEM CARGA,EM FORMA PRIMARIA'),(4096,'39072011','POLIOXIFENILENO COM CARGA,EM FORMA PRIMARIA'),(4097,'39072020','POLITETRAMETILENOETERGLICOL EM FORMA PRIMARIA'),(4098,'39072031','POLIETILENOGLICOL 400,EM FORMA PRIMARIA'),(4099,'39072039','OUTROS POLIETERPOLIOIS,EM FORMAS PRIMARIAS'),(4100,'39072090','OUTROS POLIETERES EM FORMAS PRIMARIAS'),(4101,'39073011','RESINAS EPOXIDAS COM CARGA,EM LIQUIDOS E PASTAS'),(4102,'39073021','COPOLIMERO TETRABROMOBISFENOL A,ETCS/CARGA,FORMA P'),(4103,'39073028','RESINAS EPOXIDAS SEM CARGA,EM LIQUIDOS E PASTAS'),(4104,'39073019','RESINAS EPOXIDAS COM CARGA,EM OUTRAS FORMAS PRIMAR'),(4105,'39073029','OUTRAS RESINAS EPOXIDAS SEM CARGA,EM FORMAS PRIMAR'),(4106,'39074000','POLICARBONATOS EM FORMAS PRIMARIAS'),(4107,'39075010','RESINAS ALQUIDICAS EM LIQUIDOS E PASTAS'),(4108,'39075090','RESINAS ALQUIDICAS EM OUTRAS FORMAS PRIMARIAS'),(4109,'39076000','TEREFTALATO DE POLIETILENO EM FORMA PRIMARIA'),(4110,'39079100','OUTROS POLIETERES NAO SATURADOS,EM FORMAS PRIMARIA'),(4111,'39079911','TEREFTALATO POLIBUTILENO C/CARGA FIBRA VIDRO,FORMA'),(4112,'39079918','TEREFTALATO DE POLIBUTILENO EM LIQUIDOS E PASTAS'),(4113,'39079919','TEREFTALATO DE POLIBUTILENO EM OUTRAS FORMAS PRIMA'),(4114,'39079991','OUTROS POLIESTERES EM LIQUIDOS E PASTAS'),(4115,'39079999','OUTROS POLIESTERES EM FORMAS PRIMARIAS'),(4116,'39081013','POLIAMIDA-6 OU POLIAMIDA-6,6,C/GARGA,EM LIQUIDOS,P'),(4117,'39081023','POLIAMIDA-6 OU POLIAMIDA-6,6,COM CARGA,EM PEDACOS,'),(4118,'39081011','POLIAMIDA-11 EM LIQUIDOS E PASTAS'),(4119,'39081021','POLIAMIDA-11 EM BLOCOS IRREGULARES,PEDADOS,GRUMOS,'),(4120,'39081012','POLIAMIDA-12 EM LIQUIDOS E PASTAS'),(4121,'39081022','POLIAMIDA-12 EM BLOCOS IRREGULARES,PEDACOS,GRUMOS,'),(4122,'39081014','POLIAMIDA-6 OU POLIAMIDA-6,6,S/CARGA,EM LIQUIDOS,P'),(4123,'39081019','POLIAMIDAS-6,9 OU 6,10 OU 6-12,EM LIQUIDOS E PASTA'),(4124,'39081024','POLIAMIDA-6 OU POLIAMIDA-6,6,SEM CARGA,EM PEDACOS,'),(4125,'39081029','POLIAMIDAS-6,9 OU 6,10 OU 6-12,EM BLOCOS IRREGULET'),(4126,'39089090','OUTRAS POLIAMIDAS EM FORMAS PRIMARIAS'),(4127,'39089010','COPOLIMERO DE LAURIL-LACTAMA,EM FORMA PRIMARIA'),(4128,'39089020','OUTSPOLIAMIDAS OBTCONDENSACAO ACIDO GRAXO DIMERIZE'),(4129,'39091000','RESINAS UREICAS/RESINAS DE TIOUREIA,EM FORMAS PRIM'),(4130,'39092011','MELAMINA-FORMALDEIDO,COM CARGA,EM PO'),(4131,'39092021','MELAMINA-FORMALDEIDO,SEM CARGA,EM PO'),(4132,'39092019','OUTSRESINAS MELAMINICAS,COM CARGA,EM FORMAS PRIMAR'),(4133,'39092029','OUTSRESINAS MELAMINICAS,SEM CARGA,EM FORMAS PRIMAR'),(4134,'39093010','OUTRAS RESINAS AMINICAS,COM CARGA,EM FORMAS PRIMAR'),(4135,'39093020','OUTRAS RESINAS AMINICAS,SEM CARGA,EM FORMAS PRIMAR'),(4136,'39094011','FENOL-FORMALDEIDO,LIPOSSOLUVEL,PURO OU MODIFICADO'),(4137,'39094091','OUTROS FENOIS-FORMALDEIDOS EM FORMAS PRIMARIAS'),(4138,'39094019','OUTSRESINAS FENOLICAS,LIPOSSOLUVEIS,PURAS/MODIFICA'),(4139,'39094099','OUTRAS RESINAS FENOLICAS EM FORMAS PRIMARIAS'),(4140,'39095021','POLIURETANO HIDROXILC/PROPRIEDADESIVA,EM PEDACOS,E'),(4141,'39095011','POLIURETANO EM SOLUCOES EM SOLVENTES ORGANICOS'),(4142,'39095012','POLIURETANO EM DISPERSAO AQUOSA'),(4143,'39095019','OUTROS POLIURETANOS EM LIQUIDOS E PASTAS'),(4144,'39095029','OUTSPOLIURETANOS EM BLOCOS IRREGULARES,PEDACOS,POS'),(4145,'39100030','RESINAS (SILICONE)'),(4146,'39100012','OLEOS POLIDIMETILSILOXANO,ETCEM DISPERSAO (SILICON'),(4147,'39100011','OLEOS HIDROLISADOS DE DIMETILDICLOROROSILANO (SILI'),(4148,'39100020','ELASTOMEROS (SILICONE)'),(4149,'39100013','OLEOS COPOLIMEROS DE DIMETILSILOXANO,C/COMPVINILET'),(4150,'39100019','OUTROS OLEOS SILICONES EM FORMAS PRIMARIAS'),(4151,'39100090','SILICONES EM OUTRAS FORMAS PRIMARIAS'),(4152,'39111010','RESINA DE PETROLEO,DE CUMARONA,ETCC/CARGA,FORMA PR'),(4153,'39111020','RESINA DE PETROLEO,DE CUMARONA,ETCS/CARGA,FORMA PR'),(4154,'39119011','POLITERPENOS MODIFQUIMICAMC/CARGA,EM FORMAS PRIMAR'),(4155,'39119019','POLISSULFETOS,POLISSULFONAS,ETCC/CARGA,FORMAS PRIM'),(4156,'39119021','POLITERPENOS MODIFSQUIMICAMSEM CARGA,EM FORMAS PRI'),(4157,'39119022','POLISSULFETO DE FENILENO,SEM CARGA,EM FORMAS PRIMA'),(4158,'39119023','POLIETILENAMINAS,SEM CARGA,EM FORMAS PRIMARIAS'),(4159,'39119029','OUTROS POLITERPENOS,ETCSEM CARGA,EM FORMAS PRIMARI'),(4160,'39121110','ACETATO DE CELULOSE,NAO PLASTIFICADO,C/CARGA,FORMA'),(4161,'39121120','ACETATO DE CELULOSE,NAO PLASTIFICADO,S/CARGA,FORMA'),(4162,'39121200','ACETATO DE CELULOSE,PLASTIFICADO,EM FORMA PRIMARIA'),(4163,'39122010','NITRATO DE CELULOSE,COM CARGA,EM FORMA PRIMARIA'),(4164,'39122021','NITRATO DE CELULOSE,S/CARGA,EM ALCOOL,TEOR N/VOLAT'),(4165,'39122029','OUTROS NITRATOS DE CELULOSE,SEM CARGA,EM FORMA PRI'),(4166,'39123119','OUTROS CARBOXIMETILCELULOSES EM FORMAS PRIMARIAS'),(4167,'39123111','CARBOXIMETILCELULOSE COM TEOR>=75%,EM FORMAS PRIMA'),(4168,'39123121','SAIS DE CARBOXIMETILCELULOSE,TEOR>=75%,EM FORMAS P'),(4169,'39123129','OUTROS SAIS DE CARBOXIMETILCELULOSE,EM FORMAS PRIM'),(4170,'39123990','OUTROS ETERES DE CELULOSE,EM FORMAS PRIMARIAS'),(4171,'39123930','OUTRAS ETILCELULOSES,EM FORMAS PRIMARIAS'),(4172,'39123920','OUTRAS METILCELULOSES,EM FORMAS PRIMARIAS'),(4173,'39123910','METIL-,ETIL- E PROPILCELULOSE,HIDROXILADAS,FORMA P'),(4174,'39129020','ACETOBUTIRATO DE CELULOSE,EM FORMA PRIMARIA'),(4175,'39129010','PROPIONATO DE CELULOSE,EM FORMA PRIMARIA'),(4176,'39129031','CELULOSE MICROCRISTALINA,EM PO'),(4177,'39129039','CELULOSE MICROCRISTALINA,EM OUTRAS FORMAS PRIMARIA'),(4178,'39129040','OUTRAS CELULOSES,EM PO'),(4179,'39129090','OUTSCELULOSES E DERIVADOS QUIMICOS,EM FORMAS PRIMA'),(4180,'39131000','ACIDO ALGINICO,SEUS SAIS E ESTERES,EM FORMA PRIMAR'),(4181,'39139030','DEXTRANA EM FORMAS PRIMARIAS'),(4182,'39139040','PROTEINAS ENDURECIDAS EM FORMAS PRIMARIAS'),(4183,'39139011','BORRACHA CLORADA OU CLORIDRATADA,EM PEDACOS,GRUMOS'),(4184,'39139012','BORRACHA CLORADA EM OUTRAS FORMAS PRIMARIAS'),(4185,'39139019','OUTSDERIVSQUIMDA BORRACHA NATURAL,EM FORMAS PRIMAR'),(4186,'39139020','GOMA XANTANA,EM FORMAS PRIMARIAS'),(4187,'39139050','QUITOSAN,SEUS SAIS OU DERIVADOS,EM FORMAS PRIMARIA'),(4188,'39139090','OUTSPOLIMEROS NATURAIS,INCLMODIFEM FORMAS PRIMARIA'),(4189,'39140011','PERMUTADDE IONS,BASE COPOLIMESTIRENO-DIVINILBENZET'),(4190,'39140019','OUTSPERMUTADDE IONS,A BASE POLIESTIRENO/SEUS COPOL'),(4191,'39140090','PERMUTADDE IONS,A BASE DE OUTSPOLIMEM FORMAS PRIMA'),(4192,'39151000','DESPERDICIOS,RESIDUOS E APARAS,DE POLIMEROS DE ETI'),(4193,'39152000','DESPERDICIOS,RESIDUOS E APARAS,DE POLIMEROS DE EST'),(4194,'39153000','DESPERDICIOS,RESIDUOS,ETCDE POLIMDE CLORETO DE VIN'),(4195,'39159000','DESPERDICIOS,RESIDUOS E APARAS,DE OUTROS PLASTICOS'),(4196,'39161000','MONOFILAMENTOS (MONOFIOS),ETCDE POLIMEROS DE ETILE'),(4197,'39162000','MONOFILAMENTOS (MONOFIOS),ETCDE POLIMCLORETO VINIL'),(4198,'39169090','VARAS,BASTOES E PERFIS,DE OUTROS PLASTICOS'),(4199,'39169010','MONOFILAMENTOS (MONOFIOS),DE OUTROS PLASTICOS'),(4200,'39171010','TRIPAS ARTIFICIAIS DE PROTEINAS ENDURECIDAS'),(4201,'39171021','TRIPAS ARTIFSFIBROSAS,DE CELULOSE REGENERADAD>=150'),(4202,'39171029','TRIPAS ARTIFICIAIS DE OUTROS PLASTICOS CELULOSICOS'),(4203,'39172100','TUBO RIGIDO,DE POLIMEROS DE ETILENO'),(4204,'39172200','TUBO RIGIDO,DE POLIMEROS DE PROPILENO'),(4205,'39172300','TUBO RIGIDO,DE POLIMEROS DE CLORETO DE VINILA'),(4206,'39172900','TUBO RIGIDO,DE OUTROS PLASTICOS'),(4207,'39173100','TUBO FLEXIVEL,DE PLASTICO,P/SUPORTAR PRESSAO>=276 '),(4208,'39173251','TUBO CAPILAR SEMIPERMEAVCELULOSE REGENERP/HEMODIAL'),(4209,'39173210','TUBO DE COPOLIMEROS DE ETILENO,N/REFORCADO,S/ACESS'),(4210,'39173221','TUBO CAPILAR SEMIPERMEAVDE POLIPROPILENO,P/HEMODIA'),(4211,'39173229','OUTSTUBOS DE POLIPROPILENO,N/REFORCADOS,SEM ACESSO'),(4212,'39173230','TUBO DE TEREFTALATO DE POLIETILENO,N/REFORCADO,S/A'),(4213,'39173240','TUBO DE SILICONES,NAO REFORCADO,SEM ACESSORIOS'),(4214,'39173259','OUTSTUBOS DE CELULOSE REGENERADA,N/REFORCADOS,S/AC'),(4215,'39173290','OUTROS TUBOS DE PLASTICOS,NAO REFORCADOS,SEM ACESS'),(4216,'39173300','TUBO DE PLASTICO,NAO REFORCADO,COM ACESSORIOS'),(4217,'39173900','OUTROS TUBOS DE PLASTICOS'),(4218,'39174010','CONEXOES PARA TUBOS,DE PLASTICOS'),(4219,'39174090','OUTROS ACESSORIOS PARA TUBOS,DE PLASTICOS'),(4220,'39181000','REVESTIMDE PAVIMENTOS,ETCDE POLIMERDE CLORETO VINI'),(4221,'39189000','REVESTIMDE PAVIMENTOS/PAREDES/TETOS,DE OUTSPLASTIC'),(4222,'39191000','CHAPAS,FLSETCAUTO-ADESIVAS,DE PLASTICOS,ROLOS,L<=2'),(4223,'39199000','OUTSCHAPAS,FOLHAS,TIRAS,ETCAUTO-ADESIVAS,DE PLASTI'),(4224,'39201010','CHAPAS DE POLIMEROS ETILENO,N/REFORCADETCROLO L<=6'),(4225,'39201090','OUTRAS CHAPAS DE POLIMEROS DE ETILENO,N/REFORCADAS'),(4226,'39202019','OUTRAS CHAPAS,ETCPOLIMPROPILENO,BIAXORIENTS/SUPORT'),(4227,'39202090','OUTSCHAPAS,ETCPOLIMPROPILENO,S/SUPORTE,N/REFORCETC'),(4228,'39202011','CHAPAS,ETCPOLIMPROPILENO,BIAXORIENTMETALIZS/SUPORT'),(4229,'39203000','CHAPAS,ETCDE POLIMEROS ESTIRENO,S/SUPORTE,N/REFORC'),(4230,'39204100','CHAPAS,ETCDE POLIMCLORETO VINILA,RIGIDAS,S/SUPORTE'),(4231,'39204210','CHAPAS,ETCPOLICLORETO VINILA,FLEXIVTRANSPARS/SUPOR'),(4232,'39204290','OUTSCHAPAS,ETCPOLICLORETO VINILA,FLEXIVSS/SUPORTET'),(4233,'39205100','CHAPAS,ETCPOLIMETACRILATO METILA,S/SUPORTN/REFORCE'),(4234,'39205900','OUTSCHAPAS,ETCPOLIMEROS ACRILICOS,S/SUPORTE,N/REFO'),(4235,'39206100','CHAPAS,ETCDE POLICARBONATOS,S/SUPORTE,N/REFORCADAS'),(4236,'39206211','CHAPAS,ETCTEREFTALATO POLIETENO,E<5 MICRS/SUPORTE,'),(4237,'39206219','OUTSCHAPAS,ETCTEREFTPOLIETILENO,E<=40 MICRS/SUPORT'),(4238,'39206291','CHAPAS,ETCTEREFTALATO POLIETILENO,L>12CM,S/SUPORTE'),(4239,'39206299','OUTRAS CHAPAS,ETCTEREFTALATO POLIETILENO,S/SUPORTE'),(4240,'39206300','CHAPAS,ETCDE POLIESTERES N/SATURADS/SUPORTE,N/REFO'),(4241,'39206900','CHAPAS,ETCDE OUTSPOLIESTERES,S/SUPORTE,N/REFORCADE'),(4242,'39207100','CHAPAS,ETCDE CELULOSE REGENERS/SUPORTE,N/REFORCADE'),(4243,'39207210','CHAPAS,ETCDE FIBRA VULCANIZE<=1MM,S/SUPORTE,N/REFO'),(4244,'39207290','OUTSCHAPAS,ETCDE FIBRA VULCANIZS/SUPORTN/REFORCETC'),(4245,'39207310','CHAPAS,ETCACETATO CELULOSE,E<=075MM,S/SUPORTN/REFO'),(4246,'39207390','OUTSCHAPAS,ETCDE ACETATO CELULOSE,S/SUPORTE,N/REFO'),(4247,'39207900','CHAPAS,ETCDE OUTSDERIVSCELULOSE,S/SUPORTE,N/REFORC'),(4248,'39209100','CHAPAS,ETCBUTIRAL POLIVINILA,S/SUPORTE,N/REFORCADE'),(4249,'39209200','CHAPAS,ETCDE POLIAMIDAS,S/SUPORTE,N/REFORCADAS,ETC'),(4250,'39209300','CHAPAS,ETCDE RESINAS AMINICAS,S/SUPORTE,N/REFORCAD'),(4251,'39209400','CHAPAS,ETCDE RESINAS FENOLICAS,S/SUPORTE,N/REFORCE'),(4252,'39209910','CHAPAS,ETCDE SILICONES,S/SUPORTE,N/REFORCADAS,ETC'),(4253,'39209920','CHAPAS,ETCDE ALCOOL POLIVINILICO,S/SUPORTN/REFORCE'),(4254,'39209930','CHAPAS,ETCPOLIMFLUORETO VINILA,S/SUPORTN/REFORCETC'),(4255,'39209940','CHAPAS,ETCDE POLIIMIDA,S/SUPORTE,N/REFORCADAS,ETC'),(4256,'39209990','OUTSCHAPAS,ETCDE OUTSPLASTICOS,N/ALVEOLS/SUPORTETC'),(4257,'39211100','OUTRAS CHAPAS,ETCDE POLIMEROS DE ESTIRENO,ALVEOLAR'),(4258,'39211200','OUTSCHAPAS,ETCDE POLIMERDE CLORETO VINILA,ALVEOLAR'),(4259,'39211300','OUTRAS CHAPAS,ETCDE POLIUTERANOS,ALVEOLARES'),(4260,'39211400','OUTRAS CHAPAS,ETCDE CELULOSE REGENERADA,ALVEOLARES'),(4261,'39211900','OUTRAS CHAPAS,ETCDE OUTRAS PLASTICOS,ALVEOLARES'),(4262,'39219090','OUTSCHAPAS,FOLHAS,PELICULAS,TIRAS,LAMINAS,DE PLAST'),(4263,'39219011','CHAPAS,ETCDE RESINA MELAMINA-FORMALDEIDO,ESTRATIFI'),(4264,'39219019','OUTRAS CHAPAS,ETCDE OUTRAS PLASTICOS,ESTRATIFICADA'),(4265,'39219020','OUTSCHAPAS,ETCDE OUTSPLASTICOS,C/SUPORTE OU REFORC'),(4266,'39219030','OUTSCHAPAS,ETCTEREFTALATO POLIETILENO SUBSTRATADET'),(4267,'39221000','BANHEIRAS,BANHEIRAS P/DUCHAS E LAVATORIOS,DE PLAST'),(4268,'39222000','ASSENTOS E TAMPAS DE SANITARIOS,DE PLASTICOS'),(4269,'39229000','OUTSARTIGOS P/USOS SANITARIOS/HIGIENICOS,DE PLASTI'),(4270,'39231000','CAIXAS,CAIXOTES,ENGRADADOS,ARTIGOS SEMELHSDE PLAST'),(4271,'39232110','SACOS,BOLSAS,CARTUCHOS,DE POLIMDE ETILENO,CAP<=100'),(4272,'39232190','OUTROS SACOS,BOLSAS E CARTUCHOS,DE POLIMEROS DE ET'),(4273,'39232910','SACOS,BOLSAS E CARTUCHOS,DE OUTSPLASTICOS,CAP<=100'),(4274,'39232990','OUTROS SACOS,BOLSAS E CARTUCHOS,DE OUTROS PLASTICO'),(4275,'39233000','GARRAFOES,GARRAFAS,FRASCOS,ARTIGOS SEMELHSDE PLAST'),(4276,'39234000','BOBINAS,CARRETEIS E SUPORTES SEMELHANTES,DE PLASTI'),(4277,'39235000','ROLHAS,TAMPAS,ETCP/FECHAR RECIPIENTES,DE PLASTICOS'),(4278,'39239000','OUTSARTIGOS DE TRANSPORTE OU DE EMBALAGEM,DE PLAST'),(4279,'39241000','SERVICOS DE MESA/OUTSARTIGOS MESA/COZINHA,DE PLAST'),(4280,'39249000','OUTROS ARTIGOS DE HIGIENE OU DE TOUCADOR,DE PLASTI'),(4281,'39251000','RESERVATORIOS,CISTERNAS,CUBAS,ETCDE PLASTICOS,CAP>'),(4282,'39252000','PORTAS,JANELAS,SEUS CAIXILHOS,ALIZARES,ETCDE PLAST'),(4283,'39253000','POSTIGOS,ESTORES,ARTIGOS SEMELHSE PARTES,DE PLASTI'),(4284,'39259000','OUTSARTEFATOS P/APETRECHAMDE CONSTRUCOES,DE PLASTI'),(4285,'39261000','ARTIGOS DE ESCRITORIO E ARTIGOS ESCOLARES,DE PLAST'),(4286,'39262000','VESTUARIO E SEUS ACESSORIOS,DE PLASTICOS,INCLLUVAS'),(4287,'39263000','GUARNICOES P/MOVEIS,CARROCARIAS E SEMELHSDE PLASTI'),(4288,'39264000','ESTATUETAS E OUTSOBJETOS DE ORNAMENTACAO,DE PLASTI'),(4289,'39269010','ARRUELAS (ANILHAS) DE PLASTICOS'),(4290,'39269021','CORREIAS DE TRANSMISSAO,DE PLASTICOS'),(4291,'39269022','CORREIAS TRANSPORTADORAS,DE PLASTICOS'),(4292,'39269090','OUTRAS OBRAS DE PLASTICOS'),(4293,'39269040','ARTIGOS DE LABORATORIO OU DE FARMACIA,DE PLASTICOS'),(4294,'39269030','BOLSAS PARA COLOSTOMIA,ILEOSTOMIA,ETCDE PLASTICOS'),(4295,'40011000','LATEX DE BORRACHA NATURAL,MESMO PRE-VULCANIZADO'),(4296,'40012100','BORRACHA NATURAL EM FOLHAS FUMADAS'),(4297,'40012200','BORRACHA NATURAL TECNICAMESPECIF(TSNR),EM OUTSFORM'),(4298,'40012910','BORRACHA NATURAL CREPADA'),(4299,'40012920','BORRACHA NATURAL GRANULADA OU PRENSADA'),(4300,'40012990','BORRACHA NATURAL EM OUTRAS FORMAS'),(4301,'40013000','BALATA,GUTA-PERCHA,CHICLE E GOMAS NATURAIS ANALOGA'),(4302,'40021110','LATEX DE BORRACHA DE ESTIRENO-BUTADIENO (SBR)'),(4303,'40021120','LATEX DE BORRACHA DE ESTIRENO-BUTADIENO-CARBOXILAD'),(4304,'40021911','BORRACHA DE ESTIRENO-BUTADIENO,EM CHAPAS,FOLHAS,TI'),(4305,'40021912','BORRACHA DE ESTIRENO-BUTADIENO,GRAU ALIMFORMA PRIM'),(4306,'40021919','BORRACHA DE ESTIRENO-BUTADIENO,EM OUTSFORMAS PRIMA'),(4307,'40021920','BORRACHA DE ESTIRENO-BUTADIENO-CARBOXILADEM CHAPAS'),(4308,'40022010','OLEO DE BORRACHA DE BUTADIENO (BR)'),(4309,'40022090','BORRACHA DE BUTADIENO (BR),EM CHAPAS,FOLHAS,TIRAS,'),(4310,'40023100','BORRACHA DE ISOBUTENO-ISOPRENO (BUTILA),EM CHAPAS,'),(4311,'40023900','BORRACHA DE ISOBUTENO-ISOPRENO HALOGENADA,EM CHAPA'),(4312,'40024100','LATEX DE BORRACHA DE CLOROPRENO (CLOROBUTADIENO)(C'),(4313,'40024900','BORRACHA DE CLOROPRENO (CLOROBUTADIENO),EM CHAPAS,'),(4314,'40025100','LATEX DE BORRACHA DE ACRILONITRILA-BUTADIENO (NBR)'),(4315,'40025900','BORRACHA DE ACRILONITRILA-BUTADIENO EM CHAPAS,FLSE'),(4316,'40026000','BORRACHA DE ISOPRENO (IR) EM CHAPAS,FOLHAS,TIRAS,E'),(4317,'40027000','BORRACHA DE ETILENO-PROPILENO-DIENO N/CONJUGEM CHA'),(4318,'40028000','MISTURAS DE BORRACHA NATURAL COM BORRACHA SINTETIC'),(4319,'40029100','LATEX DE OUTRAS BORRACHAS SINTETICAS OU ARTIFICIAI'),(4320,'40029910','BORRACHA ESTIRENO-ISOPRENO-ESTIRENO EM CHAPAS,FLSE'),(4321,'40029920','BORRACHA ETILENO-PROPILENO-DIENO N/CONJUGADO-PROPI'),(4322,'40029990','OUTRAS BORRACHAS SINTETICAS E ARTIFICIAIS,EM CHAPA'),(4323,'40030000','BORRACHA REGENERADA,EM FORMAS PRIMARIAS OU CHAPAS,'),(4324,'40040000','DESPERDICIOS,RESIDUOS,ETCDE BORRACHA NAO ENDURECID'),(4325,'40051010','BORRACHA ETILENO-PROPILENO-DIENO,ETCC/SILICA,GRANU'),(4326,'40051090','OUTSBORRACHAS VULCANC/NEGRO FUMO/SILICA,EM CHAPAS,'),(4327,'40052000','BORRACHA MISTURADA,N/VULCANIZADA,EM SOLUCOES,DISPE'),(4328,'40059110','PREPARSBASE BORRACHA,P/FABRGOMAS MASCAR,EM CHAPAS,'),(4329,'40059190','OUTSBORRACHAS MISTURADAS,N/VULCANEM CHAPAS,FLSTIRA'),(4330,'40059910','PREPARSBASE BORRACHA,P/FABRGOMAS MASCAR,FORMAS PRI'),(4331,'40059990','OUTSBORRACHAS MISTURADAS,N/VULCANEM FORMAS PRIMARI'),(4332,'40061000','PERFIS PARA RECAUCHUTAGEM,DE BORRACHA NAO VULCANIZ'),(4333,'40069000','OUTRAS FORMAS E ARTIGOS,DE BORRACHA NAO VULCANIZAD'),(4334,'40070000','FIOS E CORDAS,DE BORRACHA VULCANIZADA'),(4335,'40081100','CHAPAS,FOLHAS,ETCDE BORRACHA VULCANALVEOLAR N/ENDU'),(4336,'40081900','VARETAS E PERFIS,DE BORRACHA VULCANALVEOLAR N/ENDU'),(4337,'40082100','CHAPAS,FOLHAS,ETCDE BORRACHA VULCANN/ALVEOLN/ENDUR'),(4338,'40082900','VARETAS E PERFIS DE BORRACHA VULCANN/ALVEOLN/ENDUR'),(4339,'40091000','TUBO DE BORRACHA VULCANN/ENDURECN/REFORCADO,S/ACES'),(4340,'40092090','OUTROS TUBOS DE BORRACHA VULCANN/ENDURC/METAL,S/AC'),(4341,'40092010','TUBO DE BORRACHA VULCN/ENDURC/METAL,S/ACESSP<173MP'),(4342,'40093000','TUBO DE BORRACHA VULCANN/ENDURC/MATERTEXTIL,S/ACES'),(4343,'40094000','TUBO DE BORRACHA VULCANN/ENDURC/OUTSMATERIAS,S/ACE'),(4344,'40095090','OUTSTUBOS DE BORRACHA VULCANN/ENDURECIDA,C/ACESSOR'),(4345,'40095010','TUBO DE BORRACHA VULCANN/ENDURC/ACESSPRESSAO<173MP'),(4346,'40102100','CORREIA TRANSMS/FIM,TRAPEZ6DM<C<=18DM,BORRACHA VUL'),(4347,'40102200','CORREIA TRANSMS/FIM,TRAPEZ18<C<=24DM,BORRACHA VULC'),(4348,'40101200','CORREIA TRANSPORTADDE BORRACHA VULCANREFORCMATTEXT'),(4349,'40101300','CORREIA TRANSPORTADDE BORRACHA VULCANREFORCPLASTIC'),(4350,'40102400','CORREIA TRANSMS/FIM,SINCR150<C<=198CM,BORRACHA VUL'),(4351,'40101100','CORREIA TRANSPORTADDE BORRACHA VULCANREFORCADA MET'),(4352,'40101900','OUTRAS CORREIAS TRANSPORTADORAS,DE BORRACHA VULCAN'),(4353,'40102300','CORREIA TRANSMS/FIM,SINCRON6<C<=15DM,BORRACHA VULC'),(4354,'40102900','OUTRAS CORREIAS DE TRANSMISSAO,DE BORRACHA VULCANI'),(4355,'40111000','PNEUS NOVOS PARA AUTOMOVEIS DE PASSAGEIROS'),(4356,'40112010','PNEUS NOVOS PARA ONIBUS OU CAMINHOES,MEDIDA=11,00-'),(4357,'40112090','OUTROS PNEUS NOVOS PARA ONIBUS OU CAMINHOES'),(4358,'40113000','PNEUS NOVOS PARA AVIOES'),(4359,'40114000','PNEUS NOVOS PARA MOTOCICLETAS'),(4360,'40115000','PNEUS NOVOS PARA BICICLETAS'),(4361,'40119119','OUTROS PNEUS NOVOS,BANDA DE RODAGEM FORMA ESPINHA '),(4362,'40119190','OUTROS PNEUS NOVOS,BANDA DE RODAGEM FORMA ESPINHA '),(4363,'40119111','PNEUS NOVOS,BANDA ESPINHA PEIXE,SECE DIAMARO>=1143'),(4364,'40119120','PNEUS RADIAIS NOVOS,BANDA ESPINHA PEIXE,P/\"DUMPERS'),(4365,'40119910','PNEUS NOVOS,P/TRATORES/IMPLEMENTAGRICOLAS,DIVSMEDI'),(4366,'40119921','PNEUS NOVOS,P/MAQSTERRAPLANAGEM,SECE DIAMARO>=1143'),(4367,'40119930','PNEUS RADIAIS NOVOS PARA \"DUMPERS\",ETC'),(4368,'40119929','OUTROS PNEUS NOVOS,PARA MAQUINAS DE TERRAPLANAGEM,'),(4369,'40119990','OUTROS PNEUS NOVOS DE BORRACHA'),(4370,'40121000','PNEUS RECAUCHUTADOS DE BORRACHA'),(4371,'40122000','PNEUS USADOS DE BORRACHA'),(4372,'40129010','FLAPS PARA PNEUS DE BORRACHA'),(4373,'40129090','PROTETORES,BANDAS RODAGEM,ETCPARA PNEUS DE BORRACH'),(4374,'40131010','CAMARAS-DE-AR BORRACHA,P/PNEUS DE ONIBUS,ETCM=11,0'),(4375,'40131090','OUTRAS CAMARAS-DE-AR BORRACHA,P/PNEUS DE AUTOMOVEI'),(4376,'40132000','CAMARAS-DE-AR DE BORRACHA,PARA PNEUS DE BICICLETAS'),(4377,'40139000','OUTRAS CAMARAS-DE-AR DE BORRACHA'),(4378,'40141000','PRESERVATIVOS DE BORRACHA VULCANIZADA,NAO ENDURECI'),(4379,'40149090','OUTSARTIGOS DE HIGIENE,ETCDE BORRACHA VULCANN/ENDU'),(4380,'40149010','BOLSAS P/GELO/AGUA QUENTE,DE BORRACHA VULCANN/ENDU'),(4381,'40151100','LUVAS P/CIRURGIA,DE BORRACHA VULCANIZADA,N/ENDUREC'),(4382,'40151900','OUTRAS LUVAS DE BORRACHA VULCANIZADA,NAO ENDURECID'),(4383,'40159000','OUTSVESTUARIOS E ACESSORIOS,DE BORRACHA VULCANN/EN'),(4384,'40161010','PARTES DE AUTOMOVSETCBORRACHA VULCANALVEOLN/ENDUR'),(4385,'40161090','OUTRAS OBRAS DE BORRACHA VULCANIZADA ALVEOLAR N/EN'),(4386,'40169100','REVESTIMP/PAVIMENTOS,ETCDE BORRACHA VULCANN/ENDURE'),(4387,'40169200','BORRACHAS DE APAGAR'),(4388,'40169300','JUNTAS,GAXETAS,SEMELHSDE BORRACHA VULCANN/ENDURECI'),(4389,'40169400','DEFENSAS P/ATRACAR EMBARCACOES,BORRACHA VULCANN/EN'),(4390,'40169510','ARTIGOS INFLAVDE SALVAMENTO,DE BORRACHA VULCANN/EN'),(4391,'40169590','OUTSARTIGOS INFLAVEIS,DE BORRACHA VULCANN/ENDURECI'),(4392,'40169990','OUTRAS OBRAS DE BORRACHA VULCANIZADA,NAO ENDURECID'),(4393,'40169910','TAMPOES VEDADORES P/CAPACITOR,DE EPDM,C/PERFP/TERM'),(4394,'40170000','BORRACHA ENDURECIDA E OBRAS DE BORRACHA ENDURECIDA'),(4395,'41011000','PELES EM BRUTO,DE BOVINO,INTEIRAS,QDOSECAS<=8KG,ET'),(4396,'41012120','PELE EM BRUTO,DE BOVINO,INTEIRA,DIVIDC/FLOR,FRESCA'),(4397,'41012130','PELE EM BRUTO,DE BOVINO,INTEIRA,DIVIDS/FLOR,FRESCA'),(4398,'41012110','PELE EM BRUTO,DE BOVINO,INTEIRA,N/DIVIDIDA,FRESCA,'),(4399,'41012210','PELE EM BRUTO,DE BOVINO,(DORSOS),N/DIVIDIDA,FRESCA'),(4400,'41012220','PELE EM BRUTO,DE BOVINO (DORSO),DIVIDC/FLOR,FRESCA'),(4401,'41012230','PELE EM BRUTO,DE BOVINO (DORSO),DIVIDS/FLOR,FRESCA'),(4402,'41012910','OUTSPELES EM BRUTO,DE BOVINO,NAO DIVIDIDAS,FRESCAS'),(4403,'41012920','OUTSPELES EM BRUTO,DE BOVINO,DIVIDC/FLOR,FRESCAS,E'),(4404,'41012930','OUTSPELES EM BRUTO,DE BOVINO,DIVIDS/FLOR,FRESCAS,E'),(4405,'41013010','PELE EM BRUTO,DE BOVINO,CONSERVDE OUTMODO,N/DIVIDI'),(4406,'41013030','PELE EM BRUTO,DE BOVINO,CONSERVOUTMODO,DIVIDS/A FL'),(4407,'41013020','PELE EM BRUTO,DE BOVINO,CONSERVOUTMODO,DIVIDC/A FL'),(4408,'41014010','PELES EM BRUTO,DE EQUIDEOS,NAO DIVIDIDAS'),(4409,'41014020','PELES EM BRUTO,DE EQUIDEOS,DIVIDIDAS COM A FLOR'),(4410,'41014030','PELES EM BFUTO,DE EQUIDEOS,DIVIDIDAS SEM A FLOR'),(4411,'41021000','PELES EM BRUTO,DE OVINOS,COM LA'),(4412,'41022100','PELES EM BRUTO,DE OVINOS,\"PICLADAS\"'),(4413,'41022900','OUTRAS PELES EM BRUTO,DE OVINOS,DEPILADAS OU SEM L'),(4414,'41031000','PELES EM BRUTO,DE CAPRINOS'),(4415,'41032000','PELES EM BRUTO,DE REPTEIS'),(4416,'41039000','PELES EM BRUTO,DE OUTROS ANIMAIS'),(4417,'4!043120','COURO/PELE BOVINA,PREPARAPOS CURTIMPLENA FLOR,C/AC'),(4418,'41041012','COURO/PELE INTEIRBOVINA,S<=26M2,\"WET BLUE\",DIVC/FL'),(4419,'41041011','COURO/PELE INTEIRA,DE BOVINO,S<=26M2,\"WET BLUE\",N/'),(4420,'41041013','COURO/PELE INTEIRBOVINA,S<=26M2,\"WET BLUE\",DIVS/FL'),(4421,'41041020','COURO/PELE INTEIRA,DE BOVINO,S<=26M2,\"BOX-CALF\"'),(4422,'41041090','OUTSCOUROS/PELES INTEIRAS,BOVINAS,S<=26M2,PREPARAD'),(4423,'41042100','COUROS E PELES,DE BOVINOS,COM PRE-CURTIMENTA VEGET'),(4424,'41042211','COURO/PELE,INTEIRO/MEIO,DE BOVINO,\"WET BLUE\",N/DIV'),(4425,'41042212','COURO/PELE,INTEIRO/MEIO,DE BOVINO,\"WET BLUE\",DIVC/'),(4426,'41042213','COURO/PELE,INTEIRO/MEIO,DE BOVINO,\"WET BLUE\",DIVS/'),(4427,'41042219','OUTROS COUROS E PELES,DE BOVINOS,\"WET BLUE\"'),(4428,'41042290','OUTSCOUROS E PELES,DE BOVINOS,PRE-CURTIDOS DE OUTM'),(4429,'41042900','OUTSCOUROS E PELES,DE BOVINOS/EQUIDEOS,CURTIDOS,RE'),(4430,'41043111','COURO/PELE BOVINA,CURTAO VEGP/SOLAS,PLENA FLOR,S/A'),(4431,'41043119','OUTSCOUROS/PELES BOVINAS,PREPARCURTPLENA FLOR,S/AC'),(4432,'41043190','OUTSCOUROS/PELES,DE BOVINO/EQUIDEO/PREPARSPLENA FL'),(4433,'41043120','COURO/PELE BOVINA,PREPARAPOS CURTIMPLENA FLOR,C/AC'),(4434,'41043911','OUTSCOUROS/PELES,DE BOVINO,PREPARAPOS CURTIMS/ACAB'),(4435,'41043912','OUTSCOUROS/PELES,DE BOVINO,PREPARAPOS CURTIMC/ACAB'),(4436,'41043990','OUTSCOUROS/PELES,DE BOVINO/EQUIDEO,APERGAMINSPREPA'),(4437,'41051100','PELES DEPILADAS,DE OVINOS,COM PRE-CURTIMENTA VEGET'),(4438,'41051210','PELES DEPILADAS,DE OVINOS,CURTIDCROMO,UMIDO,\"WET B'),(4439,'41051290','PELES DEPILADAS,DE OVINOS,PRE-CURTIDAS DE OUTRO MO'),(4440,'41051900','OUTRAS PELES DEPILADAS,DE OVINOS,CURTIDAS OU RECUR'),(4441,'41052090','PELES DEPILADAS,DE OVINOS,APERGAMINSPREPARAPOS CUR'),(4442,'41052010','PELES DEPILADAS,DE OVINOS,CURTIDAO CROMO,SECO,\"CRU'),(4443,'41061100','PELES DEPILADAS,DE CAPRINOS,COM PRE-CURTIMENTA VEG'),(4444,'41061210','PELES DEPILADAS,DE CAPRINOS,CURTCROMO,UMIDO,\"WET B'),(4445,'41061290','PELES DEPILADAS,DE CAPRINOS,PRE-CURTIDAS DE OUTRO '),(4446,'41061900','OUTSPELES DEPILADAS,DE CAPRINOS,CURTIDAS OU RECURT'),(4447,'41062010','PELES DEPILADAS,DE CAPRINOS,CURTIDAS AO CROMO,C/AC'),(4448,'41062090','OUTSPELES DEPILADAS,DE CAPRINOS,APERGAMPREPARCURTI'),(4449,'41071010','PELES DEPILADAS,DE SUINOS,CURTIDCROMO,UMIDO,\"WET B'),(4450,'41071090','OUTRAS PELES DEPILADAS,DE SUINOS,PREPARADAS'),(4451,'41072100','PELES DE REPTEIS,COM PRE-CURTIMENTA VEGETAL'),(4452,'41072900','OUTRAS PELES DE REPTEIS,PREPARADAS'),(4453,'41079000','PELES DEPILADAS,DE OUTROS ANIMAIS,PREPARADAS'),(4454,'41080000','COUROS E PELES,ACAMURCADOS,INCLA CAMURCA COMBINADA'),(4455,'41090010','COUROS E PELES,ENVERNIZADOS OU REVESTIDOS'),(4456,'41090020','COUROS E PELES,METALIZADOS'),(4457,'41100000','APARAS E OUTROS DESPERDDE COUROS/PELES,PREPARADOS,'),(4458,'41110000','COURO RECONSTITUIDO EM CHAPAS,FOLHAS OU TIRAS'),(4459,'42010010','ARTIGOS DE SELEIRO/CORREEIRO,DE COURO NATURAL/RECO'),(4460,'42010090','ARTIGOS DE SELEIRO/CORREEIRO,DE OUTRAS MATERIAS'),(4461,'42021100','MALAS,MALETAS E PASTAS,DE COURO NATURAL/RECONST/EN'),(4462,'42021210','MALAS,MALETAS E PASTAS,DE PLASTICO'),(4463,'42021220','MALAS,MALETAS E PASTAS,DE MATERIAS TEXTEIS'),(4464,'42021900','MALAS,MALETAS E PASTAS,DE OUTRAS MATERIAS'),(4465,'42022100','BOLSAS DE COURO NATURAL,RECONSTITUIDO OU ENVERNIZA'),(4466,'42022210','BOLSAS DE FOLHAS DE PLASTICO'),(4467,'42022220','BOLSAS DE MATERIAS TEXTEIS'),(4468,'42022900','BOLSAS DE OUTRAS MATERIAS'),(4469,'42023100','ARTIGOS DE BOLSOS/BOLSAS,DE COURO NATURAL/RECONSTI'),(4470,'42023200','ARTIGOS DE BOLSOS/BOLSAS,DE FLSDE PLASTICO/MATERTE'),(4471,'42023900','ARTIGOS DE BOLSOS/BOLSAS,DE OUTRAS MATERIAS'),(4472,'42029100','OUTSARTEFATOS DE COURO NATURAL/RECONSTITUIDO/ENVER'),(4473,'42029200','OUTROS ARTEFATOS,DE FLSDE PLASTICO OU MATERIAS TEX'),(4474,'42029900','OUTROS ARTEFATOS,DE OUTROS MATERIAS'),(4475,'42031000','VESTUARIO DE COURO NATURAL OU RECONSTITUIDO'),(4476,'42032100','LUVAS,MITEMES,ETCP/ESPORTES,DE COURO NATURAL/RECON'),(4477,'42032900','OUTRAS LUVAS,MITEMES,ETCDE COURO NATURAL/RECONSTIT'),(4478,'42033000','CINTOS,CINTUROES,BANDOLEIRAS,ETCDE COURO NAT/RECON'),(4479,'42034000','OUTROS ACESSORIOS DE VESTUARIO,DE COURO NATURAL/RE'),(4480,'42040010','CORREIAS TRANSPORTAD/DE TRANSMISSDE COURO NAT/RECO'),(4481,'42040090','OUTSARTIGOS P/USOS TECNICOS,DE COURO NATURAL/RECON'),(4482,'42050000','OUTRAS OBRAS DE COURO NATURAL OU RECONSTITUIDO'),(4483,'42061000','CORDAS DE TRIPA'),(4484,'42069000','OUTRAS OBRAS DE TRIPA,\"BAUDRUCHES\",BEXIGA OU DE TE'),(4485,'43011000','PELETERIA EM BRUTO,DE \"VISON\",INTEIRA'),(4486,'43012000','PELETERIA EM BRUTO,DE COELHO OU DE LEBRE,INTEIRA'),(4487,'43013000','PELETERIA EM BRUTO,DE CORDEIROS ASTRACA,ETCINTEIRA'),(4488,'43014000','PELETERIA EM BRUTO,DE CASTOR,INTEIRA'),(4489,'43015000','PELETERIA EM BRUTO,DE RATO-ALMISCARADO,INTEIRA'),(4490,'43016000','PELETERIA EM BRUTO,DE RAPOSA,INTEIRA'),(4491,'43017000','PELETERIA EM BRUTO,DE FOCA OU DE OTARIA,INTEIRA'),(4492,'43018000','PELETERIA EM BRUTO,DE OUTROS ANIMAIS,INTEIRA'),(4493,'43019000','CABECAS,CAUDAS,PATAS,ETCDE ANIMAIS UTILNA INDPELES'),(4494,'43021100','PELETERIA CURTIDA/ACABADA,DE \"VISON\",INTEIRA,N/REU'),(4495,'43021200','PELETERIA CURTIDA/ACABDE COELHO/LEBRE,INTEIRN/REUN'),(4496,'43021300','PELETERIA CURTIDA/ACABADA,DE CORDEIROS,INTEIRN/REU'),(4497,'43021910','PELETERIA CURTIDA/ACABADA,DE OVINOS,INTEIRA,N/REUN'),(4498,'43021990','PELETERIA CURTIDA/ACABDE OUTSANIMAIS,INTEIRN/REUNI'),(4499,'43022000','CABECAS,CAUDAS,ETCCURTIDAS/ACABADSINTEIRAS,N/REUNI'),(4500,'43023000','PELETERIA CURTIDA/ACABADA,INTEIRA/PEDACOS,ETCREUNI'),(4501,'43031000','VESTUARIO E SEUS ACESSORIOS,DE PELETERIA'),(4502,'43039000','OUTROS ARTEFATOS DE PELETERIA'),(4503,'43040000','PELETERIA ARTIFICIAL E SUAS OBRAS'),(4504,'44011000','LENHA EM QUALQUER ESTADO'),(4505,'44012100','MADEIRA DE CONIFERAS,EM ESTILHAS OU EM PARTICULAS'),(4506,'44012200','MADEIRA DE NAO CONIFERAS,EM ESTILHAS OU EM PARTICU'),(4507,'44013000','SERRAGEM,DESPERDICIOS E RESIDUOS,DE MADEIRA'),(4508,'44020000','CARVAO VEGETAL'),(4509,'44031000','MADEIRA EM BRUTO,TRATADA COM TINTA,CREOSOTO,ETC'),(4510,'44032000','MADEIRA DE CONIFERAS,EM BRUTO'),(4511,'44034100','MADEIRA DE DARK OU LIGHT RED MERANTI,ETCEM BRUTO'),(4512,'44034900','OUTRAS MADEIRAS TROPICAIS,EM BRUTO'),(4513,'44039100','MADEIRA DE CARVALHO (QUERCUS SPP),EM BRUTO'),(4514,'44039200','MADEIRA DE FAIA (FAGUS SPP),EM BRUTO'),(4515,'44039900','OUTRAS MADEIRAS EM BRUTO'),(4516,'44041000','ARCOS DE MADEIRA,ESTACAS FENDIDAS,ETCDE CONIFERAS'),(4517,'44042000','ARCOS DE MADEIRA,ESTACAS FENDIDAS,ETCDE NAO CONIFE'),(4518,'44050000','LA DE MADEIRA E FARINHA DE MADEIRA'),(4519,'44061000','DORMENTES DE MADEIRA,P/VIAS FERREAS,ETCNAO IMPREGN'),(4520,'44069000','OUTRAS DORMENTES DE MADEIRA,PARA VIAS FERREAS OU S'),(4521,'44071000','MADEIRA DE CONIFERAS,SERRADA/CORTADA EM FLSETCESP>'),(4522,'44072500','MADEIRA DE DARK RED MERANTI,ETCSERRADA,CORTFLSE>6M'),(4523,'44072600','MADEIRA DE WHITE LAUAN,ETCSERRADA,CORTFLSETCESP>6M'),(4524,'44072990','OUTRAS MADEIRAS TROPICAIS,SERRADAS/CORTFLSETCESP>6'),(4525,'44072420','MADEIRA DE IMBUIA,SERRADA/CORTADA EM FOLHAS,ETCESP'),(4526,'44072410','MADEIRA DE MAHOGANY,SERRADA/CORTADA EM FLSETCESP>6'),(4527,'44079100','MADEIRA DE CARVALHO,SERRADA/CORTADA EM FLSETCESP>6'),(4528,'44079200','MADEIRA DE FAIA,SERRADA/CORTADA EM FOLHAS,ETCESP>6'),(4529,'44072920','MADEIRA DE IPE,SERRADA/CORTADA EM FOLHAS,ETCESP>6M'),(4530,'44072930','MADEIRA DE PAU MARFIM,SERRADA/CORTEM FLSETCESP>6MM'),(4531,'44079940','MADEIRA DE CABREUVA PARDA,SERRADA/CORTFLSETCESP>6M'),(4532,'44079970','MADEIRA DE ANGICO PRETO,SERRADA/CORTEM FLSETCESP>6'),(4533,'44079990','OUTRAS MADEIRAS SERRADAS/CORTADAS EM FOLHAS,ETCESP'),(4534,'44079920','MADEIRA DE PEROBA,SERRADA/CORTADA EM FOLHAS,ETCESP'),(4535,'44072490','MADEIRA DE VIROLA/BALSA,SERRADA,CORTEM FLSETCESP>6'),(4536,'44079910','MADEIRA DE CANAFISTULA,SERRADA/CORTEM FLSETCESP>6M'),(4537,'44079950','MADEIRA DE URUNDEI,SERRADA/CORTADA EM FLSETCESP>6M'),(4538,'44079960','MADEIRA DE AMENDOIM,SERRADA/CORTADA EM FLSETCESP>6'),(4539,'44072910','MADEIRA DE CEDRO,SERRADA/CORTADA EM FOLHAS,ETCESP>'),(4540,'44072940','MADEIRA DE LOURO,SERRADA/CORTADA EM FOLHAS,ETCESP>'),(4541,'44079930','MADEIRA DE GUAIUVIRA,SERRADA/CORTADA EM FLSETCESP>'),(4542,'44081010','FOLHAS DE MADEIRA,DE PINHO BRASIL,ESPESSURA<=6MM'),(4543,'44081090','FOLHAS DE OUTRAS MADEIRAS,DE CONIFERAS,ESPESSURA<='),(4544,'44083100','FOLHAS DE MADEIRA,DE DARK/LIGHT RED MERANTI,ETCE<='),(4545,'44083990','FOLHAS DE OUTRAS MADEIRAS TROPICAIS,ESPESSURA<=6MM'),(4546,'44083910','FOLHAS DE MADEIRA,DE CEDRO,ESPESSURA<=6MM'),(4547,'44089000','FOLHAS DE OUTRAS MADEIRAS,ESPESSURA<=6MM'),(4548,'44083920','FOLHAS DE MADEIRA,DE PAU MARFIM,ESPESSURA<=6MM'),(4549,'44091000','MADEIRA DE CONIFERAS,PERFILADA'),(4550,'44092000','MADEIRA DE NAO CONIFERAS,PERFILADA'),(4551,'44101100','PAINEIS DE MADEIRA DENOMINADOS \"WAFERBOARD\"'),(4552,'44101900','OUTROS PAINEIS DE MADEIRA'),(4553,'44109000','PAINEIS DE OUTRAS MATERIAS LENHOSAS'),(4554,'44111100','PAINEIS DE FIBRAS DE MADEIRA,N/TRABMECAND>08G/CM3'),(4555,'44111900','OUTROS PAINEIS DE FIBRAS DE MADEIRA,DENSIDADE>08G/'),(4556,'44112100','PAINEIS DE FIBRAS DE MADEIRA,N/TRABMEC05<D<=08G/CM'),(4557,'44112900','OUTSPAINEIS DE FIBRAS DE MADEIRA,05G/CM3<D<=0,8G/C'),(4558,'44113100','PAINEIS DE FIBRAS MADEIRA,N/TRABMECAN035<D<=05G/CM'),(4559,'44113900','OUTSPAINEIS DE FIBRAS DE MADEIRA,035G/CM3<D<=05G/C'),(4560,'44119100','OUTSPAINEIS DE FIBRAS DE MADEIRA,N/TRABMECANN/RECO'),(4561,'44119900','OUTROS PAINEIS DE FIBRAS DE MADEIRA'),(4562,'44121300','MADEIRA COMPENSADA C/FLS<=6MM,FACE DE MADEIRA TROP'),(4563,'44121400','MADEIRA COMPENSADA C/FLS<=6MM,FACE DE MADEIRA N/CO'),(4564,'44121900','OUTSMADEIRAS COMPENSADAS,COM FOLHAS DE ESPESSURA<='),(4565,'44122300','OUTSMADEIRAS COMPENSFACE MADN/CONIFPAINEL PARTICUL'),(4566,'44122200','OUTSMADEIRAS COMPENSFACE MADN/CONIFCAMADA MADTROP'),(4567,'44122900','OUTSMADEIRAS COMPENSADAS,C/FACE DE MADEIRA N/CONIF'),(4568,'44129300','OUTRAS MADEIRAS COMPENSADAS,COM PAINEL DE PARTICUL'),(4569,'44129200','OUTSMADEIRAS COMPENSADAS,C/CAMADA DE MADEIRA TROPI'),(4570,'44129900','OUTRAS MADEIRAS COMPENSADAS,FOLHEADAS OU ESTRATIFI'),(4571,'44130000','MADEIRA \"DENSIFICADA\",EM BLOCOS,PRANCHAS,LAMINAS,P'),(4572,'44140000','MOLDURAS DE MADEIRA,P/QUADROS,FOTOGRAFIAS,ESPELHOS'),(4573,'44151000','CAIXOTES,CAIXAS,ENGRADADOS,BARRICAS,ETCDE MADEIRA'),(4574,'44152000','PALETES SIMPLES,PALETES-CAIXAS,ETCDE MADEIRA'),(4575,'44160010','BARRIS,CUBAS,BALSAS,DORNAS,ETCDE MADEIRA DE CARVAL'),(4576,'44160090','BARRIS,CUBAS,BALSAS,DORNAS,SELHAS,ETCDE OUTSMADEIR'),(4577,'44170090','ARMACOES E CABOS,DE MADEIRA,DE FERRAMENTAS,ESCOVAS'),(4578,'44170020','FORMAS,ALARGADEIRAS E ESTICADORES,DE MADEIRA,P/CAL'),(4579,'44170010','FERRAMENTAS DE MADEIRA'),(4580,'44181000','JANELAS,JANELAS DE SACADA,CAIXILHOS,ETCDE MADEIRA'),(4581,'44182000','PORTAS,RESPECTCAIXILHOS,ALIZARES E SOLEIRAS,DE MAD'),(4582,'44183000','PAINEIS DE MADEIRA,PARA SOALHOS'),(4583,'44184000','ARMACOES DE MADEIRA,PARA CONCRETO'),(4584,'44185000','FASQUIAS DE MADEIRA,PARA TELHADOS'),(4585,'44189000','OUTRAS OBRAS DE MARCENARIA OU CARPINTARIA,P/CONSTR'),(4586,'44190000','ARTEFATOS DE MADEIRA,PARA MESA OU COZINHA'),(4587,'44201000','ESTATUETAS E OUTROS OBJETOS,DE MADEIRA,P/ORNAMENTA'),(4588,'44209000','MADEIRA MARCHETADA/INCRUSTADA,COFRES,ETCDE MADEIRA'),(4589,'44211000','CABIDES DE MADEIRA,PARA VESTUARIO'),(4590,'44219000','OUTRAS OBRAS DE MADEIRA'),(4591,'45011000','CORTICA NATURAL,EM BRUTO OU SIMPLESMENTE PREPARADA'),(4592,'45019000','DESPERDICIOS DE CORTICA,CORTICA TRITURADA,GRANULAD'),(4593,'45020000','CORTICA NATURAL,SEM A CROSTA/ESQUADRIADA/EM CUBOS,'),(4594,'45031000','ROLHAS DE CORTICA NATURAL'),(4595,'45039000','OUTRAS OBRAS DE CORTICA NATURAL'),(4596,'45041000','CORTICA AGLOMERADA,EM CUBOS,BLOCOS,CHAPAS,FOLHAS,E'),(4597,'45049000','OUTRAS OBRAS DE CORTICA AGLOMERADA'),(4598,'46011000','TRANCAS E ARTIGOS SEMELHSDE MATERIAS PARA ENTRANCA'),(4599,'46012000','ESTEIRAS,CAPACHOS E DIVISORIAS,DE MATERIAS VEGETAI'),(4600,'46019100','TRANCAS/ETCDE MATERIAS VEGETAIS,TECIDAS/PARALELIZA'),(4601,'46019900','TRANCAS/ETCDE OUTRAS MATERIAS,TECIDAS OU PARALELIZ'),(4602,'46021000','OBRAS DE CESTARIA,DE MATERIAS VEGETAIS'),(4603,'46029000','OBRAS DE CESTARIA,DE OUTRAS MATERIAS P/ENTRANCAR,E'),(4604,'47010000','PASTAS MECANICAS DE MADEIRA'),(4605,'47020000','PASTA QUIMICA DE MADEIRA,PARA DISSOLUCAO'),(4606,'47031100','PASTA QUIMMADEIRA DE CONIFERA,A SODA OU SULFATO,CR'),(4607,'47031900','PASTA QUIMMADEIRA DE N/CONIFERA,A SODA OU SULFATO,'),(4608,'47032100','PASTA QUIMMADEIRA DE CONIFERA,A SODA/SULFATSEMI/BR'),(4609,'47032900','PASTA QUIMMADEIRA DE N/CONIFA SODA/SULFATO,SEMI/BR'),(4610,'47041100','PASTA QUIMMADEIRA DE CONIFERA,AO BISSULFITO,CRUA'),(4611,'47041900','PASTA QUIMMADEIRA DE NAO CONIFERA,AO BISSULFITO,CR'),(4612,'47042100','PASTA QUIMMADEIRA DE CONIFERA,AO BISSULFITO,SEMI/B'),(4613,'47042900','PASTA QUIMMADEIRA DE N/CONIFAO BISSULFITO,SEMI/BRA'),(4614,'47050000','PASTAS SEMIQUIMICAS DE MADEIRA'),(4615,'47061000','PASTAS DE LINTERES DE ALGODAO'),(4616,'47069100','PASTAS MECANICAS DE OUTSMATERIAS FIBROSAS CELULOSI'),(4617,'47062000','PASTAS DE FIBRAS OBTIDAS DO PAPEL OU CARTAO RECICL'),(4618,'47069200','PASTAS QUIMICAS DE OUTRAS MATERIAS FIBROSAS CELULO'),(4619,'47069300','PASTAS SEMIQUIMDE OUTRAS MATERIAS FIBROSAS CELULOS'),(4620,'47071000','PAPEL/CARTAO KRAFT,CRUS OU ONDULDE RECICLAR (DESPE'),(4621,'47072000','OUTSPAPEIS/CARTOES OBTDA PASTA QUIMBRANQDE RECICLA'),(4622,'47073000','PAPEL/CARTAO OBTIDOS DA PASTA MECANICA,DE RECICLAR'),(4623,'47079000','OUTSPAPEIS OU CARTOES,DE RECICLAR,INCLN/SELECIONAD'),(4624,'48010010','PAPEL JORNAL,EM ROLOS/FLSP<=57G/M2,FIBRA PROCMEC>='),(4625,'48010090','OUTROS PAPEIS JORNAIS,EM ROLOS OU EM FOLHAS'),(4626,'48021000','PAPEL E CARTAO FEITOS A MAO (FOLHA A FOLHA)'),(4627,'48022000','PAPEL/CARTAO P/FABRPAPEL/CARTAO FOTOSSENETCROLOS,F'),(4628,'48023010','PAPEL PARA FABRICACAO DE PAPEL-CARBONO,P<19G/M2'),(4629,'48023090','OUTROS PAPEIS PARA FABRICACAO DE PAPEL-CARBONO'),(4630,'48024000','PAPEL PARA FABRICACAO DE PAPEIS DE PAREDE'),(4631,'48025100','PAPEL E CARTAO C/FIBRA PROCESSO MECANICO<=10%,P<40'),(4632,'48025210','PAPEL P/PAPEL MOEDA,FIBRA PROCMEC<=10%,40<=P<=150G'),(4633,'48025220','PAPEL DE DESENHO,C/FIBRA PROCMECAN<=10%,40<=P<=150'),(4634,'48025230','PAPEL/CARTAO KRAFT,C/FIBRA PROCMEC<=10%,40<=P<=150'),(4635,'48025290','OUTSPAPEIS/CARTOES,FIBRA PROCMEC<=10%,40<=P<=150G/'),(4636,'48025390','OUTSPAPEIS/CARTOES,FIBRA PROCMECANICO<=10%,P>150G/'),(4637,'48025310','PAPEL DE DESENHO,C/FIBRA PROCMECAN<=10%,P>150G/M2'),(4638,'48025320','PAPEL E CARTAO KRAFT,C/FIBRA PROCMECAN<=10%,P>150G'),(4639,'48026090','OUTROS PAPEIS E CARTOES,COM FIBRA PROCESSO MECANIC'),(4640,'48026010','PAPEL E CARTAO,KRAFT,COM FIBRA PROCESSO MECANICO>1'),(4641,'48030010','PASTA DE CELULOSE E MANTAS DE FIBRAS DE CELULOSE'),(4642,'48030090','PAPEL P/FABRDE PAPEL HIGIENICO OU DE TOUCADOR,ETC'),(4643,'48041100','PAPEL/CARTAO \"KRAFTLINER\",P/COBERTURA,CRUS,EM ROLO'),(4644,'48041900','OUTSPAPEIS/CARTOES \"KRAFTLINER\",P/COBERTEM ROLOS/F'),(4645,'48042100','PAPEL KRAFT P/SACOS DE GDECAPACIDADE,CRU,EM ROLOS/'),(4646,'48042900','OUTROS PAPEIS KRAFT P/SACOS GDECAPACIDADE,EM ROLOS'),(4647,'48043110','PAPEL/CARTAO KRAFT,CRUS,P<=150G/M2,RIGIDDIELETR>=6'),(4648,'48043190','OUTSPAPEIS/CARTOES KRAFT,CRUS,P<=150G/M2,EM ROLOS/'),(4649,'48043910','OUTSPAPEIS/CARTAO KRAFT,P<=150G/M2,RIGIDDIELETR>=6'),(4650,'48043990','OUTROS PAPEIS/CARTOES KRAFT,P<=150G/M2,EM ROLOS OU'),(4651,'48044100','PAPEL E CARTAO KRAFT,CRUS,150<P<225G/M2,EM ROLOS/F'),(4652,'48044200','PAPEL KRAFT,BRANQFIBRA PROCQUIM>95%,150<P<=225G/M2'),(4653,'48044900','OUTSPAPEIS/CARTOES KRAFT,150<P<225G/M2,EM ROLOS/FO'),(4654,'48045100','PAPEL E CARTAO KRAFT,CRUS,P>=225G/M2,EM ROLOS OU F'),(4655,'48045200','PAPEL/CARTAO KRAFT,BRANQFIBRA PROCQUIM>95%,P>=225G'),(4656,'48045900','OUTROS PAPEIS/CARTOES KRAFT,P>=225G/M2,EM ROLOS OU'),(4657,'48051000','PAPEL SEMIQUIMICO P/ONDULAR,NAO REVESTIDO,EM ROLOS'),(4658,'48052100','PAPEL E CARTAO C/CAMADAS MULTIPLAS,BRANQEM ROLOS/F'),(4659,'48052200','PAPEL/CARTAO C/CAMADAS MULTIPLAS,1 CAMADA EXTERBRA'),(4660,'48052300','PAPEL/CARTAO C/CAMADAS MULTIPLAS,2 CAMADAS EXTERBR'),(4661,'48052900','OUTSPAPEIS/CARTOES DE CAMADAS MULTIPLN/REVROLOS/FL'),(4662,'48053000','PAPEL SULFITO P/EMBALAGEM,N/REVESTIDO,EM ROLOS/FOL'),(4663,'48054000','PAPEL-FILTRO E CARTAO-FILTRO,N/REVESTIDOS,EM ROLOS'),(4664,'48055000','PAPEL-FELTRO,CARTAO-FELTRO E PAPEL/CARTAO LANOSOS,'),(4665,'48056000','OUTSPAPEIS E CARTOES,N/REVESTEM ROLOS/FLSP<=150G/M'),(4666,'48057090','OUTSPAPEIS/CARTOES,N/REVESTEM ROLOS/FLS150<P<225G/'),(4667,'48057010','PAPEL/CARTAO C/FIBRA DE VIDRO,150<P<225G/M2,ROLOS/'),(4668,'48058000','OUTSPAPEIS/CARTOES,P>=225G/M2,N/REVESTEM ROLOS/FOL'),(4669,'48061000','PAPEL-PERGAMINHO E CARTAO-PERGAMINHO,EM ROLOS OU F'),(4670,'48062000','PAPEL IMPERMEAVEL A GORDURAS,EM ROLOS OU EM FOLHAS'),(4671,'48063000','PAPEL VEGETAL,EM ROLOS OU EM FOLHAS'),(4672,'48064000','PAPEL CRISTAL/OUTSPAPEIS CALANDRADOS,ETCEM ROLOS/F'),(4673,'48071000','PAPEL E CARTAO ESTRATIFC/BETUME,ETCN/REVESTEM ROLO'),(4674,'48079000','OUTSPAPEIS/CARTOES DA COLAGDE FLSN/REVESTROLOS/FLS'),(4675,'48081000','PAPEL E CARTAO ONDULADOS,MESMO PERFURADOS,EM ROLOS'),(4676,'48082000','PAPEL KRAFT P/SACOS GDECAPACENCRESPADO,ETCROLOS/FL'),(4677,'48083000','OUTSPAPEIS KRAFT,ENCRESPADOS/PLISSADOS,ETCROLOS/FL'),(4678,'48089000','OUTSPAPEIS/CARTOES ONDULADOS/ENCRESPADOS,ETCROLOS/'),(4679,'48091000','PAPEL-CARBONO E SEMELHSEM ROLOS OU EM FOLHAS'),(4680,'48092000','PAPEL AUTOCOPIATIVO,EM ROLOS OU EM FOLHAS'),(4681,'48099000','OUTROS PAPEIS P/COPIA OU DUPLICACAO,EM ROLOS OU FO'),(4682,'48101100','PAPEL P/ESCREVER,ETCFIBRA PROCMEC<=10%,P<=150G/M2'),(4683,'48101210','PAPEL/CARTAO,METALIZFIBRA PROCMEC<=10%,P>150G/M2,E'),(4684,'48101220','PAPEL/CARTAO,BARITADO,FIBRA PROCMEC<=10%,P>150G/M2'),(4685,'48101290','OUTSPAPEIS P/ESCRITA,ETCFIBRA PROCMEC<=10%,P>150G/'),(4686,'48102100','PAPEL CUCHE LEVE,UTILP/ESCRITA,ETCFIBRA PROCMEC>10'),(4687,'48102900','OUTSPAPEIS/CARTOES,P/ESCRITA,ETCFIBRA PROCMECAN>10'),(4688,'48103100','PAPEL/CARTAO KRAFT,BRANQFIBRA PROCQUIM>95%,P<=150G'),(4689,'48103200','PAPEL/CARTAO KRAFT,BRANQFIBRA PROCQUIM>95%,P>150G/'),(4690,'48103900','OUTROS PAPEIS/CARTOES KRAFT,REVESTCAULIM,ETCROLOS/'),(4691,'48109100','OUTSPAPEIS/CARTOES,CAMADAS MULTIPLREVESTEM ROLOS/F'),(4692,'48109900','OUTROS PAPEIS/CARTOES,REVESTCAULIM,ETCEM ROLOS/FOL'),(4693,'48111000','PAPEL E CARTAO ALCATROADOS,BETUMINADOS,ETCEM ROLOS'),(4694,'48112100','PAPEL E CARTAO AUTO-ADESIVOS,EM ROLOS OU EM FOLHAS'),(4695,'48112900','OUTSPAPEIS E CARTOES GOMADOS/ADESIVOS,EM ROLOS/FOL'),(4696,'48113113','PAPEL BRANQREVPOLIETILENO,ETCP>150G/M2,P/PAPEL FOT'),(4697,'48113120','PAPEL/CARTAO BRANQIMPREGNPLASTICO,P>150G/M2,ROLOS/'),(4698,'48113111','PAPEL/CARTAO BRANQREVESTSILICONE,P>150G/M2,ROLOS/F'),(4699,'48113112','PAPEL BRANQREVPOLIETILENO ESTRATALUMP>150G/M2,IMPR'),(4700,'48113119','PAPEL/CARTAO BRANQREVOUTPLASTICO,P>150G/M2,ROLOS/F'),(4701,'48113911','OUTSPAPEIS REVPOLIETILENO,ETCP/PAPEL FOTO,ROLOS/FL'),(4702,'48113920','OUTROS PAPEIS/CARTOES IMPREGNSDE PLASTICO,EM ROLOS'),(4703,'48113912','OUTSPAPEIS/CARTOES,REVESTDE SILICONE,EM ROLOS/FOLH'),(4704,'48113913','OUTSPAPEIS/CARTOES,REVPOLIETILENO,ESTRATALUMINIMPR'),(4705,'48113919','PAPEL/CARTAO REVESTDE OUTROS PLASTICOS,EM ROLOS/FO'),(4706,'48114000','PAPEL/CARTAO REVEST/IMPREGNCERA,PARAFINA,ETCROLOS/'),(4707,'48119000','OUTROS PAPEIS/CARTOES/PASTA E MANTAS DE FIBRAS CEL'),(4708,'48120000','BLOCOS E CHAPAS,FILTRANTES,DE PASTA DE PAPEL'),(4709,'48131000','PAPEL PARA CIGARROS,EM CADERNOS OU EM TUBOS'),(4710,'48132000','PAPEL PARA CIGARROS,EM ROLOS DE LARGURA<=5CM'),(4711,'48139000','OUTROS PAPEIS PARA CIGARROS'),(4712,'48141000','PAPEL DENOMINADO \"INGRAIN\"'),(4713,'48142000','PAPEL DE PAREDE,REVESTDE PLASTICO GRANIDA,ETCDECOR'),(4714,'48143000','PAPEL DE PAREDE,REVESTDE MATERIAS P/ENTRANCAR'),(4715,'48149000','OUTSPAPEIS DE PAREDE/REVESTIMPAREDES,PAPEL P/VITRA'),(4716,'48150000','REVESTIMENTOS P/PAVIMENTOS,C/SUPORTE DE PAPEL/DE C'),(4717,'48161000','PAPEL-CARBONO E SEMELHSMESMO EM CAIXAS'),(4718,'48162000','PAPEL AUTOCOPIATIVO,MESMO EM CAIXAS'),(4719,'48163000','ESTENCEIS COMPLETOS'),(4720,'48169000','OUTSPAPEIS P/COPIA/DUPLICACAO E CHAPAS OFSETE,DE P'),(4721,'48171000','ENVELOPES DE PAPEL OU CARTAO'),(4722,'48172000','AEROGRAMAS,BILHETES-POSTAIS N/ILUSTRCARTOES P/CORR'),(4723,'48173000','CAIXAS,ETCDE PAPEL/CARTAO,CONTSORTIDO ARTIGP/CORRE'),(4724,'48181000','PAPEL HIGIENICO'),(4725,'48182000','LENCOS E TOALHAS DE MAO,DE PAPEL'),(4726,'48183000','TOALHAS E GUARDANAPOS,DE PAPEL,DE MESA'),(4727,'48184020','TAMPOES HIGIENICOS,DE PAPEL'),(4728,'48184010','FRALDAS DE PAPEL'),(4729,'48184090','ABSORVENTES E OUTROS ARTIGOS HIGIENICOS,DE PAPEL'),(4730,'48185000','VESTUARIO E SEUS ACESSORIOS,DE PAPEL'),(4731,'48189000','OUTSARTIGOS DE PAPEL,P/USO SANITARIO/DOMESTICO/HOS'),(4732,'48191000','CAIXAS DE PAPEL OU CARTAO,ONDULADOS (CANELADOS)'),(4733,'48192000','CAIXAS E CARTONAGENS,DOBRAVEIS,DE PAPEL/CARTAO,N/O'),(4734,'48193000','SACOS DE PAPEL OU CARTAO,CUJA LARGURA DA BASE>=40C'),(4735,'48194000','OUTROS SACOS,BOLSAS E CARTUCHOS,DE PAPEL OU CARTAO'),(4736,'48195000','OUTSEMBALAGENS DE PAPEL OU CARTAO,INCLCAPAS P/DISC'),(4737,'48196000','CARTONAGENS P/ESCRITORIOS,LOJAS E ESTABELECIMSEMEL'),(4738,'48201000','LIVROS DE REGISTRO,DE CONTABILIDADE,BLOCOS DE NOTA'),(4739,'48202000','CADERNOS'),(4740,'48203000','CLASSIFICADORES,CAPAS P/ENCADERNACAO,DE PAPEL OU C'),(4741,'48204000','FORMULARIOS EM BLOCOS \"MANIFOLD\",MESMO C/PAPEL-CAR'),(4742,'48205000','ALBUNS PARA AMOSTRAS OU COLECOES,DE PAPEL OU CARTA'),(4743,'48209000','OUTSARTIGOS DE PAPEL/CARTAO,P/ESCRITORIO/PAPELARIA'),(4744,'48211000','ETIQUETAS DE PAPEL OU CARTAO,IMPRESSAS'),(4745,'48219000','OUTRAS ETIQUETAS DE PAPEL OU CARTAO'),(4746,'48221000','CARRETEIS,BOBINAS,ETCDE PAPEL/CARTAO,P/FIOS TEXTEI'),(4747,'48229000','CARRETEIS,BOBINAS,ETCDE PAPEL/CARTAO,P/OUTROS USOS'),(4748,'48231100','PAPEL AUTO-ADESIVO,EM TIRAS OU EM ROLOS'),(4749,'48231900','OUTROS PAPEIS GOMADOS OU ADESIVOS,EM TIRAS OU EM R'),(4750,'48232000','PAPEL-FILTRO E CARTAO-FILTRO'),(4751,'48234000','PAPEL-DIAGRAMA P/APARSREGISTRADORES,EM BOBINAS/FLS'),(4752,'48235100','PAPEL/CARTAO P/ESCRITA,ETCIMPRESSOS/ESTAMPADOS/PER'),(4753,'48235900','OUTROS PAPEIS/CARTOES P/ESCRITA/IMPRESSAO/FINS GRA'),(4754,'48236000','BANDEJAS,TRAVESSAS,PRATOS,XICARAS,ETCDE PAPEL/CART'),(4755,'48237000','ARTIGOS MOLDADOS OU PRENSADOS,DE PASTA DE PAPEL'),(4756,'48239020','PAPEL E CARTAO,DE RIGIDEZ DIELETRICA>=600V,P<=60G/'),(4757,'48239090','OUTROS PAPEIS/CARTOES/PASTAS/ETCCORTADOS E SUAS OB'),(4758,'48239010','CARTOES PERFURADOS PARA MECANISMOS \"JACQUARD\"'),(4759,'49011000','LIVROS,BROCHURAS,IMPRESSOS SEMELHANTES,EM FOLHAS S'),(4760,'49019100','DICIONARIOS E ENCICLOPEDIAS,MESMO EM FASCICULOS'),(4761,'49019900','OUTROS LIVROS,BROCHURAS E IMPRESSOS SEMELHANTES'),(4762,'49021000','JORNAIS E PUBLICACOES,IMPRESSOS,PERIODO>=4 VEZES/S'),(4763,'49029000','OUTROS JORNAIS E PUBLICACOES PERIODICAS,IMPRESSOS'),(4764,'49030000','ALBUNS OU LIVROS DE ILUSTRACOES,ETCPARA CRIANCAS'),(4765,'49040000','MUSICA MANUSCRITA OU IMPRESSA,ILUSTRADA OU NAO'),(4766,'49051000','GLOBOS (OBRA CARTOGRAFICA,IMPRESSA)'),(4767,'49059100','OBRAS CARTOGRAFICAS,IMPRESSAS EM LIVROS OU BROCHUR'),(4768,'49059900','OUTRAS OBRAS CARTOGRAFICAS,IMPRESSAS'),(4769,'49060000','PLANOS,PLANTAS,DESENHOS,DE ARQUITETURA,ETCFEITOS A'),(4770,'49070020','CHEQUES DE VIAGEM'),(4771,'49070030','TITULOS DE ACOES,OBRIGACOES,ETCCONVALIDADOS/ASSINA'),(4772,'49070010','PAPEL-MOEDA'),(4773,'49070090','SELOS POSTAIS,FISCAIS,ETCN/OBLITERADOS,C/CURSO LEG'),(4774,'49081000','DECALCOMANIAS VITRIFICAVEIS'),(4775,'49089000','OUTRAS DECALCOMANIAS DE QQESPECIE'),(4776,'49090000','CARTOES-POSTAIS IMPRESSOS OU ILUSTRADOS,ETC'),(4777,'49100000','CALENDARIOS IMPRESSOS,INCLBLOCOS-CALENDARIOS P/DES'),(4778,'49111010','IMPRESSOS PUBLICIT/CATALOGOS COMALS(MANUAIS TECNIC'),(4779,'49111090','OUTROS IMPRESSOS PUBLICITARIOS/CATALOGOS COMERCIAI'),(4780,'49119100','ESTAMPAS,GRAVURAS E FOTOGRAFIAS'),(4781,'49119900','OUTROS IMPRESSOS'),(4782,'50010000','CASULOS DE BICHO-DA-SEDA,PROPRIOS PARA DOBAR'),(4783,'50020000','SEDA CRUA (NAO FIADA)'),(4784,'50031000','DESPERDICIOS DE SEDA,NAO CARDADOS,NEM PENTEADOS'),(4785,'50039000','OUTROS DESPERDICIOS DE SEDA'),(4786,'50040000','FIOS DE SEDA'),(4787,'50050000','FIOS DE DESPERDICIOS DE SEDA'),(4788,'50060000','FIOS DE SEDA/SEUS DESPERDS,PELO MESSINA,P/VDARETAL'),(4789,'50071010','TECIDOS DE \"BOURRETTE\" DE SEDA,ESTAMPADOS,TINTOS,E'),(4790,'50071090','OUTROS TECIDOS DE \"BOURRETTE\" DE SEDA'),(4791,'50072010','TECIDOS DE SEDA/DESPERDS(CONTEUDO>=85%),ESTAMPADOS'),(4792,'50072090','OUTROS TECIDOS DE SEDA/DESPERDSDE SEDA (CONTEUDO>='),(4793,'50079000','OUTROS TECIDOS DE SEDA OU DE DESPERDICIOS DE SEDA'),(4794,'51011110','LA DE TOSQUIA,SUJA,N/CARDADA,ETC2205<=F<=326MICRON'),(4795,'51011190','OUTRAS LAS DE TOSQUIA,SUJAS,NAO CARDADAS NEM PENTE'),(4796,'51011900','OUTRAS LAS SUJAS,NAO CARDADAS NEM PENTEADAS'),(4797,'51012100','LA DE TOSQUIA,DESENGORDN/CARBONIZN/CARDADA,N/PENTE'),(4798,'51012900','OUTRAS LAS DESENGORDN/CARBONIZN/CARDADAS,N/PENTEAD'),(4799,'51013000','LA DESENGORDURADA,CARBONIZADA,NAO CARDADA NEM PENT'),(4800,'51021000','PELOS FINOS,NAO CARDADOS NEM PENTEADOS'),(4801,'51022000','PELOS GROSSEIROS,NAO CARDADOS NEM PENTEADOS'),(4802,'51031000','DESPERDICIOS DA PENTEACAO DE LA OU DE PELOS FINOS'),(4803,'51032000','OUTROS DESPERDICIOS DE LA OU DE PELOS FINOS'),(4804,'51033000','DESPERDICIOS DE PELOS GROSSEIROS'),(4805,'51040000','FIAPOS DE LA OU DE PELOS FINOS OU GROSSEIROS'),(4806,'51051000','LA CARDADA'),(4807,'51052100','LA PENTEADA A GRANEL'),(4808,'51052910','TOPS DE LA PENTEADA'),(4809,'51052991','OUTRAS LAS PENTEADAS,DE FINURA<225 MICROMETROS'),(4810,'51052999','OUTRAS LAS PENTEADAS'),(4811,'51053000','PELOS FINOS,CARDADOS OU PENTEADOS'),(4812,'51054000','PELOS GROSSEIROS,CARDADOS OU PENTEADOS'),(4813,'51061000','FIOS DE LA CARDADA (CONTEUDO>=85%)'),(4814,'51062000','FIOS DE LA CARDADA (CONTEUDO<85%)'),(4815,'51071090','OUTROS FIOS DE LA PENTEADA (CONTEUDO>=85%)'),(4816,'51071011','FIOS DE LA PENTEADA(>=85%),RETORCID2 CABOS,T<=1845'),(4817,'51071019','OUTROS FIOS DE LA PENTEADA (CONTEUDO>=85%),RETORCI'),(4818,'51072000','FIOS DE LA PENTEADA (CONTEUDO<85%)'),(4819,'51081000','FIOS DE PELOS FINOS,CARDADOS'),(4820,'51082000','FIOS DE PELOS FINOS,PENTEADOS'),(4821,'51091000','FIOS DE LA/PELOS FINOS(PESO>=85%LA/PELOS),P/VDARET'),(4822,'51099000','FIOS DE LA/PELOS FINOS(PESO< 85%LA/PELOS),P/VDARET'),(4823,'51100000','FIOS DE PELOS GROSSEIROS OU DE CRINA'),(4824,'51111110','TECIDOS DE LA CARDADA (CONTEUDO>=85%),PESO<=300G/M'),(4825,'51111120','TECIDOS DE PELOS FINOS (CONTEUDO>=85%),PESO<=300G/'),(4826,'51111900','OUTSTECIDOS DE LA/PELOS FINOS,CARDADOS (CONTEUDO>='),(4827,'51112000','TECIDO DE LA/PELOS FINOS,CARDADOS,COM FILAMSINT/AR'),(4828,'51113010','TECIDO DE LA,CARDFELTRADC/FIBRA SINTETCP/BOLA TENI'),(4829,'51113090','OUTSTECIDOS DE LA/PELOS FINOS,CARDC/FIBRA SINT/ART'),(4830,'51119000','OUTROS TECIDOS DE LA OU DE PELOS FINOS,CARDADOS'),(4831,'51121100','TECIDO DE LA/PELOS FINOS,PENTEAD(CONT>=85%),P<=200'),(4832,'51121910','OUTROS TECIDOS DE LA PENTEADA (CONTEUDO>=85%)'),(4833,'51121920','OUTROS TECIDOS DE PELOS FINOS (CONTEUDO>=85%)'),(4834,'51122010','TECIDO DE LA PENTEADA,COM FILAMENTOS SINTETICOS/AR'),(4835,'51122020','TECIDO DE PELOS FINOS PENTEADOS COM FILAMSINTET/AR'),(4836,'51123010','TECIDO DE LA PENTEADA,COM FIBRAS SINTET/ARTIFDESCO'),(4837,'51123020','TECIDO DE PELOS FINOS,COM FIBRAS SINTET/ARTIFDESCO'),(4838,'51129000','OUTROS TECIDOS DE LA OU DE PELOS FINOS,PENTEADOS'),(4839,'51130011','TECIDOS DE PELOS GROSSEIROS (CONTEUDO>=85%)'),(4840,'51130012','TECIDOS DE PELOS GROSSEIROS (CONTEUDO<85%),COM ALG'),(4841,'51130013','TECIDOS DE PELOS GROSSEIROS (CONTEUDO<85%),SEM ALG'),(4842,'51130020','TECIDOS DE CRINA'),(4843,'52010010','ALGODAO NAO DEBULHADO,NAO CARDADO NEM PENTEADO'),(4844,'52010020','ALGODAO SIMPLESMENTE DEBULHADO,NAO CARDADO NEM PEN'),(4845,'52010090','OUTROS TIPOS DE ALGODAO NAO CARDADO NEM PENTEADO'),(4846,'52021000','DESPERDICIOS DE FIOS DE ALGODAO'),(4847,'52029100','FIAPOS DE ALGODAO'),(4848,'52029900','OUTROS DESPERDICIOS DE ALGODAO'),(4849,'52030000','ALGODAO CARDADO OU PENTEADO'),(4850,'52041111','LINHA P/COSTURA,DE ALGODAO CRU>=85%,TIT<=5000D,CAB'),(4851,'52041112','LINHA P/COSTURA,DE ALGODAO CRU>=85%,TIT<=5000D,CAB'),(4852,'52041120','LINHA P/COSTURA,DE ALGODAO CRU>=85%,TIT>5000DECITE'),(4853,'52041131','LINHA P/COSTURA,ALGODAO>=85%,BRANQ/COR,T<=5000D,CA'),(4854,'52041132','LINHA P/COSTURA,ALGODAO>=85%,BRANQ/COR,T<=5000D,CA'),(4855,'52041140','LINHA P/COSTURA,DE ALGODAO>=85%,BRANQUEADO/COR,T>5'),(4856,'52041911','OUTRAS LINHAS P/COSTURA,ALGODAO CRU,TIT<=5000DECCA'),(4857,'52041912','OUTSLINHAS P/COSTURA,ALGODAO CRU,TIT<=5000DECCABO>'),(4858,'52041920','OUTRAS LINHAS P/COSTURA,ALGODAO CRU,TIT>5000DECITE'),(4859,'52041931','OUTSLINHAS P/COSTURA,ALGODAO BRANQ/COR,T<=5000D,CA'),(4860,'52041932','OUTSLINHAS P/COSTURA,ALGODBRANQ/COR,T<=5000D,CABO>'),(4861,'52041940','OUTSLINHAS P/COSTURA,DE ALGODAO BRANQUEADO/COR,T>5'),(4862,'52042000','OUTRAS LINHAS P/COSTURA,DE ALGODAO,PARA VENDA A RE'),(4863,'52051100','FIO ALGODAO>=85%,SIMPLES,FIBRA N/PENTTIT>=71429D'),(4864,'52051200','FIO ALGODAO>=85%,SIMPLES,FIBRA N/PENT23256<=T<7142'),(4865,'52051310','FIO ALGODAO>=85%,CRU,SIMPLFIBRA N/PENT1923<=T<2325'),(4866,'52051390','OUTSFIOS ALGOD>=85%,SIMPLFIBRA N/PENT1923<=T<2325D'),(4867,'52051400','FIO ALGODAO>=85%,SIMPLES,FIBRA N/PENT125D<=TIT<192'),(4868,'52051500','FIO ALGODAO>=85%,SIMPLES,FIBRA N/PENTTITULO<125DEC'),(4869,'52052100','FIO ALGODAO>=85%,SIMPLES,FIBRA PENTTITULO>=71429DE'),(4870,'52052200','FIO ALGODAO>=85%,SIMPLES,FIBRA PENT23256D<=T<71429'),(4871,'52052310','FIO ALGODAO>=85%,CRU,SIMPLFIBRA PENT1923D<=T<23256'),(4872,'52052390','OUTSFIOS ALGOD>=85%,SIMPLFIBRA PENT1923D<=T<23256D'),(4873,'52052400','FIO ALGODAO>=85%,SIMPLES,FIBRA PENT125D<=TIT<19231'),(4874,'52052700','FIO ALGODAO>=85%,SIMPLES,FIBRA PENT8333D<=TIT<1063'),(4875,'52052600','FIO ALGODAO>=85%,SIMPLES,FIBRA PENT10638D<=TIT<125'),(4876,'52052800','FIO ALGODAO>=85%,SIMPLES,FIBRA PENTTITULO<8333DECI'),(4877,'52053100','FIO ALGODAO>=85%,RETORCFIBRA N/PENTTITULO>=71429DE'),(4878,'52053200','FIO ALGODAO>=85%,RETORCFIBRA N/PENT23256D<=T<71429'),(4879,'52053300','FIO ALGODAO>=85%,RETORCFIBRA N/PENT19231D<=T<23256'),(4880,'52053400','FIO ALGODAO>=85%,RETORCFIBRA N/PENT125D<=TIT<19231'),(4881,'52053500','FIO ALGODAO>=85%,RETORCFIBRA N/PENTTITULO<125DECIT'),(4882,'52054100','FIO ALGODAO>=85%,RETORCFIBRA PENTTITULO>=71429DECI'),(4883,'52054200','FIO ALGODAO>=85%,RETORCFIBRA PENT23256D<=TIT<71429'),(4884,'52054300','FIO ALGODAO>=85%,RETORCFIBRA PENT19231D<=TIT<23256'),(4885,'52054400','FIO ALGODAO>=85%,RETORCFIBRA PENT125D<=TITULO<1923'),(4886,'52054600','FIO ALGODAO>=85%,RETORCFIBRA PENT10638D<=TITULO<12'),(4887,'52054700','FIO ALGODAO>=85%,RETORCFIBRA PENT8333D<=TIT<10638D'),(4888,'52054800','FIO ALGODAO>=85%,RETORCFIBRA PENTTITULO<8333DECITE'),(4889,'52061100','FIO ALGODAO<85%,SIMPLES,FIBRA N/PENTTITULO>=71429D'),(4890,'52061200','FIO ALGODAO<85%,SIMPLES,FIBRA N/PENT23256D<=T<7142'),(4891,'52061300','FIO ALGODAO<85%,SIMPLES,FIBRA N/PENT19231D<=T<2325'),(4892,'52061400','FIO ALGODAO<85%,SIMPLES,FIBRA N/PENT125D<=TIT<1923'),(4893,'52061500','FIO ALGODAO<85%,SIMPLES,FIBRA N/PENTTITULO<125DECI'),(4894,'52062100','FIO ALGODAO<85%,SIMPLES,FIBRA PENTTITULO>=71429DEC'),(4895,'52062200','FIO ALGODAO<85%,SIMPLES,FIBRA PENT23256D<=TIT<7142'),(4896,'52062300','FIO ALGODAO<85%,SIMPLES,FIBRA PENT19231D<=TIT<2325'),(4897,'52062400','FIO ALGODAO<85%,SIMPLES,FIBRA PENT125D<=TITULO<192'),(4898,'52062500','FIO ALGODAO<85%,SIMPLES,FIBRA PENTTITULO<125DECITE'),(4899,'52063100','FIO ALGODAO<85%,RETORCFIBRA N/PENTTITULO>=71429DEC'),(4900,'52063200','FIO ALGODAO<85%,RETORCFIBRA N/PENT23256D<=T<71429D'),(4901,'52063300','FIO ALGODAO<85%,RETORCFIBRA N/PENT19231D<=T<23256D'),(4902,'52063400','FIO ALGODAO<85%,RETORCFIBRA N/PENT125D<=TIT<19231D'),(4903,'52063500','FIO ALGODAO<85%,RETORCFIBRA N/PENTTITULO<125DECITE'),(4904,'52064100','FIO ALGODAO<85%,RETORCFIBRA PENTTITULO>=71429DECIT'),(4905,'52064200','FIO ALGODAO<85%,RETORCFIBRA PENT23256D<=TIT<71429D'),(4906,'52064300','FIO ALGODAO<85%,RETORCFIBRA PENT19231D<=TIT<23256D'),(4907,'52064400','FIO ALGODAO<85%,RETORCFIBRA PENT125D<=TITULO<19231'),(4908,'52064500','FIO ALGODAO<85%,RETORCFIBRA PENTTITULO<125DECITEX'),(4909,'52071000','FIO ALGODAO>=85%,PARA VENDA A RETALHO'),(4910,'52079000','OUTROS FIOS DE ALGODAO,PARA VENDA A RETALHO'),(4911,'52081100','TECIDO DE ALGODAO>=85%,CRU,PONTO TAFETA,P<=100G/M2'),(4912,'52081200','TECIDO DE ALGODAO>=85%,CRU,PONTO TAFETA,100<P<=200'),(4913,'52081300','TECIDO DE ALGODAO>=85%,CRU,PONTO SARJADO,P<=200G/M'),(4914,'52081900','OUTROS TECIDOS DE ALGODAO>=85%,CRU,PESO<=200G/M2'),(4915,'52082100','TECIDO DE ALGODAO>=85%,BRANQPTOTAFETA,P<=100G/M2'),(4916,'52082200','TECIDO DE ALGODAO>=85%,BRANQPTOTAFETA,100<P<=200G/'),(4917,'52082300','TECIDO DE ALGODAO>=85%,BRANQPTOSARJADO,P<=200G/M2'),(4918,'52082900','OUTROS TECIDOS DE ALGODAO>=85%,BRANQUEADO,P<=200G/'),(4919,'52083100','TECIDO DE ALGODAO>=85%,TINTO,PTOTAFETA,P<=100G/M2'),(4920,'52083200','TECIDO DE ALGODAO>=85%,TINTO,PTOTAFETA,100<P<=200G'),(4921,'52083300','TECIDO DE ALGODAO>=85%,TINTO,PTOSARJADO,P<=200G/M2'),(4922,'52083900','OUTROS TECIDOS DE ALGODAO>=85%,TINTO,P<=200G/M2'),(4923,'52084100','TECIDO DE ALGODAO>=85%,FIO COLORPTOTAFETA,P<=100G/'),(4924,'52084200','TECIDO ALGODAO>=85%,FIO COLORPTOTAFETA,100<P<=200G'),(4925,'52084300','TECIDO DE ALGODAO>=85%,FIO COLORPTOSARJADO,P<=200G'),(4926,'52084900','OUTROS TECIDOS DE ALGODAO>=85%,FIO COLORPESO<=200G'),(4927,'52085100','TECIDO DE ALGODAO>=85%,ESTAMPADO,PTOTAFETA,P<=100G'),(4928,'52085200','TECIDO ALGODAO>=85%,ESTAMPADO,PTOTAFETA,100<P<=200'),(4929,'52085300','TECIDO DE ALGODAO>=85%,ESTAMPADO,PTOSARJADO,P<=200'),(4930,'52085900','OUTROS TECIDOS DE ALGODAO>=85%,ESTAMPADO,PESO<=200'),(4931,'52091100','TECIDO DE ALGODAO>=85%,CRU,PONTO DE TAFETA,PESO>20'),(4932,'52091200','TECIDO DE ALGODAO>=85%,CRU,PONTO SARJADO,PESO>200G'),(4933,'52091900','OUTROS TECIDOS DE ALGODAO>=85%,CRU,PESO>200G/M2'),(4934,'52092100','TECIDO DE ALGODAO>=85%,BRANQUEADO,PTOTAFETA,P>200G'),(4935,'52092200','TECIDO DE ALGODAO>=85%,BRANQUEADO,PTOSARJADO,P>200'),(4936,'52092900','OUTROS TECIDOS DE ALGODAO>=85%,BRANQUEADO,PESO>200'),(4937,'52093100','TECIDO DE ALGODAO>=85%,TINTO,PONTO DE TAFETA,P>200'),(4938,'52093200','TECIDO DE ALGODAO>=85%,TINTO,PONTO SARJADO,PESO>20'),(4939,'52093900','OUTROS TECIDOS DE ALGODAO>=85%,TINTO,PESO>200G/M2'),(4940,'52094100','TECIDO DE ALGODAO>=85%,FIO COLORPONTO TAFETA,P>200'),(4941,'52094210','TECIDO DE ALGODAO>=85%,FIO COLORDENIM,INDIGO,P>200'),(4942,'52094290','OUTSTECIDOS DE ALGODAO>=85%,FIO COLORDENIN,P>200G/'),(4943,'52094300','TECIDO DE ALGODAO>=85%,FIO COLORPTOSARJADO,P>200G/'),(4944,'52094900','OUTROS TECIDOS DE ALGODAO>=85%,FIO COLORPESO>200G/'),(4945,'52095100','TECIDO DE ALGODAO>=85%,ESTAMPADO,PTOTAFETA,P>200G/'),(4946,'52095200','TECIDO DE ALGODAO>=85%,ESTAMPADO,PTOSARJADO,P>200G'),(4947,'52095900','OUTROS TECIDOS DE ALGODAO>=85%,ESTAMPADO,PESO>200G'),(4948,'52101100','TECIDO ALGODAO<85%,CRU/FIBRA SINT/ARTTAFETA,P<=200'),(4949,'52101200','TECIDO ALGODAO<85%,CRU/FIBRA SINT/ARTSARJADP<=200G'),(4950,'52101900','OUTSTECIDOS ALGODAO<85%,CRU/FIBRA SINT/ARTP<=200G/'),(4951,'52102100','TECIDO ALGOD<85%,BRANQ/FIBRA SINT/ARTTAFETA,P<=200'),(4952,'52102200','TECIDO ALGOD<85%,BRANQ/FIBRA SINT/ARTSARJADP<=200G'),(4953,'52102900','OUTSTECIDOS ALGOD<85%,BRANQ/FIBRA SINT/ARTP<=200G/'),(4954,'52103100','TECIDO ALGOD<85%,TINTO/FIBRA SINT/ARTTAFETA,P<=200'),(4955,'52103200','TECIDO ALGOD<85%,TINTO/FIBRA SINT/ARTSARJADP<=200G'),(4956,'52103900','OUTSTECIDOS ALGOD<85%,TINTO/FIBRA SINT/ARTP<=200G/'),(4957,'52104100','TECIDO ALGOD<85%,COLOR/FIBRA SINT/ARTTAFETA,P<=200'),(4958,'52104200','TECIDO ALGOD<85%,COLOR/FIBRA SINT/ARTSARJADP<=200G'),(4959,'52104900','OUTSTECIDOS ALGOD<85%,COLOR/FIBRA SINT/ARTP<=200G/'),(4960,'52105100','TECIDO ALGOD<85%,ESTAMP/FIBRSINT/ARTTAFETA,P<=200G'),(4961,'52105200','TECIDO ALGOD<85%,ESTAMP/FIBRSINT/ARTSARJADP<=200G/'),(4962,'52105900','OUTSTECIDOS ALGOD<85%,ESTAMP/FIBRA SINT/ARTP<=200G'),(4963,'52111100','TECIDO ALGODAO<85%,CRU/FIBRA SINT/ARTTAFETA,P>200G'),(4964,'52111200','TECIDO ALGODAO<85%,CRU/FIBRA SINT/ARTSARJADO,P>200'),(4965,'52111900','OUTROS TECIDOS ALGODAO<85%,CRU/FIBRA SINT/ARTP>200'),(4966,'52112100','TECIDO ALGODAO<85%,BRANQ/FIBRSINT/ARTTAFETA,P>200G'),(4967,'52112200','TECIDO ALGODAO<85%,BRANQ/FIBRSINT/ARTSARJADP>200G/'),(4968,'52112900','OUTSTECIDOS ALGODAO<85%,BRANQ/FIBRA SINT/ARTP>200G'),(4969,'52113100','TECIDO ALGODAO<85%,TINTO/FIBRSINT/ARTTAFETA,P>200G'),(4970,'52113200','TECIDO ALGODAO<85%,TINTO/FIBRSINT/ARTSARJADP>200G/'),(4971,'52113900','OUTSTECIDOS ALGODAO<85%,TINTO/FIBRA SINT/ARTP>200G'),(4972,'52114100','TECIDO ALGODAO<85%,COLOR/FIBRSINT/ARTTAFETA,P>200G'),(4973,'52114210','TECIDO ALGODAO<85%,INDIGO BLUE/FIBRA SINT/ARTP>200'),(4974,'52114290','OUTSTECIDOS ALGODAO<85%,DENIM/FIBRA SINT/ARTP>200G'),(4975,'52114300','TECIDO ALGODAO<85%,COLOR/FIBRSINT/ARTSARJADP>200G/'),(4976,'52114900','OUTSTECIDOS ALGODAO<85%,COLOR/FIBRA SINT/ARTP>200G'),(4977,'52115100','TECIDO ALGOD<85%,ESTAMP/FIBRA SINT/ARTTAFETA,P>200'),(4978,'52115200','TECIDO ALGOD<85%,ESTAMP/FIBRA SINT/ARTSARJADP>200G'),(4979,'52115900','OUTSTECIDOS ALGODAO<85%,ESTAMP/FIBRSINT/ARTP>200G/'),(4980,'52121100','OUTROS TECIDOS DE ALGODAO,CRUS,PESO<=200G/M2'),(4981,'52121200','OUTROS TECIDOS DE ALGODAO,BRANQUEADOS,PESO<=200G/M'),(4982,'52121300','OUTROS TECIDOS DE ALGODAO,TINTOS,PESO<=200G/M2'),(4983,'52121400','OUTROS TECIDOS DE ALGODAO,FIOS DIVSCORES,PESO<=200'),(4984,'52121500','OUTROS TECIDOS DE ALGODAO,ESTAMPADOS,PESO<=200G/M2'),(4985,'52122100','OUTROS TECIDOS DE ALGODAO,CRUS,PESO>200G/M2'),(4986,'52122200','OUTROS TECIDOS DE ALGODAO,BRANQUEADOS,PESO>200G/M2'),(4987,'52122300','OUTROS TECIDOS DE ALGODAO,TINTOS,PESO>200G/M2'),(4988,'52122400','OUTROS TECIDOS DE ALGODAO,FIOS DIVSCORES,PESO>200G'),(4989,'52122500','OUTROS TECIDOS DE ALGODAO,ESTAMPADOS,PESO>200G/M2'),(4990,'53011000','LINHO EM BRUTO OU MACERADO'),(4991,'53012120','LINHO ESPADELADO,MAS NAO FIADO'),(4992,'53012110','LINHO QUEBRADO'),(4993,'53012910','LINHO PENTEADO,MAS NAO FIADO'),(4994,'53012990','LINHO TRABALHADO DE OUTRA FORMA,MAS NAO FIADO'),(4995,'53013000','ESTOPAS E DESPERDICIOS DE LINHO'),(4996,'53021000','CANHAMO EM BRUTO OU MACERADO'),(4997,'53029000','CANHAMO TRABALHOUTRA FORMA,MAS N/FIADO,ESTOPAS,DES'),(4998,'53031011','JUTA EM BRUTO'),(4999,'53031012','JUTA MACERADA'),(5000,'53031090','OUTRAS FIBRAS TEXTEIS LIBERIANAS,EM BRUTO OU MACER'),(5001,'53039010','JUTA TRABALHDE OUTRO MODO,MAS N/FIADA,ESTOPAS,DESP'),(5002,'53039090','OUTSFIBRAS TEXTEIS LIBERTRABALHOUTMODO,ESTOPAS,ETC'),(5003,'53041000','SISAL/OUTRAS FIBRAS TEXTEIS \"AGAVE\",EM BRUTO'),(5004,'53049000','SISAL/OUTSFIBRAS TEXTEIS \"AGAVE\",TRABALHN/FIADOS,E'),(5005,'53051100','CAIRO (FIBRAS DE COCO) EM BRUTO'),(5006,'53051900','CAIRO (FIBRAS DE COCO) TRABALHN/FIADO,ESTOPAS,DESP'),(5007,'53052100','ABACA EM BRUTO'),(5008,'53052900','ABACA TRABALHADO,NAO FIADO,ESTOPAS E DESPERDICIOS'),(5009,'53059110','RAMI EM BRUTO'),(5010,'53059190','OUTRAS FIBRAS TEXTEIS VEGETAIS,EM BRUTO'),(5011,'53059911','RAMI PENTEADO'),(5012,'53059919','RAMI TRABALHADO DE OUTRA FORMA,ESTOPAS E DESPERDIC'),(5013,'53059990','OUTRAS FIBRAS TEXTEIS VEGETAIS TRABALHESTOPAS,DESP'),(5014,'53061000','FIOS DE LINHO,SIMPLES'),(5015,'53062000','FIOS DE LINHO,RETORCIDOS OU RETORCIDOS MULTIPLOS'),(5016,'53071090','FIOS DE OUTRAS FIBRAS TEXTEIS LIBERIANAS,SIMPLES'),(5017,'53071010','FIOS DE JUTA,SIMPLES'),(5018,'53072010','FIOS DE JUTA,RETORCIDOS OU RETORCIDOS MULTIPLOS'),(5019,'53072090','FIOS DE OUTRAS FIBRAS TEXTEIS LIBERIANAS,RETORCIDO'),(5020,'53081000','FIOS DE CAIRO (FIOS DE FIBRAS DE COCO)'),(5021,'53082000','FIOS DE CANHAMO'),(5022,'53083000','FIOS DE PAPEL'),(5023,'53089000','FIOS DE OUTRAS FIBRAS TEXTEIS VEGETAIS'),(5024,'53091100','TECIDOS DE LINHO (CONTEUDO>=85%),CRUS OU BRANQUEAD'),(5025,'53091900','OUTROS TECIDOS DE LINHO (CONTEUDO>=85%)'),(5026,'53092100','TECIDOS DE LINHO (CONTEUDO<85%),CRUS OU BRANQUEADO'),(5027,'53092900','OUTROS TECIDOS DE LINHO (CONTEUDO<85%)'),(5028,'53101090','TECIDOS DE OUTRAS FIBRAS TEXTEIS LIBERIANAS,CRUS'),(5029,'53101010','TECIDOS DE ANIAGEM DE JUTA,CRUS'),(5030,'53109000','OUTSTECIDOS DE JUTA OU OUTSFIBRAS TEXTEIS LIBERIAN'),(5031,'53110000','TECIDOS DE OUTSFIBRAS TEXTEIS VEGOU DE FIOS DE PAP'),(5032,'54011011','LINHA P/COSTURA,DE POLIESTER,EXCPARA VENDA A RETAL'),(5033,'54011012','LINHA P/COSTURA,DE POLIESTER,PARA VENDA A RETALHO'),(5034,'54011090','LINHA P/COSTURA,DE OUTROS FILAMENTOS SINTETICOS'),(5035,'54012011','LINHA P/COSTURA,RAIOM VISCOSE,ALTA TENACEXCP/RETAL'),(5036,'54012012','LINHA P/COSTURA,RAIOM VISCOSE,ALTA TENACP/VDARETAL'),(5037,'54012090','LINHA P/COSTURA,DE OUTROS FILAMENTOS ARTIFICIAIS'),(5038,'54021010','FIO DE ALTA TENACIDADE,DE NAILON (POLIAMIDA ALIFAT'),(5039,'54021020','FIO DE ALTA TENACIDADE,DE ARAMIDA (POLIAMIDA AROMA'),(5040,'54021090','FIO DE ALTA TENACIDADE,DE OUTRAS POLIAMIDAS'),(5041,'54022000','FIO DE ALTA TENACIDADE,DE POLIESTERES'),(5042,'54023111','FIO TEXTURIZADO,DE NAILON,TINTO,TITULO<=50TEX'),(5043,'54023119','OUTROS FIOS TEXTURIZADOS,DE NAILON,TITULO<=50TEX'),(5044,'54023190','FIO TEXTURIZADO,DE OUTSPOLIAMIDAS,TINTO,TITULO<=50'),(5045,'54023219','OUTROS FIOS TEXTURIZADOS,DE NAILON,TITULO>50TEX'),(5046,'54023290','FIO TEXTURIZADO DE OUTRAS POLIAMIDAS,TITULO>50TEX'),(5047,'54023211','MULTIFILAMENTO DE NAILON,EFEITO ANTIESTPERMANTIT>1'),(5048,'54023300','FIO TEXTURIZADO DE POLIESTERES'),(5049,'54023910','MULTIFILAMENTO DE POLIPROPILENO,TITULO>110TEX'),(5050,'54023990','FIO TEXTURIZADO DE OUTROS FILAMENTOS SINTETICOS'),(5051,'54024110','FIO DE NAILON,SIMPLES,TORCAO<=50VOLTAS/METRO'),(5052,'54024120','FIO DE ARAMIDA,SIMPLES,TORCAO<=50VOLTAS/METRO'),(5053,'54024190','FIO DE OUTRAS POLIAMIDAS,SIMPLES,TORCAO<=50VOLTAS/'),(5054,'54024200','FIO DE POLIESTERES,SIMPLES,PARCIALMORIENTTORC<=50V'),(5055,'54024300','FIO DE OUTSPOLIESTERES,SIMPLES,TORCAO<=50VOLTAS/ME'),(5056,'54024910','FIO ELASTOMERICO,DE OUTSFILAMSINTSIMPLES,TORC<=50V'),(5057,'54024990','FIO DE OUTROS FILAMSINTSIMPLES,TORCAO<=50VOLTAS/ME'),(5058,'54025110','FIO DE ARAMIDA,SIMPLES,TORCAO>50VOLTAS/METRO'),(5059,'54025190','FIO DE NAILON/OUTSPOLIAMIDAS,SIMPLES,TORCAO>50VOLT'),(5060,'54025200','FIO DE POLIESTERES,SIMPLES,TORCAO>50VOLTAS/METRO'),(5061,'54025900','FIO DE OUTSFILAMENTOS SINTETSIMPLES,TORCAO>50VOLTA'),(5062,'54026190','FIO DE NAILON/OUTSPOLIAMIDAS,RETORCIDO/RETORCMULTI'),(5063,'54026110','FIO DE ARAMIDA,RETORCIDO OU RETORCIDO MULTIPLO'),(5064,'54026200','FIO DE POLIESTERES,RETORCIDO OU RETORCIDO MULTIPLO'),(5065,'54026900','FIO DE OUTSFILAMENTOS SINTETRETORCIDO/RETORCMULTIP'),(5066,'54031000','FIO DE ALTA TENACIDADE,DE RAIOM VISCOSE'),(5067,'54032010','FIO TEXTURIZADO,DE ACETATO DE CELULOSE'),(5068,'54032090','FIO TEXTURIZADO,DE OUTROS FILAMENTOS ARTIFICIAIS'),(5069,'54033100','FIO DE RAIOM VISCOSE,SIMPLES,TORCAO<=120VOLTAS/MET'),(5070,'54033200','FIO DE RAIOM VISCOSE,SIMPLES,TORCAO>120VOLTAS/METR'),(5071,'54033300','FIO DE ACETATO DE CELULOSE,SIMPLES'),(5072,'54033900','FIO DE OUTROS FILAMENTOS ARTIFICIAIS,SIMPLES'),(5073,'54034100','FIO DE RAIOM VISCOSE,RETORCIDO OU RETORCIDO MULTIP'),(5074,'54034200','FIO DE ACETATO DE CELULOSE,RETORCIDO OU RETORCMULT'),(5075,'54034900','FIO DE OUTSFILAMENTOS ARTIFRETORCIDOS/RETORCMULTIP'),(5076,'54041011','IMITACOES DE CATEGUTE,REABSORVDE MONOFILAMSINTT>=6'),(5077,'54041019','OUTSIMITACOES DE CATEGUTE,DE MONOFILAMSINTT>=67DEC'),(5078,'54041090','OUTSMONOFILAMENTOS SINTETT>=67DECITEX,SECTRANSV<=1'),(5079,'54049000','LAMINAS DE MATERIAS TEXTEIS SINTETICAS,LARGURA<=5M'),(5080,'54050000','MONOFILAMENTOS ARTIFST>=67DECITEX,SECTRANSV<=1MM,E'),(5081,'54061000','FIOS DE FILAMENTOS SINTETICOS,PARA VENDA A RETALHO'),(5082,'33062000','FIOS UTILIZP/LIMPAR ESPACOS INTERDENTAIS (FIO DENT'),(5083,'54062000','FIOS DE FILAMENTOS ARTIFICIAIS,PARA VENDA A RETALH'),(5084,'54071011','TECIDO DE FIOS ALTA TENACDE ARAMIDA,S/FIO BORRACHA'),(5085,'54071019','TECIDO DE FIOS ALTA TENACDE NAILON,ETCS/FIO BORRAC'),(5086,'54071029','TECIDO DE FIOS ALTA TENACDE NAILON,ETCC/FIO BORRAC'),(5087,'54071021','TECIDO DE FIOS ALTA TENACDE ARAMIDA,C/FIO BORRACHA'),(5088,'54072000','TECIDO OBTIDO A PARTIR DE LAMINAS SINTETICAS,ETC'),(5089,'54073000','TECIDOS MANTAS DE FIOS DE FILAMENTO SINTETICO'),(5090,'54074100','TECIDO DE FILAMDE NAILON,OUTPOLIAMIDA>=85%,CRUS/BR'),(5091,'54074200','TECIDO DE FILAMDE NAILON,OUTRA POLIAMIDA>=85%,TINT'),(5092,'54074300','TECIDO DE FILAMDE NAILON,OUTPOLIAMIDA>=85%,DIVSCOR'),(5093,'54074400','TECIDO DE FILAMDE NAILON,OUTPOLIAMIDA>=85%,ESTAMPA'),(5094,'54075100','TECIDO DE FILAMPOLIESTER TEXTUR>=85%,CRUS/BRANQUEA'),(5095,'54075210','TECIDO DE FILAMPOLIESTER TEXTUR>=85%,TINTOS,S/BORR'),(5096,'54075220','TECIDO DE FILAMPOLIESTER TEXTUR>=85%,TINTOS,C/BORR'),(5097,'54075300','TECIDO DE FILAMPOLIESTER TEXTUR>=85%,FIOS DIVSCORE'),(5098,'54075400','TECIDO DE FILAMPOLIESTER TEXTUR>=85%,ESTAMPADOS'),(5099,'54076100','TECIDO DE FILAMDE POLIESTER NAO TEXTURIZADO>=85%'),(5100,'54077100','TECIDO DE FILAMENTOS SINTETICOS>=85%,CRUS/BRANQUEA'),(5101,'54076900','TECIDO DE OUTROS FILAMENTOS DE POLIESTER>=85%'),(5102,'54077200','TECIDO DE FILAMENTOS SINTETICOS>=85%,TINTOS'),(5103,'54077300','TECIDO DE FILAMENTOS SINTETICOS>=85%,FIOS DIVSCORE'),(5104,'54077400','TECIDO DE FILAMENTOS SINTETICOS>=85%,ESTAMPADOS'),(5105,'54078100','TECIDO DE FILAMENTO SINTETICO<85% C/ALGODAO,CRU/BR'),(5106,'54078200','TECIDO DE FILAMENTO SINTETICO<85% C/ALGODAO,TINTO'),(5107,'54078300','TECIDO DE FILAMENTO SINTETICO<85% C/ALGODAO,DIVSCO'),(5108,'54078400','TECIDO DE FILAMENTO SINTETICO<85% C/ALGODAO,ESTAMP'),(5109,'54079100','OUTROS TECIDOS DE FILAMENTOS SINTETICOS<85%,CRUS/B'),(5110,'54079200','OUTROS TECIDOS DE FILAMENTOS SINTETICOS<85%,TINTOS'),(5111,'54079300','OUTROS TECIDOS DE FILAMENTOS SINTETICOS<85%,DIVSCO'),(5112,'54079400','OUTROS TECIDOS DE FILAMENTOS SINTETICOS<85%,ESTAMP'),(5113,'54081000','TECIDO DE FIOS DE ALTA TENACIDADE,DE RAIOM VISCOSE'),(5114,'54082100','TECIDO DE FILAMENTOS ARTIFICIAIS>=85%,CRU/BRANQUEA'),(5115,'54082200','TECIDO DE FILAMENTOS ARTIFICIAIS>=85%,TINTO'),(5116,'54082300','TECIDO DE FILAMENTOS ARTIFICIAIS>=85%,FIOS DIVSCOR'),(5117,'54082400','TECIDO DE FILAMENTOS ARTIFICIAIS>=85%,ESTAMPADO'),(5118,'54083100','OUTROS TECIDOS DE FILAMENTOS ARTIFICIAIS<85%,CRUS/'),(5119,'54083200','OUTROS TECIDOS DE FILAMENTOS ARTIFICIAIS<85%,TINTO'),(5120,'54083300','OUTROS TECIDOS DE FILAMENTOS ARTIFICIAIS<85%,DIVSC'),(5121,'54083400','OUTROS TECIDOS DE FILAMENTOS ARTIFICIAIS<85%,ESTAM'),(5122,'55011000','CABOS DE NAILON OU DE OUTRAS POLIAMIDAS'),(5123,'55012000','CABOS DE POLIESTERES'),(5124,'55013000','CABOS ACRILICOS OU MODACRILICOS'),(5125,'55019000','CABOS DE OUTROS FILAMENTOS SINTETICOS'),(5126,'55020010','CABOS DE ACETATO DE CELULOSE'),(5127,'55020090','CABOS DE OUTROS FILAMENTOS ARTIFICIAIS'),(5128,'55031091','FIBRAS BICOMPONNAILON/OUTSPOLIAMIDN/CARDN/PENTETC'),(5129,'55031010','FIBRAS DE ARAMIDA,NAO CARDADAS,NAO PENTEADAS,ETC'),(5130,'55031099','FIBRAS DE NAILON/OUTSPOLIAMIDAS,N/CARDADN/PENTEADE'),(5131,'55032000','FIBRAS DE POLIESTERES,NAO CARDADAS,NAO PENTEADAS,E'),(5132,'55033000','FIBRAS ACRILICAS OU MODACRILICAS,NAO CARDADAS,ETC'),(5133,'55034000','FIBRAS DE POLIPROPILENO,NAO CARDADAS,NAO PENTEADAS'),(5134,'55039010','OUTRAS FIBRAS BICOMPONENTSINTETDESCONTINNAO CARDET'),(5135,'55039090','OUTRAS FIBRAS SINTETICAS DESCONTINUAS,NAO CARDADAS'),(5136,'55041000','FIBRAS DE RAIOM VISCOSE,NAO CARDADAS,NAO PENTEADAS'),(5137,'55049010','FIBRA CELULOSICA,OBTEXTRUSAO C/OXIDO N-METILMORFOL'),(5138,'55049090','OUTRAS FIBRAS ARTIFICIAIS DESCONTINUAS,NAO CARDADA'),(5139,'55051000','DESPERDICIOS DE FIBRAS SINTETICAS'),(5140,'55052000','DESPERDICIOS DE FIBRAS ARTIFICIAIS'),(5141,'55061000','FIBRAS DE NAILON/OUTSPOLIAMIDAS,CARDADAS,ETCP/FIAC'),(5142,'55062000','FIBRAS DE POLIESTERES,CARDADAS,PENTEADAS,ETCP/FIAC'),(5143,'55063000','FIBRAS ACRILICAS OU MODACRILICAS,CARDADAS,ETCP/FIA'),(5144,'55069000','OUTSFIBRAS SINTETICAS,CARDADAS,PENTEADAS,ETCP/FIAC'),(5145,'55070000','FIBRAS ARTIFICIAIS,CARDADAS,PENTEADAS,ETCP/FIACAO'),(5146,'55081000','LINHA P/COSTURA,DE FIBRAS SINTETICAS'),(5147,'55082000','LINHA P/COSTURA,DE FIBRAS ARTIFICIAIS'),(5148,'55091100','FIO DE FIBRAS DE NAILON/OUTRAS POLIAMIDAS>=85%,SIM'),(5149,'55091290','FIO DE FIBRAS DE NAILON/OUTSPOLIAMIDAS>=85%,RETORC'),(5150,'55091210','FIO DE FIBRAS DE ARAMIDA>=85%,RETORCIDO/RETORCMULT'),(5151,'55092100','FIO DE FIBRAS DE POLIESTERES>=85%,SIMPLES'),(5152,'55092200','FIO DE FIBRAS DE POLIESTERES>=85%,RETORCIDO/RETORC'),(5153,'55093100','FIO DE FIBRAS ACRILICAS/MODACRILICAS>=85%,SIMPLES'),(5154,'55093200','FIO DE FIBRAS ACRILICAS/MODACRILICAS>=85%,RETORCID'),(5155,'55094100','FIO DE OUTRAS FIBRAS SINTETS>=85%,SIMPLES'),(5156,'55094200','FIO DE OUTSFIBRAS SINTETS>=85%,RETORCIDO/RETORCMUL'),(5157,'55095100','FIO DE FIBRAS DE POLIESTERES COM FIBRAS ARTIFICIAI'),(5158,'55095200','FIO DE FIBRAS DE POLIESTERES COM LA OU PELOS FINOS'),(5159,'55095300','FIO DE FIBRAS DE POLIESTERES COM ALGODAO'),(5160,'55095900','OUTROS FIOS DE FIBRAS DE POLIESTERES'),(5161,'55096100','FIO DE FIBRAS ACRILICAS/MODACRILICAS COM LA/PELOS '),(5162,'55096200','FIO DE FIBRAS ACRILICAS/MODACRILICAS COM ALGODAO'),(5163,'55096900','OUTROS FIOS DE FIBRAS ACRILICAS OU MODACRILICAS'),(5164,'55099100','FIO DE OUTRAS FIBRAS SINTETICAS COM LA OU PELOS FI'),(5165,'55099200','FIO DE OUTRAS FIBRAS SINTETICAS COM ALGODAO'),(5166,'55099900','OUTROS FIOS DE FIBRAS SINTETICAS'),(5167,'55101100','FIO DE FIBRAS ARTIFICIAIS>=85%,SIMPLES'),(5168,'55101200','FIO DE FIBRAS ARTIFICIAIS>=85%,RETORCIDO/RETORCMUL'),(5169,'55102000','FIO DE FIBRAS ARTIFICIAIS COM LA OU PELOS FINOS'),(5170,'55103000','FIO DE FIBRAS ARTIFICIAIS COM ALGODAO'),(5171,'55109000','OUTROS FIOS DE FIBRAS ARTIFICIAIS'),(5172,'55111000','FIO DE FIBRAS SINTETICAS>=85%,PARA VENDA A RETALHO'),(5173,'55112000','FIO DE FIBRAS SINTETICAS<85%,PARA VENDA A RETALHO'),(5174,'55113000','FIO DE FIBRAS ARTIFICIAIS,PARA VENDA A RETALHO'),(5175,'55121100','TECIDO DE FIBRAS DE POLIESTER>=85%,CRUS OU BRANQUE'),(5176,'55121900','TECIDO DE OUTRAS FIBRAS DE POLIESTER>=85%'),(5177,'55122100','TECIDO DE FIBRAS ACRILICAS/MODACRILICAS>=85%,CRU/B'),(5178,'55122900','TECIDO DE OUTRAS FIBRAS ACRILICAS OU MODACRILICAS>'),(5179,'55129110','TECIDO DE FIBRAS DE ARAMIDA>=85%,CRU OU BRANQUEADO'),(5180,'55129190','TECIDO DE OUTSFIBRAS SINTDESCONT>=85%,CRU/BRANQUEA'),(5181,'55129910','OUTROS TECIDOS DE FIBRAS DE ARAMIDA>=85%'),(5182,'55129990','OUTROS TECIDOS DE FIBRAS SINTETICAS DESCONTINUAS>='),(5183,'55131100','TECIDO POLIEST<85% C/ALGODP<=170G/M2,TAFETA,CRU/BR'),(5184,'55131200','TECIDO POLIEST<85% C/ALGODP<=170G/M2,SARJADO,CRU/B'),(5185,'55131300','OUTSTECIDOS POLIESTER<85% C/ALGODP<=170G/M2,CRU/BR'),(5186,'55131900','OUTSTECIDOS FIBRSINT<85% C/ALGODP<=170G/M2,CRU/BRA'),(5187,'55132100','TECIDO POLIESTER<85% C/ALGODAO,P<=170G/M2,TAFETA,T'),(5188,'55132200','TECIDO POLIESTER<85% C/ALGODAO,P<=170G/M2,SARJADO,'),(5189,'55132300','OUTSTECIDOS POLIESTER<85% C/ALGODAO,P<=170G/M2,TIN'),(5190,'55132900','OUTSTECIDOS FIBRA SINT<85% C/ALGODAO,P<=170G/M2,TI'),(5191,'55133100','TECIDO POLIEST<85% C/ALGODP<=170G/M2,TAFETA,DIVSCO'),(5192,'55133200','TECIDO POLIEST<85% C/ALGODP<=170G/M2,SARJADDIVSCOR'),(5193,'55133300','OUTSTECIDOS POLIEST<85% C/ALGODP<=170G/M2,DIVSCORE'),(5194,'55133900','OUTSTECIDOS FIBRSINT<85% C/ALGODP<=170G/M2,DIVCORE'),(5195,'55134100','TECIDO POLIESTER<85% C/ALGODAO,P<=170G/M2,TAFETA,E'),(5196,'55134200','TECIDO POLIESTER<85% C/ALGODAO,P<=170G/M2,SARJADES'),(5197,'55134300','OUTSTECIDOS POLIESTER<85% C/ALGODAO,P<=170G/M2,EST'),(5198,'55134900','OUTSTECIDOS FIBRA SINT<85% C/ALGODAO,P<=170G/M2,ES'),(5199,'55141100','TECIDO POLIESTER<85% C/ALGODP>170G/M2,TAFETA,CRU/B'),(5200,'55141200','TECIDO POLIESTER<85% C/ALGODP>170G/M2,SARJADCRU/BR'),(5201,'55141300','OUTSTECIDOS POLIESTER<85% C/ALGODP>170G/M2,CRU/BRA'),(5202,'55141900','OUTSTECIDOS FIBRA SINT<85% C/ALGODP>170G/M2,CRU/BR'),(5203,'55142100','TECIDO POLIESTER<85% C/ALGODAO,P>170G/M2,TAFETA,TI'),(5204,'55142200','TECIDO POLIESTER<85% C/ALGODAO,P>170G/M2,SARJADO,T'),(5205,'55142300','OUTROS TECIDOS POLIESTER<85% C/ALGODAO,P>170G/M2,T'),(5206,'55142900','OUTSTECIDOS FIBRA SINT<85% C/ALCODAO,P>170G/M2,TIN'),(5207,'55143100','TECIDO POLIEST<85% C/ALGODAO,P>170G/M2,TAFETA,DIVC'),(5208,'55143200','TECIDO POLIEST<85% C/ALGODAO,P>170G/M2,SARJADDIVCO'),(5209,'55143300','OUTSTECIDOS POLIESTER<85% C/ALGODP>170G/M2,DIVCORE'),(5210,'55143900','OUTSTECIDOS FIBRA SINT<85% C/ALGODP>170G/M2,DIVCOR'),(5211,'55144100','TECIDO POLIESTER<85% C/ALGODAO,P>170G/M2,TAFETA,ES'),(5212,'55144200','TECIDO POLIESTER<85% C/ALGODAO,P>170G/M2,SARJADO,E'),(5213,'55144300','OUTROS TECIDOS POLIESTER<85% C/ALGODAO,P>170G/M2,E'),(5214,'55144900','OUTSTECIDOS FIBRA SINT<85% C/ALGODAO,P>170G/M2,EST'),(5215,'55151100','TECIDO DE FIBRAS DE POLIESTER COM RAIOM VISCOSE'),(5216,'55151200','TECIDO DE FIBRAS DE POLIESTER COM FILAMENTO SINT/A'),(5217,'55151300','TECIDO DE FIBRAS DE POLIESTER COM LA OU PELOS FINO'),(5218,'55151900','OUTROS TECIDOS DE FIBRAS DE POLIESTER'),(5219,'55152100','TECIDO DE FIBRAS ACRILICAS,ETCCOM FILAMENTO SINT/A'),(5220,'55152200','TECIDO DE FIBRAS ACRILICAS,ETCCOM LA OU PELOS FINO'),(5221,'55152900','OUTROS TECIDOS DE FIBRAS ACRILICAS OU MODACRILICAS'),(5222,'55159100','TECIDO DE OUTRAS FIBRAS SINTETICAS COM FILAMSINT/A'),(5223,'55159200','TECIDO DE OUTSFIBRAS SINTETICAS COM LA OU PELOS FI'),(5224,'55159900','OUTROS TECIDOS DE FIBRAS SINTETICAS'),(5225,'55161100','TECIDO DE FIBRAS ARTIFICIAIS>=85%,CRU OU BRANQUEAD'),(5226,'55161200','TECIDO DE FIBRAS ARTIFICIAIS>=85%,TINTO'),(5227,'55161300','TECIDO DE FIBRAS ARTIFICIAIS>=85%,DE FIOS DE DIVSC'),(5228,'55161400','TECIDO DE FIBRAS ARTIFICIAIS>=85%,ESTAMPADO'),(5229,'55162100','TECIDO DE FIBRAS ARTIF<85% C/FILAMSINT/ARTIFCRU/BR'),(5230,'55162200','TECIDO DE FIBRAS ARTIF<85% COM FILAMSINT/ARTIFTINT'),(5231,'55162300','TECIDO DE FIBRAS ARTIF<85% COM FILAMSINT/ARTIFCORE'),(5232,'55162400','TECIDO DE FIBRAS ARTIF<85% COM FILAMSINT/ARTIFESTA'),(5233,'55163100','TECIDO DE FIBRAS ARTIF<85% COM LA/PELOS FINOS,CRU/'),(5234,'55163200','TECIDO DE FIBRAS ARTIF<85% COM LA/PELOS FINOS,TINT'),(5235,'55163300','TECIDO DE FIBRAS ARTIF<85% COM LA/PELOS FINOS,DIVC'),(5236,'55163400','TECIDO DE FIBRAS ARTIF<85% COM LA/PELOS FINOS,ESTA'),(5237,'55164100','TECIDO DE FIBRAS ARTIF<85% COM ALGODAO,CRU/BRANQUE'),(5238,'55164200','TECIDO DE FIBRAS ARTIF<85% COM ALGODAO,TINTO'),(5239,'55164300','TECIDO DE FIBRAS ARTIF<85% COM ALGODAO,FIO DIVSCOR'),(5240,'55164400','TECIDO DE FIBRAS ARTIF<85% COM ALGODAO,ESTAMPADO'),(5241,'55169100','OUTSTECIDOS DE FIBRAS ARTIFICIAIS,CRUS OU BRANQUEA'),(5242,'55169200','OUTROS TECIDOS DE FIBRAS ARTIFICIAIS,TINTOS'),(5243,'55169300','OUTROS TECIDOS DE FIBRAS ARTIFICIAIS,DE FIOS DIVSC'),(5244,'55169400','OUTROS TECIDOS DE FIBRAS ARTIFICIAIS,ESTAMPADOS'),(5245,'56011000','ABSORVENTES E TAMPOES,ETCDE PASTAS DE MATERIAS TEX'),(5246,'56012110','PASTAS (\"OUATES\") DE ALGODAO'),(5247,'56012190','OUTROS ARTIGOS DE PASTAS (\"OUATES\") DE ALGODAO'),(5248,'56012211','PASTAS (\"OUATES\") DE FIBRAS DE ARAMIDA'),(5249,'56012291','CILINDROS P/FILTRO CIGARROS,DE PASTAS FIBRAS SINT/'),(5250,'56012299','OUTSARTIGOS DE PASTAS DE FIBRAS SINTETICAS/ARTIFIC'),(5251,'56012219','PASTAS (\"OUATES\") DE OUTSFIBRAS SINTETICAS/ARTIFIC'),(5252,'56012900','PASTAS/OUTSARTIGOS DE PASTAS,DE OUTSMATERIAS TEXTE'),(5253,'56013090','TONTISSES,NOS E BOLOTAS,DE OUTRAS MATERIAS TEXTEIS'),(5254,'56013010','TONTISSES,NOS E BOLOTAS,DE FIBRAS DE ARAMIDA'),(5255,'56021000','FELTROS AGULHADOS/ARTEFSDA COSTURA POR ENTRELACAME'),(5256,'56022100','FELTROS DE LA/PELOS FINOS,N/IMPREGNADOS,N/REVESTSE'),(5257,'56022900','FELTROS DE OUTRAS MATERSTEXTEIS,N/IMPREGNN/REVESTE'),(5258,'56029000','OUTSFELTROS IMPREGNADOS/REVESTIDOS/RECOBERTOS/ESTR'),(5259,'56031310','FALSOS TECIDOS DE FILAMPOLIETALTA DENS70<P<=150G/M'),(5260,'56031210','FALSOS TECIDOS DE FILAMPOLIETALTA DENS25<P<=70G/M2'),(5261,'56031490','FALSOS TECIDOS DE OUTSFILAMENTOS SINT/ARTIFP>150G/'),(5262,'56039210','OUTSFALSOS TECIDOS,POLIETILENO ALTA DENS25<P<=70G/'),(5263,'56039310','OUTSFALSOS TECIDOS,POLIETILENO ALTA DENS70<P<=150G'),(5264,'56031190','FALSOS TECIDOS DE OUTSFILAMENTOS SINT/ARTIFP<=25G/'),(5265,'56031390','FALSOS TECIDOS DE OUTROS FILAMSINT/ARTIF70<P<=150G'),(5266,'56039290','OUTROS FALSOS TECIDOS,25G/M2<PESO<=70G/M2'),(5267,'56039400','OUTROS FALSOS TECIDOS,PESO>150G/M2'),(5268,'56031110','FALSOS TECIDOS DE FILAMENTOS DE ARAMIDA,PESO<=25G/'),(5269,'56031220','FALSOS TECIDOS DE FILAMENTOS DE ARAMIDA,25<P<=70G/'),(5270,'56031320','FALSOS TECIDOS DE FILAMENTOS DE ARAMIDA,70<P<=150G'),(5271,'56031410','FALSOS TECIDOS DE FILAMENTOS DE ARAMIDA,PESO>150G/'),(5272,'56039100','OUTROS FALSOS TECIDOS,PESO<=25G/M2'),(5273,'56031290','FALSOS TECIDOS DE OUTROS FILAMSINT/ARTIF25<P<=70G/'),(5274,'56039390','OUTROS FALSOS TECIDOS,70G/M2<PESO<=150G/M2'),(5275,'56041000','FIOS E CORDAS,DE BORRACHA,RECOBERTOS DE TEXTEIS'),(5276,'56042010','FIOS DE ALTA TENACIDADE DE POLIESTERES,ETCCOM BORR'),(5277,'56042020','FIOS DE ALTA TENACIDADE DE POLIESTERES,ETCCOM PLAS'),(5278,'56049010','IMITACOES DE CATEGUTE CONSTITUIDAS POR FIOS DE SED'),(5279,'56049090','OUTROS FIOS TEXTEIS/LAMINAS,ETCCOM BORRACHA/PLASTI'),(5280,'56050090','OUTSFIOS METALICOS CONSTFIOS TEXTETCCOMBINC/METAL'),(5281,'56050020','FIOS METALICOS CONSTFIOS TEXTETCREVESTC/OUTSMETAIS'),(5282,'56050010','FIOS METALICOS CONSTFIOS TEXTETCCOM METAIS PRECIOS'),(5283,'56060000','FIOS REVESTPOR ENROLAM/LAMINAS/MONOFILAMSINT/ARTET'),(5284,'56071000','CORDEIS/CORDAS E CABOS,DE JUTA/OUTRAS FIBRAS TEXTL'),(5285,'56072100','CORDEIS DE SISAL/OUTSFIBRAS \"AGAVE\",P/ATADEIRAS/EN'),(5286,'56072900','OUTSCORDEIS/CORDAS/CABOS,DE SISAL/OUTSFIBRAS \"AGAV'),(5287,'56073000','CORDEIS/CORDAS E CABOS,DE ABACA OU OUTRAS FIBRAS D'),(5288,'56074100','CORDEIS DE POLIETILENO/POLIPROPILENO,P/ATADEIRAS/E'),(5289,'56074900','OUTROS CORDEIS,CORDAS,ETCDE POLIETILENO/POLIPROPIL'),(5290,'56075011','CORDEIS,CORDAS E CABOS,DE FIBRAS DE NAILON'),(5291,'56075019','CORDEIS,CORDAS E CABOS,DE FIBRAS DE OUTRAS POLIAMI'),(5292,'56075090','CORDEIS,CORDAS E CABOS,DE OUTRAS FIBRAS SINTETICAS'),(5293,'56079010','CORDEIS,CORDAS E CABOS,DE ALGODAO'),(5294,'56079090','CORDEIS,CORDAS E CABOS,DE OUTRAS MATERIAS TEXTEIS'),(5295,'56081100','REDES CONFECCIONDE MATERIAS TEXTEIS SINT/ARTIFP/PE'),(5296,'56081900','OUTRAS REDES CONFECCIONDE MATERIAS TEXTEIS SINT/AR'),(5297,'56089000','REDES DE MALHAS COM NOS,ETCDE OUTRAS MATERIAS TEXT'),(5298,'56090010','ARTIGOS DE FIOS,LAMINAS,ETCDE ALGODAO'),(5299,'56090090','ARTIGOS DE FIOS,LAMINAS,ETCDE OUTSMATTEXTSINT/ARTI'),(5300,'57011011','TAPETE DE LA,DE PONTO NODADO/ENROLADO,FEITO A MAO'),(5301,'57011012','TAPETE DE LA,DE PONTO NODADO/ENROLADO,FEITO A MAQU'),(5302,'57011020','TAPETE DE PELOS FINOS,DE PONTO NODADO OU ENROLADO'),(5303,'57019000','TAPETE DE OUTRA MATERIA TEXTIL,DE PONTO NODADO/ENR'),(5304,'57021000','TAPETE \"KELIM\",\"SCHUMACKS\",\"KARAMANIE\",ETCTECIDO A'),(5305,'57022000','REVESTIMENTO PARA PAVIMENTO,DE CAIRO (FIBRAS DE CO'),(5306,'57023100','TAPETE,ETCDE LA OU PELOS FINOS,AVELUDADO,N/CONFECC'),(5307,'57023200','TAPETE,ETCDE MATERTEXTIL SINT/ARTIFAVELUDN/CONFECC'),(5308,'57023900','TAPETE,ETCDE OUTSMATERTEXTEIS,AVELUDADO,N/CONFECCI'),(5309,'57024100','TAPETE,ETCDE LA OU PELOS FINOS,AVELUDADO,CONFECCIO'),(5310,'57024200','TAPETE,ETCDE MATERIA TEXTIL SINT/ARTIFAVELUDCONFEC'),(5311,'57024900','TAPETE,ETCDE OUTSMATERTEXTEIS,AVELUDADO,CONFECCION'),(5312,'57025100','TAPETE,ETCDE LA OU PELOS FINOS,N/AVELUDADO,N/CONFE'),(5313,'57025200','TAPETE,ETCDE MATTEXTIL SINT/ARTIFN/AVELUDN/CONFECC'),(5314,'57025900','TAPETE,ETCDE OUTSMATERTEXTEIS,N/AVELUDADO,N/CONFEC'),(5315,'57029100','TAPETE,ETCDE LA OU PELOS FINOS,N/AVELUDADO,CONFECC'),(5316,'57029200','TAPETE,ETCDE MATERTEXTIL SINTARTIFN/AVELUDCONFECC'),(5317,'57029900','TAPETE,ETCDE OUTSMATERTEXTEIS,N/AVELUDADO,CONFECCI'),(5318,'57031000','TAPETE/REVESTP/PAVIMDE LA OU PELOS FINOS,TUFADO'),(5319,'57032000','TAPETE/REVESTP/PAVIMDE NAILON/OUTRA POLIAMIDA,TUFA'),(5320,'57033000','TAPETE/REVESTP/PAVIMDE OUTSMATTEXTSINT/ARTTUFADO'),(5321,'57039000','TAPETE/REVESTP/PAVIMDE OUTRAS MATERIAS TEXTEIS'),(5322,'57041000','LADRILHOS DE FELTRO,P/REVESTIMDE PAVIMSUPERF<=03M2'),(5323,'57049000','OUTROS TAPETES/REVESTIMENTOS P/PAVIMDE FELTRO'),(5324,'57050000','OUTSTAPETES/REVESTIMENTOS P/PAVIMDE MATERIAS TEXTE'),(5325,'58011000','VELUDO/PELUCIA,TECIDO,DE LA OU PELOS FINOS'),(5326,'58012100','VELUDO/PELUCIA,TECIDO,DA TRAMA ALGODAO,NAO CORTADO'),(5327,'58012200','VELUDO/PELUCIA,TECIDO,DA TRAMA ALGODAO,CORTADO,CAN'),(5328,'58012300','OUTROS VELUDOS E PELUCIAS,TECIDOS,DA TRAMA DE ALGO'),(5329,'58012400','VELUDO/PELUCIA,TECIDO,DA URDIDURA DE ALGODAO,N/COR'),(5330,'58012500','VELUDO/PELUCIA,TECIDO,DA URDIDURA DE ALGODAO,CORTA'),(5331,'58012600','TECIDO DE FROCO (\"CHENILLE\"),DE ALGODAO'),(5332,'58013100','VELUDO/PELUCIA,TECIDO,DA TRAMA FIBRA SINT/ARTIFN/C'),(5333,'58013200','VELUDO/PELUCIA,TECIDO,DA TRAMA FIBRA SINT/ARTIFCOR'),(5334,'58013300','OUTSVELUDOS/PELUCIAS,TECIDOS,DA TRAMA FIBRA SINT/A'),(5335,'58013400','VELUDO/PELUCIA,TECIDO,DA URDIDURA FIBRA SINT/ARTN/'),(5336,'58013500','VELUDO/PELUCIA,TECIDO,DA URDIDURA FIBRA SINT/ARTCO'),(5337,'58013600','TECIDO DE FROCO (\"CHENILLE\") DE FIBRA SINTETICA/AR'),(5338,'58019000','VELUDO/PELUCIA,TECIDO,DE OUTRAS MATERIAS TEXTEIS'),(5339,'58021100','TECIDO ATOALHADO,DE ALGODAO,CRU'),(5340,'58021900','OUTROS TECIDOS ATOALHADOS,DE ALGODAO'),(5341,'58022000','TECIDO ATOALHADO,DE OUTRAS MATERIAS TEXTEIS'),(5342,'58023000','TECIDO TUFADO'),(5343,'58031000','TECIDO DE ALGODAO,EM PONTO DE GAZE'),(5344,'58039000','TECIDO DE OUTRAS MATERIAS TEXTEIS,EM PONTO DE GAZE'),(5345,'58041010','TULES,FILO E TECIDOS DE MALHAS COM NOS,DE ALGODAO'),(5346,'58041090','OUTRAS TULES,FILOS E TECIDOS DE MALHAS COM NOS'),(5347,'58042100','RENDA DE FIBRA SINTETICA/ARTIFICIAL,DE FABRMECANIC'),(5348,'58042990','RENDA DE OUTRAS MATERIAS TEXTEIS,DE FABRICACAO MEC'),(5349,'58042910','RENDA DE ALGODAO,DE FABRICACAO MECANICA'),(5350,'58043010','RENDA DE ALGODAO,DE FABRICACAO MANUAL'),(5351,'58043090','OUTRAS RENDAS DE FABRICACAO MANUAL'),(5352,'58050010','TAPECARIAS DE ALGODAO,TECIDAS A MAO OU FEITAS A AG'),(5353,'58050020','TAPECARIAS DE FIBRA SINTETICA/ARTIFTECIDAS A MAO,E'),(5354,'58050090','TAPECARIAS DE OUTRAS MATERIAS TEXTEIS,TECIDAS A MA'),(5355,'58061000','FITAS DE VELUDO/PELUCIA,DE TECIDO DE FROCO OU ATOA'),(5356,'58062000','OUTSFITAS CONTEUDO>=5% DE FIOS DE ELASTOMEROS/BORR'),(5357,'58063100','FITAS DE ALGODAO'),(5358,'58063200','FITAS DE FIBRAS SINTETICAS OU ARTIFICIAIS'),(5359,'58063900','FITAS DE OUTRAS MATERIAS TEXTEIS'),(5360,'58064000','FITAS SEM TRAMA,DE FIOS/FIBRAS,PARALELIZADOS E COL'),(5361,'58071000','ETIQUETAS,EMBLEMAS,ETCDE MATERIAS TEXTEIS,TECIDOS'),(5362,'58079000','OUTRAS ETIQUETAS,EMBLEMAS,ETCDE MATERIAS TEXTEIS'),(5363,'58081000','ENTRANCADOS EM PECAS'),(5364,'58089000','ARTIGOS DE PASSAMANARIA/ORNAMENTAIS ANALOGOS,BORLA'),(5365,'58090000','TECIDO DE FIOS DE METAL,DE FIOS TEXTEIS METALIZADO'),(5366,'58101000','BORDADOS QUIMICOS/AEREOS/COM FUNDO RECORTADEM PECA'),(5367,'58109100','BORDADOS DE ALGODAO,EM PECA,EM TIRAS OU EM MOTIVOS'),(5368,'58109200','BORDADOS DE FIBRA SINT/ARTIFEM PECA/TIRAS OU MOTIV'),(5369,'58109900','BORDADOS DE OUTSMATERIAS TEXTEIS,EM PECA/TIRAS/MOT'),(5370,'58110000','ARTEFATOS TEXTEIS MATELASSES EM PECA,ETC'),(5371,'59011000','TECIDO REVESTCOLA/MATERIA AMILACEA,P/ENCADERNACAO,'),(5372,'59019000','TELAS P/DECALQUE,TRANSPARENTE P/DESENHO,P/PINTURA,'),(5373,'59021010','TELAS P/PNEUMATDE FIOS ALTA TENACPOLIAMIDA C/BORRA'),(5374,'59021090','OUTRAS TELAS P/PNEUMATDE FIOS ALTA TENACDE POLIAMI'),(5375,'59022000','TELAS P/PNEUMATICOS,DE FIOS ALTA TENACDE POLIESTER'),(5376,'59029000','TELAS P/PNEUMATICOS,DE FIOS ALTA TENACDE RAIOM VIS'),(5377,'59031000','TECIDO IMPREGNADO/REVESTIDO,ETCC/POLICLORETO DE VI'),(5378,'59032000','TECIDO IMPREGNADO/REVESTIDO,ETCC/POLIURETANO'),(5379,'59039000','TECIDO IMPREGNADO/REVESTIDO,ETCC/OUTROS PLASTICOS'),(5380,'59041000','LINOLEOS,MESMO RECORTADOS'),(5381,'59049100','REVESTIMP/PAVIMC/SUPORTE FELTRO AGULHADO/FALSO TEC'),(5382,'59049200','REVESTIMP/PAVIMC/OUTROS SUPORTES TEXTEIS'),(5383,'59050000','REVESTIMENTO PARA PAREDES,DE MATERIAS TEXTEIS'),(5384,'59061000','FITAS ADESIVAS,TECIDAS COM BORRACHA,DE LARGURA<=20'),(5385,'59069100','TECIDOS DE MALHA,COM BORRACHA'),(5386,'59069900','OUTROS TECIDOS COM BORRACHA'),(5387,'59070000','OUTROS TECIDOS IMPREGNADOS/REVESTIDOS/RECOBERTOS,E'),(5388,'59080000','MECHAS DE MATERIA TEXTIL,TECIDAS,P/CANDEEIROS,VELA'),(5389,'59090000','MANGUEIRAS E TUBOS SEMELHANTES,DE MATERIAS TEXTEIS'),(5390,'59100000','CORREIAS TRANSPORTADORAS/TRANSMISSAO,DE MATERIA TE'),(5391,'59111000','TECIDO E FELTRO,C/CAMADA BORRACHA,ETCUTILFABRCARDA'),(5392,'59112010','GAZES E TELAS P/PENEIRAR,DE MATTEXTSINT/ARTIFEM PE'),(5393,'59112090','GAZES E TELAS P/PENEIRAR,DE OUTRAS MATERIAS TEXTEI'),(5394,'59113100','TECIDO E FELTRO,UTILEM MAQSP/FABRDE PAPEL,P<650G/M'),(5395,'59113200','TECIDO E FELTRO,UTILEM MAQSP/FABRDE PAPEL,P>=650G/'),(5396,'59114000','TECIDOS FILTRANTES/ESPESSOS,UTILPRENSAS DE OLEO,ET'),(5397,'59119000','OUTSPRODS/ARTEFATOS,DE MATERIAS TEXTEIS,P/USO TECN'),(5398,'60011010','TECIDO DE MALHA DE ALGODAO,DENOMINADO \"FELPA LONGA'),(5399,'60011020','TECIDO DE MALHA DE FIBRA SINT/ARTIFDENOM\"FELPA LON'),(5400,'60011090','TECIDO DE MALHA DE OUTSMATERTEXTDENOM\"FELPA LONGA\"'),(5401,'60012100','TECIDO ATOALHADO,DE MALHA DE ALGODAO'),(5402,'60012200','TECIDO ATOALHADO,DE MALHA DE FIBRA SINTETICA/ARTIF'),(5403,'60012900','TECIDO ATOALHADO,DE MALHA DE OUTRAS MATERIAS TEXTE'),(5404,'60019100','VELUDO E PELUCIA,DE MALHA DE ALGODAO'),(5405,'60019200','VELUDO E PELUCIA,DE MALHA DE FIBRA SINTETICA/ARTIF'),(5406,'60019900','VELUDO E PELUCIA,DE MALHA DE OUTRAS MATERIAS TEXTE'),(5407,'60021010','TECIDO DE MALHA DE ALGODAO,L<=30CM,CONTELASTOMEROS'),(5408,'60021090','TECIDO DE MALHA DE OUTSMATTEXTL<=30CM,C/ELASTOMETC'),(5409,'60021020','TECIDO DE MALHA DE FIBRA SINT/ARTL<=30CM,C/ELASTOM'),(5410,'60022010','OUTROS TECIDOS DE MALHA DE ALGODAO,L<=30CM'),(5411,'60022090','OUTROS TECIDOS DE MALHA DE OUTSMATERTEXTEIS,L<=30C'),(5412,'60022020','OUTROS TECIDOS DE MALHA DE FIBRA SINTET/ARTIFL<=30'),(5413,'60023010','TECIDO DE MALHA DE ALGODAO,L>30CM,CONTELASTOMEROS,'),(5414,'60023090','TECIDO DE MALHA DE OUTSMATTEXTL>30CM,C/ELASTOMETC'),(5415,'60023020','TECIDO DE MALHA DE FIBRA SINT/ARTL>30CM,C/ELASTOME'),(5416,'60024100','TECIDO DE MALHA-URDIDURA DE LA OU DE PELOS FINOS'),(5417,'60024200','TECIDO DE MALHA-URDIDURA DE ALGODAO'),(5418,'60024300','TECIDO DE MALHA-URDIDURA,DE FIBRA SINTETICA/ARTIFI'),(5419,'60024900','TECIDO DE MALHA-URDIDURA DE OUTRAS MATERIAS TEXTEI'),(5420,'60029100','OUTROS TECIDOS DE MALHA DE LA OU DE PELOS FINOS'),(5421,'60029200','OUTROS TECIDOS DE MALHA DE ALGODAO'),(5422,'60029300','OUTROS TECIDOS DE MALHA DE FIBRAS SINTET/ARTIFICIA'),(5423,'60029900','OUTROS TECIDOS DE MALHA DE OUTROS MATERIAS TEXTEIS'),(5424,'61011000','SOBRETUDOS,ETCDE MALHA DE LA/PELOS FINOS,USO MASCU'),(5425,'61012000','SOBRETUDOS,ETCDE MALHA DE ALGODAO,DE USO MASCULINO'),(5426,'61013000','SOBRETUDOS,ETCDE MALHA DE FIBRA SINT/ARTUSO MASCUL'),(5427,'61019000','SOBRETUDOS,ETCDE MALHA DE OUTSMATTEXTUSO MASCULINO'),(5428,'61021000','MANTOS,ETCDE MALHA DE LA OU PELOS FINOS,USO FEMINI'),(5429,'61022000','MANTOS,ETCDE MALHA DE ALGODAO,DE USO FEMININO'),(5430,'61023000','MANTOS,ETCDE MALHA DE FIBRA SINT/ARTIFDE USO FEMIN'),(5431,'61029000','MANTOS,ETCDE MALHA DE OUTSMATERTEXTEIS,USO FEMININ'),(5432,'61031100','TERNOS (FATOS) DE MALHA DE LA OU PELOS FINOS'),(5433,'61031200','TERNOS (FATOS) DE MALHA DE FIBRAS SINTETICAS'),(5434,'61031900','TERNOS (FATOS) DE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5435,'61032100','CONJUNTOS DE MALHA DE LA OU PELOS FINOS,USO MASCUL'),(5436,'61032200','CONJUNTOS DE MALHA DE ALGODAO,DE USO MASCULINO'),(5437,'61032300','CONJUNTOS DE MALHA DE FIBRA SINT/ARTIFDE USO MASCU'),(5438,'61032900','CONJUNTOS DE MALHA DE OUTSMATERTEXTEIS,USO MASCULI'),(5439,'61033100','PALETOS (CASACOS) DE MALHA DE LA OU DE PELOS FINOS'),(5440,'61033200','PALETOS (CASACOS) DE MALHA DE ALGODAO'),(5441,'61033300','PALETOS (CASACOS) DE MALHA DE FIBRAS SINTETICAS'),(5442,'61033900','PALETOS (CASACOS) DE MALHA DE OUTRAS MATERIAS TEXT'),(5443,'61034100','CALCAS,ETCDE MALHA DE LA OU PELOS FINOS,USO MASCUL'),(5444,'61034200','CALCAS,ETCDE MALHA DE ALGODAO,DE USO MASCULINO'),(5445,'61034300','CALCAS,ETCDE MALHA DE FIBRAS SINTETICAS,USO MASCUL'),(5446,'61034900','CALCAS,ETCDE MALHA DE OUTSMATERTEXTEIS,USO MASCULI'),(5447,'61041100','TAILLEURS DE MALHA DE LA OU DE PELOS FINOS'),(5448,'61041200','TAILLEURS DE MALHA DE ALGODAO'),(5449,'61041300','TAILLEURS DE MALHA DE FIBRAS SINTETICAS'),(5450,'61041900','TAILLEURS DE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5451,'61042100','CONJUNTOS DE MALHA DE LA OU PELOS FINOS,DE USO FEM'),(5452,'61042200','CONJUNTOS DE MALHA DE ALGODAO,DE USO FEMININO'),(5453,'61042300','CONJUNTOS DE MALHA DE FIBRAS SINTETICAS,DE USO FEM'),(5454,'61042900','CONJUNTOS DE MALHA DE OUTRA MATERIA TEXTIL,USO FEM'),(5455,'61043100','BLAZERS DE MALHA DE LA OU DE PELOS FINOS,USO FEMIN'),(5456,'61043200','BLAZERS DE MALHA DE ALGODAO,DE USO FEMININO'),(5457,'61043300','BLAZERS DE MALHA DE FIBRAS SINTETICAS,DE USO FEMIN'),(5458,'61043900','BLAZERS DE MALHA DE OUTRA MATERIAS TEXTEIS,USO FEM'),(5459,'61044100','VESTIDOS DE MALHA DE LA OU PELOS FINOS,DE USO FEMI'),(5460,'61044200','VESTIDOS DE MALHA DE ALGODAO'),(5461,'61044300','VESTIDOS DE MALHA DE FIBRAS SINTETICAS'),(5462,'61044400','VESTIDOS DE MALHA DE FIBRAS ARTIFICIAIS'),(5463,'61044900','VESTIDOS DE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5464,'61045100','SAIAS E SAIAS-CALCAS,DE MALHA DE LA OU DE PELOS FI'),(5465,'61045200','SAIAS E SAIAS-CALCAS,DE MALHA DE ALGODAO'),(5466,'61045300','SAIAS E SAIAS-CALCAS,DE MALHA DE FIBRAS SINTETICAS'),(5467,'61045900','SAIAS E SAIAS-CALCAS,DE MALHA DE OUTSMATERIAS TEXT'),(5468,'61046100','CALCAS,ETCDE MALHA DE LA OU PELOS FINOS,USO FEMINI'),(5469,'61046200','CALCAS,ETCDE MALHA DE ALGODAO,DE USO FEMININO'),(5470,'61046300','CALCAS,ETCDE MALHA DE FIBRAS SINTETICAS,USO FEMINI'),(5471,'61046900','CALCAS,ETCDE MALHA DE OUTSMATERTEXTEIS,USO FEMININ'),(5472,'61051000','CAMISAS DE MALHA DE ALGODAO,DE USO MASCULINO'),(5473,'61052000','CAMISAS DE MALHA DE FIBRA SINTETICA,ARTIFUSO MASCU'),(5474,'61059000','CAMISAS DE MALHA DE OUTSMATERIAS TEXTEIS,USO MASCU'),(5475,'61061000','CAMISAS,ETCDE MALHA DE ALGODAO,DE USO FEMININO'),(5476,'61062000','CAMISAS,ETCDE MALHA DE FIBRAS SINT/ARTIFUSO FEMINI'),(5477,'61069000','CAMISAS,ETCDE MALHA DE OUTSMATERTEXTEIS,USO FEMINI'),(5478,'61071100','CUECAS E CEROULAS,DE MALHA DE ALGODAO'),(5479,'61071200','CUECAS E CEROULAS,DE MALHA DE FIBRAS SINTETICAS/AR'),(5480,'61071900','CUECAS E CEROULAS,DE MALHA DE OUTRAS MATERIAS TEXT'),(5481,'61072100','CAMISOLOES,ETCDE MALHA DE ALGODAO,DE USO MASCULINO'),(5482,'61072200','CAMISOLOES,ETCDE MALHA DE FIBRA SINT/ARTUSO MASCUL'),(5483,'61072900','CAMISOLOES,ETCDE MALHA DE OUTSMATTEXTUSO MASCULINO'),(5484,'61079100','ROUPOES,ETCDE MALHA DE ALGODAO,DE USO MASCULINO'),(5485,'61079200','ROUPOES,ETCDE MALHA DE FIBRA SINT/ARTIFUSO MASCULI'),(5486,'61079900','ROUPOES,ETCDE MALHA DE OUTSMATERTEXTUSO MASCULINO'),(5487,'61081100','COMBINACOES E ANAGUAS,DE MALHA DE FIBRA SINTETICA/'),(5488,'61081900','COMBINACOES E ANAGUAS,DE MALHA DE OUTSMATERIAS TEX'),(5489,'61082100','CALCINHAS DE MALHA DE ALGODAO'),(5490,'61082200','CALCINHAS DE MALHA DE FIBRAS SINTETICAS OU ARTIFIC'),(5491,'61082900','CALCINHAS DE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5492,'61083100','CAMISOLAS,ETCDE MALHA DE ALGODAO,DE USO FEMININO'),(5493,'61083200','CAMISOLAS,ETCDE MALHA DE FIBRA SINT/ARTIFUSO FEMIN'),(5494,'61083900','CAMISOLAS,ETCDE MALHA DE OUTSMATERTEXTUSO FEMININO'),(5495,'61089100','ROUPOES,ETCDE MALHA DE ALGODAO,DE USO FEMININO'),(5496,'61089200','ROUPOES,ETCDE MALHA DE FIBRAS SINT/ARTIFUSO FEMINI'),(5497,'61089900','ROUPOES,ETCDE MALHA DE OUTSMATERTEXTEIS,USO FEMINI'),(5498,'61091000','CAMISETAS \"T-SHIRTS\",ETCDE MALHA DE ALGODAO'),(5499,'61099000','CAMISETAS \"T-SHIRTS\",ETCDE MALHA DE OUTSMATERTEXTE'),(5500,'61101000','SUETERES,PULOVERES,ETCDE MALHA DE LA OU PELOS FINO'),(5501,'61102000','SUETERES,PULOVERES,ETCDE MALHA DE ALGODAO'),(5502,'61103000','SUETERES,PULOVERES,ETCDE MALHA DE FIBRAS SINT/ARTI'),(5503,'61109000','SUETERES,PULOVERES,ETCDE MALHA DE OUTRA MATERIA TE'),(5504,'61111000','VESTUARIO P/BEBES E ACESSDE MALHA DE LA OU PELOS F'),(5505,'61112000','VESTUARIO P/BEBES E ACESSDE MALHA DE ALGODAO'),(5506,'61113000','VESTUARIO P/BEBES E ACESSDE MALHA DE FIBRAS SINTET'),(5507,'61119000','VESTUARIO P/BEBES E ACESSDE MALHA DE OUTSMATERTEXT'),(5508,'61121100','ABRIGOS PARA ESPORTES,DE MALHA DE ALGODAO'),(5509,'61121200','ABRIGOS PARA ESPORTES,DE MALHA DE FIBRAS SINTETICA'),(5510,'61121900','ABRIGOS PARA ESPORTES,DE MALHA DE OUTSMATERIAS TEX'),(5511,'61122000','MACACOES E CONJUNTOS,DE ESQUI,DE MALHA DE MATERTEX'),(5512,'61123100','SHORTS E SUNGAS,DE BANHO,DE MALHA DE FIBRA SINTETI'),(5513,'61123900','SHORTS E SUNGAS,DE BANHO,DE MALHA DE OUTRAS MATTEX'),(5514,'61124100','MAIOS E BIQUINIS,DE BANHO,DE MALHA DE FIBRAS SINTE'),(5515,'61124900','MAIOS E BIQUINIS,DE BANHO,DE MALHA DE OUTSMATERTEX'),(5516,'61130000','VESTUARIO CONFECCDE TECIDOS MALHA C/PLASTICO/BORRA'),(5517,'61141000','OUTROS VESTUARIOS DE MALHA DE LA OU DE PELOS FINOS'),(5518,'61142000','OUTROS VESTUARIOS DE MALHA DE ALGODAO'),(5519,'61143000','OUTROS VESTUARIOS DE MALHA DE FIBRA SINTET/ARTIFIC'),(5520,'61149000','OUTROS VESTUARIOS DE MALHA DE OUTROS MATERIAS TEXT'),(5521,'61151100','MEIAS-CALCAS DE MALHA DE FIBRA SINTETICA,TIT<67DEC'),(5522,'61151200','MEIAS-CALCAS DE MALHA DE FIBRA SINTETICA,TIT>=67DE'),(5523,'61151910','MEIAS-CALCAS DE MALHA DE LA OU DE PELOS FINOS'),(5524,'61151920','MEIAS-CALCAS DE MALHA DE ALGODAO'),(5525,'61151990','MEIAS-CALCAS DE OUTRAS MATERIAS TEXTEIS'),(5526,'61152010','MEIAS DE SENHORA,DE MALHA DE FIBRA SINT/ARTIFTIT<6'),(5527,'61152020','MEIAS DE SENHORA,DE MALHA DE ALGODAO,TITULO<67DECI'),(5528,'61152090','MEIAS DE SENHORA,DE OUTSMATERIAS TEXTEIS,TIT<67DEC'),(5529,'61159100','OUTRAS MEIAS DE MALHA DE LA OU DE PELOS FINOS'),(5530,'61159200','OUTRAS MEIAS DE MALHA DE ALGODAO'),(5531,'61159300','OUTRAS MEIAS DE MALHA DE FIBRAS SINTETICAS'),(5532,'61159900','OUTRAS MEIAS DE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5533,'61161000','LUVAS,ETCDE MALHA,IMPREGNADAS,ETCDE PLASTICO/BORRA'),(5534,'61169100','LUVAS,ETCDE MALHA DE LA OU DE PELOS FINOS'),(5535,'61169200','LUVAS,ETCDE MALHA DE ALGODAO'),(5536,'61169300','LUVAS,ETCDE MALHA DE FIBRAS SINTETICAS'),(5537,'61169900','LUVAS,ETCDE MALHA DE OUTRAS MATERIAS TEXTEIS'),(5538,'61171000','XALES,ECHARPES,LENCOS DE PESCOCO,CACHENES,ETCDE MA'),(5539,'61172000','GRAVATAS,GRAVATAS-BORBOLETAS E PLASTRONS,DE MALHA'),(5540,'61178000','OUTROS ACESSORIOS DE VESTUARIO,CONFECCIONADOS,DE M'),(5541,'61179000','PARTES DE VESTUARIOS OU SEUS ACESSORIOS,DE MALHA'),(5542,'62011100','SOBRETUDOS,IMPERMEAVETCDE LA/PELOS FINOS,MASCULINO'),(5543,'62011200','SOBRETUDOS,IMPERMEAVETCDE ALGODAO,DE USO MASCULINO'),(5544,'62011300','SOBRETUDOS,IMPERMEAVETCDE FIBRA SINT/ARTIFMASCULIN'),(5545,'62011900','SOBRETUDOS,IMPERMEAVETCDE OUTSMATERTEXTMASCULINO'),(5546,'62019100','OUTROS SOBRETUDOS,ETCDE LA/PELOS FINOS,USO MASCULI'),(5547,'62019200','OUTROS SOBRETUDOS,ETCDE ALGODAO,DE USO MASCULINO'),(5548,'62019300','OUTROS SOBRETUDOS,ETCDE FIBRAS SINT/ARTUSO MASCULI'),(5549,'62019900','OUTROS SOBRETUDOS,ETCDE OUTSMATERTEXTUSO MASCULINO'),(5550,'62021100','MANTOS,IMPERMEAVSETCDE LA OU PELOS FINOS,USO FEMIN'),(5551,'62021200','MANTOS,IMPERMEAVSETCDE ALGODAO,DE USO FEMININO'),(5552,'62021300','MANTOS,IMPERMEAVSETCDE FIBRA SINT/ARTIFUSO FEMININ'),(5553,'62021900','MANTOS,IMPERMEAVSETCDE OUTSMATERTEXTUSO FEMININO'),(5554,'62029100','OUTROS MANTOS,ETCDE LA OU PELOS FINOS,DE USO FEMIN'),(5555,'62029200','OUTROS MANTOS,ETCDE ALGODAO,DE USO FEMININO'),(5556,'62029300','OUTROS MANTOS,ETCDE FIBRAS SINTET/ARTIFUSO FEMININ'),(5557,'62029900','OUTROS MANTOS,ETCDE OUTSMATERIAS TEXTEIS,USO FEMIN'),(5558,'62031100','TERNOS (FATOS) DE LA OU DE PELOS FINOS'),(5559,'62031200','TERNOS (FATOS) DE FIBRAS SINTETICAS'),(5560,'62031900','TERNOS (FATOS) DE OUTRAS MATERIAS TEXTEIS'),(5561,'62032100','CONJUNTOS DE LA OU DE PELOS FINOS,DE USO MASCULINO'),(5562,'62032200','CONJUNTOS DE ALGODAO,DE USO MASCULINO'),(5563,'62032300','CONJUNTOS DE FIBRAS SINTETICAS,DE USO MASCULINO'),(5564,'62032900','CONJUNTOS DE OUTRAS MATERIAS TEXTEIS,DE USO MASCUL'),(5565,'62033100','PALETOS (CASACOS) DE LA OU DE PELOS FINOS'),(5566,'62033200','PALETOS (CASACOS) DE ALGODAO'),(5567,'62033300','PALETOS (CASACOS) DE FIBRAS SINTETICAS'),(5568,'62033900','PALETOS (CASACOS) DE OUTRAS MATERIAS TEXTEIS'),(5569,'62034100','CALCAS,JARDINEIRAS,ETCDE LA/PELOS FINOS,USO MASCUL'),(5570,'62034200','CALCAS,JARDINEIRAS,ETCDE ALGODAO,USO MASCULINO'),(5571,'62034300','CALCAS,JARDINEIRAS,ETCDE FIBRA SINTETICA,USO MASCU'),(5572,'62034900','CALCAS,JARDINEIRAS,ETCDE OUTSMATERTEXTUSO MASCULIN'),(5573,'62041100','TAILLEURS (FATOS SAIA-CASACO),DE LA OU DE PELOS FI'),(5574,'62041200','TAILLEURS (FATOS DE SAIA-CASACO) DE ALGODAO'),(5575,'62041300','TAILLEURS (FATOS DE SAIA-CASACO) DE FIBRAS SINTETI'),(5576,'62041900','TAILLEURS (FATOS DE SAIA-CASACO) DE OUTRAS MATTEXT'),(5577,'62042100','CONJUNTOS DE LA OU DE PELOS FINOS,DE USO FEMININO'),(5578,'62042200','CONJUNTOS DE ALGODAO,DE USO FEMININO'),(5579,'62042300','CONJUNTOS DE FIBRAS SINTETICAS,DE USO FEMININO'),(5580,'62042900','CONJUNTOS DE OUTRAS MATERIAS TEXTEIS,DE USO FEMINI'),(5581,'62043100','BLAZERS DE LA OU DE PELOS FINOS,DE USO FEMININO'),(5582,'62043200','BLAZERS DE ALGODAO,DE USO FEMININO'),(5583,'62043300','BLAZERS DE FIBRAS SINTETICAS,DE USO FEMININO'),(5584,'62043900','BLAZERS DE OUTRAS MATERIAS TEXTEIS,DE USO FEMININO'),(5585,'62044100','VESTIDOS DE LA OU DE PELOS FINOS'),(5586,'62044200','VESTIDOS DE ALGODAO'),(5587,'62044300','VESTIDOS DE FIBRAS SINTETICAS'),(5588,'62044400','VESTIDOS DE FIBRAS ARTIFICIAIS'),(5589,'62044900','VESTIDOS DE OUTRAS MATERIAS TEXTEIS'),(5590,'62045100','SAIAS E SAIAS-CALCAS,DE LA OU DE PELOS FINOS'),(5591,'62045200','SAIAS E SAIAS-CALCAS,DE ALGODAO'),(5592,'62045300','SAIAS E SAIAS-CALCAS,DE FIBRAS SINTETICAS'),(5593,'62045900','SAIAS E SAIAS-CALCAS,DE OUTRAS MATERIAS TEXTEIS'),(5594,'62046100','CALCAS,JARDINEIRAS,ETCDE LA/PELOS FINOS,USO FEMINI'),(5595,'62046200','CALCAS,JARDINEIRAS,ETCDE ALGODAO,DE USO FEMININO'),(5596,'62046300','CALCAS,JARDINEIRAS,ETCDE FIBRA SINTETICA,USO FEMIN'),(5597,'62046900','CALCAS,JARDINEIRAS,ETCDE OUTSMATERTEXTUSO FEMININO'),(5598,'62051000','CAMISAS DE LA OU DE PELOS FINOS,DE USO MASCULINO'),(5599,'62052000','CAMISAS DE ALGODAO,DE USO MASCULINO'),(5600,'62053000','CAMISAS DE FIBRAS SINTETICAS/ARTIFICIAIS,USO MASCU'),(5601,'62059000','CAMISAS DE OUTRAS MATERIAS TEXTEIS,DE USO MASCULIN'),(5602,'62061000','CAMISAS,BLUSAS,ETCDE SEDA/DESPERDSDE USO FEMININO'),(5603,'62062000','CAMISAS,BLUSAS,ETCDE LA OU PELOS FINOS,DE USO FEMI'),(5604,'62063000','CAMISAS,BLUSAS,ETCDE ALGODAO,DE USO FEMININO'),(5605,'62064000','CAMISAS,BLUSAS,ETCDE FIBRAS SINT/ARTIFDE USO FEMIN'),(5606,'62069000','CAMISAS,BLUSAS,ETCDE OUTRA MATERIA TEXTIL,USO FEMI'),(5607,'62071100','CUECAS E CEROULAS,DE ALGODAO'),(5608,'62071900','CUECAS E CEROULAS,DE OUTRAS MATERIAS TEXTEIS'),(5609,'62072100','CAMISOLOES E PIJAMAS,DE ALGODAO,DE USO MASCULINO'),(5610,'62072200','CAMISOLOES E PIJAMAS,DE FIBRA SINT/ARTIFUSO MASCUL'),(5611,'62072900','CAMISOLOES E PIJAMAS,DE OUTSMATERTEXTUSO MASCULINO'),(5612,'62079100','CAMISETAS INTERIORES,ETCDE ALGODAO,DE USO MASCULIN'),(5613,'62079200','CAMISETAS INTERIORES,ETCDE FIBRAS SINT/ARTIFMASCUL'),(5614,'62079900','CAMISETAS INTERIORES,ETCDE OUTSMATERTEXTMASCULINO'),(5615,'62081100','COMBINACOES E ANAGUAS,DE FIBRAS SINT/ARTIFUSO FEMI'),(5616,'62081900','COMBINACOES E ANAGUAS,DE OUTSMATERTEXTUSO FEMININO'),(5617,'62082100','CAMISOLAS E PIJAMAS,DE ALGODAO,DE USO FEMININO'),(5618,'62082200','CAMISOLAS E PIJAMAS,DE FIBRAS SINT/ARTIFUSO FEMINI'),(5619,'62082900','CAMISOLAS E PIJAMAS,DE OUTSMATERTEXTEIS,USO FEMINI'),(5620,'62089100','CORPETES,CALCINHAS,PENHOARES,ETCDE ALGODAO'),(5621,'62089200','CORPETES,CALCINHAS,PENHOARES,ETCDE FIBRAS SINT/ART'),(5622,'62089900','CORPETES,CALCINHAS,PENHOARES,ETCDE OUTSMATERTEXTEI'),(5623,'62091000','VESTUARIO P/BEBES E ACESSORIOS,DE LA OU DE PELOS F'),(5624,'62092000','VESTUARIO P/BEBES E ACESSORIOS,DE ALGODAO'),(5625,'62093000','VESTUARIO P/BEBES E ACESSORIOS,DE FIBRAS SINTETICA'),(5626,'62099000','VESTUARIO P/BEBES E ACESSORIOS,DE OUTSMATERIAS TEX'),(5627,'62101000','VESTUARIO CONFECCIONADO COM FELTROS OU FALSOS TECI'),(5628,'62102000','SOBRETUDOS,IMPERMEAVETCDE MATTEXTIL C/PLAST/BORRAC'),(5629,'62103000','MANTOS,IMPERMEAVETCDE MATTEXTIL C/PLASTICO/BORRACH'),(5630,'62104000','OUTROS VESTUARIOS CONFECCC/PLASTICO/BORRACHA,MASCU'),(5631,'62105000','OUTROS VESTUARIOS CONFECCC/PLASTICO/BORRACHA,FEMIN'),(5632,'62111100','SHORTS E SUNGAS,DE BANHO,EXCETO DE MALHA'),(5633,'62111200','MAIOS E BIQUINIS,DE BANHO,EXCETO DE MALHA'),(5634,'62112000','MACACOES E CONJUNTOS,DE ESQUI,EXCETO DE MALHA'),(5635,'62113100','OUTROS VESTUARIOS DE LA OU PELOS FINOS,DE USO MASC'),(5636,'62113200','OUTROS VESTUARIOS DE ALGODAO,DE USO MASCULINO'),(5637,'62113300','OUTROS VESTURAIOS DE FIBRAS SINT/ARTIFDE USO MASCU'),(5638,'62113900','OUTROS VESTUARIOS DE OUTSMATERTEXTEIS,USO MASCULIN'),(5639,'62114100','OUTROS VESTUARIOS DE LA OU PELOS FINOS,DE USO FEMI'),(5640,'62114200','OUTROS VESTUARIOS DE ALGODAO,DE USO FEMININO'),(5641,'62114300','OUTROS VESTUARIOS DE FIBRAS SINT/ARTIFDE USO FEMIN'),(5642,'62114900','OUTROS VESTUARIOS DE OUTSMATERIAS TEXTEIS,USO FEMI'),(5643,'62121000','SUTIAS E \"BUSTIERS\" (\"SOUTIENS\" DE COS ALTO)'),(5644,'62122000','CINTAS E CINTAS-CALCAS'),(5645,'62123000','MODELADORES DE TORSO INTEIRO (CINTAS \"SOUTIENS\")'),(5646,'62129000','ESPARTILHOS,SUSPENSORIOS,LIGAS,ARTEFSSEMELHSE PART'),(5647,'62131000','LENCOS DE ASSOAR E DE BOLSO,DE SEDA/DESPERDSDE SED'),(5648,'62132000','LENCOS DE ASSOAR E DE BOLSO,DE ALGODAO'),(5649,'62139000','LENCOS DE ASSOAR E DE BOLSO,DE OUTRAS MATERIAS TEX'),(5650,'62141000','XALES,ECHARPES,CACHECOIS,ETCDE SEDA/DESPERDSDE SED'),(5651,'62142000','XALES,ECHARPES,CACHECOIS,ETCDE LA OU DE PELOS FINO'),(5652,'62143000','XALES,ECHARPES,CACHECOIS,ETCDE FIBRAS SINTETICAS'),(5653,'62144000','XALES,ECHARPES,CACHECOIS,ETCDE FIBRAS ARTIFICIAIS'),(5654,'62149010','XALES,ECHARPES,CACHECOIS,ETCDE ALGODAO'),(5655,'62149090','XALES,ECHARPES,CACHECOIS,ETCDE OUTRAS MATERIAS TEX'),(5656,'62151000','GRAVATAS,PLASTRONS,ETCDE SEDA OU DESPERDICIOS DE S'),(5657,'62152000','GRAVATAS,PLASTRONS,ETCDE FIBRAS SINTETICAS/ARTIFIC'),(5658,'62159000','GRAVATAS,PLASTRONS,ETCDE OUTRAS MATERIAS TEXTEIS'),(5659,'62160000','LUVAS,MITENES E SEMELHANTES'),(5660,'62171000','OUTROS ACESSORIOS DE VESTUARIO,CONFECCIONADOS'),(5661,'62179000','OUTRAS PARTES DE VESTUARIO OU DOS SEUS ACESSORIOS'),(5662,'63011000','COBERTORES E MANTAS,ELETRICOS'),(5663,'63012000','COBERTORES E MANTAS,DE LA OU PELOS FINOS,NAO ELETR'),(5664,'63013000','COBERTORES E MANTAS,DE ALGODAO,NAO ELETRICOS'),(5665,'63014000','COBERTORES E MANTAS,DE FIBRAS SINTETICAS,NAO ELETR'),(5666,'63019000','OUTROS COBERTORES E MANTAS'),(5667,'63021000','ROUPAS DE CAMA,DE MALHA'),(5668,'63022100','ROUPAS DE CAMA,DE ALGODAO,ESTAMPADAS'),(5669,'63022200','ROUPAS DE CAMA,DE FIBRAS SINTETICAS OU ARTIFESTAMP'),(5670,'63022900','ROUPAS DE CAMA,DE OUTRAS MATERIAS TEXTEIS,ESTAMPAD'),(5671,'63023100','OUTRAS ROUPAS DE CAMA,DE ALGODAO'),(5672,'63023200','OUTRAS ROUPAS DE CAMA,DE FIBRAS SINTETICAS/ARTIFIC'),(5673,'63023900','OUTRAS ROUPAS DE CAMA,DE OUTRAS MATERIAS TEXTEIS'),(5674,'63024000','ROUPAS DE MESA,DE MALHA'),(5675,'63025100','ROUPAS DE MESA,DE ALGODAO,EXCDE MALHA'),(5676,'63025200','ROUPAS DE MESA,DE LINHO,EXCDE MALHA'),(5677,'63025300','ROUPAS DE MESA,DE FIBRAS SINTETICAS/ARTIFEXCDE MAL'),(5678,'63025900','ROUPAS DE MESA,DE OUTRAS MATERIAS TEXTEIS'),(5679,'63026000','ROUPAS DE TOUCADOR/COZINHA,DE TECIDOS ATOALHDE ALG'),(5680,'63029100','OUTRAS ROUPAS DE TOUCADOR OU DE COZINHA,DE ALGODAO'),(5681,'63029200','ROUPAS DE TOUCADOR/COZINHA,DE LINHO'),(5682,'63029300','ROUPAS DE TOUCADOR/COZINHA,DE FIBRAS SINTETICAS/AR'),(5683,'63029900','ROUPAS DE TOUCADOR/COZINHA,DE OUTRAS MATERIAS TEXT'),(5684,'63031100','CORTINAS,SANEFAS,ETCDE MALHA DE ALGODAO'),(5685,'63031200','CORTINAS,SANEFAS,ETCDE MALHA DE FIBRAS SINTETICAS'),(5686,'63031900','CORTINAS,SANEFAS,ETCDE MALHA DE OUTSMATERIAS TEXTE'),(5687,'63039100','CORTINAS,SANEFAS,ETCDE ALGODAO,EXCDE MALHA'),(5688,'63039200','CORTINAS,SANEFAS,ETCDE FIBRAS SINTETICAS,EXCDE MAL'),(5689,'63039900','CORTINAS,SANEFAS,ETCDE OUTSMATERTEXTEIS,EXCDE MALH'),(5690,'63041100','COLCHAS DE MALHA'),(5691,'63041910','COLCHAS DE ALGODAO,EXCDE MALHA'),(5692,'63041990','COLCHAS DE OUTRAS MATERIAS TEXTEIS'),(5693,'63049100','OUTROS ARTEFSGUARNINTERIOR,DE MALHA'),(5694,'63049200','OUTROS ARTEFSGUARNINTERIOR,DE ALGODAO,EXCDE MALHA'),(5695,'63049300','OUTROS ARTEFSGUARNINTERIOR,DE FIBRA SINTEXCDE MALH'),(5696,'63049900','OUTROS ARTEFSGUARNINTERIOR,DE OUTSMATTEXTEXCMALHA'),(5697,'63051000','SACOS P/EMBALAGEM,DE JUTA/OUTRA FIBRA TEXTIL LIBER'),(5698,'63052000','SACOS P/EMBALAGEM,DE ALGODAO'),(5699,'63053310','SACOS P/EMBALAGEM,DE MALHA DE POLIETILENO/POLIPROP'),(5700,'63053390','OUTROS SACOS P/EMBALAGEM,DE LAMINAS DE POLIETILENO'),(5701,'63053900','SACOS P/EMBALAGEM,DE OUTRAS MATERIAS TEXTEIS SINT/'),(5702,'63053200','CONTEINER FLEXIVP/PRODSGRANEL,DE MATTEXTSINT/ARTIF'),(5703,'63059000','OUTROS SACOS P/EMBALAGEM'),(5704,'63061100','ENCERADOS E TOLDOS,DE ALGODAO'),(5705,'63061200','ENCERADOS E TOLDOS,DE FIBRAS SINTETICAS'),(5706,'63061900','ENCERADOS E TOLDOS,DE OUTRAS MATERIAS TEXTEIS'),(5707,'63062100','TENDAS DE ALGODAO'),(5708,'63062200','TENDAS DE FIBRAS SINTETICAS'),(5709,'63062900','TENDAS DE OUTRAS MATERIAS TEXTEIS'),(5710,'63063100','VELAS PARA EMBARCACOES,ETCDE FIBRAS SINTETICAS'),(5711,'63063900','VELAS PARA EMBARCACOES,ETCDE OUTRAS MATERIAS TEXTE'),(5712,'63064100','COLCHOES PNEUMATICOS,DE ALGODAO'),(5713,'63064900','COLCHOES PNEUMATICOS,DE OUTRAS MATERIAS TEXTEIS'),(5714,'63069100','ARTIGOS PARA ACAMPAMENTO,DE ALGODAO'),(5715,'63069900','ARTIGOS PARA ACAMPAMENTO,DE OUTRAS MATERIAS TEXTEI'),(5716,'63071000','RODILHAS,ESFREGOES E OUTSARTEFATOS CONFECCDE LIMPE'),(5717,'63072000','CINTOS E COLETES SALVA-VIDAS'),(5718,'63079010','OUTROS ARTEFATOS CONFECCIONADOS,DE FALSO TECIDO'),(5719,'63079090','OUTROS ARTEFATOS TEXTEIS CONFECCIONADOS'),(5720,'63079020','ARTEFATOS TUBULARES C/TRATIGNIFP/SAIDA EMERGPESSOA'),(5721,'63080000','SORTIDOS DE CORTES DE TECIDO/FIOS,P/CONFECCTAPETES'),(5722,'63090010','VESTUARIO,SEUS ACESSORIOS E SUAS PARTES,USADOS'),(5723,'63090090','OUTROS ARTEFATOS DE MATERIAS TEXTEIS,USADOS'),(5724,'63101000','TRAPOS,CORDEIS,ETCDE MATERIAS TEXTEIS,ESCOLHIDOS'),(5725,'63109000','OUTSTRAPOS,CORDEIS,ETCDE MATERIAS TEXTEIS,EM DESPE'),(5726,'64011000','CALCADOS IMPERMEAVDE BORRACHA/PLASTC/BIQPROTMETAL'),(5727,'64019100','CALCADOS IMPERMEAVDE BORRACHA/PLASTCOBRINDO JOELHO'),(5728,'64019200','CALCADOS IMPERMEAVDE BORRACHA/PLASTCOBRINDO TORNOZ'),(5729,'64019900','OUTROS CALCADOS IMPERMEAVDE BORRACHA/PLASTSEM COST'),(5730,'64021200','CALCADOS P/ESQUI E P/SURFE DE NEVE,DE BORRACHA/PLA'),(5731,'64021900','CALCADOS P/OUTROS ESPORTES,DE BORRACHA OU PLASTICO'),(5732,'64022000','CALCADOS DE BORRACHA/PLASTC/PARTE SUPEREM TIRAS,ET'),(5733,'64023000','OUTROS CALCADOS DE BORRACHA/PLASTICO,C/BIQPROTDE M'),(5734,'64029100','OUTROS CALCADOS DE BORRACHA/PLASTICO,COBRINDO TORN'),(5735,'64029900','OUTROS CALCADOS DE BORRACHA OU PLASTICO'),(5736,'64031200','CALCADOS P/ESQUI E P/SURFE DE NEVE,DE COURO NATURA'),(5737,'64031900','CALCADOS P/OUTROS ESPORTES,DE COURO NATURAL'),(5738,'64032000','CALCADOS DE COURO NATURAL,C/PARTE SUPEREM TIRAS,ET'),(5739,'64033000','CALCADOS DE COURO NATURAL,C/SOLA MADEIRA,S/PALMILH'),(5740,'64034000','OUTSCALCADOS DE COURO NATURAL,C/BIQUEIRA PROTDE ME'),(5741,'64035100','CALCADOS DE COURO NATURAL,SOLA COURO,COBRINDO TORN'),(5742,'64035900','OUTSCALCADOS DE COURO NATURAL E SOLA EXTERIOR DE C'),(5743,'64039100','OUTROS CALCADOS DE COURO NATURAL,COBRINDO O TORNOZ'),(5744,'64039900','OUTROS CALCADOS DE COURO NATURAL'),(5745,'64041100','CALCADOS P/ESPORTES,ETCDE MATTEXTSOLA BORRACHA/PLA'),(5746,'64041900','OUTSCALCADOS DE MATERIA TEXTIL,SOLA DE BORRACHA/PL'),(5747,'64042000','CALCADOS DE MATERIA TEXTIL,COM SOLA EXTERIOR DE CO'),(5748,'64051010','CALCADOS DE COURO RECONSTSOLA EXTERDE BORRACHA/PLA'),(5749,'64051020','CALCADOS DE COURO RECONSTSOLA EXTERDE COURO'),(5750,'64051090','OUTROS CALCADOS DE COURO NATURAL OU RECONSTITUIDO'),(5751,'64052000','OUTROS CALCADOS DE MATERIAS TEXTEIS'),(5752,'64059000','OUTROS CALCADOS'),(5753,'64061000','PARTES SUPERIORES DE CALCADOS E SEUS COMPONENTES'),(5754,'64062000','SOLAS EXTERIORES E SALTOS,DE BORRACHA OU PLASTICO'),(5755,'64069100','OUTRAS PARTES DE CALCADOS,DE MADEIRA'),(5756,'64069910','SOLA EXTERIOR E SALTO,DE CALCADOS,DE COURO NAT/REC'),(5757,'64069920','PALMILHAS DE OUTRAS MATERIAS'),(5758,'64069990','OUTRAS PARTES DE CALCADOS,ETCDE OUTRAS MATERIAS'),(5759,'65010000','ESBOCOS N/ENFORMADOS,DISCOS,ETCDE FELTRO,P/CHAPEUS'),(5760,'65020010','ESBOCOS DE CHAPEUS,ENTRANCADOS,ETCDE PALHA FINA'),(5761,'65020090','ESBOCOS DE CHAPEUS,ENTRANCADOS,ETCDE OUTRAS MATERI'),(5762,'65030000','CHAPEUS E OUTSARTEFSDE FELTRO,OBTIDOS DOS ESBOCOS,'),(5763,'65040010','CHAPEUS E OUTROS ARTEFSENTRANCADOS,ETCDE PALHA FIN'),(5764,'65040090','CHAPEUS E OUTSARTEFSENTRANCADOS,ETCDE OUTSMATERIAS'),(5765,'65051000','COIFAS E REDES,PARA O CABELO'),(5766,'65059000','CHAPEUS E OUTROS ARTEFSDE MALHA/CONFECCCOM RENDAS,'),(5767,'65061000','CAPACETES E OUTROS ARTEFATOS,DE PROTECAO'),(5768,'65069100','CHAPEUS E OUTROS ARTEFSDE BORRACHA OU DE PLASTICO'),(5769,'65069200','CHAPEUS E OUTROS ARTEFSDE PELETERIA NATURAL'),(5770,'65069900','CHAPEUS E OUTROS ARTEFSDE OUTROS MATERIAS,EXCDE MA'),(5771,'65070000','TIRAS P/GUARNINTERIOR,FORROS,ETCP/CHAPEUS/OUTSARTE'),(5772,'66011000','GUARDA-SOIS DE JARDIM E ARTEFATOS SEMELHANTES'),(5773,'66019110','GUARDA-CHUVAS DE HASTE/CABO TELESCOPC/TECIDO SEDA/'),(5774,'66019190','OUTROS GUARDA-CHUVAS,SOMBRINHAS,DE HASTE/CABO TELE'),(5775,'66019900','OUTROS GUARDA-CHUVAS,SOMBRINHAS E GUARDA-SOIS'),(5776,'66020000','BENGALAS,BENGALAS-ASSENTOS,CHICOTES E ARTEFSSEMELH'),(5777,'66031000','PUNHOS,CABOS E CASTOES P/GUARDA-CHUVAS,SOMBRINHAS,'),(5778,'66032000','ARMACOES MONTADAS P/GUARDA-CHUVAS,SOBRINHAS,GUARDA'),(5779,'66039000','OUTRAS PARTES,GUARNICOES E ACESSP/GUARDA-CHUVAS,ET'),(5780,'67010000','PELES/OUTSPARTES DE AVES,C/SUAS PENAS,ETCTRABALHAD'),(5781,'67021000','FLORES,FOLHAGEM,FRUTOS,ARTIFSE PARTES,DE PLASTICO'),(5782,'67029000','FLORES,FOLHAGEM,FRUTOS,ARTIFSE PARTES,DE OUTSMATER'),(5783,'67030000','CABELOS,LA E OUTSMATERTEXTEIS PREPARSP/FABRPERUCAS'),(5784,'67041100','PERUCAS COMPLETAS,DE MATERIAS TEXTEIS SINTETICAS'),(5785,'67041900','BARBAS,SOBRANCELHAS,ETCDE MATERIAS TEXTEIS SINTETI'),(5786,'67042000','PERUCAS,BARBAS,SOBRANCELHAS,ETCDE CABELO'),(5787,'67049000','PERUCAS,BARBAS,SOBRANCELHAS,ETCDE OUTRAS MATERTEXT'),(5788,'68010000','PEDRA P/CALCETAR MEIO-FIO E PLACA P/PAVIMDE PEDRA '),(5789,'68021000','LADRILHOS,ETCDE PEDRA NATURAL,LADO<7CM'),(5790,'68022100','MARMORE,TRAVERTINO,ETCTALHADA/SERRADSUPERFPLANA/LI'),(5791,'68022200','OUTSPEDRAS CALCARIAS,TALHADAS/SERRADSUPERFPLANA/LI'),(5792,'68022300','GRANITO TALHADO OU SERRADO,DE SUPERFICIE PLANA OU '),(5793,'68022900','OUTSPEDRAS DE CANTARIA,TALHAD/SERRADSUPERFPLANA/LI'),(5794,'68029100','MARMORE,TRAVERTINO,ETCTRABALHADO DE OUTRO MODO E O'),(5795,'68029200','OUTRAS PEDRAS CALCARIAS,TRABALHADAS DE OUTMODO E O'),(5796,'68029310','ESFERAS PARA MOINHO,DE GRANITO'),(5797,'68029390','OUTROS GRANITOS TRABALHADOS DE OUTRO MODO E SUAS O'),(5798,'68029910','ESFERAS PARA MOINHO,DE OUTRAS PEDRAS DE CANTARIA,E'),(5799,'68029990','OUTRAS PEDRAS DE CANTARIA,ETCTRABALHADOUTMODO E OB'),(5800,'68030000','ARDOSIA NATURAL TRABALHADA E OBRAS DE ARDOSIA NAT/'),(5801,'68041000','MOS PARA MOER OU DESFIBRAR'),(5802,'68042111','MOS DE DIAMANTE NAT/SINTAGLOMERADOS C/RESINA,D<533'),(5803,'68042119','OUTROS MOS DE DIAMANTE NATURAL/SINTAGLOMERADD<5334'),(5804,'68042190','OUTROS MOS DE DIAMANTE NATURAL/SINTAGLOMERADOS'),(5805,'68042211','MOS DE OUTSABRASIVOS AGLOMERADOS COM RESINA,D<5334'),(5806,'68042219','OUTSMOS DE OUTROS ABRASIVOS AGLOMER/CERAMICA,D<533'),(5807,'68042290','OUTROS MOS DE OUTROS ABRASIVOS AGLOMER/CERAMICA'),(5808,'68042300','OUTROS MOS E ARTEFATOS SEMELHANTES'),(5809,'68043000','PEDRAS P/AMOLAR/POLIR,MANUALMENTE,DE PEDRA NATURAL'),(5810,'68051000','ABRASIVOS NAT/ARTIFEM PO/GRAO,APLICEM TECIDO MATTE'),(5811,'68052000','ABRASIVOS NAT/ARTIFEM PO/GRAO,APLICEM PAPEL/CARTAO'),(5812,'68053010','ABRASIVOS NAT/ARTIFC/SUPORTE PAPEL/CARTAO C/MATTEX'),(5813,'68053020','DISCOS ABRASIVOS DE FIBRA VULCANRECOBOXIDO ALUMINE'),(5814,'68053090','OUTROS ABRASIVOS NAT/ARTIFEM PO/GRAOS APLICOUTMATE'),(5815,'68061000','LAS DE ESCORIAS DE ALTO-FORNOS,ETCEM BLOCOS,FLSROL'),(5816,'68062000','VERMICULITA E ARGILAS,EXPANDIDAS,ESPUMA DE ESCORIA'),(5817,'68069010','PRODUTOS MINERAIS ALUMINOSOS OU SILICOALUMINOS'),(5818,'68069090','OUTRAS OBRAS DE MATERMINERAIS P/ISOLAMCALOR,SOM,ET'),(5819,'68071000','OBRAS DE ASFALTO OU DE PRODUTOS SEMELHANTES,EM ROL'),(5820,'68079000','OUTRAS OBRAS DE ASFALTO OU DE PRODUTOS SEMELHANTES'),(5821,'68080000','PAINEIS E SEMELHDE FIBRA VEGET/PALHA AGLOMCIMENTO,'),(5822,'68091100','CHAPAS,ETCN/ORNAMENTADAS,DE GESSO REVESTPAPEL/CART'),(5823,'68091900','OUTRAS CHAPAS,PLACAS,PAINEIS,ETCN/ORNAMENTADOS,DE '),(5824,'68099000','OUTRAS OBRAS DE GESSO OU DE COMPOSICOES A BASE DE '),(5825,'68101100','BLOCOS E TIJOLOS P/CONSTRUCAO,DE CIMENTO,CONCRETO,'),(5826,'68101900','OUTRAS TELHAS,LADRILHOS,SEMELHSDE CIMENTO,CONCRETO'),(5827,'68109100','ELEMENTOS PRE-FABRP/CONSTRUCAO,DE CIMENTO,CONCRETO'),(5828,'68109900','OUTRAS OBRAS DE CIMENTO,CONCRETO OU DE PEDRA ARTIF'),(5829,'68111000','CHAPAS ONDULADAS DE FIBROCIMENTO,CIMENTO-CELULOSE,'),(5830,'68112000','OUTRAS CHAPAS E SEMELHDE FIBROCIMENTO,CIMENTO-CELU'),(5831,'68113000','TUBO,CONDUTO E ACESSDE FIBROCIMENTO,CIMENTO-CELULO'),(5832,'68119000','OUTRAS OBRAS DE FIBROCIMENTO,CIMENTO-CELULOSE E SE'),(5833,'68121010','AMIANTO (ARBESTO) EM FIBRAS,TRABALHADO'),(5834,'68121020','MISTURAS DE AMIANTO OU AMIANTO E CARBONATO DE MAGN'),(5835,'68122000','FIOS DE AMIANTO OU DAS MISTURAS'),(5836,'68123000','CORDAS E CORDOES,DE AMIANTO OU DAS MISTURAS'),(5837,'68124000','TECIDOS E TECIDOS DE MALHA,DE AMIANTO OU DAS MISTU'),(5838,'68125000','VESTUARIO E ACESSCALCADOS,ETCDE AMIANTO/DAS MISTUR'),(5839,'68126000','PAPEIS,CARTOES E FELTROS,DE AMIANTO OU DAS MISTURA'),(5840,'68127000','FOLHAS COMPRIMIDAS DE AMIANTO E ELASTOMEROS,PARA J'),(5841,'68129010','JUNTAS E OUTSELEMENTOS,DE AMIANTO,C/FUNCAO DE VEDA'),(5842,'68129090','OUTRAS OBRAS DE AMIANTO OU DAS MISTURAS'),(5843,'68131090','OUTRAS GUARNICOES NAO MONTADAS,P/FREIOS,DE AMIANTO'),(5844,'68131010','PASTILHAS NAO MONTADAS,PARA FREIOS,DE AMIANTO,ETC'),(5845,'68139010','DISCOS DE FRICCAO,N/MONTADP/EMBREAGENS,DE AMIANTO,'),(5846,'68139090','OUTSGUARNICOES N/MONTADAS,P/EMBREAGENS,ETCDE AMIAN'),(5847,'68141000','PLACAS/FOLHAS OU TIRAS,DE MICA AGLOMERADA/RECONSTI'),(5848,'68149000','OUTRAS OBRAS DE MICA OU MICA TRABALHADA'),(5849,'68151010','FIBRAS DE CARBONO,PARA USO NAO ELETRICO'),(5850,'68151020','TECIDOS DE FIBRAS DE CARBONO,PARA USO NAO ELETRICO'),(5851,'68151090','OUTRAS OBRAS DE GRAFITA/OUTRAS CARBONOS,P/USO NAO '),(5852,'68152000','OBRAS DE TURFA'),(5853,'68159110','OBRAS CONTMAGNESITA,ETCCRUS,AGLOMERC/AGLUTINQUIM'),(5854,'68159190','OUTRAS OBRAS CONTENDO MAGNESITA,DOLOMITA OU CROMIT'),(5855,'68159911','OBRAS DE PEDRAS ELETROFUNDIDAS,C/TEOR DE ALUMINA>='),(5856,'68159912','OBRAS DE PEDRAS ELETROFUNDIDAS,C/TEOR DE SILICA>=9'),(5857,'68159913','OBRAS DE PEDRAS ELETROFUNDTEOR OXIDO ZIRCONIO>=50%'),(5858,'68159914','OBRAS DE PEDRAS ELETROFUNDALUMINA+SILICA+OXIDZIRCO'),(5859,'68159919','OUTSOBRAS DE PEDRAS/MATERIAS MINERAIS,ELETROFUNDID'),(5860,'68159990','OUTRAS OBRAS DE PEDRAS OU DE OUTRAS MATERIAS MINER'),(5861,'69010000','TIJOLOS/OUTSPECAS CERAMDE FARINHAS SILICIOSAS FOSS'),(5862,'69021011','TIJOLOS REFRATARIOS,MAGNESIANOS OU DE OXIDO CROMO>'),(5863,'69021019','OUTRAS PECAS CERAMREFRATMAGNESIANAS OU DE OXIDO CR'),(5864,'69021090','OUTRAS PECAS CERAMREFRATCOM MAGNESIO/CALCIO/CROMO>'),(5865,'69022010','TIJOLOS REFRATARIOS,SILICO-ALUMINOSOS'),(5866,'69022099','OUTRAS PECAS CERAMREFRATARCOM ALUMINA E/OU SILICA>'),(5867,'69022092','OUTRAS PECAS CERAMREFRATSILICOSA/SEMI-SILICOSA/SIL'),(5868,'69022091','OUTRAS PECAS CERAMREFRATARSILICO-ALUMINOSOS'),(5869,'69022093','OUTRAS PECAS CERAMREFRATSILIMANITA/CARBONETO SILIC'),(5870,'69029090','OUTROS TIJOLOS E PECAS CERAMICAS P/CONSTRUCAO,REFR'),(5871,'69029010','TIJOLOS E OUTRAS PECAS CERAMREFRATARDE GRAFITA'),(5872,'69029020','TIJOLOS E OUTRAS PECAS CERAMREFRATN/FUNDIDOS,ZRO2>'),(5873,'69029030','PECAS CERAMREFRATC>85%,DIAM<=5MICRONS,UTILALTO-FOR'),(5874,'69031011','CADINHOS REFRATARIOS,DE GRAFITA'),(5875,'69031012','CADINHOS REFRATARIOS,DE GRAFITA C/CARBONETO DE SIL'),(5876,'69031019','OUTROS CADINHOS REFRATARIOS,DE GRAFITA/OUTCARBONO>'),(5877,'69031030','TAMPAS/TAMPOES,REFRATARDE GRAFITA OU OUTRO CARBONO'),(5878,'69031040','TUBO REFRATARIO,DE GRAFITA/OUTRO CARBONO OU MISTUR'),(5879,'69031020','RETORTAS REFRATARIAS,DE GRAFITA C/CARBONETO DE SIL'),(5880,'69031090','OUTROS PRODSCERAMREFRATDE GRAFITA OU OUTCARBONO>50'),(5881,'69032010','CADINHOS REFRATARIOS,DE ALUMINA OU ALUMINA C/SILIC'),(5882,'69032020','TAMPAS/TAMPOES,REFRATARDE ALUMINA/ALUMINA C/SILICA'),(5883,'69032030','TUBO REFRATARIO,DE ALUMINA OU ALUMINA COM SILICA>5'),(5884,'69032090','OUTSPRODSCERAMREFRATDE ALUMINA/ALUMINA C/SILICA>50'),(5885,'69039011','TUBO REFRATARIO,DE CARBONETO DE SILICIO'),(5886,'69039012','TUBO REFRATARIO,DE COMPOSTOS DE ZIRCONIO'),(5887,'69039019','OUTROS TUBOS CERAMICOS REFRATARIOS'),(5888,'69039091','OUTROS PRODUTOS CERAMREFRATDE CARBONETO DE SILICIO'),(5889,'69039092','OUTROS PRODUTOS CERAMREFRATDE COMPOSTOS DE ZIRCONI'),(5890,'69039099','OUTROS PRODUTOS CERAMICOS REFRATARIOS'),(5891,'69041000','TIJOLOS DE CERAMICA'),(5892,'69049000','TIJOLEIRAS E OUTROS PRODSP/CONSTRUCAO,DE CERAMICA'),(5893,'69051000','TELHAS DE CERAMICA'),(5894,'69059000','OUTROS PRODUTOS CERAMICOS PARA CONSTRUCAO'),(5895,'69060000','TUBOS,CALHAS/ALGEROZES E ACESSP/CANALIZDE CERAMICA'),(5896,'69071000','LADRILHOS,ETCDE CERAMICA,N/VIDRADOS,N/ESMALTLADO<7'),(5897,'69079000','OUTROS LADRILHOS,ETCDE CERAMICA,N/VIDRADOS,N/ESMAL'),(5898,'69081000','LADRILHOS,ETCDE CERAMICA,VIDRADOS,ESMALTADOS,LADO<'),(5899,'69089000','OUTROS LADRILHOS,ETCDE CERAMICA,VIDRADOS,ESMALTADO'),(5900,'69091100','APARELHOS E ARTEFATOS DE PORCELANA,P/USO QUIM/TECN'),(5901,'69091290','OUTSARTEFATOS DE CERAMICA,EXCPORCELANA,DUREZA>=9MO'),(5902,'69091990','OUTROS APARELHOS E ARTEFDE CERAMICA,P/USO QUIM/TEC'),(5903,'69091210','GUIA-FIOS P/MAQSTEXTDUREZA>=9MOHS,DE OUTSCERAMICAS'),(5904,'69091910','OUTROS GUIA-FIOS P/MAQSTEXTDE CERAMICA EXCPORCELAN'),(5905,'69091220','GUIAS DE AGULHAS,P/CABECAS IMPRD>=9MOHS,DE OUTSCER'),(5906,'69091920','OUTSGUIAS DE AGULHAS P/CABECAS IMPRESSAO,DE OUTSCE'),(5907,'69091930','COLMEIA DE CERAMDE ALUMINA,SILICA E OXIDO MAGNESIO'),(5908,'69099000','ALGUIDARES E OUTROS RECIPDE CERAMICA P/USO RURAL,E'),(5909,'69101000','PIAS,LAVATORIOS,ETCP/SANITARDE PORCELANA'),(5910,'69109000','PIAS,LAVATORIOS,ETCP/SANITARDE CERAMICA,EXCPORCELA'),(5911,'69111010','CONJUNTO P/JANTAR/CAFE/CHA,DE PORCELANA,EMBALAGEM '),(5912,'69111090','OUTROS ARTIGOS P/SERVICO DE MESA/COZINHA,DE PORCEL'),(5913,'69119000','OUTSARTIGOS DE USO DOMESTICO,HIGIENE,ETCDE PORCELA'),(5914,'69120000','LOUCAS/OUTSARTIGOS,USO DOMESTICO,ETCDE OUTSCERAMIC'),(5915,'69131000','ESTATUETAS/OUTROS OBJETOS ORNAMENTDE PORCELANA'),(5916,'69139000','ESTATUETAS/OUTSOBJETOS ORNAMENTDE CERAMEXCPORCELAN'),(5917,'69141000','OUTRAS OBRAS DE PORCELANA'),(5918,'69149000','OUTRAS OBRAS DE CERAMICA,EXCETO PORCELANA'),(5919,'70010000','CACOS/OUTROS RESIDSDE VIDRO E VIDRO EM BLOCOS/MASS'),(5920,'70021000','ESFERAS DE VIDRO,NAO TRABALHADO'),(5921,'70022000','BARRAS OU VARETAS,DE VIDRO,NAO TRABALHADO'),(5922,'70023100','TUBOS DE VIDRO,DE QUARTZO/OUTSILICA,FUNDIDOS,N/TRA'),(5923,'70023200','TUBOS DE OUTSVIDROS,DILATLIN<=0000005/KELVN/TRABAL'),(5924,'70023900','TUBOS DE OUTROS VIDROS,NAO TRABALHADOS'),(5925,'70031200','CHAPAS/FLSN/ARMADAS,DE VIDRO VAZADO/LAMINCORADAS,E'),(5926,'70031900','OUTSCHAPAS E FOLHAS,NAO ARMADAS,DE VIDRO VAZADO/LA'),(5927,'70032000','CHAPAS/FLSARMADAS,DE VIDRO VAZADO/LAMIN'),(5928,'70033000','PERFIS DE VIDRO VAZADO OU LAMINADO'),(5929,'70042000','FOLHAS DE VIDRO ESTIRADO/SOPRADO,CORADO NA MASSA,E'),(5930,'70049000','OUTRAS FOLHAS DE VIDRO ESTIRADO OU SOPRADO'),(5931,'70051000','CHAPAS/FLSDE VIDRO FLOTADO,ETCN/ARMADAS,CAMADA ABS'),(5932,'70052100','CHAPAS/FLSDE VIDRO FLOTADO,ETCN/ARMADAS,CORADO,ETC'),(5933,'70052900','OUTSCHAPAS/FLSDE VIDRO FLOTADO,DESBASTADO,ETCN/ARM'),(5934,'70053000','CHAPAS/FLSDE VIDRO FLOTADO E DESBASTADO/POLIDO,ARM'),(5935,'70060000','VIDRO VAZADO,ESTIRADO,FLOTADO OU DESBASTADO,TRABAL'),(5936,'70071100','VIDROS DE SEGURANCA,TEMPERADOS,P/AUTOMOVEIS/OUTSVE'),(5937,'70071900','OUTROS VIDROS DE SEGURANCA,TEMPERADOS'),(5938,'70072100','VIDROS DE SEGURANCA,DE FLSCONTRACOLADAS,P/AUTOMOVS'),(5939,'70072900','OUTROS VIDROS DE SEGURANCA,DE FOLHAS CONTRACOLADAS'),(5940,'70080000','VIDROS ISOLANTES DE PAREDES MULTIPLAS'),(5941,'70091000','ESPELHOS RETROVISORES PARA VEICULOS'),(5942,'70099100','ESPELHOS DE VIDRO,NAO EMOLDURADOS'),(5943,'70099200','ESPELHOS DE VIDRO,EMOLDURADOS'),(5944,'70101000','AMPOLAS DE VIDRO,P/TRANSPORTE OU EMBALAGEM'),(5945,'70109110','GARRAFOES E GARRAFAS,DE VIDRO,CAPACIDADE>1 LITRO'),(5946,'70109210','GARRAFOES E GARRAFAS,DE VIDRO,033L<CAPACIDADE<=1L'),(5947,'70109220','FRASCOS,BOIOES,VASOS,ETCDE VIDRO,033L<CAPACIDADE<='),(5948,'70109120','FRASCOS,BOIOES,VASOS,ETCDE VIDRO,CAPACIDADE>1L'),(5949,'70109400','GARRAFOES,GARRAFAS,FRASCOS,ETCDE VIDRO,CAPACID<=01'),(5950,'70102000','ROLHAS,TAMPAS E DISPOSITIVOS SEMELHSDE VIDRO'),(5951,'70109300','GARRAFOES,GARRAFAS,FRASCOS,ETCDE VIDRO,015L<C<=033'),(5952,'70111010','AMPOLAS DE VIDRO,ETCPARA LAMPADAS OU TUBOS DE DESC'),(5953,'70111021','BULBOS DE VIDRO,DIAM<=90MM,P/LAMPADAS DE INCANDESC'),(5954,'70111029','AMPOLAS DE VIDRO,ETCPARA LAMPADAS DE INCANDESCENCI'),(5955,'70111090','OUTRAS AMPOLAS,ETCDE VIDRO,PARA ILUMINACAO ELETRIC'),(5956,'70112000','AMPOLAS DE VIDRO,ETCPARA TUBOS CATODICOS'),(5957,'70119000','OUTRAS AMPOLAS/INVOLUCROS,ABERTOS,DE VIDRO,SUAS PA'),(5958,'70120000','AMPOLAS DE VIDRO,P/GARRAFAS TERMICAS,ETCISOLAMA VA'),(5959,'70131000','OBJETOS DE VITROCERAMICA,P/SERVICO DE MESA,COZINHA'),(5960,'70132100','RECIPIENTES PARA BEBER,DE CRISTAL DE CHUMBO'),(5961,'70132900','OUTROS RECIPIENTES PARA BEBER,DE VIDRO'),(5962,'70133100','OBJETOS DE CRISTAL DE CHUMBO,P/SERVICO DE MESA/COZ'),(5963,'70133210','CAFETEIRAS/CHALEIRAS,DE VIDRO,DILATLIN<=0000005KEL'),(5964,'70133290','OUTSOBJSDE VIDRO,P/SERVMESA/COZINHA,DILAT<=0000005'),(5965,'70133900','OUTROS OBJETOS DE VIDRO,P/SERVICO DE MESA/COZINHA'),(5966,'70139190','OUTROS OBJSDE CRISTAL DE CHUMBO,P/TOUCADOR/ESCRITO'),(5967,'70139110','OBJETOS DE CRISTAL DE CHUMBO,P/ORNAMENTDE INTERIOR'),(5968,'70139900','OUTROS OBJETOS DE VIDRO,P/TOUCADOR,ESCRITORIO,ETC'),(5969,'70140000','ARTEFATOS DE VIDRO PARA SINALIZACAO,ETC'),(5970,'70151010','VIDRO P/LENTES CORRETIVAS,FOTOCROMATN/TRABALHOPTIC'),(5971,'70151091','VIDRO P/LENTES CORRETIVAS,BRANCO,N/TRABALHOPTICAME'),(5972,'70151092','VIDRO P/LENTES CORRETIVAS,COLORIDO,N/TRABALHOPTICA'),(5973,'70159010','VIDRO PARA RELOGIOS'),(5974,'70159020','VIDRO PARA MASCARAS,OCULOS OU ANTEPAROS,PROTETORES'),(5975,'70159030','VIDRO PARA OS DEMAIS OCULOS'),(5976,'70159090','OUTSVIDROS P/APARSSEMELHRELOGIO,ESFERAS DE VIDRO,E'),(5977,'70161000','CUBOS,PASTILHAS,ETCDE VIDRO,P/MOSAICOS E DECORACOE'),(5978,'70169000','BLOCOS,ETCDE VIDRO PRENSADO/MOLDADO,P/CONSTRUCAO,E'),(5979,'70171000','ARTEFATOS DE QUARTZO/OUTRAS SILICAS FUNDP/LABORATE'),(5980,'70172000','ARTEFATOS DE OUTSVIDROS,DILAT<=0000005K,P/LABORATE'),(5981,'70179000','OUTROS ARTEFSDE VIDRO,P/LABORATORIO,HIGIENE E FARM'),(5982,'70181010','CONTAS DE VIDRO'),(5983,'70181020','IMITACOES DE PEROLAS,PEDRAS PRECIOSAS/SEMI,DE VIDR'),(5984,'70181090','OUTROS ARTEFSDE VIDRO SEMELHIMITACAO PEDRAS PRECIO'),(5985,'70182000','MICROESFERAS DE VIDRO,DE DIAMETRO<=1MM'),(5986,'70189000','OUTRAS OBRAS E OBJETOS DE ORNAMENTACAO,DE VIDRO'),(5987,'70191100','FIOS DE FIBRAS DE VIDRO,CORTADOS,DE COMPRIMENTO<=5'),(5988,'70191900','OUTRAS MECHAS E FIOS,DE FIBRAS DE VIDRO'),(5989,'70191200','MECHAS LIGEIRAMTORCIDAS (\"ROVINGS\") DE FIBRAS DE V'),(5990,'70194000','TECIDOS DE MECHAS LIGEIRAMTORCIDAS DE FIBRAS DE VI'),(5991,'70195100','TECIDOS DE FIBRAS DE VIDRO,DE LARGURA<=30CM'),(5992,'70195210','TECIDOS DE FIBRAS DE VIDRO,P/FABRPLACAS CIRCUITO E'),(5993,'70195290','OUTROS TECIDOS FIBRAS VIDRO,L>30CM,PTOTAFETA,P<250'),(5994,'70195900','OUTROS TECIDOS DE FIBRAS DE VIDRO'),(5995,'70193100','ESTEIRAS \"MATS\" DE FIBRAS DE VIDRO,NAO TECIDOS'),(5996,'70193200','VEUS DE FIBRAS DE VIDRO,NAO TECIDOS'),(5997,'70193900','MANTAS,COLCHOES,ETCDE FIBRAS DE VIDRO,NAO TECIDOS'),(5998,'70199000','OUTRAS FIBRAS DE VIDRO E SUAS OBRAS'),(5999,'70200000','OUTRAS OBRAS DE VIDRO'),(6000,'71011000','PEROLAS NATURAIS,NAO MONTADAS,NEM ENGASTADAS'),(6001,'71012100','PEROLAS CULTIVADAS,EM BRUTO,NAO MONTADAS,NEM ENGAS'),(6002,'71012200','PEROLAS CULTIVADAS,TRABALHADAS,N/MONTADAS,N/ENGAST'),(6003,'71021000','DIAMANTES NAO SELECIONADOS,NAO MONTADOS,NEM ENGAST'),(6004,'71022100','DIAMANTES INDUSTRIAIS,EM BRUTO OU SERRADOS,CLIVADO'),(6005,'71022900','OUTROS DIAMANTES INDUSTRIAIS,NAO MONTADOS,NEM ENGA'),(6006,'71023100','DIAMANTES N/INDUSTRIAIS,EM BRUTO/SERRADOS/CLIVADOS'),(6007,'71023900','OUTROS DIAMANTES NAO INDUSTRIAIS,N/MONTADOS,N/ENGA'),(6008,'71031000','PEDRAS PRECIOSAS/SEMI,EM BRUTO,SERRADAS OU DESBAST'),(6009,'71039100','RUBIS,SAFIRAS E ESMERALDAS,TRABALHADAS DE OUTRO MO'),(6010,'71039900','OUTRAS PEDRAS PRECIOSAS/SEMI,TRABALHADAS DE OUTRO '),(6011,'71041000','QUARTZO PIEZOELETRICO'),(6012,'71042010','DIAMANTES SINT/RECONSTITEM BRUTO/SERRADOS/DESBASTA'),(6013,'71042090','OUTRAS PEDRAS SINT/RECONSTEM BRUTO/SERRADOS/DESBAS'),(6014,'71049000','OUTRAS PEDRAS SINT/RECONSTMESMO TRABALHADAS/COMBIN'),(6015,'71051000','PO DE DIAMANTES'),(6016,'71059000','PO DE PEDRAS PRECIOSAS,SEMIPRECIOSAS OU SINTETICAS'),(6017,'71061000','PO DE PRATA'),(6018,'71069100','PRATA EM FORMAS BRUTAS'),(6019,'71069210','PRATA EM BARRAS,FIOS E PERFIS DE SECAO MACICA'),(6020,'71069220','PRATA EM CHAPAS,LAMINAS,FOLHAS E TIRAS'),(6021,'71069290','PRATA EM OUTRAS FORMAS SEMIMANUFATURADAS'),(6022,'71070000','METAIS COMUNS FOLHEADOS,ETCDE PRATA,EM BRUTO,SEMIM'),(6023,'71081100','PO DE OURO'),(6024,'71081200','OURO EM OUTRAS FORMAS BRUTAS,PARA USO NAO MONETARI'),(6025,'71081311','OURO EM BARRAS,FIOS,ETCDE BULHAO DOURADO,P/USO N/M'),(6026,'71081319','OUTRAS BARRAS,FIOS,ETCDE OURO,PARA USO N/MONETARIO'),(6027,'71081399','OURO EM OUTRA FORMA SEMIMANUFP/USO NAO MONETARIO'),(6028,'71081391','OURO EM OUTFORMA SEMIMANUFBULHAO DOURADO,USO N/MON'),(6029,'71082000','OURO EM FORMAS BRUTAS/SEMIMANUFATURADAS,P/USO MONE'),(6030,'71090000','METAIS COMUNS/PRATA,FOLHEADO/CHAPEADO OURO,EM BRUT'),(6031,'71101100','PLATINA EM FORMAS BRUTAS OU EM PO'),(6032,'71101910','PLATINA EM BARRAS,FIOS E PERFIS DE SECAO MACICA'),(6033,'71101990','PLATINA EM OUTRAS FORMAS SEMIMANUFATURADAS'),(6034,'71102100','PALADIO EM FORMAS BRUTAS OU EM PO'),(6035,'71102900','PALADIO EM FORMAS SEMIMANUFATURADAS'),(6036,'71103100','RODIO EM FORMAS BRUTAS OU EM PO'),(6037,'71103900','RODIO EM FORMAS SEMIMANUFATURADAS'),(6038,'71104100','IRIDIO,OSMIO E RUTENIO,EM FORMAS BRUTAS OU EM PO'),(6039,'71104900','IRIDIO,OSMIO E RUTENIO,EM FORMAS SEMIMANUFATURADAS'),(6040,'71110000','METAIS COMUNS/PRATA/OURO,FOLH/CHAPPLATINA,EM BRUTO'),(6041,'71121000','DESPERDS/RESIDDE OURO/METAIS FOLHEADO/CHAPEADO DE '),(6042,'71122000','DESPERDS/RESIDDE PLATINA/METAIS FOLHD/CHAPDDE PLAT'),(6043,'71129000','DESPERDS/RESIDDE OUTSMETPREC/METFOLH/CHAPMETPREC'),(6044,'71131100','ARTEFATOS DE JOALHARIA,DE PRATA,MESMO FOLHDE METPR'),(6045,'71131900','ARTEFATOS DE JOALHARIA,DE OUTROS METAIS PRECIOSOS,'),(6046,'71132000','ARTEFATOS DE JOALHARIA,DE METAIS COMUNS FOLHMETAL '),(6047,'71141100','ARTEFATOS DE OURIVESARIA,DE PRATA,MESMO FOLHMETPRE'),(6048,'71141900','ARTEFATOS DE OURIVESARIA,DE OUTROS METAIS PRECIOSO'),(6049,'71142000','ARTEFATOS DE OURIVESARIA,DE METAIS COMUNS FOLHMETP'),(6050,'71151000','TELAS OU GRADES CATALISADORAS,DE PLATINA'),(6051,'71159000','OUTRAS OBRAS DE METAIS PREC/METAIS FOLH/CHAPMETAL '),(6052,'71161000','OBRAS DE PEROLAS NATURAIS OU CULTIVADAS'),(6053,'71162010','OBRAS DE DIAMANTES SINTETICOS'),(6054,'71162020','GUIAS DE AGULHAS,DE RUBI,PARA CABECAS DE IMPRESSAO'),(6055,'71162090','OUTRAS OBRAS DE PEDRAS PRECIOSAS/SEMI,SINTET/RECON'),(6056,'71171100','ABOTOADURAS E OUTROS BOTOES,DE METAIS COMUNS'),(6057,'71171900','OUTRAS BIJUTERIAS DE METAIS COMUNS'),(6058,'71179000','OUTRAS BIJUTERIAS'),(6059,'71181010','MOEDAS DESTINADAS A TER CURSO LEGAL NO PAIS IMPORT'),(6060,'71181090','OUTRAS MOEDAS SEM CURSO LEGAL,EXCETO DE OURO'),(6061,'71189000','OUTRAS MOEDAS'),(6062,'72011000','FERRO FUNDIDO BRUTO NAO LIGADO,C/PESO<=05% DE FOSF'),(6063,'72012000','FERRO FUNDIDO BRUTO NAO LIGADO,C/PESO>05% DE FOSFO'),(6064,'72015000','LIGAS DE FERRO FUNDIDO BRUTO,FERRO \"SPIEGEL\"(ESPEC'),(6065,'72021100','FERROMANGANES CONTENDO,EM PESO>2% DE CARBONO'),(6066,'72021900','OUTRAS LIGAS DE FERROMANGANES'),(6067,'72022100','FERROSSILICIO CONTENDO PESO>55% DE SILICIO'),(6068,'72022900','OUTRAS LIGAS DE FERROSSILICIO'),(6069,'72023000','FERROSSILICIO-MANGANES'),(6070,'72024100','FERROCROMO CONTENDO PESO>4% DE CARBONO'),(6071,'72024900','OUTRAS LIGAS DE FERROCROMO'),(6072,'72025000','FERROSSILICIO-CROMO'),(6073,'72026000','FERRONIQUEL'),(6074,'72027000','FERROMOLIBDENIO'),(6075,'72028000','FERROTUNGSTENIO E FERROSSILICIO-TUNGSTENIO'),(6076,'72029100','FERROTITANIO E FERROSSILICIO-TITANIO'),(6077,'72029200','FERROVANADIO'),(6078,'72029300','FERRONIOBIO'),(6079,'72029990','OUTROS FERROLIGAS'),(6080,'72029910','FERROFOSFOROS'),(6081,'72031000','PRODSFERROSOS DA REDUCAO DIRETA DOS MINERIOS DE FE'),(6082,'72039000','OUTROS PRODSFERROSOS ESPONJOSOS,EM PEDACOS,ESFERAS'),(6083,'72041000','DESPERDICIOS E RESIDUOS DE FERRO FUNDIDO'),(6084,'72042100','DESPERDICIOS E RESIDUOS DE DE ACOS INOXIDAVEIS'),(6085,'72042900','DESPERDICIOS E RESIDUOS DE OUTRAS LIGAS DE ACO'),(6086,'72043000','DESPERDICIOS E RESIDUOS DE FERRO OU ACO ESTANHADOS'),(6087,'72044100','RESIDUOS DO TORNO,DA FRESA,APARAS,LASCAS,LIMALHAS,'),(6088,'72044900','OUTROS DESPERDICIOS E RESIDUOS DE FERRO OU ACO'),(6089,'72045000','DESPERDICIOS DE FERRO OU ACO EM LINGOTES'),(6090,'72051000','GRANALHAS DE FERRO FUNDIDO BRUTO,\"SPIEGEL\",FERRO O'),(6091,'72052100','POS DE LIGAS DE ACO'),(6092,'72052910','POS DE FERRO ESPONJOSO,TEOR EM PESO>=98% DE FERRO'),(6093,'72052990','OUTSPOS DE FERRO FUNDIDO BRUTO,\"SPIEGEL\",FERRO OU '),(6094,'72061000','FERRO E ACOS,EM LINGOTES'),(6095,'72069000','FERRO E ACOS NAO LIGADOS OU EM OUTRAS FORMAS PRIMA'),(6096,'72071190','OUTSPRODSSEMIMANUFFERRO/ACO,C<025%,SECTRANSVL<2E'),(6097,'72071110','BILLETS DE FERRO/ACO,C<025%,SECTRANSVQUAD/RETL<2E'),(6098,'72071200','OUTROS PRODSSEMIMANUFFERRO/ACO,C<025%,SECTRANSVRET'),(6099,'72071900','OUTSPRODSSEMIMANUFFERRO/ACO,N/LIGADOS,CARBONO<025%'),(6100,'72072000','PRODSSEMIMANUFATDE FERRO/ACO,N/LIGADOS,CARBONO>=02'),(6101,'72083610','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,E>10MM,ELAST355'),(6102,'72082500','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,DECAPE>=475MM'),(6103,'72083700','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,475MM<E<=10MM'),(6104,'72082610','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,DECAPE>=3MM,355'),(6105,'72083810','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,3<=E<475MM,355M'),(6106,'72082710','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,DECAPE<3MM,275M'),(6107,'72083910','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,E<3MM,ELAST275M'),(6108,'72083690','OUTROS LAMINFERRO/ACO,L>=6DM,QUENTE,ROLOS,E>10MM'),(6109,'72082690','OUTSLAMINFERRO/ACO,L>=6DM,QUENTE,ROLOS,DECAP3<=E<4'),(6110,'72083890','OUTSLAMINFERRO/ACO,L>=6DM,QUENTE,ROLOS,3MM<=E<=475'),(6111,'72081000','LAMINFERRO/ACO,QUENTE,L>=60CM,ROLO,MOTIVO EM RELEV'),(6112,'72083990','OUTROS LAMINFERRO/ACO,L>=6DM,QUENTE,ROLOS,E<3MM'),(6113,'72082790','OUTROS LAMINFERRO/ACO,L>=6DM,QUENTE,ROLOS,DECAPE<3'),(6114,'72085200','LAMINFERRO/ACO,QUENTE,L>=60CM,N/ENROLADO,475<=E<=1'),(6115,'72085300','LAMINFERRO/ACO,QUENTE,L>=60CM,N/ENROLADO,3MM<=E<47'),(6116,'72085100','LAMINFERRO/ACO,QUENTE,L>=60CM,N/ENROLADO,E>10MM'),(6117,'72085400','LAMINFERRO/ACO,QUENTE,L>=60CM,N/ENROLADO,E<3MM'),(6118,'72084000','LAMINFERRO/ACO,QUENTE,L>=60CM,N/ENROLADO,MOTIVO RE'),(6119,'72089000','OUTSLAMINFERRO/ACO,L>=6DM,QUENTE,N/FOLHEADOS/CHAPE'),(6120,'72091600','LAMINFERRO/ACO,A FRIO,L>=6DM,EM ROLOS,1MM<E<3MM'),(6121,'72091800','LAMINFERRO/ACO,A FRIO,L>=6DM,EM ROLOS,E<05MM'),(6122,'72091500','LAMINFERRO/ACO,A FRIO,L>=6DM,EM ROLOS,E>=3MM'),(6123,'72091700','LAMINFERRO/ACO,A FRIO,L>=6DM,EM ROLOS,05MM<=E<=1MM'),(6124,'72092700','LAMINFERRO/ACO,A FRIO,L>=6DM,N/ENROLADO,05MM<=E<=1'),(6125,'72092500','LAMINFERRO/ACO,A FRIO,L>=6DM,N/ENROLADO,E>=3MM'),(6126,'72092600','LAMINFERRO/ACO,A FRIO,L>=6DM,N/ENROLADO,1MM<E<3MM'),(6127,'72092800','LAMINFERRO/ACO,A FRIO,L>=6DM,N/ENROLADO,E<05MM'),(6128,'72099000','OUTSLAMINFERRO/ACO,L>=6DM,A FRIO,N/FOLHEADOS/CHAPE'),(6129,'72101100','LAMINFERRO/ACO,L>=6DM,ESTANHADO,E>=05MM'),(6130,'72101200','LAMINFERRO/ACO,L>=6DM,ESTANHADO,E<05MM'),(6131,'72102000','LAMINFERRO/ACO,L>=6DM,REVESTCHUMBO,INCLCHUMBOESTAN'),(6132,'72103010','LAMINFERRO/ACO,L>=6DM,GALVANELETROLITICAME<475MM'),(6133,'72103090','OUTROS LAMINFERRO/ACO,L>=6DM,GALVANELETROLITICAMEN'),(6134,'72104110','LAMINFERRO/ACO,L>=6DM,GALVANOUTPROCONDULADO,E<47MM'),(6135,'72104190','OUTROS LAMINFERRO/ACO,L>=6DM,GALVANOUTPROCONDULADO'),(6136,'72104910','LAMINFERRO/ACO,L>=6DM,GALVANOUTRO PROCE<475MM'),(6137,'72104990','OUTROS LAMINFERRO/ACO,L>=6DM,GALVANOUTRO PROC'),(6138,'72105000','LAMINFERRO/ACO,L>=6DM,REVESTOXIDO DE CROMO E/OU CR'),(6139,'72106100','LAMINFERRO/ACO,L>=6DM,REVESTLIGAS DE ALUMINIO-ZINC'),(6140,'72106900','OUTROS LAMINFERRO/ACO,L>=6DM,REVESTALUMINIO'),(6141,'72107010','LAMINFERRO/ACO,L>=6DM,PINTADOS OU ENVERNIZADOS'),(6142,'72107020','LAMINFERRO/ACO,L>=6DM,REVESTPLASTICOS'),(6143,'72109000','OUTSLAMINFERRO/ACO,L>=6DM,FOLHEADOS/CHAPEADOS/REVE'),(6144,'72111300','LAMINFERRO/ACO,QUENTE,15<L<60CM,E>=4MM,N/ENROLADO,'),(6145,'72111400','OUTROS LAMINFERRO/ACO,L<6DM,QUENTE,E>=475MM'),(6146,'72111900','OUTROS LAMINFERRO/ACO,L<6DM,QUENTE,N/FOLHEADOS,ETC'),(6147,'72112910','LAMINFERRO/ACO,A FRIO,L<6DM,TEOR 025%<=CARBONO<06%'),(6148,'72112920','LAMINFERRO/ACO,A FRIO,L<6DM,TEOR>=06% DE CARBONO'),(6149,'72112300','LAMINFERRO/ACO,A FRIO,L<6DM,TEOR<025% DE CARBONO'),(6150,'72119090','OUTROS LAMINFERRO/ACO,L<6DM,N/FOLHEADOS/CHAPEADOS,'),(6151,'72119010','OUTROS LAMINFERRO/ACO,L<6DM,TEOR>=06% DE CARBONO'),(6152,'72121000','LAMINFERRO/ACO,L<6DM,ESTANHADO'),(6153,'72122010','LAMINFERRO/ACO,L<6DM,GALVANELETROLITE<475MM'),(6154,'72122090','OUTROS LAMINFERRO/ACO,L<6DM,GALVANELETROLIT'),(6155,'72123000','LAMINFERRO/ACO,L<6DM,GALVANOUTRO PROCESSO'),(6156,'72124010','LAMINFERRO/ACO,L<6DM,PINTADO OU ENVERNIZADO'),(6157,'72124020','LAMINFERRO/ACO,L<6DM,REVESTIDO DE PLASTICOS'),(6158,'72125000','LAMINFERRO/ACO,L<6DM,REVESTIDO DE OUTRAS MATERIAS'),(6159,'72126000','LAMINFERRO/ACO,L<6DM,FOLHEADO OU CHAPEADO'),(6160,'72131000','FIO-MAQUINA DE FERRO/ACO,DENTADO,C/NERVURA,SULCO,R'),(6161,'72132000','FIO-MAQUINA DE ACOS PARA TORNEAR'),(6162,'72139190','OUTSFIO-MAQUINAS DE FERRO/ACO,N/LIGADO,SECCIRCD<14'),(6163,'72139990','OUTROS FIO-MAQUINAS DE FERRO/ACO,N/LIGADO'),(6164,'72139110','FIO-MAQUINA DE FERRO/ACO,SECCIRCD<14MM,CARBONO>=06'),(6165,'72139910','OUTROS FIO-MAQUINAS DE FERRO/ACO,N/LIGADO,CARBONO>'),(6166,'72141010','BARRAS DE FERRO/ACO,FORJADAS,QUENTE,CARBONO<=060%'),(6167,'72141090','OUTRAS BARRAS DE FERRO/ACO,N/LIGFORJADA,QUENTE'),(6168,'72142000','BARRAS DE FERRO/ACO,LAMINQUENTE,DENTADAS,ETC'),(6169,'72143000','BARRAS DE ACOS PARA TORNEAR,LAMINADAS,ETCA QUENTE'),(6170,'72149910','BARRAS DE FERRO/ACO,LAMINETCQUENTE,SECCIRCULAR'),(6171,'72149990','OUTRAS BARRAS DE FERRO/ACO,N/LIGLAMINETCQUENTE'),(6172,'72149100','BARRAS DE FERRO/ACO,LAMINETCQUENTE,SECTRANSVRETANG'),(6173,'72151000','BARRAS DE ACOS PARA TORNEAR,OBTIDAS/ACABADAS A FRI'),(6174,'72155000','OUTSBARRAS DE FERRO/ACO,N/LIGOBTIDAS/ACABADAS A FR'),(6175,'72159010','OUTRAS BARRAS DE FERRO/ACO,N/LIGCARBONO<=060%'),(6176,'72159090','OUTRAS BARRAS DE FERRO/ACO,N/LIG'),(6177,'72161000','PERFIS DE FERRO/ACO,EM U,I,H,LAMINETCQUENTE,H<8CM'),(6178,'72162100','PERFIS DE FERRO/ACO,EM L,LAMINETCA QUENTE,H<8CM'),(6179,'72162200','PERFIS DE FERRO/ACO,EM T,LAMINETCA QUENTE,H<8CM'),(6180,'72163100','PERFIS DE FERRO/ACO,EM U,LAMINETCA QUENTE,H>=8CM'),(6181,'72163200','PERFIS DE FERRO/ACO,EM I,LAMINETCA QUENTE,H>=8CM'),(6182,'72163300','PERFIS DE FERRO/ACO,EM H,LAMINETCA QUENTE,H>=8CM'),(6183,'72164010','PERFIS DE FERRO/ACO,EM L,T,LAMINETCQUENTE,8<=H<=20'),(6184,'72164090','PERFIS DE FERRO/ACO,EM L,T,LAMINETCQUENTE,H>=8CM'),(6185,'72165000','OUTROS PERFIS DE FERRO/ACO,N/LIGLAMINETCQUENTE'),(6186,'72166110','PERFIS DE FERRO/ACO,OBT/ACABDE PRODSLAMINFRIO,H<8C'),(6187,'72166910','OUTROS PERFIS DE FERRO/ACO,OBT/ACABA FRIO,H<8CM'),(6188,'72166190','OUTSPERFIS DE FERRO/ACO,OBT/ACABFRIO,LAMPLANO,H>=8'),(6189,'72166990','OUTROS PERFIS DE FERRO/ACO,OBT/ACABA FRIO'),(6190,'72169900','OUTROS PERFIS DE FERRO/ACO,NAO LIGADOS'),(6191,'72169100','OUTROS PERFIS DE FERRO/ACO,OBT/ACABFRIO,LAMINPLANO'),(6192,'72172090','OUTROS FIOS DE FERRO/ACO,N/LIGADOS,GALVANIZADOS'),(6193,'72171011','FIOS DE FERRO/ACO N/LIGN/REVC>=06%,F E S<0035%,ETC'),(6194,'72173090','OUTSFIOS DE FERRO/ACO,N/LIGREVESTOUTSMETAIS COMUNS'),(6195,'72171019','OUTSFIOS DE FERRO/ACO N/LIGADOS,N/REVESTCARBONO>=0'),(6196,'72171090','OUTROS FIOS DE FERRO/ACO,N/LIGADOS,N/REVESTIDOS'),(6197,'72172010','FIOS DE FERRO/ACO,N/LIGADOS,GALVANIZADOS,CARBONO>='),(6198,'72173010','FIOS DE FERRO/ACO,REVESTOUTSMETCOMUNS,CARBONO>=06%'),(6199,'72179000','OUTROS FIOS DE FERRO/ACO,N/LIG'),(6200,'72181000','ACOS INOXIDAVEIS,EM LINGOTES E OUTRAS FORMAS PRIMA'),(6201,'72189100','PRODSSEMIMANUFATURADOS,DE ACOS INOXSECTRANSVRETANG'),(6202,'72189900','OUTROS PRODUTOS SEMIMANUFATURADOS,DE ACOS INOXIDAV'),(6203,'72191100','LAMINACOS INOXQUENTE,L>=600MM,ROLOS,E>10MM'),(6204,'72191200','LAMINACOS INOXQUENTE,L>=600MM,ROLOS,475MM<=E<=10MM'),(6205,'72191300','LAMINACOS INOXQUENTE,L>=600MM,ROLOS,3MM<=E<475MM'),(6206,'72191400','LAMINACOS INOXQUENTE,L>=600MM,ROLOS,E<3MM'),(6207,'72192100','LAMINACOS INOXQUENTE,L>=600MM,N/ENROLE>10MM'),(6208,'72192200','LAMINACOS INOXQUENTE,L>=600MM,N/ENROL475MM<=E<=10M'),(6209,'72192300','LAMINACOS INOXQUENTE,L>=600MM,N/ENROL3MM<=E<475MM'),(6210,'72192400','LAMINACOS INOXQUENTE,L>=600MM,E<3MM'),(6211,'72193100','LAMINACOS INOXA FRIO,L>=600MM,E>=475MM'),(6212,'72193200','LAMINACOS INOXA FRIO,L>=600MM,3MM<=E<475MM'),(6213,'72193300','LAMINACOS INOXA FRIO,L>=600MM,1MM<E<3MM'),(6214,'72193400','LAMINACOS INOXA FRIO,L>=600MM,05MM<=E<=1MM'),(6215,'72193500','LAMINACOS INOXA FRIO,L>=600MM,E<05MM'),(6216,'72199010','OUTROS LAMINACOS INOXL>=600MM,E<475MM,DUREZA>=42HR'),(6217,'72199090','OUTROS LAMINACOS INOXL>=600MM'),(6218,'72201100','LAMINACOS INOXQUENTE,L<600MM,E>=475MM'),(6219,'72201210','LAMINACOS INOXQUENTE,L<600MM,E<=15MM'),(6220,'72201220','LAMINACOS INOXQUENTE,L<600MM,15MM<E<=3MM'),(6221,'72201290','OUTROS LAMINACOS INOXQUENTE,L<600MM'),(6222,'72202010','PRODSLAMINPLANOS DE ACOS INOXA FRIO,L<=23MM,E<=01M'),(6223,'72202090','OUTROS PRODSLAMINPLANOS DE ACOS INOXA FRIO,L<600MM'),(6224,'72209000','OUTROS LAMINACOS INOXL<600MM'),(6225,'72210000','FIO-MAQUINA DE ACOS INOXIDAVEIS'),(6226,'72221100','BARRAS DE ACOS INOXLAMINETCQUENTE,SECCIRCULAR'),(6227,'72221910','BARRAS DE ACOS INOXLAMINETCQUENTE,SECTRANSVRETANG'),(6228,'72221990','OUTRAS BARRAS DE ACOS INOXIDAVEIS,LAMINETCA QUENTE'),(6229,'72222000','BARRAS DE ACOS INOXOBTIDAS/COMPLETAMACABADAS A FRI'),(6230,'72223000','OUTRAS BARRAS DE ACOS INOXIDAVEIS'),(6231,'72224090','OUTROS PERFIS DE ACOS INOXIDAVEIS'),(6232,'72224010','PERFIS DE ACOS INOXIDAVEIS,ALTURA>=80MM'),(6233,'72230000','FIOS DE ACOS INOXIDAVEIS'),(6234,'72241000','OUTSLIGAS DE ACOS,EM LINGOTES E OUTSFORMAS PRIMARI'),(6235,'72249000','PRODUTOS SEMIMANUFATURADOS,DE OUTRAS LIGAS DE ACOS'),(6236,'72251100','LAMINLIGAS DE ACOS AO SILICIO,L>=600MM,GRAOS ORIEN'),(6237,'72251900','OUTROS LAMINDE LIGAS DE ACOS AO SILICIO,L>=600MM'),(6238,'72252000','LAMINLIGAS DE ACOS DE CORTE RAPIDO,L>=600MM'),(6239,'72253000','LAMINDE OUTRAS LIGAS ACOS,QUENTE,L>=600MM,ROLOS'),(6240,'72254010','LAMINDE OUTSLIGAS ACOS,QUENTE,L>=600MM,N/ENROLE<=7'),(6241,'72254090','OUTROS LAMINDE OUTSLIGAS ACOS,QUENTE,L>=600MM,N/EN'),(6242,'72255000','LAMINDE OUTRAS LIGAS ACOS,A FRIO,L>=600MM'),(6243,'72259100','LAMINDE OUTRAS LIGAS ACOS,L>=600MM,GALVANELETROLIT'),(6244,'72259200','LAMINDE OUTRAS LIGAS ACOS,L>=600MM,GALVANPOR OUTPR'),(6245,'72259900','OUTROS LAMINDE OUTROS LIGAS ACOS,L>=600MM'),(6246,'72261100','LAMINDE LIGAS ACOS AO SILICIO,L<600MM,GRAOS ORIENT'),(6247,'72261900','OUTROS LAMINDE LIGAS ACOS AO SILICIO,L<600MM'),(6248,'72262010','LAMINDE LIGAS ACOS DE CORTE RAPIDO,L<600MM,1MM<=E<'),(6249,'72262090','OUTSPRODSLAMINDE LIGAS ACOS DE CORTE RAPIDO,L<600M'),(6250,'72269100','LAMINDE OUTRAS LIGAS DE ACOS,A QUENTE,L<600MM'),(6251,'72269200','LAMINDE OUTRAS LIGAS DE ACOS,A FRIO,L<600MM'),(6252,'72269300','LAMINDE OUTRAS LIGAS DE ACOS,L<600MM,GALVANELETROL'),(6253,'72269400','LAMINDE OUTSLIGAS DE ACOS,L<600MM,GALVANPOR OUTPRO'),(6254,'72269900','OUTROS LAMINDE OUTROS LIGAS DE ACOS,L<600MM'),(6255,'72271000','FIO-MAQUINA DE LIGAS DE ACOS DE CORTE RAPIDO'),(6256,'72272000','FIO-MAQUINA DE LIGAS DE ACOS SILICIO-MANGANES'),(6257,'72279000','OUTROS FIO-MAQUINAS DE OUTROS LIGAS DE ACOS'),(6258,'72281010','BARRAS DE LIGAS ACOS DE CORTE RAPIDO,LAMINETCA QUE'),(6259,'72281090','OUTRAS BARRAS DE LIGAS ACOS DE CORTE RAPIDO'),(6260,'72282000','BARRAS DE LIGAS DE ACOS SILICIO-MANGANES'),(6261,'72283000','BARRAS DE OUTRAS LIGAS DE ACOS,LAMINETCA QUENTE'),(6262,'72284000','BARRAS DE OUTRAS LIGAS DE ACOS,FORJADAS'),(6263,'72285000','BARRAS DE OUTRAS LIGAS DE ACOS,OBTIDAS/ACABADAS A '),(6264,'72286000','OUTRAS BARRAS DE OUTRAS LIGAS DE ACOS'),(6265,'72287000','PERFIS DE OUTRAS LIGAS DE ACOS'),(6266,'72288000','BARRAS OCAS DE LIGAS DE ACOS,PARA PERFURACAO'),(6267,'72291000','FIOS DE LIGAS DE ACOS DE CORTE RAPIDO'),(6268,'72292000','FIOS DE LIGAS DE ACOS SILICIO-MANGANES'),(6269,'72299000','FIOS DE OUTRAS LIGAS DE ACOS'),(6270,'73011000','ESTACAS-PRANCHAS DE FERRO OU ACO'),(6271,'73012000','PERFIS DE FERRO OU ACO,OBTIDOS POR SOLDADURA'),(6272,'73021010','TRILHOS DE ACO,DE PESO LINEAR SUPEROU IGUAL 445 KG'),(6273,'73021090','OUTSTRILHOS DE VIAS FERREAS,DE FERRO FUNDIDO/FERRO'),(6274,'73022000','DORMENTES DE FERRO FUNDIDO,FERRO OU ACO'),(6275,'73023000','AGULHAS E OUTSELEMCRUZAM/DESVIO,DE FERRO FUNDIDO,E'),(6276,'73024000','TALAS DE JUNCAO/PLACA APOIO,ETCDE FERRO FUND/FERRO'),(6277,'73029000','OUTSELEMENTOS DE VIAS FERREAS,DE FERRO FUND/FERRO/'),(6278,'73030000','TUBOS E PERFIS OCOS,DE FERRO FUNDIDO'),(6279,'73041010','TUBOS DE ACOS INOXSEM COSTURA,P/OLEODUTOS/GASODUTO'),(6280,'73041090','OUTSTUBOS DE FERRO/ACO,S/COSTURA,P/OLEODUTOS/GASOD'),(6281,'73042110','TUBOS DE ACOS N/LIGS/COSTP/PERFUREXTRACPETROLEO/GA'),(6282,'73042990','OUTSTUBOS FERRO FUND/FERRO/ACO,S/COSTP/REVPOCOS,ET'),(6283,'73042190','OUTSTUBOS DE FERRO/ACO,S/COSTP/PERFEXTRPETROLEO/GA'),(6284,'73042910','TUBOS DE ACOS N/LIGS/COSTP/REVESTIMDE POCOS,ETC'),(6285,'73042920','TUBOS DE ACOS INOXS/COSTP/REVESTIMDE POCOS,ETC'),(6286,'73042931','TUBOS DE LIGAS ACOS,S/COSTP/REVESTPOCOS,ETCD<=229M'),(6287,'73042939','OUTROS TUBOS LIGAS ACOS,N/REVS/COSTP/REVESTPOCOS,E'),(6288,'73043110','TUBOS DE FERRO/ACO N/LIGS/COSTSECCIRCLAMFRIO,N/REV'),(6289,'73043190','OUTSTUBOS DE FERRO/ACO N/LIGS/COSTSECCIRCLAMFRIO'),(6290,'73043910','TUBOS DE FERRO/ACO N/LIGS/COSTSECCIRCN/REVD<=229MM'),(6291,'73043990','OUTROS TUBOS DE FERRO/ACO N/LIGS/COSTSECCIRC'),(6292,'73043920','TUBOS DE FERRO/ACO N/LIGS/COSTSECCIRCREVD<=229MM'),(6293,'73044100','TUBOS DE ACOS INOXS/COSTSECCIRCLAMINA FRIO'),(6294,'73044900','OUTROS TUBOS DE ACOS INOXS/COSTSECCIRC'),(6295,'73045110','TUBOS OUTSLIGAS ACOS,S/COSTSECCIRCLAMFRIO,D<=229MM'),(6296,'73045190','OUTSTUBOS DE OUTSLIGAS ACOS,S/COSTSECCIRCLAMFRIO'),(6297,'73045910','OUTSTUBOS DE OUTSLIGAS ACOS,S/COSTSECCIRCD<=229MM'),(6298,'73045990','OUTROS TUBOS DE OUTRAS LIGAS ACOS,S/COSTSECCIRC'),(6299,'73049011','OUTROS TUBOS/PERFIS OCOS,DE ACOS INOXS/COSTD<=229M'),(6300,'73049019','OUTROS TUBOS/PERFIS OCOS,DE FERRO/ACO,S/COSTD<=229'),(6301,'73049090','OUTROS TUBOS/PERFIS OCOS,DE FERRO/ACO,S/COST'),(6302,'73051100','TUBOS FERRO/ACO,SOLDLONGARCO,SECCIRCD>406MM,P/OLEO'),(6303,'73051200','OUTSTUBOS FERRO/ACO,SOLDLONGSECCIRCD>406MM,P/OLEOD'),(6304,'73051900','OUTSTUBOS FERRO/ACO,SOLDETCSECCIRCD>406MM,P/OLEOD'),(6305,'73052000','TUBOS FERRO/ACO,SOLDETCSECCIRCD>406MM,P/REVPOCOS'),(6306,'73053100','OUTROS TUBOS FERRO/ACO,SOLDLONGITSECCIRCD>406MM'),(6307,'73053900','OUTROS TUBOS FERRO/ACO,SOLDSECCIRCD>406MM'),(6308,'73059000','OUTROS TUBOS FERRO/ACO,REBITADOS,SECCIRCD>406MM'),(6309,'73061000','TUBOS FERRO/ACO,SOLD/REBITAD/AGRAFADP/OLEODUTO/GAS'),(6310,'73062000','TUBOS FERRO/ACO,SOLD/REBITAD/AGRAFADP/REVESTPOCOS,'),(6311,'73063000','OUTROS TUBOS DE FERRO/ACO N/LIGSOLDSECCIRC'),(6312,'73064000','OUTROS TUBOS DE ACOS INOXSOLDSECCIRC'),(6313,'73065000','OUTROS TUBOS DE OUTROS LIGAS ACOS,SOLDETCSECCIRC'),(6314,'73066000','OUTROS TUBOS DE FERRO/ACO,SOLDSECN/CIRC'),(6315,'73069010','OUTROS TUBOS E PERFIS OCOS,DE FERRO/ACO N/LIGSOLDE'),(6316,'73069020','OUTSTUBOS E PERFIS OCOS,DE ACOS INOXSOLD/REBITADET'),(6317,'73069090','OUTSTUBOS E PERFIS OCOS,DE FERRO/ACO,SOLD/REBITADE'),(6318,'73071100','ACESSORIOS MOLDADOS P/TUBOS DE FERRO FUNDN/MALEAVE'),(6319,'73071910','ACESSORIOS MOLDADOS P/TUBOS DE FERRO FUNDMALEAVD>5'),(6320,'73071990','OUTROS ACESSORIOS P/TUBOS MOLDADOS DE FERRO FUNDID'),(6321,'73071920','ACESSORIOS MOLDADOS P/TUBOS DE ACO'),(6322,'73072100','FLANGES P/TUBOS,DE ACOS INOXIDAVEIS'),(6323,'73072200','COTOVELOS,CURVAS E LUVAS,ROSCADOS,P/TUBOS,DE ACOS '),(6324,'73072300','ACESSORIOS PARA SOLDAR TOPO A TOPO,TUBOS DE ACOS I'),(6325,'73072900','OUTROS ACESSORIOS PARA TUBOS,DE ACOS INOXIDAVEIS'),(6326,'73079100','OUTRAS FLANGES P/TUBOS,DE FERRO FUNDIDO/FERRO OU A'),(6327,'73079200','OUTSCOTOVELOS,CURVAS,ETCROSCADOS,P/TUBOS DE FERRO/'),(6328,'73079300','OUTROS ACESSORIOS P/SOLDAR TOPO/TOPO,TUBOS DE FERR'),(6329,'73079900','OUTROS ACESSORIOS P/TUBOS DE FERRO FUNDIDO,FERRO O'),(6330,'73081000','PONTES E ELEMENTOS DE PONTES,DE FERRO FUNDIDO/FERR'),(6331,'73082000','TORRES E PORTICOS,DE FERRO FUNDIDO,FERRO OU ACO'),(6332,'73083000','PORTAS E JANELAS,ETCDE FERRO FUNDIDO,FERRO OU ACO'),(6333,'73084000','MATERIAL P/ANDAIMES,ARMACOES,ETCFERRO FUND/FERRO/A'),(6334,'73089090','OUTSCONSTRUCOES E SUAS PARTES,DE FERRO FUND/FERRO/'),(6335,'73089010','CHAPAS,BARRAS,ETCP/CONSTRUCOES,DE FERRO FUND/FERRO'),(6336,'73090090','OUTSRESERVATORIOS,ETCDE FERRO/ACO,C>300L,S/DISPTER'),(6337,'73090010','RESERVATORIOS,ETCFERRO/ACO,C>300L,P/ARMAZGRAOS,SOL'),(6338,'73101000','RESERVATORIOS,ETCDE FERRO/ACO,50<=C<=300L,S/DISPTE'),(6339,'73102110','LATAS DE FERRO/ACO,FECHAMP/SOLDCRAVC<50L,P/PRODALI'),(6340,'73102190','OUTRAS LATAS DE FERRO/ACO,FECHAMP/SOLDCRAVC<50L'),(6341,'73102910','OUTSRESERVATORIOS,ETCDE FERRO/ACO,C<50L,P/PRODSALI'),(6342,'73102990','OUTROS RESERVATORIOS,ETCDE FERRO/ACO,C<50L'),(6343,'73110000','RECIPIENTES DE FERRO/ACO,P/GASES COMPRIMIDOS/LIQUE'),(6344,'73121010','CORDAS E CABOS,DE FIOS ACO,REVESTBRONZE/LATAO,P/EL'),(6345,'73121090','OUTRAS CORDAS E CABOS,DE FERRO/ACO,N/ISOLP/USO ELE'),(6346,'73129000','TRANCAS/LINGAS,ETCDE FERRO/ACO,N/ISOLP/USO ELETR'),(6347,'73130000','ARAME FARPADO E OUTROS DE FERRO OU ACO,UTILEM CERC'),(6348,'73141200','TELA METALICA TECIDA,DE ACOS INOXCONTINUA,S/FIMP/M'),(6349,'73141400','OUTRAS TELAS METALTECIDDE ACOS INOXIDAVEIS'),(6350,'73141300','OUTSTELAS METALTECIDDE FERRO/ACO,CONTINS/FIM,P/MAQ'),(6351,'73141900','OUTRAS TELAS METALTECIDDE FERRO OU ACO'),(6352,'73142000','GRADES/REDES,DE FIOS FERRO/ACO,SOLDPTOINTERSS>=100'),(6353,'73143900','OUTRAS GRADES/REDES,DE FIOS FERRO/ACO,SOLDPTOINTER'),(6354,'73143100','GRADES/REDES,DE FIOS FERRO/ACO,SOLDPTOINTERSGALVAN'),(6355,'73144100','OUTRAS TELAS METALSETCDE FIOS FERRO/ACO,GALVAN'),(6356,'73144200','OUTSTELAS METALSETCDE FIOS FERRO/ACO,RECOBPLASTICO'),(6357,'73144900','OUTRAS TELAS METALSETCDE FIOS FERRO/ACO'),(6358,'73145000','CHAPAS E TIRAS,DISTENDIDAS,DE FERRO/ACO'),(6359,'73151100','CORRENTE DE ROLOS,DE FERRO FUNDIDO,FERRO OU ACO'),(6360,'73151210','CORRENTE DE TRANSMISSAO,DE FERRO FUNDIDO,FERRO OU '),(6361,'73151290','OUTRAS CORRENTES DE ELOS ARTICULADOS,DE FERRO OU A'),(6362,'73151900','PARTES DE CORRENTES DE ELOS ARTICULADOS,DE FERRO O'),(6363,'73152000','CORRENTES ANTIDERRAPANTES,DE FERRO FUNDIDO,FERRO O'),(6364,'73158100','CORRENTES DE ELOS C/SUPORTE,DE FERRO FUNDIDO/FERRO'),(6365,'73158200','CORRENTES DE ELOS SOLDADOS,DE FERRO FUNDIDO/FERRO/'),(6366,'73158900','OUTRAS CORRENTES E CADEIAS,DE FERRO FUNDIDO/FERRO/'),(6367,'73159000','PARTES DE OUTRAS CORRENTES E CADEIAS,DE FERRO OU A'),(6368,'73160000','ANCORAS E FATEIXAS E SUAS PARTES,DE FERRO FUNDIDO,'),(6369,'73170020','GRAMPOS DE FIO CURVADO,DE FERRO FUNDIDO,FERRO OU A'),(6370,'73170010','TACHAS DE FERRO FUNDIDO/FERRO/ACO,INCLCABECA OUTMA'),(6371,'73170030','PONTAS OU DENTES,DE FERRO FUND/FERRO/ACO,P/MAQSTEX'),(6372,'73170090','PREGOS,PERCEVEJOS,ARTEFSSEMELHDE FERRO FUND/FERRO/'),(6373,'73181100','TIRA-FUNDOS (ROSCADOS),DE FERRO FUNDIDO,FERRO OU A'),(6374,'73181200','OUTROS PARAFUSOS DE FERRO FUNDIDO/FERRO/ACO,P/MADE'),(6375,'73181300','GANCHOS E ARMELAS (PITOES),DE FERRO FUNDIDO/FERRO/'),(6376,'73181400','PARAFUSOS PERFURANTES,DE FERRO FUNDIDO,FERRO OU AC'),(6377,'73181500','OUTSPARAFUSOS/PINOS/PERNOS,DE FERRO FUNDIDO/FERRO/'),(6378,'73181600','PORCAS DE FERRO FUNDIDO,FERRO OU ACO'),(6379,'73181900','OUTROS ARTEFATOS ROSCADOS,DE FERRO FUNDIDO,FERRO O'),(6380,'73182100','ARRUELAS DE PRESSAO OU SEGURANCA,DE FERRO FUNDIDO,'),(6381,'73182200','OUTRAS ARRUELAS DE FERRO FUNDIDO,FERRO OU ACO'),(6382,'73182300','REBITES DE FERRO FUNDIDO,FERRO OU ACO'),(6383,'73182400','CHAVETAS/CAVILHAS,ETCDE FERRO FUNDIDO,FERRO OU ACO'),(6384,'73182900','OUTROS ARTEFATOS N/ROSCADOS,DE FERRO FUNDIDO/FERRO'),(6385,'73191000','AGULHAS DE COSTURA,CERZIR OU BORDAR,DE FERRO OU AC'),(6386,'73192000','ALFINETES DE SEGURANCA,DE FERRO OU ACO'),(6387,'73193000','OUTROS ALFINETES DE USO MANUAL,DE FERRO OU ACO'),(6388,'73199000','OUTRAS AGULHAS/ARTEFATOS SEMELHUSO MANUAL,DE FERRO'),(6389,'73201000','MOLAS DE FOLHAS E SUAS FOLHAS,DE FERRO OU ACO'),(6390,'73202010','MOLAS HELICOIDAIS CILINDRICAS,DE FERRO OU ACO'),(6391,'73202090','OUTRAS MOLAS HELICOIDAIS DE FERRO OU ACO'),(6392,'73209000','OUTRAS MOLAS DE FERRO OU ACO'),(6393,'73211100','APARELHOS P/COZINHAR/AQUECER,DE FERRO,ETCCOMBUSTIV'),(6394,'73211200','APARELHOS P/COZINHAR/AQUECER,DE FERRO,ETCCOMBUSTIV'),(6395,'73211300','APARELHOS P/COZINHAR/AQUECER,DE FERRO,ETCCOMBUSTIV'),(6396,'73218100','OUTROS AQUECEDORES,ETCDE FERRO/ACO,A GAS/OUTSCOMBU'),(6397,'73218200','OUTROS AQUECEDORES,ETCDE FERRO/ACO,A COMBUSTIVLIQU'),(6398,'73218300','OUTROS AQUECEDORES,ETCDE FERRO/ACO,A COMBUSTIVSOLI'),(6399,'73219000','PARTES DE APARELHOS P/COZINHAR,ETCDE FERRO/ACO,N/E'),(6400,'73221100','RADIADORES P/AQUECCENTRAL,N/ELETRPARTES,DE FERRO F'),(6401,'73221900','RADIADORES P/AQUECCENTRAL,N/ELETRPARTES,DE FERRO/A'),(6402,'73229010','GERADORES DE AR QUENTE A COMBLIQUTILVEICAUTOMOVEIS'),(6403,'73229090','OUTSGERADORES,ETCN/ELETRDE FERRO FUNDIDO,FERRO,ACO'),(6404,'73231000','PALHAS,ESPONJAS,ETCDE FERRO/ACO,P/LIMPEZA/POLIMENT'),(6405,'73239100','OUTSARTEFSDOMESTICOS,DE FERRO FUNDN/ESMALTE PARTES'),(6406,'73239200','OUTSARTEFSDOMESTICOS,DE FERRO FUNDESMALTADE PARTES'),(6407,'73239300','OUTSARTEFSDOMESTICOS,DE ACOS INOXIDAVEIS,E PARTES'),(6408,'73239400','OUTSARTEFSDOMESTICOS,DE FERRO/ACO,ESMALTADOS,E PAR'),(6409,'73239900','OUTSARTEFSDOMESTICOS,DE FERRO FUND/FERRO/ACO,E PAR'),(6410,'73241000','PIAS E LAVATORIOS,DE ACOS INOXIDAVEIS'),(6411,'73242100','BANHEIRAS DE FERRO FUNDIDO,MESMO ESMALTADAS'),(6412,'73242900','OUTRAS BANHEIRAS DE FERRO OU ACO'),(6413,'73249000','OUTROS ARTEFSDE HIGIENE/TOUCADOR,DE FERRO/ACO,E PA'),(6414,'73251000','OUTRAS OBRAS MOLDADAS DE FERRO FUNDIDO,NAO MALEAVE'),(6415,'73259100','ESFERAS,ETCMOLDADAS,DE FERRO FUND/FERRO/ACO,P/MOIN'),(6416,'73259910','OUTRAS OBRAS MOLDADAS,DE ACO'),(6417,'73259990','OUTRAS OBRAS MOLDADAS,DE FERRO FUNDIDO OU FERRO'),(6418,'73261100','ESFERAS,ETCFORJADAS/ESTAMPADAS,DE FERRO/ACO,P/MOIN'),(6419,'73261900','OUTRAS OBRAS FORJADAS/ESTAMPADAS,DE FERRO OU ACO'),(6420,'73262000','OBRAS DE FIOS DE FERRO OU ACO'),(6421,'73269000','OUTRAS OBRAS DE FERRO OU ACO'),(6422,'74011000','MATES DE COBRE'),(6423,'74012000','COBRE DE CEMENTACAO (PRECIPITADO DE COBRE)'),(6424,'74020000','COBRE N/REFINADO E ANODOS DE COBRE P/REFINELETROLI'),(6425,'74031100','CATODOS DE COBRE REFINADO/SEUS ELEMENTOS,EM FORMA '),(6426,'74031200','BARRAS DE COBRE REFINADO,P/OBTENCAO FIOS,EM FORMA '),(6427,'74031300','PALANQUILHAS DE COBRE REFINADO,EM FORMA BRUTA'),(6428,'74031900','OUTROS PRODUTOS DE COBRE REFINADO,EM FORMA BRUTA'),(6429,'74032100','LIGAS DE COBRE-ZINCO (LATAO),EM FORMA BRUTA'),(6430,'74032200','LIGAS DE COBRE-ESTANHO (BRONZE),EM FORMA BRUTA'),(6431,'74032300','LIGAS DE COBRE-NIQUEL/COBRE-NIQUEL-ZINCO,EM FORMA '),(6432,'74032900','OUTRAS LIGAS DE COBRE,EM FORMA BRUTA'),(6433,'74040000','DESPERDICIOS E RESIDUOS,DE COBRE'),(6434,'74050000','LIGAS-MAES DE COBRE'),(6435,'74061000','POS DE COBRE,DE ESTRUTURA NAO LAMELAR'),(6436,'74062000','POS DE COBRE,DE ESTRUTURA LAMELAR E ESCAMAS DE COB'),(6437,'74071010','BARRAS DE COBRE REFINADO'),(6438,'74071021','PERFIS OCOS DE COBRE REFINADO'),(6439,'74071029','OUTROS PERFIS DE COBRE REFINADO'),(6440,'74072110','BARRAS DE LIGAS DE COBRE-ZINCO (LATAO)'),(6441,'74072120','PERFIS DE LIGAS DE COBRE-ZINCO (LATAO)'),(6442,'74072210','BARRAS DE LIGAS DE COBRE-NIQUEL OU COBRE-NIQUEL-ZI'),(6443,'74072220','PERFIS DE LIGAS DE COBRE-NIQUEL OU COBRE-NIQUEL-ZI'),(6444,'74072910','OUTRAS BARRAS DE COBRE'),(6445,'74072921','OUTROS PERFIS OCOS DE COBRE'),(6446,'74072929','OUTROS PERFIS DE COBRE'),(6447,'74081100','FIOS DE COBRE REFINADO,MAIOR DIMENSAO DA SECTRANSV'),(6448,'74081900','OUTROS FIOS DE COBRE REFINADO'),(6449,'74082100','FIOS DE LIGAS DE COBRE-ZINCO (LATAO)'),(6450,'74082200','FIOS DE LIGAS DE COBRE-NIQUEL OU COBRE-NIQUEL-ZINC'),(6451,'74082911','FIOS DE LIGAS DE COBRE-ESTANHO (BRONZE) FOSFOROSO'),(6452,'74082919','OUTROS FIOS DE LIGAS DE COBRE-ESTANHO (BRONZE)'),(6453,'74082990','OUTROS FIOS DE LIGAS DE COBRE'),(6454,'74091100','CHAPAS E TIRAS,DE COBRE REFINADO,ESP>015MM,EM ROLO'),(6455,'74091900','OUTRAS CHAPAS E TIRAS,DE COBRE REFINADO,ESP>015MM'),(6456,'74092100','CHAPAS E TIRAS DE LIGAS COBRE-ZINCO,ESP>015MM,EM R'),(6457,'74092900','OUTSCHAPAS E TIRAS,DE LIGAS DE COBRE-ZINCO,ESP>015'),(6458,'74093100','CHAPAS E TIRAS DE LIGAS COBRE-ESTANHO,E>015MM,EM R'),(6459,'74093900','OUTSCHAPAS E TIRAS,DE LIGAS DE COBRE-ESTANHO,E>015'),(6460,'74094010','CHAPAS E TIRAS DE LIGAS COBRE-NIQUEL,ETC,E>015MM,R'),(6461,'74094090','OUTSCHAPAS E TIRAS,DE LIGAS DE COBRE-NIQUEL,ESP>01'),(6462,'74099000','CHAPAS E TIRAS,DE OUTRAS LIGAS DE COBRE,ESP>015MM'),(6463,'74101110','FOLHA DE COBRE REFS/SUPORTE<=007MM,PUREZA>=9985%'),(6464,'74101190','OUTRAS FOLHAS/TIRAS,DE COBRE REFINS/SUPORTE,E<=015'),(6465,'74101200','FOLHA E TIRA,DE LIGAS DE COBRE,S/SUPORTE,E<=015MM'),(6466,'74102110','FOLHA DE COBRE REFC/SUPORTP/CIRCUITIMPRESSE<=015MM'),(6467,'74102190','OUTRAS FOLHAS/TIRAS,DE COBRE REFINC/SUPORTE,E<=015'),(6468,'74102120','FOLHA DE COBRE REFC/SUPORTPOLIESTETC0012<E<=015MM'),(6469,'74102200','FOLHA E TIRA,DE LIGAS DE COBRE,C/SUPORTE,E<=015MM'),(6470,'74111010','TUBOS DE COBRE REFINADO,NAO ALETADOS NEM RANHURADO'),(6471,'74111090','OUTROS TUBOS DE COBRE REFINADO'),(6472,'74112110','TUBOS DE LIGAS DE COBRE-ZINCO,N/ALETADOS N/RANHURA'),(6473,'74112190','OUTROS TUBOS DE LIGAS DE COBRE-ZINCO'),(6474,'74112210','TUBOS DE LIGAS COBRE-NIQUEL,ETCN/ALETADOS N/RANHUR'),(6475,'74112290','OUTSTUBOS DE LIGAS DE COBRE-NIQUEL/COBRE-NIQUEL-ZI'),(6476,'74112910','TUBOS DE OUTRAS LIGAS DE COBRE,N/ALETADOS N/RANHUR'),(6477,'74112990','TUBOS DE OUTRAS LIGAS DE COBRE'),(6478,'74121000','ACESSORIOS PARA TUBOS DE COBRE REFINADO'),(6479,'74122000','ACESSORIOS PARA TUBOS DE LIGAS DE COBRE'),(6480,'74130000','CORDAS,CABOS,TRANCAS,ETCDE COBRE,N/ISOLADP/USO ELE'),(6481,'74142000','TELAS METALICAS,DE FIOS DE COBRE'),(6482,'74149000','GRADES E REDES,DE FIOS DE COBRE,CHAPAS E TIRAS,DE '),(6483,'74151000','TACHAS,PREGOS,ETCDE COBRE/FERRO/ACO,C/CABECA DE CO'),(6484,'74152100','ARRUELAS DE COBRE'),(6485,'74152900','OUTROS ARTEFATOS NAO ROSCADOS,DE COBRE'),(6486,'74153100','PARAFUSOS DE COBRE,PARA MADEIRA'),(6487,'74153200','OUTROS PARAFUSOS,PINOS OU PERNOS E PORCAS,DE COBRE'),(6488,'74153900','OUTROS ARTEFATOS ROSCADOS,DE COBRE'),(6489,'74160000','MOLAS DE COBRE'),(6490,'74170000','APARELHOS P/COZINHAR/AQUECER,DE COBRE,N/ELETRDOMES'),(6491,'74181900','OUTROS ARTEFATOS DE COBRE,USO DOMESTICO E SUAS PAR'),(6492,'74181100','ESPONJAS,ESFREGOES,ETCDE COBRE,P/LIMPEZA/POLIMENTO'),(6493,'74182000','ARTEFATOS DE COBRE,DE HIGIENE/TOUCADOR E SUAS PART'),(6494,'74191000','CORRENTES E CADEIAS,DE COBRE,E SUAS PARTES'),(6495,'74199100','OUTRAS OBRAS DE COBRE,VAZADAS,MOLDADAS,ESTAMPADFOR'),(6496,'74199900','OUTRAS OBRAS DE COBRE'),(6497,'75011000','MATES DE NIQUEL'),(6498,'75012000','SINTERS DE OXIDO NIQUEL/PRODSINTERMMETALDO NIQUEL'),(6499,'75021010','CATODOS DE NIQUEL NAO LIGADO,EM FORMA BRUTA'),(6500,'75021090','OUTRAS FORMAS BRUTAS DE NIQUEL,NAO LIGADO'),(6501,'75022000','LIGAS DE NIQUEL,EM FORMA BRUTA'),(6502,'75030000','DESPERDICIOS E RESIDUOS,DE NIQUEL'),(6503,'75040090','OUTROS POS E ESCAMAS,DE NIQUEL'),(6504,'75040010','POS E ESCAMAS,DE NIQUEL NAO LIGADO'),(6505,'75051121','PERFIS OCOS DE NIQUEL NAO LIGADO'),(6506,'75051110','BARRAS DE NIQUEL NAO LIGADO'),(6507,'75051129','OUTROS PERFIS DE NIQUEL NAO LIGADO'),(6508,'75051221','PERFIS OCOS DE LIGAS DE NIQUEL'),(6509,'75051210','BARRAS DE LIGAS DE NIQUEL'),(6510,'75051229','OUTROS PERFIS DE LIGAS DE NIQUEL'),(6511,'75052100','FIOS DE NIQUEL NAO LIGADO'),(6512,'75052200','FIOS DE LIGAS DE NIQUEL'),(6513,'75061000','CHAPAS,TIRAS E FOLHAS,DE NIQUEL NAO LIGADO'),(6514,'75062000','CHAPAS,TIRAS E FOLHAS,DE LIGAS DE NIQUEL'),(6515,'75071100','TUBOS DE NIQUEL NAO LIGADO'),(6516,'75071200','TUBOS DE LIGAS DE NIQUEL'),(6517,'75072000','ACESSORIOS PARA TUBOS DE NIQUEL'),(6518,'75089000','OUTRAS OBRAS DE NIQUEL'),(6519,'75081000','TELAS METALICAS E GRADES,DE FIOS DE NIQUEL'),(6520,'76011000','ALUMINIO NAO LIGADO EM FORMA BRUTA'),(6521,'76012000','LIGAS DE ALUMINIO EM FORMA BRUTA'),(6522,'76020000','DESPERDICIOS E RESIDUOS,DE ALUMINIO'),(6523,'76031000','POS DE ALUMINIO,DE ESTRUTNAO LAMELAR'),(6524,'76032000','POS DE ALUMINIO,DE ESTRUTLAMELAR/ESCAMAS DE ALUMIN'),(6525,'76041010','BARRAS DE ALUMINIO NAO LIGADO'),(6526,'76041021','PERFIS OCOS DE ALUMINIO NAO LIGADO'),(6527,'76041029','OUTROS PERFIS DE ALUMINIO NAO LIGADO'),(6528,'76042100','PERFIS OCOS DE LIGAS DE ALUMINIO'),(6529,'76042911','BARRA DE LIGA ALUMINIO,FORJSECTRANSVCIRC40<=D<=76C'),(6530,'76042919','OUTRAS BARRAS DE LIGAS DE ALUMINIO'),(6531,'76042920','OUTROS PERFIS DE LIGAS DE ALUMINIO'),(6532,'76051110','FIOS DE ALUMINIO N/LIGSECTRANSV>7MM,RE<=00283OHMMM'),(6533,'76051190','OUTROS FIOS DE ALUMINIO N/LIGDIMSECTRANSV>7MM'),(6534,'76051910','OUTSFIOS DE ALUMINIO N/LIGRESISTELETR<=0283 OHMMM2'),(6535,'76051990','OUTROS FIOS DE ALUMINIO,N/LIG'),(6536,'76052110','FIOS DE LIGAS ALUMINIO,SECTRANSV>7MM,RE<=00328OHMM'),(6537,'76052190','OUTROS FIOS DE LIGAS ALUMINIO,DIMSECTRANSV>7MM'),(6538,'76052910','OUTSFIOS DE LIGAS ALUMINIO,RESISTELETR<=00328OHMMM'),(6539,'76052990','OUTROS FIOS DE LIGAS ALUMINIO'),(6540,'76061110','CHAPAS DE ALUMINIO N/LIGE>02MM,QUADRTEOR SILICIO,E'),(6541,'76061190','OUTSCHAPAS/TIRAS,DE ALUMINIO N/LIGE>02MM,QUADR/RET'),(6542,'76061210','CHAPAS DE LIGAS ALUMINIO,02<E<=03MM,L>=1468MM,ENVE'),(6543,'76061220','OUTSCHAPAS DE ALUMINIO N/LIGE>02MM,QUADRTEOR SILIC'),(6544,'76061290','OUTRAS CHAPAS E TIRAS,DE LIGAS ALUMINIO,ESP>02MM'),(6545,'76069100','OUTRAS CHAPAS E TIRAS,DE ALUMINIO NAO LIGADO,ESP>0'),(6546,'76069200','OUTRAS CHAPAS E TIRAS,DE LIGAS DE ALUMINIO,ESP>02M'),(6547,'76071110','FOLHAS DE ALUMINIO S/SUPORTE,LAMINE<=02MM,TEOR SIL'),(6548,'76071190','OUTSFOLHAS/TIRAS,DE ALUMINIO S/SUPORTE,LAMINE<=02M'),(6549,'76071910','FOLHAS/TIRAS,DE ALUMINIO,S/SUPORTE,GRAVADE<=110MIC'),(6550,'76071990','OUTRAS FOLHAS E TIRAS,DE ALUMINIO,S/SUPORTE,ESP<=0'),(6551,'76072000','FOLHAS/TIRAS,DE ALUMINIO,C/SUPORTE,ESP<=02MM'),(6552,'76081000','TUBOS DE ALUMINIO NAO LIGADO'),(6553,'76082000','TUBOS DE LIGAS DE ALUMINIO'),(6554,'76090000','ACESSORIOS PARA TUBOS DE ALUMINIO'),(6555,'76101000','PORTAS,JANELAS,SEUS CAIXILHOS,ALIZARES,ETCDE ALUMI'),(6556,'76109000','CONSTRUCOES/OUTRAS PARTES,CHAPAS,BARRAS,ETCDE ALUM'),(6557,'76110000','RESERVATORIOS,ETCDE ALUMINIO,C>300L,S/DISPMECAN/TE'),(6558,'76121000','RECIPIENTES TUBULFLEXIVDE ALUMINIO,C<=300L,S/DISPM'),(6559,'76129019','OUTROS RECIPIENTES TUBULARES,DE ALUMINIO,C<=300L'),(6560,'76129011','RECIPIENTES TUBULDE ALUMINIO,C<=700CM3,P/AEROSSOIS'),(6561,'76129090','OUTSRESERVATORETCDE ALUMINIO,C<=300L,S/DISPMECTERM'),(6562,'76130000','RECIPIENTES P/GASES COMPRIMIDOS/LIQUEFEITOS,DE ALU'),(6563,'76141010','CORDAS E CABOS,DE ALUMINIO,C/ALMA DE ACO,N/ISOLP/E'),(6564,'76141090','TRANCAS,ETCDE ALUMINIO,C/ALMA DE ACO,N/ISOLP/ELETR'),(6565,'76149010','OUTROS CABOS DE ALUMINIO,N/ISOLP/USO ELETR'),(6566,'76149090','OUTRAS CORDAS,TRANCAS,ETCN/ISOLP/USO ELETR'),(6567,'76151900','OUTSARTEFATOS DE ALUMINIO,USO DOMESTICO E SUAS PAR'),(6568,'76151100','ESPONJAS,ESFREGOES,ETCDE ALUMINIO,P/LIMPEZA/POLIME'),(6569,'76152000','ARTEFATOS DE ALUMINIO,DE HIGIENE/TOUCADOR E SUAS P'),(6570,'76161000','TACHAS,PREGOS,ESCAPULAS,PARAFUSOS,PINOS,ETCDE ALUM'),(6571,'76169900','OUTRAS OBRAS DE ALUMINIO'),(6572,'76169100','TELAS METALICAS,GRADES E REDES,DE FIOS DE ALUMINIO'),(6573,'78011011','CHUMBO REFINADO,ELETROLITICO,EM LINGOTES'),(6574,'78011019','OUTRAS FORMAS BRUTAS DE CHUMBO REFINADO,ELETROLITI'),(6575,'78011090','OUTRAS FORMAS BRUTAS DE CHUMBO REFINADO'),(6576,'78019100','CHUMBO C/ANTIMONIO COMO SEGELEMPREDOMEM FORMA BRUT'),(6577,'78019900','OUTRAS FORMAS BRUTAS DE CHUMBO'),(6578,'78020000','DESPERDICIOS E RESIDUOS,DE CHUMBO'),(6579,'78030000','BARRAS,PERFIS E FIOS,DE CHUMBO'),(6580,'78041100','FOLHAS E TIRAS,DE CHUMBO,ESPESSURA<=02MM'),(6581,'78041900','CHAPAS E OUTRAS FOLHAS E TIRAS,DE CHUMBO'),(6582,'78042000','POS E ESCAMAS DE CHUMBO'),(6583,'78050000','TUBOS E SEUS ACESSORIOS,DE CHUMBO'),(6584,'78060000','OUTRAS OBRAS DE CHUMBO'),(6585,'79011111','ZINCO N/LIGCONTZINCO>=9999%,ELETROLITICO,EM LINGOT'),(6586,'79011119','OUTSFORMAS BRUTAS DE ZINCO N/LIGZINCO>=9999%,ELETR'),(6587,'79011191','OUTROS LINGOTES DE ZINCO N/LIGCONTZINCO>=9999%'),(6588,'79011199','OUTRAS FORMAS BRUTAS DE ZINCO N/LIGCONTZINCO>=9999'),(6589,'79011210','ZINCO N/LIGCONTZINCO<9999%,EM LINGOTES'),(6590,'79011290','OUTRAS FORMAS BRUTAS DE ZINCO N/LIGCONTZINCO<99,99'),(6591,'79012010','LIGAS DE ZINCO,EM LINGOTES'),(6592,'79012090','OUTRAS FORMAS BRUTAS DE LIGAS DE ZINCO'),(6593,'79020000','DESPERDICIOS E RESIDUOS,DE ZINCO'),(6594,'79031000','POEIRAS DE ZINCO'),(6595,'79039000','POS E ESCAMAS,DE ZINCO'),(6596,'79040000','BARRAS,PERFIS E FIOS,DE ZINCO'),(6597,'79050000','CHAPAS,FOLHAS E TIRAS,DE ZINCO'),(6598,'79060000','TUBOS E SEUS ACESSORIOS,DE ZINCO'),(6599,'79070000','OUTRAS OBRAS DE ZINCO'),(6600,'80011000','ESTANHO NAO LIGADO,EM FORMA BRUTA'),(6601,'80012000','LIGAS DE ESTANHO,EM FORMA BRUTA'),(6602,'80020000','DESPERDICIOS E RESIDUOS,DE ESTANHO'),(6603,'80030000','BARRAS,PERFIS E FIOS,DE ESTANHO'),(6604,'80040000','CHAPAS,FOLHAS E TIRAS,DE ESTANHO,ESPESSURA>02MM'),(6605,'80050010','FOLHAS E TIRAS,DELGADAS,DE ESTANHO,ESPESSURA<=02MM'),(6606,'80050020','POS E ESCAMAS,DE ESTANHO'),(6607,'80060000','TUBOS E SEUS ACESSORIOS,DE ESTANHO'),(6608,'80070000','OUTRAS OBRAS DE ESTANHO'),(6609,'81011000','POS DE TUNGSTENIO (VOLFRAMIO)'),(6610,'81019100','TUNGSTENIO EM FORMA BRUTA,INCLBARRA SINTERDESPERDE'),(6611,'81019200','OUTSBARRAS E PERFIS/CHAPAS/TIRAS/FOLHAS,DE TUNGSTE'),(6612,'81019300','FIOS DE TUNGSTENIO'),(6613,'81019910','OBRAS DE TUNGSTENIO,UTILP/FABRDE CONTATOS ELETR'),(6614,'81019990','OUTRAS OBRAS DE TUNGSTENIO'),(6615,'81021000','POS DE MOLIBDENIO'),(6616,'81029100','MOLIBDENIO EM FORMA BRUTA,INCLBARRA SINTERDESPERDE'),(6617,'81029200','OUTSBARRAS E PERFIS/CHAPAS/TIRAS/FOLHAS,DE MOLIBDE'),(6618,'81029300','FIOS DE MOLIBDENIO'),(6619,'81029900','OUTRAS OBRAS DE MOLIBDENIO'),(6620,'81031000','TANTALO EM FORMA BRUTA,INCLBARRA SINTERDESPERDRESI'),(6621,'81039000','OUTRAS OBRAS DE TANTALO'),(6622,'81041100','MAGNESIO EM FORMA BRUTA,CONTMAGNESIO>=9980%'),(6623,'81041900','OUTRAS FORMAS BRUTAS DE MAGNESIO'),(6624,'81042000','DESPERDICIOS E RESIDUOS,DE MAGNESIO'),(6625,'81043000','RESIDUOS DE TORNO,GRANULOS CALIBRADOS E POS DE MAG'),(6626,'81049000','OUTRAS OBRAS DE MAGNESIO'),(6627,'81051010','POS DE COBALTO'),(6628,'81051020','COBALTO EM BRUTO'),(6629,'81051090','MATES DE COBALTO,OUTROS PRODINTERMEDMETALCOBALTO,E'),(6630,'81059010','CHAPAS,FOLHAS,TIRAS,FIOS,HASTES,ETCDE COBALTO'),(6631,'81059090','OUTRAS OBRAS DE COBALTO'),(6632,'81060010','BISMUTO EM BRUTO'),(6633,'81060090','OBRAS DE BISMUTO,DESPERDICIOS E RESIDUOS,DE BISMUT'),(6634,'81071010','CADMIO EM BRUTO'),(6635,'81071090','DESPERDICIOS E RESIDUOS,DE CADMIO E POS DE CADMIO'),(6636,'81079000','OBRAS DE CADMIO'),(6637,'81081000','TITANIO EM FORMA BRUTA,DESPERDRESIDE POS DE TITANI'),(6638,'81089000','OBRAS DE TITANIO'),(6639,'81091000','ZIRCONIO EM FORMA BRUTA,DESPERDRESIDE POS DE ZIRCO'),(6640,'81099000','OBRAS DE ZIRCONIO'),(6641,'81100010','ANTIMONIO EM BRUTO'),(6642,'81100090','OBRAS DE ANTIMONIO,DESPERDICIOS E RESIDUOS,DE ANTI'),(6643,'81110010','MANGANES EM BRUTO'),(6644,'81110020','CHAPAS,FOLHAS,TIRAS,FIOS,HASTES,ETCDE MANGANES'),(6645,'81110090','OUTRAS OBRAS DE MANGANES,DESPERDE RESIDUOS DE MANG'),(6646,'81121100','BERILIO EM FORMA BRUTA,DESPERDRESIDE POS DE BERILI'),(6647,'81121900','OBRAS DE BERILIO'),(6648,'81122010','CROMO EM BRUTO'),(6649,'81122090','OBRAS DE CROMO,DESPERDICIOS E RESIDUOS,DE CROMO'),(6650,'81123000','GERMANIO E SUAS OBRAS,DESPERDE RESIDUOS,DE GERMANI'),(6651,'81124000','VANADIO E SUAS OBRAS,DESPERDICIOS E RESIDUOS,DE VA'),(6652,'81129100','GALIO,HAFNIO,INDIO,NIOBIO,ETCEM BRUTO,DESPERDRESID'),(6653,'81129900','OBRAS DE GALIO,HAFNIO,INDIO,NIOBIO,RENIO E TALIO'),(6654,'81130010','CHAPAS,FOLHAS,TIRAS,FIOS,HASTESETCDE CERAMAIS'),(6655,'81130090','OUTRAS OBRAS DE CERAMAIS,DESPERDE RESIDUOS DE CERA'),(6656,'82011000','PAS DE METAIS COMUNS'),(6657,'82012000','FORCADOS E FORQUILHAS,DE METAIS COMUNS'),(6658,'82013000','ALVIOES,PICARETAS,ENXADAS,SACHOS,ETCDE METAIS COMU'),(6659,'82014000','MACHADOS,PODOES E OUTRAS FERRAMC/GUME,DE METAIS CO'),(6660,'82015000','TESOURAS DE PODAR,MANIPULADAS C/1 MAO,DE METAIS CO'),(6661,'82016000','TESOURAS P/SEBES,ETCMANIPULC/2 MAOS,DE METAIS COMU'),(6662,'82019000','OUTSFERRAMMANUAIS,P/AGRICULTURA,ETCDE METAIS COMUN'),(6663,'82021000','SERRAS MANUAIS,DE METAIS COMUNS'),(6664,'82022000','FOLHA DE SERRAS DE FITA,DE METAIS COMUNS'),(6665,'82023100','FOLHA DE SERRAS CIRCDE METAIS COMUNS,PARTE OPERANT'),(6666,'82023900','OUTSFOLHAS DE SERRAS CIRCDE METAIS COMUNS,INCLPART'),(6667,'82024000','CORRENTES CORTANTES DE SERRAS,DE METAIS COMUNS'),(6668,'82029100','FOLHA DE SERRAS RETILDE METAIS COMUNS,P/TRABALHMET'),(6669,'82029910','FOLHA DE SERRAS,RETA,N/DENTDE METCOMUNS,P/SERRPEDR'),(6670,'82029990','OUTRAS FOLHAS DE SERRAS,DE METAIS COMUNS'),(6671,'82031010','LIMAS E GROSAS,DE METAIS COMUNS'),(6672,'82031090','OUTRAS FERRAMENTAS MANUAIS,DE METAIS COMUNS,IGUAL '),(6673,'82032010','ALICATES DE METAIS COMUNS'),(6674,'82032090','TENAZES,PINCAS,FERRAMMANUAIS SEMELHDE METAIS COMUN'),(6675,'82033000','CISALHAS P/METAIS,FERRAMMANUAIS SEMELHDE METCOMUNS'),(6676,'82034000','CORTA-TUBOS E FERRAMMANUAIS SEMELHDE METAIS COMUNS'),(6677,'82041100','CHAVES DE PORCAS,MANUAIS,DE ABERTFIXA,DE METAIS CO'),(6678,'82041200','CHAVES DE PORCAS,MANUAIS,DE ABERTVARIAVDE METCOMUN'),(6679,'82042000','CHAVES DE CAIXA INTERCAMBIAVINCLC/CABOS,DE METCOMU'),(6680,'82051000','FERRAMENTAS MANUAIS DE FURAR/ROSCAR,DE METAIS COMU'),(6681,'82052000','MARTELOS E MARRETAS,MANUAIS,DE METAIS COMUNS'),(6682,'82053000','PLAINA/FERRAMMANUAIS CORTDE METCOMUNS,P/TRABMADEIR'),(6683,'82054000','CHAVES DE FENDA,MANUAIS,DE METAIS COMUNS'),(6684,'82055100','OUTRAS FERRAMENTAS MANUAIS,DE METAIS COMUNS,USO DO'),(6685,'82055900','OUTRAS FERRAMENTAS MANUAIS,DE METAIS COMUNS,NAO DO'),(6686,'82056000','LAMPARINAS/LAMPADAS DE SOLDAR,E SEMELHDE METAIS CO'),(6687,'82057000','TORNOS DE APERTAR,SARGENTOS E SEMELHDE METAIS COMU'),(6688,'82058000','BIGORNAS,FORJAS-PORTATMOS C/ARMACAO,USO MANUAL/PED'),(6689,'82059000','SORTIDO DE TORNO,BIGORNA,ETCMANUAL/PEDAL,DE METCOM'),(6690,'82060000','SORTIDO DE SERRAS,LIMAS,ETCUSO MANUAL,DE METAIS CO'),(6691,'82071300','FERRAMENTAS DE PERFURDE METCOMUNS,PARTE OPERCERAMA'),(6692,'82071900','OUTSFERRAMENTAS DE PERFURETCDE METCOMUNSINCLPARTE'),(6693,'82072000','FIEIRAS DE METCOMUNS,DE ESTIRAGEM/EXTRUSAO P/METAI'),(6694,'82073000','FERRAMENTAS DE EMBUTIR/ESTAMPAR/PUNCIONAR,DE METCO'),(6695,'82074010','FERRAMENTAS DE ROSCAR INTERIORMENTE,DE METAIS COMU'),(6696,'82074020','FERRAMENTAS DE ROSCAR EXTERIORMENTE,DE METAIS COMU'),(6697,'82075011','BROCAS HELICOIDAIS,D<=52MM,DE METCOMUNS,INCLDIAMAN'),(6698,'82075019','OUTRAS BROCAS DE METAIS COMUNS,MESMO DIAMANTADAS'),(6699,'82075090','OUTRAS FERRAMENTAS DE FURAR,DE METAIS COMUNS'),(6700,'82076000','FERRAMENTAS DE MANDRILAR OU DE BROCHAR,DE METAIS C'),(6701,'82077010','FERRAMENTAS DE FRESAR DE TOPO,DE METAIS COMUNS'),(6702,'82077020','FERRAMENTAS PARA CORTAR ENGRENAGENS,DE METAIS COMU'),(6703,'82077090','OUTRAS FERRAMENTAS DE FRESAR,DE METAIS COMUNS'),(6704,'82078000','FERRAMENTAS DE TORNEAR,DE METAIS COMUNS'),(6705,'82079000','OUTRAS FERRAMENTAS INTERCAMBIAVEIS,DE METAIS COMUN'),(6706,'82081000','FACAS/LAMINAS CORTDE METAIS COMUNS,P/TRABMETAIS'),(6707,'82082000','FACAS/LAMINAS CORTDE METAIS COMUNS,P/TRABMADEIRA'),(6708,'82083000','FACAS/LAMINAS CORTDE METAIS COMUNS,P/APARSCOZINHA,'),(6709,'82084000','FACAS/LAMINAS CORTDE METCOMUNS,P/MAQSAGRICULTURA,E'),(6710,'82089000','OUTSFACAS/LAMINAS CORTDE METCOMUM,P/MAQSAPARSMECAN'),(6711,'82090011','PLAQUETAS/PASTILHAS,INTERCAMBDE CERAMAIS,P/FERRAME'),(6712,'82090019','OUTSPLAQUETAS/PASTILHAS,DE CERAMAIS,N/MONTADP/FERR'),(6713,'82090090','VARETAS,PONTAS,ETCDE CERAMAIS,N/MONTADOS,P/FERRAME'),(6714,'82100010','MOINHOS MECANDE ACIONMANUAL,P<=10KG,P/ALIMENTOS,ET'),(6715,'82100090','OUTSAPARSMECANACIONMANUAL,P<=10KG,P/ALIMENTOS,ETC'),(6716,'82111000','FACAS DE LAMINA CORTANTE/SERRILHADE LAMINAS,EM SOR'),(6717,'82119100','FACAS DE MESA,DE LAMINA FIXA,DE METAIS COMUNS'),(6718,'82119500','CABOS DE METAIS COMUNS P/FACAS DE METAIS COMUNS'),(6719,'82119210','FACAS DE COZINHA/ACOUGUE,DE LAMINA FIXA,DE METCOMU'),(6720,'82119220','FACAS PARA CACA,DE LAMINA FIXA,DE METAIS COMUNS'),(6721,'82119290','OUTRAS FACAS DE LAMINA FIXA,DE METAIS COMUNS'),(6722,'82119310','FACAS PODADEIRAS E SUAS PARTES,DE METAIS COMUNS'),(6723,'82119320','CANIVETES C/UMA/VARIAS LAMINAS/OUTSPECAS,DE METCOM'),(6724,'82119390','OUTRAS FACAS EXCDE LAMINA FIXA,DE METAIS COMUNS'),(6725,'82119400','LAMINAS PARA FACAS,DE METAIS COMUNS'),(6726,'82121010','NAVALHAS DE BARBEAR,DE METAIS COMUNS'),(6727,'82121020','APARELHOS DE BARBEAR,NAO ELETRICOS'),(6728,'82122010','LAMINAS DE BARBEAR,DE SEGURANCA,DE METAIS COMUNS'),(6729,'82122020','ESBOCOS DE LAMINAS,EM TIRAS,DE METAIS COMUNS'),(6730,'82129000','OUTSPARTES DE NAVALHAS/APARSDE BARBEAR,DE METCOMUN'),(6731,'82130000','TESOURAS E SUAS LAMINAS,DE METAIS COMUNS'),(6732,'82141000','ESPATULAS,ABRE-CARTAS,ETCE SUAS LAMINAS,DE METCOMU'),(6733,'82142000','UTENSIL/SORTIDO UTENSILMANICURO/PEDICURO,DE METCOM'),(6734,'82149090','OUTROS ARTIGOS DE CUTELARIA DE METCOMUNS,E SUAS PA'),(6735,'82149010','MAQUINAS DE TOSQUIAR E SUAS PARTES,DE METAIS COMUN'),(6736,'82151000','SORTIDO DE COLHER,ETCDE METCOMUNS,C>=1 PRAT/DOUR/P'),(6737,'82152000','OUTSSORTIDOS DE COLHER,GARFO,CONCHA,ETCDE METCOMUN'),(6738,'82159100','COLHER,GARFO,CONCHA,ETCDE METCOMUNS,PRATEAD/DOUR/P'),(6739,'82159910','COLHERES,GARFOS,CONCHAS,ESCUMADEIRAS,ETCDE ACOS IN'),(6740,'82159990','OUTRAS COLHERES,GARFOS,CONCHAS,ETCDE METAIS COMUNS'),(6741,'83011000','CADEADOS DE METAIS COMUNS'),(6742,'83012000','FECHADURAS DE METAIS COMUNS,P/VEICULOS AUTOMOVEIS'),(6743,'83013000','FECHADURAS DE METAIS COMUNS,P/MOVEIS'),(6744,'83014000','OUTRAS FECHADURAS E FERROLHOS,DE METAIS COMUNS'),(6745,'83015000','FECHOS E ARMACOES C/FECHO,C/FECHADURA,DE METAIS CO'),(6746,'83016000','PARTES DE CADEADOS,FECHADURAS,ETCDE METAIS COMUNS'),(6747,'83017000','CHAVES DE METAIS COMUNS,APRESENTADAS ISOLADAMENTE'),(6748,'83021000','DOBRADICAS DE METAIS COMUNS,DE QQTIPO'),(6749,'83022000','RODIZIOS COM ARMACAO,DE METAIS COMUNS'),(6750,'83023000','OUTRAS GUARNICOES,ETCDE METAIS COMUNS,P/VEICSAUTOM'),(6751,'83024100','OUTRAS GUARNICOES,ETCDE METAIS COMUNS,P/CONSTRUCOE'),(6752,'83024200','OUTRAS GUARNICOES,ETCDE METAIS COMUNS,P/MOVEIS'),(6753,'83024900','OUTRAS GUARNICOES,ETCDE METAIS COMUNS'),(6754,'83025000','PATERAS,PORTA-CHAPEUS,CABIDES,ETCDE METAIS COMUNS'),(6755,'83026000','FECHOS AUTOMATICOS DE METAIS COMUNS,P/PORTAS'),(6756,'83030000','COFRES-FORTES,PORTAS BLINDADAS,ETCDE METAIS COMUNS'),(6757,'83040000','CLASSIFICADORES/OUTSARTEFSDE ESCRITORIO,DE METCOMU'),(6758,'83051000','FERRAGENS P/ENCADERNDE FLSMOVEIS,ETCDE METAIS COMU'),(6759,'83052000','GRAMPOS EM BARRETAS,DE METAIS COMUNS'),(6760,'83059000','MOLAS P/PAPEIS,OUTSOBJSDE ESCRITORIO,DE METAIS COM'),(6761,'83061000','SINOS,CAMPAINHAS,GONGOS,ETCDE METAIS COMUNS,N/ELET'),(6762,'83062100','ESTATUETAS/OBJORNAMENTDE METCOMUNS,PRATEAD/DOUR/PL'),(6763,'83062900','OUTRAS ESTATUETAS/OBJETOS DE ORNAMENTDE METAIS COM'),(6764,'83063000','MOLDURAS P/FOTOGRAFIA,GRAVURA,ESPELHOS,DE METAIS C'),(6765,'83071010','TUBOS FLEXIVEIS DE ACO,P/EXPLOTSUBMARDE PETROLEO/G'),(6766,'83071090','OUTROS TUBOS FLEXIVEIS DE FERRO OU ACO'),(6767,'83079000','TUBOS FLEXIVEIS DE OUTROS METAIS COMUNS'),(6768,'83081000','GRAMPOS/COLCHETES/ILHOSES,DE METCOMUNS,P/VESTUARIO'),(6769,'83082000','REBITES TUBULARES OU DE HASTE FENDIDA,DE METAIS CO'),(6770,'83089010','FIVELAS DE METAIS COMUNS'),(6771,'83089020','CONTAS E LANTEJOULAS,DE METAIS COMUNS'),(6772,'83089090','OUTSFECHOS,ETCDE METCOMUNS,P/VESTUARIO,CALCADOS,ET'),(6773,'83091000','CAPSULAS DE COROA,DE METAIS COMUNS,P/EMBALAGEM'),(6774,'83099000','ROLHAS,OUTSTAMPAS E ACESSP/EMBALAGEM,DE METAIS COM'),(6775,'83100000','PLACAS INDICADORAS,SINALIZETCDE METAIS COMUNS,N/EL'),(6776,'83111000','ELETRODOS REVESTEXTERP/SOLDAR A ARCO,DE METAIS COM'),(6777,'83112000','FIOS REVESTINTERIORMP/SOLDAR A ARCO,DE METAIS COMU'),(6778,'83113000','VARETAS E FIOS,REVESTP/SOLDAR A CHAMA,DE METAIS CO'),(6779,'83119000','OUTROS FIOS,VARETAS,TUBOS,CHAPAS,ETCDE METAIS COMU'),(6780,'84011000','REATORES NUCLEARES'),(6781,'84012000','MAQUINAS E APARELHOS P/SEPARACAO DE ISOTOPOS,E PAR'),(6782,'84013000','ELEMENTOS COMBUSTIVN/IRRADIADOS,P/REATORES NUCLEAR'),(6783,'84014000','PARTES DE REATORES NUCLEARES'),(6784,'84021100','CALDEIRAS AQUATUBULARES,COM PRODUCAO DE VAPOR>45T/'),(6785,'84021200','CALDEIRAS AQUATUBULARES,COM PRODUCAO DE VAPOR<=45T'),(6786,'84021900','OUTRAS CALDEIRAS P/PRODUCAO DE VAPOR,INCLCALDEIRA '),(6787,'84022000','CALDEIRAS DENOMINADAS \"DE AGUA SUPERAQUECIDA\"'),(6788,'84029000','PARTES DE CALDEIRAS DE VAPOR E \"DE AGUA SUPERAQUEC'),(6789,'84031010','CALDEIRAS P/AQUECIMENTO CENTRAL,CAP<=200000 KCAL/H'),(6790,'84031090','OUTRAS CALDEIRAS P/AQUECIMENTO CENTRAL'),(6791,'84039000','PARTES DE CALDEIRAS P/AQUECIMENTO CENTRAL'),(6792,'84041010','APARELHOS AUXILP/CALDEIRAS DE VAPOR/\"AGUA SUPERAQU'),(6793,'84041020','APARELHOS AUXILIARES P/CALDEIRAS DE AQUECIMENTO CE'),(6794,'84042000','CONDENSADORES P/MAQUINAS A VAPOR'),(6795,'84049010','PARTES DE APARELHOS AUXILIARES P/CALDEIRAS DE VAPO'),(6796,'84049090','PARTES DE APARELHOS AUXILP/CALDEIRAS AQUECIMCENTRA'),(6797,'84051000','GERADORES DE GAS DE AR/GAS DE AGUA/DE ACETILENO,ET'),(6798,'84059000','PARTES DE GERADORES DE GAS DE AR/GAS DE AGUA,ETC'),(6799,'84061000','TURBINAS A VAPOR,P/PROPULSAO DE EMBARCACOES'),(6800,'84068100','OUTRAS TURBINAS A VAPOR,DE POTENCIA>40MW'),(6801,'84068200','OUTRAS TURBINAS A VAPOR,DE POTENCIA<=40MW'),(6802,'84069000','PARTES DE TURBINAS A VAPOR'),(6803,'84071000','MOTORES DE EXPLOSAO,P/AVIACAO'),(6804,'84072110','MOTORES DE EXPLOSAO,P/EMBARCACAO,\"OUTBOARD\",MONOCI'),(6805,'84072190','OUTROS MOTORES DE EXPLOSAO,P/EMBARCACAO,\"OUTBOARD\"'),(6806,'84072910','OUTROS MOTORES DE EXPLOSAO,P/EMBARCACAO,MONOCILIND'),(6807,'84072990','OUTROS MOTORES DE EXPLOSAO,P/EMBARCACAO'),(6808,'84073110','MOTORES DE EXPLOSAO,P/VEICDO CAP87,ATE 50CM3,MONOC'),(6809,'84073190','OUTROS MOTORES DE EXPLOSAOP/VEICDO CAP87,ATE 50CM3'),(6810,'84073200','MOTORES DE EXPLOSAO,P/VEICCAP87,SUP50CM3 ATE 250CM'),(6811,'84073310','MOTORES DE EXPLOSAO,P/VEICCAP87,250<CM3<=1000,MONO'),(6812,'84073390','OUTROS MOTORES DE EXPLOSAO,P/VEICCAP87, 250<CM3<=1'),(6813,'84073410','MOTORES DE EXPLOSAO,P/VEICCAP87,SUP1000CM3,MONOCIL'),(6814,'84073490','OUTROS MOTORES DE EXPLOSAO,P/VEICCAP87,SUP1000CM3'),(6815,'84079000','OUTROS MOTORES DE EXPLOSAO'),(6816,'84081010','MOTORES DIESEL/SEMIDIESEL,P/EMBARCACAO,TIPO \"OUTBO'),(6817,'84081090','OUTROS MOTORES DIESEL/SEMIDIESEL,PARA EMBARCACAO'),(6818,'84082010','MOTORES DIESEL/SEMIDIESEL,P/VEICDO CAP87,ATE 1500C'),(6819,'84082020','MOTORES DIESEL/SEMIDIESEL,P/VEICCAP87, 1500<CM3<=2'),(6820,'84082030','MOTORES DIESEL/SEMIDIESEL,P/VEICCAP87, 2500<CM3<=3'),(6821,'84082090','OUTROS MOTORES DIESEL/SEMIDIESEL,P/VEICDO CAP87'),(6822,'84089010','OUTSMOTORES DIESEL,ESTACIONARIOS,POT>=3375KW,RPM>1'),(6823,'84089090','OUTROS MOTORES DIESEL/SEMIDIESEL'),(6824,'84091000','PARTES DE MOTORES PARA AVIACAO'),(6825,'84099111','BIELAS PARA MOTORES DE EXPLOSAO'),(6826,'84099112','BLOCOS DE CILINDROS,CABECOTES,ETCP/MOTORES DE EXPL'),(6827,'84099113','CARBURADORES PARA MOTORES DE EXPLOSAO'),(6828,'84099120','PISTOES OU EMBOLOS,PARA MOTORES DE EXPLOSAO'),(6829,'84099114','VALVULAS DE ADMISSAO OU DE ESCAPE,P/MOTORES DE EXP'),(6830,'84099115','COLETORES DE ADMISSAO OU ESCAPE,P/MOTORES DE EXPLO'),(6831,'84099116','ANEIS DE SEGMENTO,PARA MOTORES DE EXPLOSAO'),(6832,'84099130','CAMISAS DE CILINDRO,PARA MOTORES DE EXPLOSAO'),(6833,'84099140','INJECAO ELETRONICA,PARA MOTORES DE EXPLOSAO'),(6834,'84099117','GUIAS DE VALVULAS,PARA MOTORES DE EXPLOSAO'),(6835,'84099190','OUTRAS PARTES PARA MOTORES DE EXPLOSAO'),(6836,'84099911','BIELAS PARA MOTORES DIESEL OU SEMIDIESEL'),(6837,'84099912','BLOCOS DE CILINDROS,CABECOTES,ETCP/MOTORES DIESEL/'),(6838,'84099990','OUTRAS PARTES P/MOTORES DIESEL OU SEMIDIESEL'),(6839,'84099920','PISTOES OU EMBOLOS,P/MOTORES DIESEL OU SEMIDIESEL'),(6840,'84099914','VALVULAS DE ADMISSAO OU DE ESCAPE,P/MOTORES DIESEL'),(6841,'84099915','COLETORES DE ADMISSAO OU ESCAPE,P/MOTORES DIESEL/S'),(6842,'84099916','ANEIS DE SEGMENTO,PARA MOTORES A DIESEL OU SEMIDIE'),(6843,'84099913','INJETORES PARA MOTORES DIESEL OU SEMIDIESEL'),(6844,'84099930','CAMISAS DE CILINDRO,P/MOTORES DIESEL OU SEMIDIESEL'),(6845,'84099917','GUIAS DE VALVULAS,P/MOTORES DIESEL OU SEMIDIESEL'),(6846,'84101100','TURBINAS E RODAS HIDRAULICAS,DE POTENCIA<=1000KW'),(6847,'84101200','TURBINAS E RODAS HIDRAULICAS,1000KW<POTENCIA<=1000'),(6848,'84101300','TURBINAS E RODAS HIDRAULICAS,DE POTENCIA>10000KW'),(6849,'84109000','PARTES DE TURBINAS E RODAS HIDRAULICAS,INCLREGULAD'),(6850,'84111100','TURBORREATORES DE EMPUXO<=25KN'),(6851,'84111200','TURBORREATORES DE EMPUXO>25KN'),(6852,'84112100','TURBOPROPULSORES DE POTENCIA<=1100KW'),(6853,'84112200','TURBOPROPULSORES DE POTENCIA>1100KW'),(6854,'84118100','OUTRAS TURBINAS A GAS,DE POTENCIA<=5000KW'),(6855,'84118200','OUTRAS TURBINAS A GAS,DE POTENCIA>5000KW'),(6856,'84119100','PARTES DE TURBORREATORES OU DE TURBOPROPULSORES'),(6857,'84119900','PARTES DE OUTRAS TURBINAS A GAS'),(6858,'84121000','PROPULSORES A REACAO,EXCOS TURBORREATORES'),(6859,'84122110','CILINDROS HIDRAULICOS'),(6860,'84122190','OUTROS MOTORES HIDRAULICOS,DE MOVIMENTO RETILINEO'),(6861,'84122900','OUTROS MOTORES HIDRAULICOS'),(6862,'84123110','CILINDROS PNEUMATICOS'),(6863,'84123190','OUTROS MOTORES PNEUMATICOS,DE MOVIMENTO RETILINEO'),(6864,'84123900','OUTROS MOTORES PNEUMATICOS'),(6865,'84128000','OUTROS MOTORES E MAQUINAS MOTRIZES'),(6866,'84129080','PARTES DE MOTORES HIDRAUL/PNEUMATDE MOVIMRETILINEO'),(6867,'84129010','PARTES DE PROPULSORES A REACAO'),(6868,'84129020','PARTES DE MAQUINAS A VAPOR,DE MOVIMENTO RETILINEO'),(6869,'84129090','PARTES DE OUTROS MOTORES E MAQUINAS MOTRIZES'),(6870,'84131100','BOMBAS P/DISTRIBCOMBUSTIV/LUBRIFEM POSTOS SERVICO,'),(6871,'84131900','OUTSBOMBAS P/LIQUIDOS C/DISPMEDIDOR/CONCEBP/COMPOR'),(6872,'84132000','BOMBAS P/LIQUIDOS,MANUAIS'),(6873,'84133010','BOMBAS P/GASOLINA/ALCOOL,P/MOTOR DE EXPLOSAO'),(6874,'84133020','BOMBAS INJETORAS DE COMBUSTIVEL P/MOTOR DIESEL/SEM'),(6875,'84133030','BOMBAS P/OLEO LUBRIFICANTE,P/MOTOR EXPLOSAO/DIESEL'),(6876,'84133090','OUTSBOMBAS P/COMBUSTIVEIS,ETCP/MOTOR EXPLOSAO/DIES'),(6877,'84134000','BOMBAS P/CONCRETO (BETAO)'),(6878,'84135010','BOMBAS VOLUMETRICAS ALTERNATIVAS,5HP<POTENCIA<=600'),(6879,'84135090','OUTRAS BOMBAS VOLUMETRICAS ALTERNATIVAS'),(6880,'84136011','BOMBAS VOLUMETRROTATIVAS,VAZAO<=300L/MINDE ENGRENA'),(6881,'84136090','OUTRAS BOMBAS VOLUMETRICAS ROTATIVAS'),(6882,'84136019','OUTRAS BOMBAS VOLUMETRICAS ROTATIVAS,DE VAZAO<=300'),(6883,'84137010','ELETROBOMBAS SUBMERSIVEIS'),(6884,'84137080','OUTRAS BOMBAS CENTRIFUGAS,DE VAZAO<=300LITROS/MINU'),(6885,'84137090','OUTRAS BOMBAS CENTRIFUGAS'),(6886,'84138100','OUTRAS BOMBAS P/LIQUIDOS'),(6887,'84138200','ELEVADORES DE LIQUIDOS'),(6888,'84139100','PARTES DE BOMBAS P/LIQUIDOS'),(6889,'84139200','PARTES DE ELEVADORES DE LIQUIDOS'),(6890,'84141000','BOMBAS DE VACUO'),(6891,'84142000','BOMBAS DE AR,DE MAO OU DE PE'),(6892,'84143011','MOTOCOMPRESSOR HERMETICO,CAPACIDADE<4700 FRIGORIAS'),(6893,'84143019','OUTSMOTOCOMPRESSORES HERMETICOS P/EQUIPAMFRIGORIFI'),(6894,'84143091','COMPRESSOR P/EQUIPAMFRIGORIFICO,CAP<=16000 FRIGORI'),(6895,'84143099','OUTROS COMPRESSORES P/EQUIPAMENTOS FRIGORIFICOS'),(6896,'84144010','COMPRESSOR DE AR,DE DESLOCAMENTO ALTERNATIVO'),(6897,'84144020','COMPRESSOR DE AR,DE PARAFUSO,MONTCHASSIS/REBOCAVEI'),(6898,'84144090','OUTSCOMPRESSORES DE AR,MONTCHASSIS C/RODAS/REBOCAV'),(6899,'84145110','VENTILADOR DE MESA,C/MOTOR ELETRICO,DE POTENCIA<=1'),(6900,'84145120','VENTILADOR DE TETO,C/MOTOR ELETRICO,DE POTENCIA<=1'),(6901,'84145190','OUTROS VENTILADORES C/MOTOR ELETRICO,DE POTENCIA<='),(6902,'84145910','MICROVENTILADORES C/AREA DE CARCACA<90CM2'),(6903,'84145990','OUTROS VENTILADORES'),(6904,'84146000','COIFAS C/DIMENSAO HORIZONTAL MAXIMA<=120CM'),(6905,'84148011','OUTROS COMPRESSORES DE AR,ESTACIONARIOS,DE PISTAO'),(6906,'84148012','OUTROS COMPRESSORES DE AR,DE PARAFUSO'),(6907,'84148013','OUTSCOMPRESSORES DE AR,DE LOBULOS PARALELOS (\"ROOT'),(6908,'84148019','OUTROS COMPRESSORES DE AR'),(6909,'84148031','OUTROS COMPRESSORES DE GASES,DE PISTAO'),(6910,'84148039','OUTROS COMPRESSORES DE GASES'),(6911,'84148032','OUTROS COMPRESSORES DE GASES,DE PARAFUSO'),(6912,'84148033','OUTROS COMPRESSORES DE GASES,CENTRIFUGOS'),(6913,'84148090','OUTSBOMBAS DE AR/COIFAS ASPIRANTES P/EXTRACAO/RECI'),(6914,'84148021','OUTSTURBOALIMENTDE AR,P<=50KG,P/MOTOR EXPLOSAO/DIE'),(6915,'84148022','OUTSTURBOALIMENTDE AR,P>50KG,P/MOTOR EXPLOSAO/DIES'),(6916,'84148029','OUTROS TURBOCOMPRESSORES DE AR'),(6917,'84149010','PARTES DE BOMBAS DE AR OU DE VACUO'),(6918,'84149020','PARTES DE VENTILADORES OU COIFAS ASPIRANTES'),(6919,'84149031','PISTOES OU EMBOLOS,DE COMPRESSORES DE AR/OUTROS GA'),(6920,'84149032','ANEIS DE SEGMENTO,PARA COMPRESSORES DE AR OU OUTSG'),(6921,'84149033','BLOCOS DE CILINDROS/CABECOTES/CARTERES,P/COMPRESSO'),(6922,'84149039','OUTRAS PARTES DE COMPRESSORES DE AR/OUTRAS GASES'),(6923,'84149034','VALVULAS DE COMPRESSORES DE AR/OUTROS GASES'),(6924,'84151010','APARSDE AR-CONDICIONADO,C<=30000F/H,P/PAREDES/JANE'),(6925,'84151090','OUTROS APARELHOS DE AR CONDICIONADO,P/PAREDES/JANE'),(6926,'84158190','OUTSAPARSDE AR CONDC/DISPREFRIGVALVINVCICLO TERM'),(6927,'84158110','OUTSAPARSDE AR CONDC/DISPREFRIGVALVINV<=30000F/H'),(6928,'84152010','APARSDE AR-CONDICIONADO,C<=30000F/H,P/VEICSAUTOMOV'),(6929,'84158210','OUTSAPARSDE AR CONDICIONADO,C/DISPREFRIGC<=30000F/'),(6930,'84158290','OUTSAPARELHOS DE AR CONDICIONADO,C/DISPOSITIVOS RE'),(6931,'84152090','OUTROS APARELHOS DE AR CONDICIONADO,P/VEICSAUTOMOV'),(6932,'84158300','OUTSAPARELHOS DE AR CONDICIONADO,S/DISPOSITIVOS RE'),(6933,'84159000','PARTES DE MAQUINAS E APARELHOS DE AR CONDICIONADO'),(6934,'84161000','QUEIMADORES P/ALIMENTFORNALHAS,DE COMBUSTIVLIQUIDO'),(6935,'84162010','QUEIMADORES P/ALIMENTFORNALHAS,DE GASES'),(6936,'84162090','OUTSQUEIMADORES P/ALIMENTDE FORNALHAS,INCLOS MISTO'),(6937,'84163000','FORNALHAS AUTOMATICAS,INCLAS ANTEFORNALHAS,ETC'),(6938,'84169000','PARTES DE QUEIMADORES,FORNALHAS AUTOMATIVAS,ETC'),(6939,'84171010','FORNOS INDUSTRIAIS,N/ELETRP/FUSAO DE METAIS'),(6940,'84171020','FORNOS INDUSTRIAIS,N/ELETRP/TRATAMTERMICO DE METAI'),(6941,'84171090','OUTSFORNOS N/ELETRP/USTULACAO,ETCDE MINERIOS/METAI'),(6942,'84172000','FORNOS INDUSTRIAIS,N/ELETRDE PADARIA,PASTELARIA,ET'),(6943,'84178090','OUTROS FORNOS INDUSTRIAIS OU DE LABORATORIO,N/ELET'),(6944,'84178010','FORNOS INDUSTRIAIS,N/ELETRP/CERAMICA'),(6945,'84178020','FORNOS INDUSTRIAIS,N/ELETRP/FUSAO DE VIDRO'),(6946,'84179000','PARTES DE FORNOS INDUSTRIAIS OU DE LABORATORIO,N/E'),(6947,'84181000','REFRIGERADORES COMBINC/CONGELADORES,PORTA EXTSEPAR'),(6948,'84182100','REFRIGERADORES DE COMPRESSAO,DE USO DOMESTICO'),(6949,'84182200','REFRIGERADORES DE ABSORCAO,ELETRICOS,DE USO DOMEST'),(6950,'84182900','OUTROS REFRIGERADORES DE USO DOMESTICO'),(6951,'84183000','CONGELADORES (FREEZERS) TIPO COFRE,CAPACIDADE<=800'),(6952,'84184000','CONGELADORES (FREEZERS) TIPO ARMARIO,CAPACIDADE<=9'),(6953,'84185010','OUTROS CONGELADORES (\"FREEZERS\")'),(6954,'84185090','OUTSREFRIGERADORES,VITRINAS,BALCOES,ETCP/PRODDE FR'),(6955,'84186110','EQUIPAMENTOS P/REFRIGERACAO/AR CONDICIONCAP<=30000'),(6956,'84186190','OUTSGRUPOS DE COMPRESSAO,CONDENSADOR/TROCADOR DE C'),(6957,'84186931','UNIDADES FORNECEDORAS DE AGUA OU SUCOS'),(6958,'84186910','MAQUINAS P/PREPARACAO DE SORVETES,N/DOMESTICAS'),(6959,'84186920','RESFRIADORES DE LEITE'),(6960,'84186932','UNIDADES FORNECEDORAS DE BEBIDAS CARBONATADAS'),(6961,'84186990','OUTSMATERIAIS/MAQSAPARSP/PRODFRIO,E BOMBAS DE CALO'),(6962,'84189100','GABINETES/MOVEIS P/RECEBER EQUIPAMENTO P/PRODDE FR'),(6963,'84189900','OUTRAS PARTES DE REFRIGERADORES,CONGELADORES,ETC'),(6964,'84191100','AQUECEDORES DE AGUA,DE AQUECIMENTO INSTANTANEO,A G'),(6965,'84191910','AQUECEDORES SOLARES DE AGUA'),(6966,'84191990','OUTSAQUECEDORES DE AGUA,N/ELETRDE AQUECIMINSTANTET'),(6967,'84192000','ESTERILIZADORES MEDICO-CIRURGICOS OU DE LABORATORI'),(6968,'84193100','SECADORES P/PRODUTOS AGRICOLAS'),(6969,'84193200','SECADORES P/MADEIRAS,PASTAS DE PAPEL,PAPEIS OU CAR'),(6970,'84193900','OUTROS SECADORES'),(6971,'84194010','APARELHOS DE DESTILACAO DE AGUA'),(6972,'84194020','APARELHOS DE DESTILACAO OU RETIFICACAO,DE ALCOOIS,'),(6973,'84194090','OUTROS APARELHOS DE DESTILACAO OU DE RETIFICACAO'),(6974,'84195010','TROCADORES (PERMUTADORES) DE CALOR,DE PLACAS'),(6975,'84195022','TROCADORES (PERMUTADORES) DE CALOR,TUBULARES,DE GR'),(6976,'84195021','TROCADORES (PERMUTADORES) DE CALOR,TUBULARES,METAL'),(6977,'84195029','OUTROS TROCADORES (PERMUTADORES) DE CALOR,TUBULARE'),(6978,'84195090','OUTROS TROCADORES (PERMUTADORES) DE CALOR'),(6979,'84196000','APARELHOS E DISPOSITIVOS P/LIQUEFACAO DO AR/OUTSGA'),(6980,'84198190','OUTSAPARELHOS/DISPOSITP/PREPARDE BEBIDAS QUENTES,E'),(6981,'84198110','AUTOCLAVES P/PREPARDE BEBIDA QUENTE/AQUECDE ALIMEN'),(6982,'84198991','RECIPIENTE REFRIGERADOR,C/DISPOSITCIRCULFLUIDO REF'),(6983,'84198999','OUTSAPARELHOS E DISPOSITIVP/TRATMATERMODIFTEMPERAT'),(6984,'84198910','OUTROS ESTERILIZADORES'),(6985,'84198920','ESTUFAS'),(6986,'84198940','EVAPORADORES'),(6987,'84198930','TORREFADORES'),(6988,'84199010','PARTES DE AQUECEDORES DE AGUA,N/ELETRAQUECIMINSTET'),(6989,'84199020','PARTES DE COLUNAS DE DESTILACAO OU DE RETIFICACAO'),(6990,'84199031','PLACA CORRUGADA,DE ACO INOX/ALUMINIO,TROCA TERMS>0'),(6991,'84199039','OUTRAS PLACAS DE TROCADORES (PERMUTADORES) DE CALO'),(6992,'84199040','PARTES DE APARELHOS/DISPOSITP/PREPARBEBIDA QUENTE,'),(6993,'84199090','OUTSPARTES DE APARELHOS/DISPOSITP/TRATMODIFTEMPERA'),(6994,'84201011','CALANDRAS P/PAPEL OU CARTAO'),(6995,'84201019','OUTRAS CALANDRAS'),(6996,'84201021','LAMINADORES P/PAPEL OU CARTAO'),(6997,'84201029','OUTROS LAMINADORES'),(6998,'84209100','CILINDROS P/CALANDRAS E LAMINADORES'),(6999,'84209900','OUTRAS PARTES P/CALANDRAS E LAMINADORES'),(7000,'84211110','DESNATADEIRA CENTRIFUGA,CAPPROCESSAMLEITE>30000L/H'),(7001,'84211190','OUTRAS DESNATADEIRAS CENTRIFUGAS'),(7002,'84211210','SECADOR DE ROUPA,CENTRIFUGO,CAPDE ROUPA SECA<=6KG'),(7003,'84211290','OUTROS SECADORES DE ROUPA,CENTRIFUGOS'),(7004,'84211910','CENTRIFUGADOR P/LABORATDE ANALISE,ENSAIO,PESQCIENT'),(7005,'84211990','OUTROS CENTRIFUGADORES'),(7006,'84212100','APARELHOS P/FILTRAR OU DEPURAR AGUA'),(7007,'84212200','APARELHOS P/FILTRAR OU DEPURAR BEBIDAS,EXCAGUA'),(7008,'84212300','APARSP/FILTRAR OLEOS MINERAIS NOS MOTORES EXPLOSAO'),(7009,'84212930','FILTROS-PRENSAS P/LIQUIDOS'),(7010,'84212911','HEMODIALISADOR TIPO CAPILAR'),(7011,'84212919','OUTROS HEMODIALISADORES'),(7012,'84212920','APARELHOS DE OSMOSE INVERSA'),(7013,'84212990','OUTROS APARELHOS P/FILTRAR OU DEPURAR LIQUIDOS'),(7014,'84213100','FILTROS DE ENTRADA DE AR P/MOTORES A EXPLOSAO/DIES'),(7015,'84213910','FILTROS ELETROSTATICOS P/GASES'),(7016,'84213920','DEPURADOR POR CONVERSCATALITICA DE GASES DE ESCAPV'),(7017,'84213930','CONCENTRADOR DE OXIGENIO POR DEPURACAO DO AR,C<=6L'),(7018,'84213990','OUTROS APARELHOS P/FILTRAR OU DEPURAR GASES'),(7019,'84219110','PARTES DE SECADORES DE ROUPA,CENTRIFUGOS,CAPROUPA<'),(7020,'84219191','TAMBORES ROTATIVOS C/PRATOS/DISCOS SEPARADORES,P>3'),(7021,'84219199','OUTRAS PARTES DE CENTRIFUGADORES'),(7022,'84219910','PARTES DE OUTROS APARELHOS P/FILTRAR OU DEPURAR GA'),(7023,'84219990','PARTES DE APARELHOS P/FILTRAR OU DEPURAR LIQUIDOS,'),(7024,'84221100','MAQUINAS DE LAVAR LOUCA,DO TIPO DOMESTICO'),(7025,'84221900','OUTRAS MAQUINAS DE LAVAR LOUCA'),(7026,'84222000','MAQUINAS E APARSP/LIMPAR/SECAR GARRAFAS/OUTSRECIPI'),(7027,'84223010','MAQUINAS E APARSP/ENCHER/FECHAR/ARROLHAR,ETCGARRAF'),(7028,'84223021','MAQUINAS E APARELHOS P/ENCHER CAIXAS/SACOS COM PO/'),(7029,'84223022','MAQUINAS E APARSP/ENCHER/FECHAR EMBALAGEM \"TETRA P'),(7030,'84223029','MAQSE APARSP/ENCHER/FECHAR LATAS,CAPSULAR VASOS,ET'),(7031,'84223030','MAQUINAS E APARELHOS P/GASEIFICAR BEBIDAS'),(7032,'84224010','MAQSE APARSHORIZONTP/EMPACOTAR MASSA ALIMLONGA,ETC'),(7033,'84224090','OUTSMAQUINAS E APARSP/EMPACOTAR/EMBALAR MERCADORIA'),(7034,'84224020','MAQSE APARSAUTOMATP/EMBALAR TUBO/BARRA DE METAL,ET'),(7035,'84229010','PARTES DE MAQUINAS P/LAVAR LOUCAS,DE USO DOMESTICO'),(7036,'84229090','PARTES DE MAQSE APARSP/LIMPAR/SECAR/ENCHER/FECHAR,'),(7037,'84231000','BALANCAS PARA PESSOAS,INCLP/BEBES E DE USO DOMESTI'),(7038,'84232000','BASCULAS DE PESAGEM CONTINUA EM TRANSPORTADORES'),(7039,'84233011','BASCULAS DOSADORAS C/APARSPERIFERICOS C/UNIDFUNCIO'),(7040,'84233019','OUTRAS BASCULAS DOSADORAS'),(7041,'84233090','BASCULAS DE PESAGEM CONSTANTE E BASCULAS ENSACADOR'),(7042,'84238190','OUTROS APARELHOS E INSTRUMENTOS DE PESAGEM,CAPAC<='),(7043,'84238110','APARSE INSTRUMPESAGEM,DE MESA,C<=30KG,C/DISPREGETC'),(7044,'84238200','APARELHOS E INSTRUMENTOS PESAGEM,30KG<CAPAC<=5000K'),(7045,'84238900','OUTROS APARELHOS E INSTRUMENTOS DE PESAGEM'),(7046,'84239010','PESOS P/BALANCAS'),(7047,'84239021','PARTES DE BALANCAS P/PESSOAS,INCLP/BEBES/USO DOMES'),(7048,'84239029','PARTES DE OUTSAPARELHOS E INSTRUMPESAGEM,INCLBASCU'),(7049,'84241000','EXTINTORES,MESMO CARREGADOS'),(7050,'84242000','PISTOLAS AEROGRAFICAS E APARELHOS SEMELHANTES'),(7051,'84243020','MAQSE APARSP/DESGASTE LOCALIZVESTUARIO,DE JATO ARE'),(7052,'84243090','OUTSMAQSE APARSDE JATO DE AREIA/JATO DE VAPOR,ETC'),(7053,'84243010','MAQSE APARSP/DESOBSTRUCAO TUBULACAO,ETCDE JATO AGU'),(7054,'84243030','MAQSE APARSPERFURADORAS POR JATO AGUA,PRESSAO>=10M'),(7055,'84248111','APARSMANUAIS P/PROJETAR,ETCPRODSP/COMBATE A PRAGAS'),(7056,'84248119','OUTSAPARELHOS P/PULVERIZAR FUNGICIDAS/INSETICIDAS,'),(7057,'84248121','IRRIGADORES E SISTEMAS DE IRRIGACAO,POR ASPERSAO'),(7058,'84248129','OUTROS APARELHOS IRRIGADORES E SISTEMAS DE IRRIGAC'),(7059,'84248190','OUTROS APARELHOS P/AGRIGULTURA OU HORTICULTURA'),(7060,'84248900','OUTROS APARELHOS MECANICOS,P/PROJETAR,ETCLIQUIDOS/'),(7061,'84249010','PARTES DE EXTINTORES/APARELHOS P/PULVERIZAR,ETCMAN'),(7062,'84249090','PARTES DE OUTSAPARSMECANP/PROJETAR,ETCLIQUID/PO,ET'),(7063,'84251100','TALHAS,CADERNAIS E MOITOES,DE MOTOR ELETRICO'),(7064,'84251910','TALHAS,CADERNAIS E MOITOES,MANUAIS'),(7065,'84251990','OUTRAS TALHAS,CADERNAIS E MOITOES'),(7066,'84252000','GUINCHOS P/ELEVACAO/DESCIDA DE GAIOLAS EM MINAS,ET'),(7067,'84253110','GUINCHOS E CABRESTANTES,DE MOTOR ELETRICO,CAP<=100'),(7068,'84253190','OUTROS GUINCHOS E CABRESTANTES,DE MOTOR ELETRICO'),(7069,'84253910','OUTROS GUINCHOS E CABRESTANTES,CAP<=100T'),(7070,'84253990','OUTROS GUINCHOS E CABRESTANTES'),(7071,'84254100','MACACOS ELEVADORES FIXOS DE VEICULOS,P/GARAGENS'),(7072,'84254200','MACACOS HIDRAULICOS'),(7073,'84254910','MACACOS MANUAIS'),(7074,'84254990','OUTROS MACACOS'),(7075,'84261100','PONTES E VIGAS,ROLANTES,DE SUPORTES FIXOS'),(7076,'84261200','PORTICOS MOVEIS DE PNEUMATICOS E CARROS-PORTICOS'),(7077,'84261900','OUTROS PORTICOS E PONTES-GUINDASTES'),(7078,'84262000','GUINDASTES DE TORRE'),(7079,'84263000','GUINDASTES DE PORTICO'),(7080,'84264100','MAQUINAS E APARELHOS AUTOPROPULSORES,DE PNEUMATICO'),(7081,'84264900','OUTRAS MAQUINAS E APARELHOS AUTOPROPULSORES'),(7082,'84269100','MAQUINAS E APARELHOS P/MONTAGEM EM VEICULOS RODOVI'),(7083,'84269900','CABREAS E OUTROS GUINDASTES'),(7084,'84271011','EMPILHADEIRAS AUTOPROPULSORAS,DE MOTOR ELETRCAP>65'),(7085,'84271019','OUTRAS EMPILHADEIRAS AUTOPROPULSORAS,DE MOTOR ELET'),(7086,'84271090','OUTROS VEICULOS P/MOVIMCARGA,AUTOPROPULSC/MOTOR EL'),(7087,'84272010','OUTRAS EMPILHADEIRAS AUTOPROPULSORAS,CAP>65T'),(7088,'84272090','OUTROS VEICULOS P/MOVIMCARGA,AUTOPROPULSORES'),(7089,'84279000','OUTSEMPILHADEIRAS/VEICSP/MOVIMCARGA,C/DISPELEVACAO'),(7090,'84281000','ELEVADORES E MONTA-CARGAS'),(7091,'84282010','TRANSPORTADORES PNEUMATTUBULARES MOVEIS DE MOTOR>1'),(7092,'84282090','OUTROS APARELHOS ELEVADORES/TRANSPORTADORES,PNEUMA'),(7093,'84283100','APARSELEVADORES/TRANSPDE MERCADORIAS,P/USO SUBTERR'),(7094,'84283200','APARELHOS ELEVADORES/TRANSPDE MERCADORIAS,DE CACAM'),(7095,'84283300','APARSELEVADORES/TRANSPDE MERCADORIAS,DE TIRA/CORRE'),(7096,'84283910','APARELHOS ELEVADORES/TRANSPDE MERCADORIAS,DE CORRE'),(7097,'84283920','APARSELEVADORES/TRANSPDE MERCADORIAS,DE ROLOS MOTO'),(7098,'84283990','OUTSAPARSELEVADOR/TRANSPORTACAO CONTINUA,P/MERCAD'),(7099,'84284000','ESCADAS E TAPETES,ROLANTES'),(7100,'84285000','APARSP/EMPURRAR VAGONETAS DE MINAS E MANIPVEICFERR'),(7101,'84286000','TELEFERICOS E MECANISMOS DE TRACAO P/FUNICULARES'),(7102,'84289010','MAQUINAS E APARSP/DESEMBARQUE DE BOTES SALVA-VIDAS'),(7103,'84289020','TRANSPORTADORES-ELEVADORES AUTOMATDE DESLOCAMHORIZ'),(7104,'84289090','OUTSMAQSE APARSDE ELEVACAO,DE CARGA,DE DESCARGA,ET'),(7105,'84291110','BULLDOZERS E ANGLEDOZERS,DE LAGARTAS,DE POT>=5'),(7106,'84291190','OUTROS \"BULLDOZERS\" E \"ANGLEDOZERS\",DE LAGARTAS'),(7107,'84291910','OUTROS \"BULLDOZERS\" DE POTENCIA NO VOLANTE>=315HP'),(7108,'84291990','OUTROS \"BULLDOZERS\" E \"ANGLEDOZERS\"'),(7109,'84292010','MOTONIVELADORES ARTICULADOS,POTENCIA NO VOLANTE>=2'),(7110,'84292090','OUTROS NIVELADORES'),(7111,'84293000','RASPO-TRANSPORTADORES,AUTOPROPULSORES'),(7112,'84294000','COMPACTADORES E ROLOS/CILINDROS COMPRESSORES,AUTOP'),(7113,'84295111','CARREGADORAS-TRANSPORTADORAS,UTILMINAS SUBSTERRANE'),(7114,'84295119','OUTRAS CARREGADORAS-TRANSPORTADORAS DE CARREGAMFRO'),(7115,'84295121','INFRAESTRUTURA MOTORA,P/RECEBER CARREGADORAS,P>=60'),(7116,'84295129','INFRAESTRUTURA MOTORA,P/RECEBER OUTRAS CARREGADORA'),(7117,'84295190','OUTSCARREGADORAS/PAS-CARREGADORAS,DE CARREGAMFRONT'),(7118,'84295210','ESCAVADEIRAS CAPEFETROTACAO=360GRAUS,CAPCARGA>=19M'),(7119,'84295290','OUTSMAQUINAS ESCAVADORAS,ETCCAPEFETROTACAO=360GRAU'),(7120,'84295900','OUTRAS PAS MECANICAS,ESCAVADORES,CARREGADORAS,ETC'),(7121,'84301000','BATE-ESTACAS E ARRANCA-ESTACAS'),(7122,'84302000','LIMPA-NEVES'),(7123,'84303110','CORTADORES DE CARVAO OU DE ROCHAS,AUTOPROPULSORES'),(7124,'84303190','MAQSP/PERFURACAO DE TUNEIS E GALERIAS,AUTOPROPULSO'),(7125,'84303910','OUTROS CORTADORES DE CARVAO OU DE ROCHAS'),(7126,'84303990','OUTRAS MAQUINAS P/PERFURACAO DE TUNEIS E GALERIAS'),(7127,'84304110','PERFURATRIZ DE PERCUSSAO,AUTOPROPULSORA'),(7128,'84304120','PERFURATRIZ ROTATIVA,AUTOPROPULSORA'),(7129,'84304190','OUTRAS MAQUINAS DE SONDAGEM/PERFURACAO,AUTOPROPULS'),(7130,'84304130','MAQUINAS DE SONDAGEM,ROTATIVAS,AUTOPROPULSORAS'),(7131,'84304910','OUTRAS PERFURATRIZES DE PERCUSSAO'),(7132,'84304920','OUTRAS MAQUINAS DE SONDAGEM,ROTATIVAS'),(7133,'84304990','OUTRAS MAQUINAS DE SONDAGEM/PERFURACAO'),(7134,'84305000','OUTSMAQSE APARSDE TERRAPLANAGEM,ETCAUTOPROPULSORES'),(7135,'84306100','MAQSDE COMPRIMIR/COMPACTAR TERRA,ETCEXCAUTOPROPULS'),(7136,'84306200','OUTSRASPO-TRANSPORTADORES DE TERRA,ETCEXCAUTOPROPU'),(7137,'84306911','EQUIPAMENTOS FRONTAIS P/ESCAVO-CARREGADORAS,ETCCAP'),(7138,'84306919','OUTSEQUIPAMENTOS FRONTAIS P/CARREGADETCEXCAUTOPULS'),(7139,'84306990','OUTSMAQSE APARSDE TERRAPLANAGEM,ETCEXCAUTOPROPULS'),(7140,'84311010','PARTES DE TALHAS,CADERNAIS,MOITOES MANUAIS,GUINCHO'),(7141,'84311090','PARTES DE OUTRAS TALHAS,CADERNAIS,MOITOES,GUINCHOS'),(7142,'84312011','PARTES DE EMPILHADEIRAS,AUTOPROPULSORAS'),(7143,'84312019','PARTES DE OUTRAS EMPILHADEIRAS'),(7144,'84312090','PARTES DE OUTROS VEICP/MOVIMCARGA,C/DISPOSITELEVAC'),(7145,'84313110','PARTES DE ELEVADORES'),(7146,'84313190','PARTES DE MONTA-CARGAS/ESCADAS ROLANTES'),(7147,'84313900','PARTES DE OUTSMAQSE APARSDE ELEVACAO DE CARGA,ETC'),(7148,'84314100','CACAMBAS,PAS,GANCHOS,ETCP/MAQUINAS E APARSTERRAPLA'),(7149,'84314200','LAMINAS PARA \"BULLDOZERS\" OU \"ANGLEDOZERS\"'),(7150,'84314310','PARTES DAS MAQUINAS DE SONDAGEM ROTATIVAS'),(7151,'84314390','PARTES DE OUTRAS MAQUINAS DE SONDAGEM/PERFURACAO'),(7152,'84314900','PARTES DE OUTSMAQUINAS E APARSDE TERRAPLANAGEM,ETC'),(7153,'84321000','ARADOS E CHARRUAS'),(7154,'84322100','GRADES DE DISCOS,USO AGRICOLA,ETCP/PREPARDO SOLO'),(7155,'84322900','OUTRAS GRADES,ESCARIFICADORES,CULTIVADORES,ENXADAS'),(7156,'84323010','SEMEADORES-ADUBADORES'),(7157,'84323090','OUTROS SEMEADORES,PLANTADORES E TRANSPLANTADORES'),(7158,'84324000','ESPALHADORES DE ESTRUME/DISTRIBUIDDE ADUBOS/FERTIL'),(7159,'84328000','OUTSMAQUINAS E APARSAGRICOLAS,ETCP/PREPARDO SOLO'),(7160,'84329000','PARTES DE MAQSE APARSAGRICOLAS,ETCP/PREPARDO SOLO'),(7161,'84331100','CORTADORES DE GRAMA,MOTORIZDISPCORTE NUM PLANO HOR'),(7162,'84331900','OUTROS CORTADORES DE GRAMA'),(7163,'84332010','CEIFEIRAS C/DISPACONDEM FILEIRAS,ROTOR DE DEDOS/PE'),(7164,'84332090','OUTSCEIFEIRAS,INCLBARRAS DE CORTE P/MONTAGEM TRATO'),(7165,'84333000','OUTRAS MAQUINAS E APARELHOS P/COLHER E DISPOR O FE'),(7166,'84334000','ENFARDADEIRAS DE PALHA/FORRAGEM,INCLCOM APANHADEIR'),(7167,'84335100','CEIFEIRAS-DEBULHADORAS'),(7168,'84335200','OUTRAS MAQUINAS E APARELHOS P/DEBULHA'),(7169,'84335300','MAQUINAS P/COLHEITA DE RAIZES OU TUBERCULOS'),(7170,'84335911','COLHEITADEIRA DE ALGODAO,CAP2 SULCOS,POTNO VOL80HP'),(7171,'84335919','OUTRAS COLHEITADEIRAS DE ALGODAO'),(7172,'84335990','OUTRAS MAQUINAS E APARELHOS P/COLHEITA'),(7173,'84336010','SELECIONADORES DE FRUTAS'),(7174,'84336090','MAQSP/LIMPAR/SELECIONAR OVOS E OUTSPRODSAGRICOLAS'),(7175,'84339010','PARTES DE CORTADORES DE GRAMA'),(7176,'84339090','PARTES DE OUTSMAQUINAS E APARSP/COLHEITA,DEBULHA,E'),(7177,'84341000','MAQUINAS DE ORDENHAR'),(7178,'84342010','MAQUINAS E APARELHOS P/TRATAMENTO DO LEITE'),(7179,'84342090','OUTRAS MAQUINAS E APARELHOS P/A INDDE LATICINIOS'),(7180,'84349000','PARTES DE MAQSE APARSDE ORDENHAR/INDDE LATICINIOS'),(7181,'84351000','MAQUINAS E APARSP/FABRVINHO,SIDRA,SUCO DE FRUTAS,E'),(7182,'84359000','PARTES DE MAQUINAS E APARSP/FABRDE VINHO,SIDRA,ETC'),(7183,'84361000','MAQUINAS E APARSP/PREPARDE ALIMENTOS/RACOES P/ANIM'),(7184,'84362100','CHOCADEIRAS E CRIADEIRAS'),(7185,'84362900','OUTRAS MAQUINAS E APARELHOS P/AVICULTURA'),(7186,'84368000','OUTRAS MAQUINAS E APARELHOS P/AGRICULTURA,HORTICUL'),(7187,'84369100','PARTES DE MAQUINAS E APARELHOS P/AVICULTURA'),(7188,'84369900','PARTES DE MAQSE APARSP/AGRICULTURA,HORTICULTURA,ET'),(7189,'84371000','MAQSP/LIMPEZA,SELECAO,ETCDE GRAOS,PRODSHORTICSECOS'),(7190,'84378010','MAQUINAS E APARELHOS P/TRITURACAO OU MOAGEM DE GRA'),(7191,'84378090','OUTSMAQSE APARSP/INDDE MOAGEM,TRATAMDE CEREAIS,ETC'),(7192,'84379000','PARTES DE MAQSE APARSP/LIMPEZA,SELECAO,ETCDE GRAOS'),(7193,'84381000','MAQUINAS E APARSP/INDDE PANIFICACAO,PASTELARIA,ETC'),(7194,'84382010','MAQUINAS E APARELHOS P/INDDE CONFEITARIA'),(7195,'84382090','MAQUINAS E APARELHOS P/INDDE CACAU OU DE CHOCOLATE'),(7196,'84383000','MAQUINAS E APARELHOS P/INDDE ACUCAR'),(7197,'84384000','MAQUINAS E APARELHOS P/INDCERVEJEIRA'),(7198,'84385000','MAQUINAS E APARELHOS P/PREPARDE CARNES'),(7199,'84386000','MAQUINAS E APARSP/PREPARDE FRUTAS/PRODSHORTICOLAS'),(7200,'84388020','MAQSE APARSAUTOMATP/DESCABECAR,ETCPESCADO,C>350UNI'),(7201,'84388090','OUTSMAQSE APARSP/PREPAR/FABRINDALDE ALIMENTOS,ETC'),(7202,'84388010','MAQUINAS P/EXTRACAO DE OLEO ESSENCIAL DE CITRICOS'),(7203,'84389000','PARTES DE MAQSE APARSP/PREPARFABRDE ALIMENTOS,ETC'),(7204,'84391010','MAQSE APARSP/TRATMATERIA-PRIMA,P/FABRPASTA CELULOS'),(7205,'84391030','REFINADORAS P/FABRPASTA DE MATERIA CELULOSICA'),(7206,'84391020','CLASSIFICADORAS E DEPURADORAS DA PASTA DE CELULOSE'),(7207,'84391090','OUTSMAQUINAS E APARSP/FABRPASTA DE MATERCELULOSICA'),(7208,'84392000','MAQUINAS E APARELHOS P/FABRDE PAPEL OU CARTAO'),(7209,'84393010','BOBINADORAS-ESTICADORAS P/ACABAMENTO DE PAPEL OU C'),(7210,'84393020','MAQUINAS E APARELHOS P/IMPREGNAR PAPEL OU CARTAO'),(7211,'84393030','MAQUINAS E APARELHOS P/ONDULAR PAPEL OU CARTAO'),(7212,'84393090','OUTSMAQUINAS E APARELHOS P/ACABAMENTO DE PAPEL/CAR'),(7213,'84399100','PARTES DE MAQSE APARSP/FABRPASTA DE MATERCELULOSIC'),(7214,'84399900','PARTES DE MAQSE APARSP/FABR/ACABAMDE PAPEL OU CART'),(7215,'84401011','MAQUINAS E APARSDE COSTURAR CADERNOS,C/ALIMENTAUTO'),(7216,'84401019','OUTRAS MAQUINAS E APARELHOS DE COSTURAR CADERNOS'),(7217,'84401090','OUTRAS MAQUINAS E APARELHOS P/BROCHURA OU ENCADERN'),(7218,'84409000','PARTES DE MAQUINAS E APARELHOS P/BROCHURA/ENCADERN'),(7219,'84411010','CORTADEIRAS BOBINADORAS P/PAPEL,CARTAO,ETCV>2000M/'),(7220,'84411090','OUTRAS CORTADEIRAS P/PASTA DE PAPEL,PAPEL OU CARTA'),(7221,'84412000','MAQUINAS P/FABRDE SACOS OU ENVELOPES DE PAPEL,ETC'),(7222,'84413010','MAQUINAS DE DOBRAR E COLAR,P/FABRDE CAIXAS DE PAPE'),(7223,'84413090','OUTSMAQSP/FABRDE CAIXAS,TUBOS,TAMBORES,DE PAPEL,ET'),(7224,'84414000','MAQSDE MOLDAR ARTIGOS DE PASTA DE PAPEL/PAPEL/CART'),(7225,'84418000','OUTSMAQSE APARSP/TRABDA PASTA DE PAPEL/PAPEL/CARTA'),(7226,'84419000','PARTES DE MAQSE APARSP/TRABPASTA DE PAPEL,PAPEL,ET'),(7227,'84421000','MAQSDE COMPOR CARACTERES TIPOGRAFPOR PROCFOTOGRAFI'),(7228,'84422000','OUTSMAQSAPARSE MATERIAL P/COMPOR CARACTERES TIPOGR'),(7229,'84423000','OUTSMAQSAPARSE MATERIAL P/PREPAR/FABRDE CLICHES,ET'),(7230,'84424010','PARTES DE MAQSDE COMPOR CARACTTIPOGRAFPROCFOTOGRAF'),(7231,'84424020','PARTES DE OUTSMAQSAPARSETCP/COMPOR CARACTTIPOGRAF'),(7232,'84424030','PARTES DE OUTSMAQSAPARSETCP/PREPAR/FABRCLICHES,ETC'),(7233,'84425000','CARACTERES TIPOGRAFICOS E OUTROS ELEMENTOS DE IMPR'),(7234,'84431110','MAQSAPARSP/IMPRESSMULTICOLJORNAIS,ALIMPOR BOBINAS'),(7235,'84431190','OUTSMAQSE APARSP/IMPRESSAO OFSETE,ALIMPOR BOBINAS'),(7236,'84431200','MAQSE APARSIMPRESSAO OFSETE,ALIMFLSFORMATO<=22X36C'),(7237,'84431910','MAQSE APARSIMPRESSAO OFSETE,MULTICOLDE MATPLASTETC'),(7238,'84431990','OUTRAS MAQUINAS E APARELHOS DE IMPRESSAO POR OFSET'),(7239,'84432100','MAQUINAS E APARSIMPRESSAO,TIPOGRAFALIMPOR BOBINAS'),(7240,'84432900','OUTRAS MAQUINAS E APARELHOS DE IMPRESSAO,TIPOGRAFI'),(7241,'84433000','MAQUINAS E APARELHOS DE IMPRESSAO,FLEXOGRAFICOS'),(7242,'84434010','MAQUINAS E APARSDE IMPRESSAO,ROTATIVAS P/HELIOGRAV'),(7243,'84434090','OUTRAS MAQUINAS E APARELHOS DE IMPRESSAO,HELIOGRAF'),(7244,'84435910','MAQUINAS DE IMPRESSAO P/SERIGRAFIA'),(7245,'84435100','MAQUINAS DE IMPRESSAO DE JATO DE TINTA'),(7246,'84435990','OUTRAS MAQUINAS DE IMPRESSAO'),(7247,'84436010','MAQUINAS AUXILIARES DE IMPRESSAO,DOBRADORAS'),(7248,'84436090','OUTRAS MAQUINAS AUXILIARES DE IMPRESSAO'),(7249,'84436020','MAQUINAS AUXILIARES DE MPRESSAO,NUMERADORES AUTOMA'),(7250,'84439010','PARTES DE MAQSAPARSIMPRESSAO OFSET,ALIMFLS<=22X36C'),(7251,'84439090','PARTES DE OUTSMAQSAPARSDE IMPRESSAO,INCLAUXILIARES'),(7252,'84440010','MAQUINAS P/EXTRUDAR MATERIAS TEXTEIS SINTET/ARTIFI'),(7253,'84440020','MAQUINAS P/CORTE/RUPTURA DE FIBRAS TEXTEIS SINTET/'),(7254,'84440090','OUTSMAQUINAS P/ESTIRAR,ETCMATERIAS TEXTSINTET/ARTI'),(7255,'84451110','CARDAS P/LA'),(7256,'84451120','CARDAS P/PREPARDE FIBRAS TEXTEIS VEGETAIS'),(7257,'84451190','CARDAS P/PREPARDE OUTRAS MATERIAS TEXTEIS'),(7258,'84451200','PENTEADORAS DE MATERIAS TEXTEIS'),(7259,'84451310','BANCAS DE ESTIRAMENTO P/LA'),(7260,'84451390','BANCAS DE ESTIRAMENTO P/OUTRAS MATERIAS TEXTEIS'),(7261,'84451910','MAQUINAS P/PREPARDA SEDA'),(7262,'84451921','MAQSP/RECUPERCORDAS,ETCTRANSFORMFIBRAS P/CARDAGEM'),(7263,'84451922','DESCAROCADEIRAS E DESLINTADEIRAS DE ALGODAO'),(7264,'84451923','MAQSP/DESENGORDURAR,LAVAR,ETCFIBRAS TEXTEIS EM MAS'),(7265,'84451926','MAQUINAS DE CARBONIZAR A LA'),(7266,'84451924','ABRIDORAS DE FIBRAS DE LA'),(7267,'84451925','ABRIDORAS DE OUTRAS FIBRAS TEXTEIS VEGETAIS'),(7268,'84451927','MAQUINAS PARA ESTIRAR A LA'),(7269,'84451929','OUTRAS MAQUINAS P/PREPARDE MATERIA TEXTIL'),(7270,'84452070','OUTRAS MAQUINAS P/FIACAO DE LA'),(7271,'84452010','FILATORIOS INTERMITENTES P/FIACAO DE MATERIA TEXTI'),(7272,'84452030','MAQUINAS A JATO DE AR P/FIACAO DE MATERIA TEXTIL'),(7273,'84452040','FIADEIRA-BOBINADORA AUTOMATP/FIACAO DE MATERIA TEX'),(7274,'84452080','OUTRAS MAQUINAS P/FIACAO DE FIBRA TEXTIL VEGETAL'),(7275,'84452020','MAQUINAS TIPO \"TOW-TO-YARN\" P/FIACAO DE MATERIA TE'),(7276,'84452090','OUTRAS MAQUINAS P/FIACAO DE MATERIA TEXTIL'),(7277,'84453010','RETORCEDEIRAS DE MATERIA TEXTIL'),(7278,'84453090','OUTRAS MAQUINAS P/DOBRAGEM OU TORCAO DE MATERIA TE'),(7279,'84454018','OUTRAS BOBINADEIRAS DE MATERIA TEXTIL,C/ATADOR AUT'),(7280,'84454012','BOBINADEIRAS P/FIOS ELASTANOS,AUTOMATICAS'),(7281,'84454019','OUTRAS BOBINADEIRAS DE MATERIA TEXTIL,AUTOMATICA'),(7282,'84454021','BOBINADEIRAS DE MATERIA TEXTIL,N/AUTOMATV>=4000M/M'),(7283,'84454029','OUTRAS BOBINADEIRAS DE MATERIA TEXTIL,N/AUTOMAT'),(7284,'84454011','BOBINADEIRAS DE TRAMA DE MATERIA TEXTIL,AUTOMATICA'),(7285,'84454031','MEADEIRAS DE MATERIA TEXTIL,C/CONTROLE/ATADOR AUTO'),(7286,'84454039','OUTRAS MEADEIRAS DE MATERIA TEXTIL'),(7287,'84454040','NOVELEIRAS DE MATERIA TEXTIL,AUTOMATICAS'),(7288,'84454090','OUTRAS MAQUINAS DE BOBINAR OU DE DOBAR,MATERIA TEX'),(7289,'84459010','URDIDEIRAS DE MATERIA TEXTIL'),(7290,'84459090','OUTSMAQUINAS E APARELHOS P/FABR/PREPARDE FIOS TEXT'),(7291,'84459020','PASSADEIRAS P/LICO E PENTE,DE MATERIA TEXTIL'),(7292,'84459030','MAQUINAS P/AMARRAR URDIDEIRAS DE MATERIA TEXTIL'),(7293,'84459040','MAQUINAS P/COLOCAR LAMELAS DE MATERIA TEXTIL,AUTOM'),(7294,'84461010','TEARES P/TECIDO DE LARG<=30CM,C/MECANISMO \"JACQUAR'),(7295,'84461090','OUTROS TEARES P/TECIDO DE LARG<=30CM'),(7296,'84462100','TEARES P/TECIDO DE L>30CM,DE LANCADEIRA,A MOTOR'),(7297,'84462900','OUTROS TEARES P/TECIDO DE L>30CM,DE LANCADEIRA'),(7298,'84463010','TEARES P/TECIDO DE L>30CM,S/LANCADEIRA,A JATO DE A'),(7299,'84463020','TEARES P/TECIDO DE L>30CM,S/LANCADEIRA,A JATO DE A'),(7300,'84463030','TEARES P/TECIDO DE L>30CM,S/LANCADEIRA,DE PROJETIL'),(7301,'84463041','TEARES P/TECIDO ATOALHADO,L>30CM,S/LANCADEIRA,DE P'),(7302,'84463042','TEARES P/TAPETES,L>30CM,S/LANCADEIRA,DE PINCAS'),(7303,'84463049','OUTROS TEARES P/TECIDO,L>30CM,S/LANCADEIRA,DE PINC'),(7304,'84463090','OUTROS TEARES P/TECIDO,L>30CM,S/LANCADEIRA'),(7305,'84471100','TEARES CIRCULARES,P/MALHAS,C/CILINDRO,DIAMETRO<=16'),(7306,'84471200','TEARES CIRCULARES,P/MALHAS,C/CILINDRO,DIAMETRO>165'),(7307,'84472010','TEARES RETILINEOS,P/MALHAS,MANUAIS'),(7308,'84472029','OUTROS TEARES RETILINEOS,MOTORIZADOS,P/MALHAS'),(7309,'84472021','TEARES RETILINEOS,MOTORIZADOS,P/FABRMALHA DE URDID'),(7310,'84472030','MAQUINAS DE COSTURA POR ENTRELACAMENTO'),(7311,'84479020','MAQUINAS P/BORDAR,AUTOMATICAS'),(7312,'84479010','MAQUINAS P/FABRDE REDES,TULES OU FILOS'),(7313,'84479090','OUTSMAQSP/FABRGUIPURAS,RENDAS,ETCE INSERIR TUFOS'),(7314,'84481110','RATIERAS P/TEARES'),(7315,'84481120','MECANISMOS \"JACQUARD\" P/TEARES'),(7316,'84481190','REDUTORES,PERFURADORES E COPIADORES DE CARTOES,ETC'),(7317,'84481900','OUTSMAQSE APARSAUXILIARES P/TRABETCMATERIA TEXTIL'),(7318,'84482010','FIEIRAS P/EXTRUSAO DE MATERIA TEXTIL SINTETICA/ART'),(7319,'84482020','OUTSPARTES E ACESSDE MAQSP/EXTRUSAO DE MATERTEXTIL'),(7320,'84482030','PARTES E ACESSDE MAQSP/CORTE/RUPTURA DE FIBRA TEXT'),(7321,'84482090','OUTSPARTES E ACESSDE MAQSP/ESTIRAR,ETCMATERTEXTIL'),(7322,'84483100','GUARNICOES DE CARDAS'),(7323,'84483240','PARTES E ACESSDE MAQUINAS P/PREPARDA SEDA'),(7324,'84483290','OUTSPARTES E ACESSDE MAQSP/PREPARDE MATERIA TEXTIL'),(7325,'84483250','PARTES E ACESSDE MAQUINAS P/CARBONIZAR LA'),(7326,'84483211','CHAPEUS (\"FLATS\") DE CARDAS'),(7327,'84483219','OUTRAS PARTES E ACESSORIOS DE CARDAS'),(7328,'84483220','PARTES E ACESSDE PENTEADORAS DE MATERIA TEXTIL'),(7329,'84483230','BANCAS DE ESTIRAMENTO DE MATERIA TEXTIL'),(7330,'84483310','CURSORES DE FUSOS P/MAQUINAS PREPARMATERIA TEXTIL'),(7331,'84483390','FUSOS,SUAS ALETAS E ANEIS,P/MAQSPREPARMATERIA TEXT'),(7332,'84483919','PARTES E ACESSDE MAQSP/DOBRAGEM,TORCAO DE MATTEXTI'),(7333,'84483911','PARTES E ACESSDE FILATORIOS INTERMITENTES'),(7334,'84483912','PARTES E ACESSDE MAQS\"TOW-TO-YARN\" P/FIACAO MATTEX'),(7335,'84483917','PARTES E ACESSDE OUTSFILATORIOS P/FIACAO MATERTEXT'),(7336,'84483922','PARTES E ACESSDE BOBINADEIRAS AUTOMATP/FIOS ELASTA'),(7337,'84483923','PARTES E ACESSDE OUTRAS BOBINADEIRAS AUTOMATICAS'),(7338,'84483921','PARTES E ACESSDE BOBINADEIRAS DE TRAMA'),(7339,'84483929','PARTES E ACESSDE OUTSMAQUINAS DE BOBINAR OU DE DOB'),(7340,'84483991','PARTES E ACESSDE URDIDEIRAS'),(7341,'84483992','PARTES E ACESSDE PASSADEIRAS P/LICO E PENTE'),(7342,'84483999','PARTES E ACESSDE OUTSMAQSE APARSP/TRABMATERTEXTIL'),(7343,'84484100','LANCADEIRAS DE TEARES P/TECIDOS'),(7344,'84484200','PENTES,LICOS E QUADROS DE LICOS,DE TEARES P/TECIDO'),(7345,'84484990','OUTRAS PARTES E ACESSDE TEARES P/TECIDOS'),(7346,'84484910','PARTES E ACESSDE MAQUINAS E APARSAUXILIARES DE TEA'),(7347,'84484920','PARTES E ACESSDE TEARES P/TECIDO L>30CM,JATO AGUA,'),(7348,'84485100','PLATINAS,AGULHAS,ETCUTILNA FORMACAO DE MALHAS'),(7349,'84485910','PARTES E ACESSDE TEARES CIRCULARES P/FABRDE MALHAS'),(7350,'84485929','OUTRAS PARTES E ACESSDE OUTRAS TEARES RETILINEOS'),(7351,'84485921','PARTES E ACESSDE TEARES RETILINMANUAIS,P/FABRMALHA'),(7352,'84485922','PARTES E ACESSDE TEARES RETILINP/FABRMALHAS URDIDU'),(7353,'84485930','PARTES E ACESSDE MAQSP/FABRDE REDES,TULES,FILOS,ET'),(7354,'84485940','PARTES E ACESSDE MAQUINAS P/FABRGUIPURAS,RENDAS,ET'),(7355,'84485990','OUTSPARTES E ACESSDE OUTSTEARES,MAQSCOSTURA ENTREL'),(7356,'84490010','MAQUINAS E APARELHOS P/FABRICACAO/ACABAMENTO DE FE'),(7357,'84490080','OUTSMAQSE APARSP/FABR/ACABAMDE CHAPEUS DE FELTROS'),(7358,'84490091','PARTES DE MAQUINAS E APARELHOS P/FABRDE FALSOS TEC'),(7359,'84490099','PARTES DE MAQUINAS E APARSP/FABR/ACABAMDE FELTROS,'),(7360,'84490020','MAQUINAS E APARELHOS P/FABRDE FALSOS TECIDOS'),(7361,'84501100','MAQUINAS DE LAVAR ROUPA,CAP<=10KG,INTEIRAMENTE AUT'),(7362,'84501200','MAQSDE LAVAR ROUPA,CAP<=10KG,C/SECADCENTRIFUGO INC'),(7363,'84501900','OUTSMAQUINAS DE LAVAR ROUPA,CAPAC<=10KG DE ROUPA S'),(7364,'84502010','TUNEIS CONTINUOS DE LAVAR ROUPA,CAP>10KG DE ROUPA '),(7365,'84502090','OUTSMAQUINAS DE LAVAR ROUPA,CAPACID>10KG DE ROUPA '),(7366,'84509010','PARTES DE MAQSDE LAVAR ROUPA,CAP>10KG DE ROUPA SEC'),(7367,'84509090','PARTES DE MAQSDE LAVAR ROUPA,CAP<=10KG DE ROUPA SE'),(7368,'84511000','MAQUINAS P/LAVAR ROUPA,A SECO'),(7369,'84512100','MAQUINAS P/SECAR ROUPA,CAPACIDADE<=10KG DE ROUPA S'),(7370,'84512900','OUTRAS MAQUINAS P/SECAR ROUPA'),(7371,'84513010','MAQUINAS E PRENSAS P/PASSAR ROUPA,AUTOMATICAS'),(7372,'84513091','PRENSAS PARA PASSAR ROUPA,DE PESO<=14KG'),(7373,'84513099','OUTSMAQSE PRENSAS P/PASSAR ROUPA,INCLAS FIXADORAS'),(7374,'84514010','MAQUINAS P/LAVAR FIOS/TECIDOS/OBRAS DE MATERIAS TE'),(7375,'84514021','MAQSP/TINGIR TECIDOS EM ROLOS,POR PRESSAO ESTATICA'),(7376,'84514029','OUTRAS MAQUINAS P/TINGIR OU BRANQUEAR FIOS OU TECI'),(7377,'84514090','MAQUINAS BRANQUEAR OU TINGIR OUTRAS MATERIAS TEXTE'),(7378,'84515010','MAQUINAS P/INSPECIONAR TECIDOS'),(7379,'84515020','MAQUINAS P/ENFESTAR OU CORTAR TECIDOS,AUTOMATICAS'),(7380,'84515090','OUTSMAQSP/ENROLAR,DESENROLAR,DOBRAR,DENTEAR TECIDO'),(7381,'84518000','OUTSMAQUINAS E APARELHOS P/TRABALHAR MATERIAS TEXT'),(7382,'84519010','PARTES DE MAQUINAS DE SECAR,CAPACID<=10KG DE ROUPA'),(7383,'84519090','PARTES DE OUTSMAQUINAS E APARELHOS P/TRABMATERTEXT'),(7384,'84521000','MAQUINAS DE COSTURA DE USO DOMESTICO'),(7385,'84522110','MAQUINAS P/COSTURAR COUROS OU PELES,AUTOMATICAS'),(7386,'84522120','MAQUINAS P/COSTURAR TECIDOS,AUTOMATICAS'),(7387,'84522190','MAQUINAS P/COSTURAR OUTRAS MATERIAS,AUTOMATICAS'),(7388,'84522910','MAQUINAS P/COSTURAR COUROS OU PELES,NAO AUTOMATICA'),(7389,'84522921','REMALHADEIRAS P/COSTURAR TECIDOS,NAO AUTOMATICAS'),(7390,'84522922','MAQUINAS P/CASEAR TECIDOS,NAO AUTOMATICAS'),(7391,'84522923','MAQSP/INSERIR ELASTICO EM TECIDO,ZIGUE-ZAGUE,N/AUT'),(7392,'84522929','OUTRAS MAQUINAS P/COSTURAR TECIDOS,NAO AUTOMATICAS'),(7393,'84522990','OUTRAS MAQUINAS DE COSTURA,NAO AUTOMATICAS'),(7394,'84523000','AGULHAS PARA MAQUINAS DE COSTURA'),(7395,'84524000','MOVEIS,BASES E TAMPAS,P/MAQUINAS DE COSTURA,SUAS P'),(7396,'84529011','GUIA-FIOS,LANCADEIRAS,ETCP/MAQSDE COSTURA,DOMESTIC'),(7397,'84529019','OUTRAS PARTES DE MAQUINAS DE COSTURA,DE USO DOMEST'),(7398,'84529093','LANCADEIRAS ROTATIVAS DE MAQUINAS DE COSTURAR'),(7399,'84529091','GUIA-FIOS,LANCADEIRAS,ETCP/OUTRAS MAQUINAS DE COST'),(7400,'84529092','PARTES PARA REMALHADEIRAS'),(7401,'84529099','PARTES DE OUTRAS MAQUINAS DE COSTURAR'),(7402,'84531090','OUTSMAQUINAS E APARSP/PREPAR/CURTIR/TRABCOUROS/PEL'),(7403,'84531010','MAQUINAS P/DIVIDIR COUROS C/L<=3M,LAMINA S/FIM,ELE'),(7404,'84532000','MAQUINAS E APARELHOS P/FABR/CONSERTO CALCADOS'),(7405,'84538000','MAQSE APARSP/FABR/CONSERTO OUTSOBRAS DE COUROS/PEL'),(7406,'84539000','PARTES DE MAQSE APARSP/PREPAR/CURTIR,ETCCOUROS/PEL'),(7407,'84541000','CONVERSORES P/METALURGIA,ACIARIA OU FUNDICAO'),(7408,'84542010','LINGOTEIRAS DE FUNDICAO'),(7409,'84542090','CADINHOS OU COLHERES DE FUNDICAO'),(7410,'84543010','MAQUINAS DE VAZAR (MOLDAR) SOB PRESSAO'),(7411,'84543020','MAQUINAS DE VAZAR (MOLDAR) POR CENTRIFUGACAO'),(7412,'84543090','OUTSMAQSDE VAZAR (MOLDAR),P/METALURGIA,ACIARIA,ETC'),(7413,'84549010','PARTES DE MAQUINAS DE VAZAR (MOLDAR) POR CENTRIFUG'),(7414,'84549090','PARTES DE CONVERSORES,ETCP/METALURGIA/ACIARIA/FUND'),(7415,'84551000','LAMINADOR DE METAIS,DE TUBO'),(7416,'84552110','LAMINADOR A QUENTE E/OU FRIO,DE METAIS,DE CILINDRO'),(7417,'84552190','OUTROS LAMINADORES A QUENTE E/OU FRIO,DE METAIS'),(7418,'84552210','LAMINADOR A FRIO DE METAIS,DE CILINDRO LISO'),(7419,'84552290','OUTROS LAMINADORES A FRIO DE METAIS'),(7420,'84553010','CILINDROS DE LAMINADORES,FUNDIDOS,DE ACO/FERRO NOD'),(7421,'84553090','OUTROS CILINDROS DE LAMINADORES DE METAIS'),(7422,'84559000','OUTRAS PARTES DE LAMINADORES DE METAIS'),(7423,'84561011','MAQSFERRAMA \"LASER\",CMDNUMP/CORTE CHAPA METALE>8MM'),(7424,'84561019','OUTSMAQUINAS FERRAMOPERPOR \"LASER\",ETCDE CMDNUMER'),(7425,'84561090','OUTRAS MAQUINAS FERRAMOPERPOR \"LASER\",ETC'),(7426,'84562010','MAQUINAS FERRAMA ULTRA-SOM,DE COMANDO NUMERICO'),(7427,'84562090','OUTRAS MAQUINAS FERRAMOPERPOR ULTRA-SOM'),(7428,'84563090','OUTRAS MAQUINAS FERRAMOPERPOR ELETRO-EROSAO'),(7429,'84563011','MAQSFERRAMELETRO-EROSAO,CMDO NUMP/TEXTURSUPCILINDR'),(7430,'84563019','OUTSMAQUINAS FERRAMA ELETRO-EROSAO,DE COMANDO NUME'),(7431,'84569900','OUTRAS MAQUINAS FERRAMOPERPOR PROCELETROQUIMICOS,E'),(7432,'84569100','MAQSFERRAMP/GRAVA SECO DO TRACO EM MATERSEMICONDUT'),(7433,'84571000','CENTROS DE USINAGEM,P/TRABALHAR METAIS'),(7434,'84572010','MAQSDE SISTEMA MONOSTATICO,P/TRABMETAIS,DE CMDONUM'),(7435,'84572090','OUTRAS MAQUINAS DE SISTEMA MONOSTATICO,P/TRABMETAI'),(7436,'84573010','MAQSDE ESTACOES MULTIPLAS,P/TRABMETAIS,DE CMDONUME'),(7437,'84573090','OUTRAS MAQUINAS DE ESTACOES MULTIPLAS,P/TRABALHMET'),(7438,'84581190','OUTROS TORNOS HORIZP/TRABMETAIS,C/CMDONUMER'),(7439,'84581110','TORNOS HORIZP/TRABMETAIS,C/CMDONUMERTIPO REVOLVER'),(7440,'84581910','TORNOS HORIZP/TRABMETAIS,S/CMDONUMERTIPO REVOLVER'),(7441,'84581990','OUTROS TORNOS HORIZP/TRABMETAIS,S/CMDONUMER'),(7442,'84589100','OUTROS TORNOS P/TRABMETAIS,C/COMANDO NUMERICO'),(7443,'84589900','OUTROS TORNOS P/TRABMETAIS,S/COMANDO NUMERICO'),(7444,'84591000','MAQSFERRAMP/FURAR,MANDRILAR,ETCMETAIS,CABECA DESLI'),(7445,'84592110','MAQUINAS FERRAMP/FURAR METAIS,CMDNUMRADIAIS'),(7446,'84592191','MAQSFERRAMP/FURAR METAIS,CMDNUMCABECOTE>=1MONO/MUL'),(7447,'84592199','OUTRAS MAQUINAS FERRAMENTAS P/FURAR METAIS,C/CMDON'),(7448,'84592900','OUTRAS MAQUINAS FERRAMENTAS PARA FURAR METAIS'),(7449,'84593100','OUTRAS MANDRILADORAS-FRESADORAS DE METAIS,C/CMDONU'),(7450,'84593900','OUTRAS MANDRILADORAS-FRESADORAS DE METAIS,S/CMDONU'),(7451,'84594000','OUTRAS MAQUINAS FERRAMP/MANDRILAR METAIS'),(7452,'84595100','MAQUINAS FERRAMP/FRESAR METAIS,C/CONSOLE,C/CMDONUM'),(7453,'84595900','MAQUINAS FERRAMP/FRESAR METAIS,C/CONSOLE,S/CMDONUM'),(7454,'84596100','MAQUINAS FERRAMP/FRESAR METAIS,S/CONSOLE,C/CMDONUM'),(7455,'84596900','MAQUINAS FERRAMP/FRESAR METAIS,S/CONSOLE,S/CMDONUM'),(7456,'84597000','OUTSMAQSFERRAMP/ROSCAR INTERIOR/EXTERIORMENTE META'),(7457,'84601100','MAQS-FERRAMP/RETIFSUPERFPLANA DE METAIS,C/CMDNUM'),(7458,'84601900','OUTSMAQUINAS FERRAMP/RETIFSUPERFPLANA DE METAIS,ET'),(7459,'84602100','OUTSMAQSFERRAMP/RETIFMETAIS,PREC>=001MM,C/CMDNUM'),(7460,'84602900','OUTSMAQSFERRAMP/RETIFMETAIS/CERAMAIS,PREC>=001MM'),(7461,'84603100','MAQUINAS FERRAMP/AFIAR METAIS/CERAMAIS,C/CMDONUMER'),(7462,'84603900','OUTRAS MAQUINAS FERRAMP/AFIAR METAIS/CERAMAIS'),(7463,'84604011','BRUNIDORAS P/CILINDROS DE METAIS,D<=312MM,C/CMDONU'),(7464,'84604019','OUTSMAQSFERRAMP/BRUNIR METAIS/CERAMAIS,C/CMDONUMER'),(7465,'84604091','OUTSBRUNIDORAS P/CILINDROS DE METAIS/CERAMAIS,D<=3'),(7466,'84604099','OUTRAS MAQUINAS FERRAMP/BRUNIR METAIS/CERAMAIS'),(7467,'84609010','OUTSMAQSFERRAMP/AMOLAR,ETCMETAIS/CERAMAIS,C/CMDNUM'),(7468,'84609090','OUTRAS MAQUINAS FERRAMP/AMOLAR,ETCMETAIS/CERAMAIS'),(7469,'84611000','MAQUINAS FERRAMP/APLAINAR ENGRENAGENS'),(7470,'84612090','PLAINAS-LIMADORAS DE ENGRENAGENS'),(7471,'84612010','MAQUINAS FERRAMP/ESCATELAR ENGRENAGENS'),(7472,'84613010','MAQUINAS FERRAMP/BROCHAR ENGRENAGENS,C/CMDONUMER'),(7473,'84613090','OUTRAS MAQUINAS FERRAMP/BROCHAR ENGRENAGENS'),(7474,'84614011','DENTEADORAS DE ENGRENAGENS,TIPO \"PFAUTER\",C/CMDONU'),(7475,'84614091','OUTRAS REDONDEADORAS DE DENTES DE ENGRENAGENS'),(7476,'84614099','OUTRAS MAQUINAS FERRAMP/CORTAR/ACABAR ENGRENAGENS'),(7477,'84614012','REDONDEADORAS DE DENTES DE ENGRENAGENS,C/CMDONUMER'),(7478,'84614019','OUTSMAQSFERRAMP/CORTAR/ACABAR ENGRENAGENS,C/CMDNUM'),(7479,'84615020','MAQUINAS FERRAMP/SERRAR/SECCIONAR METAIS,CIRCULARE'),(7480,'84615010','MAQSFERRAMP/SERRAR/SECCIONAR METAIS,DE FITAS SEM F'),(7481,'84615090','OUTRAS MAQUINAS FERRAMP/SERRAR/SECCIONAR METAIS'),(7482,'84619010','OUTSMAQSFERRAMOPERPOR ELIMMETAL,ETCC/CMDONUMER'),(7483,'84619090','OUTRAS MAQUINAS FERRAMOPERPOR ELIMMETAL,ETC'),(7484,'84621011','MAQUINAS FERRAMP/ESTAMPAR METAIS,C/COMANDO NUMERIC'),(7485,'84621019','MAQSFERRAMP/FORJAR METAIS,MARTELOS,ETCC/CMDONUMER'),(7486,'84621090','OUTSMAQSFERRAMP/FORJAR/ESTAMPAR METAIS,MARTELOS,ET'),(7487,'84622100','MAQS-FERRAMP/ENROLAR,ARQUEAR,ETCMETAIS,C/CMDONUMER'),(7488,'84622900','OUTRAS MAQUINAS FERRAMP/ENROLAR,ARQUEAR,ETCMETAIS'),(7489,'84623100','MAQUINAS FERRAMP/CISALHAR METAIS,C/COMANDO NUMERIC'),(7490,'84623910','MAQS-FERRAMP/CISALHAR METAIS,TIPO GUILHOTINA'),(7491,'84623990','OUTRAS MAQUINAS FERRAMP/CISALHAR METAIS'),(7492,'84624100','MAQSFERRAMP/PUNCIONAR/CHANFRAR METAIS,C/CMDONUMER'),(7493,'84624900','OUTRAS MAQUINAS FERRAMP/PUNCIONAR/CHANFRAR METAIS'),(7494,'84629111','PRENSAS HIDRAULP/MOLDAGPO METALPOR SINTERC<=35000K'),(7495,'84629191','OUTRAS PRENSAS HIDRAULP/MOLDAGPO METALPOR SINTER'),(7496,'84629199','OUTRAS PRENSAS HIDRAULP/METAIS/CARBONMETAL'),(7497,'84629119','OUTRAS PRENSAS HIDRAULP/METAIS/CARBONMETALC<=35000'),(7498,'84629910','OUTRAS PRENSAS P/MOLDAGDE PO METALPOR SINTER'),(7499,'84629990','OUTRAS PRENSAS P/TRABALHAR METAIS/CARBONETOS METAL'),(7500,'84629920','OUTSPRENSAS P/EXTRUSAO DE METAIS/CARBONETOS METALI'),(7501,'84631090','BANCAS P/ESTIRAR BARRAS,PERFIS,FIOS DE METAIS/CERA'),(7502,'84631010','BANCAS P/ESTIRAR TUBOS DE METAIS/CERAMAIS'),(7503,'84632010','MAQSFERRAMP/FAZER ROSCAS POR LAMINMETAIS,C/CMDNUME'),(7504,'84632090','OUTSMAQSFERRAMP/FAZER ROSCAS POR LAMINDE METAIS,ET'),(7505,'84633000','MAQUINAS FERRAMP/TRABALHAR ARAMES E FIOS DE METAL'),(7506,'84639090','OUTRAS MAQUINAS FERRAMP/TRABMETAIS,S/ELIMMATER'),(7507,'84639010','OUTSMAQSFERRAMP/TRABMETAIS,S/ELIMMATERC/CMDNUMER'),(7508,'84641000','MAQSFERRAMP/SERRAR PEDRA,PRODSCERAMICOS,CONCRETO,E'),(7509,'84642090','MAQSFERRAMP/ESMERILAR/POLIR PEDRA,PRODSCERAMICOS,E'),(7510,'84642010','MAQUINAS FERRAMP/ESMERILAR/POLIR VIDRO'),(7511,'84649011','OUTSMAQSFERRAMP/RETIFFRESAR,ETCVIDRO,C/CMDNUMER'),(7512,'84649019','OUTRAS MAQUINAS FERRAMP/TRABA FRIO DO VIDRO'),(7513,'84649090','OUTRAS MAQUINAS FERRAMP/TRABPEDRA,PRODSCERAMICOS,E'),(7514,'84651000','MAQSFERRAMP/TRABMADEIRA,ETCC/DIFEROPERACS/TROCAR'),(7515,'84659120','MAQSFERRAMDE SERRAR MADEIRA,CORTICA,ETCCIRCULARES'),(7516,'84659110','MAQSFERRAMDE SERRAR MADEIRA,CORTICA,ETCDE FITA S/F'),(7517,'84659190','OUTSMAQUINAS FERRAMDE SERRAR MADEIRA,CORTICA,OSSO,'),(7518,'84659219','MAQSFERRAMP/DESBASTAR,ETCMADEIRA,ETCC/CMDONUMER'),(7519,'84659290','OUTSMAQSFERRAMP/DESBASTAR,ETCMADEIRA,CORTICA,ETC'),(7520,'84659211','FRESADORAS DE MADEIRA,CORTICA,OSSO,ETCC/CMDONUMER'),(7521,'84659310','LIXADEIRAS P/MADEIRA,CORTICA,OSSO,BORRACHA ENDUREC'),(7522,'84659390','OUTSMAQSFERRAMP/ESMERILAR/POLIR MADEIRA,CORTICA,ET'),(7523,'84659400','MAQSFERRAMP/ARQUEAR/REUNIR MADEIRA,CORTICA,OSSO,ET'),(7524,'84659511','MAQSFERRAMP/FURAR MADEIRA,CORTICA,ETCC/CMDONUMER'),(7525,'84659591','OUTSMAQUINAS FERRAMP/FURAR MADEIRA,CORTICA,OSSO,ET'),(7526,'84659512','MAQSFERRAMP/ESCATELAR MADEIRA,CORTICA,ETCC/CMDONUM'),(7527,'84659592','OUTSMAQSFERRAMP/ESCATELAR MADEIRA,CORTICA,OSSO,ETC'),(7528,'84659600','MAQSFERRAMP/FENDER/SECCIONAR/DESENROLAR MADEIRA,ET'),(7529,'84659900','OUTRAS MAQUINAS FERRAMP/TRABMADEIRA,CORTICA,OSSO,E'),(7530,'84661000','PORTA-FERRAMENTAS E FIEIRAS DE ABERTURA AUTOMATICA'),(7531,'84662010','PORTA-PECAS P/TORNOS'),(7532,'84662090','PORTA-PECAS P/OUTRAS MAQUINAS FERRAM'),(7533,'84663000','DISPOSITIVOS DIVISORES/ESPECIAIS P/MAQUINAS FERRAM'),(7534,'84669100','PARTES E ACESSDE MAQSFERRAMP/TRABPEDRA,CONCRETO,ET'),(7535,'84669200','PARTES E ACESSDE MAQSFERRAMP/TRABMADEIRA,OSSO,ETC'),(7536,'84669319','PARTES E ACESSDE MAQUINAS FERRAMOPERPOR \"LASER\",ET'),(7537,'84669311','PARTES E ACESSDE MAQUINAS FERRAMOPERPOR ULTRA-SOM'),(7538,'84669320','PARTES E ACESSDE CENTROS DE USINAGEM,ETCP/TRABMETA'),(7539,'84669330','PARTES E ACESSDE TORNOS P/METAIS'),(7540,'84669340','PARTES E ACESSDE MAQSFERRAMP/FURAR,FRESAR,ETCMETAI'),(7541,'84669350','PARTES E ACESSDE MAQSFERRAMP/AFIAR,AMOLAR,ETCMETAI'),(7542,'84669360','PARTES E ACESSDE MAQSFERRAMP/APLAINAR,ETCENGRENAGE'),(7543,'84669410','PARTES E ACESSDE MAQUINAS FERRAMP/FORJAR,ETCMETAIS'),(7544,'84669430','PARTES E ACESSDE PRENSAS P/EXTRUSAO DE METAIS'),(7545,'84669490','PARTES E ACESSDE OUTSMAQSFERRAMP/TRABMETAIS,ETC'),(7546,'84669420','PARTES E ACESSDE MAQUINAS FERRAMP/ENROLAR,ETCMETAI'),(7547,'84671110','FURADEIRAS PNEUMATICAS ROTATIVAS,DE USO MANUAL'),(7548,'84671190','OUTRAS FERRAMENTAS PNEUMATICAS ROTATIVAS,DE USO MA'),(7549,'84671900','OUTRAS FERRAMENTAS PNEUMATICAS,DE USO MANUAL'),(7550,'84678100','SERRAS DE CORRENTE,DE USO MANUAL'),(7551,'84678900','OUTSFERRAMENTAS HIDRAUL/DE MOTOR N/ELETRDE USO MAN'),(7552,'84679100','PARTES DE SERRAS DE CORRENTE,DE USO MANUAL'),(7553,'84679200','PARTES DE FERRAMENTAS PNEUMATICAS,DE USO MANUAL'),(7554,'84679900','PARTES DE FERRAMENTAS HIDRAUL/DE MOTOR N/ELETRMANU'),(7555,'84681000','MACARICOS DE USO MANUAL'),(7556,'84682000','OUTRAS MAQUINAS E APARELHOS A GAS,P/TEMPERA SUPERF'),(7557,'84688010','MAQUINAS E APARELHOS P/SOLDAR POR FRICCAO'),(7558,'84688090','OUTRAS MAQUINAS E APARELHOS P/SOLDAR'),(7559,'84689010','PARTES DE MACARICOS DE USO MANUAL'),(7560,'84689020','PARTES DE MAQUINAS E APARELHOS P/SOLDAR POR FRICCA'),(7561,'84689090','PARTES DE OUTSMAQSE APARSP/SOLDAR,MAQSE APARSA GAS'),(7562,'84691210','MAQUINAS DE ESCREVER,AUTOMATELETRONV<=40CARACTERES'),(7563,'84691290','OUTRAS MAQUINAS DE ESCREVER,AUTOMATICAS'),(7564,'84691100','MAQUINAS DE TRATAMENTO DE TEXTOS'),(7565,'84692000','MAQUINAS DE ESCREVER,ELETRICAS'),(7566,'84693010','MAQUINAS DE ESTENOTIPAR,N/ELETRP<=12KG'),(7567,'84693090','OUTRAS MAQUINAS DE ESCREVER,NAO ELETRICAS'),(7568,'84701000','CALCULADORAS ELETRONC/FUNCS/FONTE EXTENERGELETRETC'),(7569,'84702100','MAQUINAS DE CALCULAR,ELETRONC/DISPOSITIMPRESSINCOR'),(7570,'84702900','OUTRAS MAQUINAS DE CALCULAR,ELETRONICAS'),(7571,'84703000','OUTRAS MAQUINAS DE CALCULAR'),(7572,'84704000','MAQUINAS DE CONTABILIDADE'),(7573,'84705011','CAIXAS REGISTRADORAS,ELETRONCAPACCOMUNCOMPUTADOR,E'),(7574,'84705019','OUTRAS CAIXAS REGISTRADORAS ELETRONICAS'),(7575,'84705090','OUTRAS CAIXAS REGISTRADORAS'),(7576,'84709010','MAQUINAS DE FRANQUEAR CORRESPONDENCIA'),(7577,'84709090','OUTSMAQSDE FRANQUEAR,EMITIR TIQUETES E MAQSSEMELH'),(7578,'84711000','MAQUINAS P/PROCESSAMDE DADOS,ANALOGICAS/HIBRIDAS'),(7579,'84713011','MAQSDIGPROCDADOS,BATER/ELETRPORTATP<350G,T<=140CM2'),(7580,'84713012','MAQSDIGPROCDADOS,BATER/ELETRPORTATP<35KG,T<560CM2'),(7581,'84713019','OUTSMAQSDIGITP/PROCDADOS,BATER/ELETRPORTATP<=10KG'),(7582,'84713090','OUTSMAQSAUTOMATDIGITP/PROCDADOS,PORTATP<=10KG,ETC'),(7583,'84714110','MAQSDIGPROCDADOS,P<750G,ENTRDADOS/CMDOTELA<280CM2'),(7584,'84714190','OUTSMAQUINAS DIGITP/PROCDADOS,C/UCP,MESMO C/UNIDE/'),(7585,'84714911','SISTEMA DE UNIDPROCDIGITPEQCAPETCFOB<=US$12500'),(7586,'84714915','SISTEMA DE OUTRAS UNIDPROCDIGITC/UNIDMEMO E/OU E/S'),(7587,'84715090','OUTRAS UNIDADPROCDIGITCOM UNIDMEMO E/OU 1 UNIDE/S'),(7588,'84714912','SISTEMA DE UNIDPROCDIGITMEDCAPETCFOB<=US$46000'),(7589,'84714913','SISTEMA DE UNIDPROCDIGITGDECAPETCFOB<=US$100000'),(7590,'84714914','SISTEMA DE UNIDPROCDIGITMUITO GDECAPFOB>US$100000'),(7591,'84715010','UNIDPROCDIGITPEQCAPBASE MICROPROCESSFOB<=US$12500'),(7592,'84715020','UNIDPROCDIGITMEDCAPETCUS$12500<FOB<=US$46000'),(7593,'84715030','UNIDPROCDIGITGDECAPETCUS$46000<FOB<=US$100000'),(7594,'84715040','UNIDPROCDIGITMUITO GDECAPETCFOB>US$100000'),(7595,'84714921','SISTEMA DE IMPRESSORA DE IMPACTO,DE LINHA'),(7596,'84716011','IMPRESSORAS DE IMPACTO,DE LINHA'),(7597,'84714922','SISTEMA DE IMPRESSORA DE IMPACTO,DE CARACTERES BRA'),(7598,'84714923','SISTEMA DE OUTSIMPRESSORAS DE IMPACTO,MATRICPOR PO'),(7599,'84716013','IMPRESSORAS DE IMPACTO,DE CARACTERES BRAILLE'),(7600,'84716014','OUTSIMPRESSORAS DE IMPACTO,MATRICIAIS (POR PONTOS)'),(7601,'84714924','SISTEMA DE OUTSIMPRESSORAS DE IMPACTO'),(7602,'84716019','OUTRAS IMPRESSORAS DE IMPACTO'),(7603,'84714951','SISTEMA DE APARELHOS TERMINAIS C/TECLADO,VIDEO MON'),(7604,'84714952','SISTEMA DE APARELHOS TERMINAIS C/TECLADO,VIDEO POL'),(7605,'84716061','APARELHOS TERMINAIS C/TECLADO ALFANUMVIDEO MONOCRO'),(7606,'84716062','APARELHOS TERMINAIS C/TECLADO ALFANUMVIDEO POLICRO'),(7607,'84716080','TERMINAIS DE AUTO-ATENDIMENTO BANCARIO'),(7608,'84714947','SISTEMA DE MESAS DIGITALIZADORAS,P/MAQUINAS PROCDA'),(7609,'84716054','MESAS DIGITALIZADORAS,P/MAQUINAS AUTOMATPROCDADOS'),(7610,'84714941','SISTEMA DE TRACADORES GRAFICOS,POR MEIO DE PENAS'),(7611,'84714942','SISTEMA DE OUTROS TRACADORES GRAFICOS,LI>580MM'),(7612,'84714943','SISTEMA DE OUTROS TRACADORES GRAFICOS'),(7613,'84716041','TRACADORES GRAFICOS (\"PLOTERS\"),POR MEIO DE PENAS'),(7614,'84716042','OUTROS TRACADORES GRAFICOS (\"PLOTERS\"),LI>580MM'),(7615,'84716049','OUTROS TRACADORES GRAFICOS (\"PLOTERS\")'),(7616,'84714933','SISTEMA DE IMPRESSORA,V<30PPM,\"LASER\",MONOCROMLI>2'),(7617,'84714934','SISTEMA DE IMPRESSORA,V<30PPM,\"LASER\",ETCPOLICROM'),(7618,'84714935','SISTEMA DE IMPRESSORA,V<30PPM,\"LASER\",MONOCRLI<=42'),(7619,'84714936','SISTEMA DE OUTRAS IMPRESSORAS,V<30PPM,LI>420MM'),(7620,'84714937','SISTEMA DE OUTRAS IMPRESSORAS,V<30PPM'),(7621,'84716023','IMPRESSORAS C/VI<30PPM,A \"LASER\",ETCMONOCROMLI>230'),(7622,'84716024','IMPRESSORAS C/VI<30PPM,A \"LASER\",ETCPOLICROM'),(7623,'84716025','IMPRESSORAS C/VI<30PPM,A \"LASER\",ETCMONOCROMLI<=42'),(7624,'84716030','OUTRAS IMPRESSORAS C/VI>=30PPM'),(7625,'84714931','SISTEMA DE IMPRESSORA,V<30PPM,A JATO TINTA,LI<=420'),(7626,'84716021','IMPRESSORAS C/VI<30PPM,A JATO DE TINTA LIQLI<=420M'),(7627,'84714925','SISTEMA DE IMPRESSORA,DE VELOCIDADE DE IMPRESSAO>='),(7628,'84714932','SISTEMA DE IMPRESSORA,V<30PPM,TRANSFERTERMCERA SOL'),(7629,'84716022','IMPRESSORAS C/VI<30PPM,DE TRANSFERTERMICA CERA SOL'),(7630,'84716026','OUTRAS IMPRESSORAS C/VI<30PPM,LI>420MM'),(7631,'84716029','OUTRAS IMPRESSORAS C/VI<30PPM'),(7632,'84714945','SISTEMA DE TECLADOS,P/MAQUINAS PROCDADOS'),(7633,'84716052','TECLADOS P/MAQUINAS AUTOMATPROCDADOS'),(7634,'84714944','SISTEMA DE DIGITALIZADORES DE IMAGENS,P/MAQSPROCDA'),(7635,'84714946','SISTEMA DE INDICADORES/APONTADORES,P/MAQSDE PROCDA'),(7636,'84714948','SISTEMA DE OUTSUNIDADES DE ENTRADA,P/MAQSPROCDADOS'),(7637,'84714953','SISTEMA DE UNIDSAIDA VIDEO,C/TUBO RAIO CATODMONOCR'),(7638,'84714954','SISTEMA DE UNIDSAIDA VIDEO,C/TUBO RAIO CATODPOLICR'),(7639,'84714955','SISTEMA DE OUTRAS UNIDSAIDA POR VIDEO,MONOCROMAT'),(7640,'84714956','SISTEMA DE OUTRAS UNIDSAIDA POR VIDEO,POLICROMAT'),(7641,'84714957','SISTEMA DE TERMINAIS DE AUTO-ATENDIMENTO BANCARIO'),(7642,'84714958','SISTEMA DE IMPRESSORA CODIGO BARRAS POSTAIS,3 EM 5'),(7643,'84714959','SISTEMA DE OUTRAS UNIDADES DE E/S,MESMO C/UNIDMEMO'),(7644,'84716051','DIGITALIZADOR DE IMAGENS,P/MAQUINAS AUTOMATPROCDAD'),(7645,'84716053','INDICADORES/APONTADORES,P/MAQUINAS AUTOMATPROCDADO'),(7646,'84716059','OUTSUNIDADES DE ENTRADA,P/MAQUINAS AUTOMATPROCDADO'),(7647,'84716071','UNIDADE DE SAIDA POR VIDEO,C/TUBO RAIOS CATODMONOC'),(7648,'84716072','UNIDADE DE SAIDA POR VIDEO,C/TUBO RAIOS CATODPOLIC'),(7649,'84716073','OUTRAS UNIDADES DE SAIDA POR VIDEO,MONOCROMATICAS'),(7650,'84716074','OUTRAS UNIDADES DE SAIDA POR VIDEO,POLICROMATICAS'),(7651,'84716091','IMPRESSORAS DE CODIGO DE BARRAS POSTAIS,3 EM 5,ETC'),(7652,'84716099','OUTRAS UNIDADES DE ENTRADA/SAIDA,P/MAQUINAS PROCDA'),(7653,'84714961','SISTEMA DE UNIDADE DE MEMORIA,P/DISCO MAGNETFLEXIV'),(7654,'84717011','UNIDADES DE DISCOS MAGNETICOS,P/DISCOS FLEXIVEIS'),(7655,'84714962','SISTEMA DE UNIDADE DE MEMORIA,P/DISCO MAGNETRIGIDO'),(7656,'84714963','SISTEMA DE OUTRAS UNIDADES DE DISCOS MAGNETICOS'),(7657,'84717012','UNIDADES DE DISCOS MAGNETICOS,P/DISCOS RIGIDOS'),(7658,'84717019','OUTRAS UNIDADES DE DISCOS MAGNETICOS'),(7659,'84714964','SISTEMA DE UNIDADE DE DISCO OPTICO'),(7660,'84717021','UNIDADES DE DISCOS OPTICOS,P/LEITURA DE DADOS'),(7661,'84717029','OUTRAS UNIDADES DE DISCOS OPTICOS'),(7662,'84714965','SISTEMA DE UNIDADE DE FITAS MAGNETICAS,P/FITAS EM '),(7663,'84717031','UNIDADES DE FITAS MAGNETICAS,P/FITAS EM ROLOS'),(7664,'84714966','SISTEMA DE UNIDADE DE FITAS MAGNETICAS,P/CARTUCHOS'),(7665,'84717032','UNIDADES DE FITAS MAGNETICAS,P/CARTUCHOS'),(7666,'84714967','SISTEMA DE UNIDADE DE FITAS MAGNETICAS,P/CASSETES'),(7667,'84717033','UNIDADES DE FITAS MAGNETICAS,P/CASSETES'),(7668,'84714968','SISTEMA DE OUTRAS UNIDADES DE FITAS MAGNETICAS'),(7669,'84717039','OUTRAS UNIDADES DE FITAS MAGNETICAS'),(7670,'84714969','SISTEMA DE OUTRAS UNIDADES DE MEMORIA'),(7671,'84717090','OUTRAS UNIDADES DE MEMORIA'),(7672,'84718090','OUTRAS UNIDADES DE MAQUINAS AUTOMATSP/PROCESSAMENT'),(7673,'84714995','SISTEMA DE OUTRAS MAQUINAS AUTOMATP/PROCDADOS'),(7674,'84714991','SISTEMA DE LEITORES/GRAVADORES DE CARTOES MAGNET'),(7675,'84719019','OUTROS LEITORES OU GRAVADORES,DE PROCESSAMENTO DE '),(7676,'84719013','LEITORES DE CARACTERES MAGNETIZAVEIS'),(7677,'84714972','SISTEMA DE UNIDADE CONTROLADORA DE COMUNICACOES'),(7678,'84718012','UNIDADES CONTROLADORAS DE COMUNICACOES DE PROCDADO'),(7679,'84714976','SISTEMA DE OUTSUNIDADES DE MAQUINAS AUTOMATPROCDAD'),(7680,'84714973','SISTEMA DE UNIDADE TRADUTORA PROTOCOLP/INTERCONRED'),(7681,'84714974','SISTEMA DE UNIDADE DISTRIBUIDORA DE CONEXOES P/RED'),(7682,'84714975','SISTEMA DE OUTRAS UNIDADES DE CONTROLE,ETCDE SINAI'),(7683,'84718013','UNIDADES TRADUTORAS DE PROTOCOLOS P/INTERCONEXDE R'),(7684,'84718019','OUTRAS UNIDADES DE CONTROLE,ADAPTACAO,CONVERSAO DE'),(7685,'84714992','SISTEMA DE LEITORES DE CODIGO DE BARRAS'),(7686,'84714993','SISTEMA DE LEITORES DE CARACTERES MAGNETIZAVEIS'),(7687,'84719011','LEITORES OU GRAVADORES DE CARTOES MAGNETICOS'),(7688,'84719012','LEITORES DE CODIGOS DE BARRAS'),(7689,'84714994','SISTEMA DE OUTSLEITORES/GRAVADORES,P/MAQSPROCDADOS'),(7690,'84714971','SISTEMA DE UNIDADE CONTROLADORA DE TERMINAIS'),(7691,'84718011','UNIDADES CONTROLADORAS DE TERMINAIS DE PROCDADOS'),(7692,'84718014','UNIDADES DISTRIBUIDORAS DE CONEXOES P/REDES'),(7693,'84719090','OUTSMAQUINAS AUTOMATP/PROCESSDE DADOS,SUAS UNIDADE'),(7694,'84721000','DUPLICADORES HECTOGRAFICOS OU A ESTENCIL,P/ESCRITO'),(7695,'84722000','MAQSP/IMPRIMIR ENDERECOS,P/ESTAMPAR PLACA DE ENDER'),(7696,'84723010','MAQUINAS AUTOMATP/OBLITERAR SELOS POSTAIS'),(7697,'84723020','MAQSAUTOMATP/SELECAO CORRESPONDLEITOPTCODPOSTETC'),(7698,'84723030','MAQSAUTOMATP/SELECAO ENCOMENDAS,LEITOPTCODPOSTETC'),(7699,'84723090','OUTSMAQSP/SELECIONAR,DOBRAR,ABRIR,ETCCORRESPONDENC'),(7700,'84729090','OUTRAS MAQUINAS E APARELHOS DE ESCRITORIO,BANCARIO'),(7701,'84729030','MAQUINAS P/SELECIONAR E CONTAR MOEDAS OU PAPEL-MOE'),(7702,'84729010','DISTRIBUIDORES AUTOMATPAPEL-MOEDA,INCLEFETOUTSOPER'),(7703,'84729021','MAQSELETRONBANCARIAS DE AUTENTCOMUNC/COMPUTADOR,ET'),(7704,'84729029','OUTRAS MAQUINAS BANCARIAS,C/DISPOSITIVOS P/AUTENTI'),(7705,'84729040','MAQUINAS DE APONTAR LAPIS,PERFURADORES,GRAMPEADORE'),(7706,'84729051','CLASSIFICADORAS AUTOMATDOCUMC/LEIT/GRAVC>400DOC/MI'),(7707,'84729059','OUTRAS CLASSIFICADORAS AUTOMATDOCUMC/LEIT/GRAV'),(7708,'84731010','PARTES E ACESSDE MAQUINAS DE TRATAMENTO DE TEXTOS'),(7709,'84731090','PARTES E ACESSDE MAQUINAS DE ESCREVER'),(7710,'84732100','PARTES E ACESSDE MAQUINAS DE CALCULAR ELETRONICAS'),(7711,'84735032','OUTRAS CABECAS DE IMPRESSAO,UTIL2/MAIS DIFMAQUINAS'),(7712,'84732910','CIRCUITO IMPRESSO MONTADO P/CAIXA REGISTRADORA'),(7713,'84735034','CINTAS DE CARACTERES P/IMPRESSAO,UTIL2/MAIS DIFMAQ'),(7714,'84735039','OUTSPARTES E ACESSDE IMPRESSAO,UTIL2/MAIS DIFMAQS'),(7715,'84735040','CABECAS MAGNETICAS,UTIL2/MAIS DIFMAQUINAS'),(7716,'84732920','PARTES E ACESSDE OUTSMAQSDE CALCULAR/CONTABILIDADE'),(7717,'84732990','PARTES E ACESSDE MAQSDE FRANQUEAR,EMITIR TIQUETES,'),(7718,'84735010','CIRCUITO IMPRESSO MONTADO UTILEM 2/MAIS DIFMAQUINA'),(7719,'84735020','CARTOES DE MEMORIA,UTIL2/MAIS DIFMAQUINAS'),(7720,'84733011','GABINETE C/FONTE DE ALIMENTP/MAQSAUTOMATPROCDADOS'),(7721,'84733019','OUTROS GABINETES P/MAQUINAS AUTOMATPROCDADOS'),(7722,'84733034','MECANISMO BOBINADOR P/UNIDADES DE FITAS MAGNETICAS'),(7723,'84733021','MECANISMOS DE IMPRESSORA MATRICIAL,ETCJATO TINTA,M'),(7724,'84733023','MARTELO DE IMPRESSAO E BANCOS DE MARTELOS,P/IMPRES'),(7725,'84735031','MARTELO DE IMPRESSAO,ETCUTIL2/MAIS DIFMAQUINAS'),(7726,'84733032','BRACOS POSICIONDE CABECA MAGNETP/UNIDDE DISCOS/FIT'),(7727,'84733024','CABECA DE IMPRESSAO,EXCTERMICA/JATO TINTA,P/IMPRES'),(7728,'84733025','CABECA DE IMPRESSAO TERMICA/JATO DE TINTA,P/IMPRES'),(7729,'84735033','CABECAS DE IMPRESSAO TERMICAS,ETCUTIL2/MAIS DIFMAQ'),(7730,'84733031','CONJUNTOS CABECA-DISCO DE UNIDDE DISCO RIGIDO,MONT'),(7731,'84733033','CABECAS MAGNETICAS P/UNIDADES DE DISCOS OU DE FITA'),(7732,'84733091','TELA P/MICROCOMPUTADORES PORTATEIS,MONOCROMATICA'),(7733,'84733092','TELA P/MICROCOMPUTADORES PORTATEIS,POLICROMATICA'),(7734,'84733099','OUTRAS PARTES E ACESSP/MAQUINAS AUTOMATPROCDADOS'),(7735,'84735090','OUTRAS PARTES E ACESSUTIL2/MAIS DIFMAQUINAS'),(7736,'84733029','OUTSPARTES E ACESSDE IMPRESSORAS/TRACADORES GRAFIC'),(7737,'84733022','MECANISMOS DE IMPRESSORA A \"LASER\",LED OU LCS,MONT'),(7738,'84733026','CINTAS DE CARACTERES,P/IMPRESSORAS'),(7739,'84733027','CARTUCHOS DE TINTA,P/IMPRESSORAS'),(7740,'84733039','OUTSPARTES E ACESSDE UNIDDE DISCOS/FITAS MAGNETICO'),(7741,'84733041','PLACAS-MAE MONTADP/MAQSPROCDADOS (CIRCUITO IMPRESS'),(7742,'84733042','PLACAS DE MEMORIA,MONTADAS,S<=50CM2,P/MAQSPROCDADO'),(7743,'84733043','PLACAS DE MICROPROCESSAMC/DISPOSITDISSIPACAO DE CA'),(7744,'84733049','OUTSCIRCUITOS IMPRESSOS P/MAQUINAS AUTOMATPROCDADO'),(7745,'84733050','CARTOES DE MEMORIA P/MAQUINAS AUTOMATPROCDADOS'),(7746,'84735035','CARTUCHOS DE TINTAS P/IMPRESSAO,UTIL2/MAIS DIFMAQS'),(7747,'84735050','PLACAS DE MEMORIA,SUPERF<=50CM2,UTIL2/MAIS DIFMAQS'),(7748,'84734010','CIRCUITO IMPRESSO MONTADO P/MAQUINAS E APARSESCRIT'),(7749,'84734070','OUTSPARTES E ACESSP/MAQSBANCARIA,DISTRIBPAPEL-MOED'),(7750,'84734090','OUTSPARTES E ACESSP/MAQSE APARSDE ESCRITORIO,ETC'),(7751,'84741000','MAQUINAS E APARSP/SELECIONAR,ETCSUBSTMINERSOLIDA'),(7752,'84742090','OUTSMAQUINAS E APARSP/ESMAGAR,ETCSUBSTMINERSOLIDA'),(7753,'84742010','MAQSE APARSP/ESMAGAR,ETCSUBSTMINERSOLIDA,DE BOLAS'),(7754,'84743100','BETONEIRAS E APARELHOS P/AMASSAR CIMENTO'),(7755,'84743200','MAQUINAS P/MISTURAR MATERIAS MINERAIS C/BETUME'),(7756,'84743900','OUTSMAQSE APARSP/MISTURAR/AMASSAR SUBSTMINERSOLIDA'),(7757,'84748090','MAQUINAS P/AGLOMERAR/MOLDAR COMBUSTIVMINERSOLIDOS,'),(7758,'84748010','MAQUINAS E APARSP/FABRDE MOLDES DE AREIA P/FUNDICA'),(7759,'84749000','PARTES DE MAQSE APARSP/SELECIONAR,ETCSUBSTMINERAIS'),(7760,'84751000','MAQUINAS P/MONTAGDE LAMPADAS/TUBOS/VALVULAS,ELETRE'),(7761,'84752990','OUTSMAQUINAS P/FABR/TRABA QUENTE,DE VIDRO/SUAS OBR'),(7762,'84752100','MAQUINAS P/FABRDE FIBRAS OPTICAS E SEUS ESBOCOS'),(7763,'84752910','MAQUINAS P/FABRDE RECIPIENTES DE VIDRO,EXCAMPOLAS'),(7764,'84759000','PARTES DE MAQSP/FABR/TRABA QUENTE,DE VIDRO/SUAS OB'),(7765,'84762100','MAQSAUTOMATDE VENDA DE BEBIDAS,C/DISPAQUEC/REFRIG'),(7766,'84768100','MAQSAUTOMATDE VENDA DE ALIMENTOS,C/DISPAQUEC/REFRI'),(7767,'84762900','OUTRAS MAQUINAS AUTOMATICAS DE VENDA DE BEBIDAS'),(7768,'84768910','MAQUINAS AUTOMATDE VENDA DE SELOS POSTAIS'),(7769,'84768990','MAQUINAS AUTOMATDE VENDA DE OUTROS PRODUTOS'),(7770,'84769000','PARTES DE MAQUINAS AUTOMATDE VENDA DE PRODUTOS'),(7771,'84771011','MAQSDE MOLDAR TERMOPLP/INJ<=5KG,HORIZCMDNUMMONOCOL'),(7772,'84771019','OUTSMAQSDE MOLDAR BORRACHA/PLASTP/INJHORIZCMDNUM'),(7773,'84771021','OUTSMAQSDE MOLDAR TERMOPLP/INJ<=5KG,HORIZMONOCOL'),(7774,'84771029','OUTRAS MAQUINAS DE MOLDAR BORRACHA/PLASTP/INJHORIZ'),(7775,'84771091','OUTRAS MAQUINAS DE MOLDAR BORRACHA/PLASTP/INJCMDNU'),(7776,'84771099','OUTRAS MAQUINAS DE MOLDAR BORRACHA/PLASTP/INJECAO'),(7777,'84772010','EXTRUSORAS P/MATERIAIS TERMOPLASTICOS,DIAMROSCA<=3'),(7778,'84772090','OUTRAS EXTRUSORAS P/BORRACHA OU PLASTICO'),(7779,'84773010','MAQSP/FABRRECIPTERMOPLC<=5L,PROD<=1000U/H,P/INSUFL'),(7780,'84773090','OUTRAS MAQUINAS DE MOLDAR BORRACHA/PLASTPOR INSUFL'),(7781,'84774000','MAQSDE MOLDAR BORRACHA/PLASTA VACUO,MAQSTERMOFORMA'),(7782,'84775100','MAQUINAS P/MOLDAR/RECAUCHUTAR PNEUS,MOLDAR CAMARA-'),(7783,'84775911','PRENSAS P/MOLDAR BORRACHA/PLASTCAP<=30000KN'),(7784,'84775919','OUTRAS PRENSAS P/MOLDAR BORRACHA/PLAST'),(7785,'84775990','OUTRAS MAQUINAS E APARELHOS P/MOLDAR BORRACHA/PLAS'),(7786,'84778000','OUTSMAQSE APARSP/TRABBORRACHA/PLASTFABRSEUS PRODS'),(7787,'84779000','PARTES DE MAQSE APARSP/TRABBORRACHA/PLASTFABRPRODS'),(7788,'84781090','OUTRAS MAQUINAS E APARELHOS P/PREPARAR/TRANSFORMAR'),(7789,'84781010','BATEDORAS-SEPARADORAS AUTOMATDE TALOS/FOLHAS DE FU'),(7790,'84789000','PARTES DE MAQUINAS E APARSP/PREPARAR/TRANSFORMAR F'),(7791,'84791090','OUTSMAQSE APARSP/OBRAS PUBLICAS,CONSTRUCAO CIVIL,E'),(7792,'84791010','MAQSE APARSAUTOMOTRIZES P/ESPALHAR,ETCPAVIMBETUMIN'),(7793,'84792000','MAQSE APARSP/EXTRACAO,ETCDE OLEO/GORDURA ANIMAL/VE'),(7794,'84793000','PRENSAS P/FABRPAINEL DE PARTICULAS,FIBRAS MADEIRA,'),(7795,'84794000','MAQUINAS P/FABRDE CORDAS/CABOS'),(7796,'84798100','MAQUINAS E APARELHOS P/TRATAMDE METAIS'),(7797,'84798210','OUTROS MISTURADORES'),(7798,'84798290','OUTSMAQSE APARSP/AMASSAR,ESMAGAR,MOER,SEPARAR,ETC'),(7799,'84798911','OUTRAS PRENSAS'),(7800,'84798912','OUTROS DISTRIBUIDORES/DOSEADORES DE SOLIDOS/LIQUID'),(7801,'84798991','APARELHOS P/LIMPAR PECAS POR ULTRA-SOM'),(7802,'84798921','MAQUINAS E APARELHOS P/CESTARIA/ESPARTARIA'),(7803,'84798922','MAQUINAS E APARELHOS P/FABRDE PINCEIS/BROXAS/ESCOV'),(7804,'84798992','MAQUINAS DE LEME P/EMBARCACOES'),(7805,'84798931','LIMPADORES DE PARA-BRISAS ELETRICOS,P/AERONAVES'),(7806,'84798932','ACUMULADORES HIDRAULICOS P/AERONAVES'),(7807,'84795000','ROBOS INDUSTRIAIS'),(7808,'84796000','APARELHOS DE EVAPORACAO PARA ARREFECIMENTO DO AR'),(7809,'84798940','SILOS METALICOS P/CEREAIS,FIXOS,INCLAS BATERIAS,ET'),(7810,'84798999','OUTRAS MAQUINAS E APARELHOS MECANICOS C/FUNCAO PRO'),(7811,'84799010','PARTES DE LIMPADORES DE PARA-BRISAS,ETCP/AERONAVES'),(7812,'84799090','OUTSPARTES DE MAQUINAS E APARSMECANC/FUNCAO PROPRI'),(7813,'84801000','CAIXAS DE FUNDICAO'),(7814,'84802000','PLACAS DE FUNDO P/MOLDES'),(7815,'84803000','MODELOS P/MOLDES'),(7816,'84804100','MOLDES P/MOLDAGEM DE METAIS,ETCPOR INJECAO/COMPRES'),(7817,'84804910','COQUILHAS P/METAIS/CARBONETOS METALICOS'),(7818,'84804990','OUTROS MOLDES P/METAIS/CARBONETOS METALICOS'),(7819,'84805000','MOLDES P/VIDROS'),(7820,'84806000','MOLDES P/MATERIAS MINERAIS'),(7821,'84807100','MOLDES P/MOLDAGEM DE BORRRACHA/PLASTICO,POR INJECA'),(7822,'84807900','OUTROS MOLDES P/BORRACHA/PLASTICO'),(7823,'84811000','VALVULAS REDUTORAS DE PRESSAO'),(7824,'84812090','OUTSVALVULAS P/TRANSMISSOES OLEO-HIDRAULICAS/PNEUM'),(7825,'84812010','VALVULAS ROTATIVAS,DE CAIXAS DE DIRECAO HIDRAULICA'),(7826,'84813000','VALVULAS DE RETENCAO'),(7827,'84814000','VALVULAS DE SEGURANCA OU DE ALIVIO'),(7828,'84818091','VALVULAS TIPO AEROSOL'),(7829,'84818019','OUTROS DISPOSITIVOS UTILEM BANHEIROS/COZINHAS'),(7830,'84818021','VALVULAS DE EXPANSAO TERMOSTATICAS/PRESSOSTATICAS'),(7831,'84818092','VALVULAS SOLENOIDES'),(7832,'84818093','VALVULAS TIPO GAVETA'),(7833,'84818094','VALVULAS TIPO GLOBO'),(7834,'84818095','VALVULAS TIPO ESFERA'),(7835,'84818096','VALVULAS TIPO MACHO'),(7836,'84818011','VALVULAS P/ESCOAMENTO,UTILEM BANHEIROS/COZINHAS'),(7837,'84818029','OUTROS DISPOSITIVOS UTILEM REFRIGERACAO'),(7838,'84818097','VALVULAS TIPO BORBOLETA'),(7839,'84818099','TORNEIRAS E OUTROS DISPOSITIVOS P/CANALIZACOES,ETC'),(7840,'84819010','PARTES DE VALVULAS TIPO AEROSOL/DISPUTILBANHEIROS,'),(7841,'84819090','PARTES DE TORNEIRAS,OUTSDISPOSITIVP/CANALIZACOES,E'),(7842,'84821010','ROLAMENTOS DE ESFERAS,DE CARGA RADIAL'),(7843,'84821090','OUTROS ROLAMENTOS DE ESFERAS'),(7844,'84822010','ROLAMENTOS DE ROLETES CONICOS,DE CARGA RADIAL'),(7845,'84822090','OUTROS ROLAMENTOS DE ROLETES CONICOS'),(7846,'84823000','ROLAMENTOS DE ROLETES EM FORMA DE TONEL'),(7847,'84824000','ROLAMENTOS DE AGULHAS'),(7848,'84825010','ROLAMENTOS DE ROLETES CILINDRICOS,DE CARGA RADIAL'),(7849,'84825090','OUTROS ROLAMENTOS DE ROLETES CILINDRICOS'),(7850,'84828000','OUTROS ROLAMENTOS DE ROLETES,INCLROLAMENTOS COMBIN'),(7851,'84829111','ESFERAS DE ACO CALIBRADAS P/CARGA DE CANETAS ESFER'),(7852,'84829119','OUTRAS ESFERAS DE ACO CALIBRADAS,P/ROLAMENTOS'),(7853,'84829120','ROLETES CILINDRICOS P/ROLAMENTOS'),(7854,'84829130','ROLETES CONICOS P/ROLAMENTOS'),(7855,'84829190','OUTRAS ESFERAS,ROLETES E AGULHAS P/ROLAMENTOS'),(7856,'84829900','OUTRAS PARTES DE ROLAMENTOS'),(7857,'84831010','VIRABREQUINS (CAMBOTAS)'),(7858,'84831020','ARVORES DE \"CAMES\" PARA COMANDO DE VALVULAS'),(7859,'84831030','VEIOS FLEXIVEIS DE TRANSMISSAO'),(7860,'84831040','MANIVELAS'),(7861,'84831050','ARVORES DE TRANSMISSAO,PROVIDO DE ACOPLAMDENTADO,E'),(7862,'84831090','OUTRAS ARVORES (VEIOS) DE TRANSMISSAO'),(7863,'84832000','MANCAIS (CHUMACEIRAS) C/ROLAMENTOS INCORPORADOS'),(7864,'84833010','MANCAIS S/ROLAMMONTADOS C/BRONZES DE METAL ANTIFRI'),(7865,'84833090','OUTROS MANCAIS SEM ROLAMENTOS'),(7866,'84833020','BRONZES'),(7867,'84834010','CAIXAS DE TRANSMISSAO,REDUTORES,ETCDE VELOCIDADE'),(7868,'84834090','ENGRENAGENS E RODAS DE FRICCAO,EIXOS DE ESFERAS/RO'),(7869,'84835010','POLIAS EXCAS DE ROLAMENTOS REGULADORES DE TENSAO'),(7870,'84835090','VOLANTES E OUTRAS POLIAS'),(7871,'84836011','EMBREAGENS DE FRICCAO'),(7872,'84836019','OUTRAS EMBREAGENS'),(7873,'84836090','DISPOSITIVOS DE ACOPLAMENTO,INCLJUNTAS DE ARTICULA'),(7874,'84839000','PARTES DE ARVORES DE TRANSMISSAO,MANIVELAS,MANCAIS'),(7875,'84841000','JUNTAS METALOPLASTICAS'),(7876,'84842000','JUNTAS DE VEDACAO,MECANICAS'),(7877,'84849000','JOGOS/SORTIDOS DE JUNTAS,EM BOLSAS,ENVELOPES,ETC'),(7878,'84851000','HELICES P/EMBARCACOES E SUAS PAS'),(7879,'84859000','PARTES DE OUTSMAQUINAS OU APARSSEM CONEXOES ELETRE'),(7880,'85011011','MOTOR ELETRDE CORRENTE CONTINUA,POT<=375W,PASSO<=1'),(7881,'85011019','OUTROS MOTORES ELETRDE CORRENTE CONTINUA,P<=375W'),(7882,'85011029','OUTROS MOTORES ELETRDE CORRENTE ALTERNADA,POT<=375'),(7883,'85011030','MOTOR ELETRUNIVERSAL,POT<=375W'),(7884,'85011021','MOTOR ELETRDE CORRENTE ALTERNADA,POT<=375W,SINCRON'),(7885,'85011090','OUTROS MOTORES ELETRPOT<=375W'),(7886,'85012000','MOTOR ELETRUNIVERSAL,POT>375W'),(7887,'85013110','MOTOR ELETRDE CORRENTE CONTINUA,375W<POT<=750W'),(7888,'85013120','GERADOR ELETRDE CORRENTE CONTINUA,POT<=750W'),(7889,'85013210','MOTOR ELETRDE CORRENTE CONTINUA,750W<POT<=75KW'),(7890,'85013220','GERADOR ELETRDE CORRENTE CONTINUA,750W<POT<=75KW'),(7891,'85013310','MOTOR ELETRDE CORRENTE CONTINUA,75KW<POT<=375KW'),(7892,'85013320','GERADOR ELETRDE CORRENTE CONTINUA,75KW<POT<=375KW'),(7893,'85013411','MOTOR ELETRDE CORRENTE CONTINUA,375KW<POT<=3000KW'),(7894,'85013419','OUTROS MOTORES ELETRDE CORRENTE CONTINUA,POT>375KW'),(7895,'85013420','GERADOR ELETRDE CORRENTE CONTINUA,POT>375KW'),(7896,'85014011','MOTOR ELETRDE CORRALTERNMONOF375W<P<=15KW,SINCRONO'),(7897,'85014021','MOTOR ELETRDE CORRALTERNMONOFPOT>15KW,SINCRONO'),(7898,'85014019','OUTROS MOTORES ELETRDE CORRALTERNMONOF375W<P<=15KW'),(7899,'85014029','OUTROS MOTORES ELETRDE CORRALTERNMONOFPOT>15KW'),(7900,'85015110','MOTOR ELETRCORRALTERNTRIF375W<P<=750W,ROTOR GAIOLA'),(7901,'85015120','MOTOR ELETRCORRALTERNTRIF375W<P<=750W,ROTOR ANEIS'),(7902,'85015190','OUTROS MOTORES ELETRDE CORRALTERNPOLIF375W<P<=750W'),(7903,'85015210','MOTOR ELETRCORRALTERNTRIF750W<P<=75KW,ROTOR GAIOLA'),(7904,'85015220','MOTOR ELETRCORRALTERNTRIF750W<P<=75KW,ROTOR ANEIS'),(7905,'85015290','OUTSMOTORES ELETRDE CORRALTERNPOLIF750W<POT<=75KW'),(7906,'85015390','OUTSMOTORES ELETRDE CORRALTERNPOLIFASICOS,POT>75KW'),(7907,'85015310','MOTOR ELETRCORRALTERNTRIF75KW<POT<=7500KW'),(7908,'85016100','GERADORES DE CORRENTE ALTERNADA,POT<=75KVA'),(7909,'85016200','GERADORES DE CORRENTE ALTERNADA,75KVA<POT<=375KVA'),(7910,'85016300','GERADORES DE CORRENTE ALTERNADA,375KVA<POT<=750KVA'),(7911,'85016400','GERADORES DE CORRENTE ALTERNADA,POT>750KVA'),(7912,'85021110','GRUPO ELETROGP/MOTOR DIESEL,P<=75KVA,CORRALTERN'),(7913,'85021190','OUTROS GRUPOS ELETROGP/MOTOR DIESEL,POT<=75KVA'),(7914,'85021210','GRUPO ELETROGP/MOTOR DIESEL,75<P<=375KVA,CORRALTER'),(7915,'85021290','OUTROS GRUPOS ELETROGP/MOTOR DIESEL,75KVA<P<375KVA'),(7916,'85021311','GRUPO ELETROGP/MOTOR DIESEL,375<P<=430KVA,CORRALTE'),(7917,'85021319','OUTSGRUPOS ELETROGP/MOTOR DIESEL,P>375KVA,CORRALTE'),(7918,'85021390','OUTROS GRUPOS ELETROGP/MOTOR DIESEL,P>375KVA'),(7919,'85022011','GRUPO ELETROGP/MOTOR EXPLOSAO,CORRALTERNP<=210KVA'),(7920,'85022019','OUTROS GRUPOS ELETROGP/MOTOR EXPLOSAO,CORRALTERN'),(7921,'85022090','OUTROS GRUPOS ELETROGP/MOTOR EXPLOSAO'),(7922,'85023100','OUTROS GRUPOS ELETROGDE ENERGIA EOLICA'),(7923,'85023900','OUTROS GRUPOS ELETROG'),(7924,'85024010','CONVERSORES ROTATIVOS ELETRICOS,DE FREQUENCIA'),(7925,'85024090','OUTROS CONVERSORES ROTATIVOS ELETRICOS'),(7926,'85030010','PARTES DE MOTORES/GERADORES DE POT<=75KVA'),(7927,'85030090','PARTES DE OUTROS MOTORES/GERADORES/GRUPOS ELETROGE'),(7928,'85041000','REATORES P/LAMPADAS/TUBOS DE DESCARGAS'),(7929,'85042100','TRANSFORMADOR DE DIELETRICO LIQUIDO,POT<=650KVA'),(7930,'85042200','TRANSFORMADOR DE DIELETRICO LIQUIDO,650<POT<=10000'),(7931,'85042300','TRANSFORMADOR DE DIELETRICO LIQUIDO,POT>10000KVA'),(7932,'85043191','TRANSFORMADOR ELETRPOT<=1KVA,SAIDA HORIZT>18KV,ETC'),(7933,'85043111','TRANSFORMADOR ELETRPOT<=1KVA,P/FREQ<=60HZ,DE CORRE'),(7934,'85043199','OUTROS TRANSFORMADORES ELETRPOT<=1KVA'),(7935,'85043192','TRANSFORMADOR ELETRPOT<=1KVA,DE FI,DETECCAO,FOCO,E'),(7936,'85043119','OUTROS TRANSFORMADORES ELETRPOT<=1KVA,P/FREQ<=60HZ'),(7937,'85043211','TRANSFORMADOR ELETR1KVA<POT<=3KVA,P/FREQ<=60HZ'),(7938,'85043219','OUTROS TRANSFORMADORES ELETR1KVA<POT<=3KVA'),(7939,'85043221','TRANSFORMADOR ELETR3KVA<POT<=16KVA,P/FREQ<=60HZ'),(7940,'85043229','OUTROS TRANSFORMADORES ELETR3KVA<POT<=16KVA'),(7941,'85043300','TRANSFORMADOR ELETR16KVA<POT<=500KVA'),(7942,'85043400','TRANSFORMADOR ELETRPOT>500KVA'),(7943,'85044010','CARREGADORES DE ACUMULADORES (CONVELETR)'),(7944,'85044030','CONVERSORES ELETRICOS DE CORRENTE CONTINUA'),(7945,'85044040','EQUIPAMENTO DE ALIMENTININTERRUPTA DE ENERGIA ELET'),(7946,'85044050','CONVERSORES ELETRONICOS DE FREQP/VARVELMOTOR ELETR'),(7947,'85044029','OUTROS RETIFICADORES (CONVELETR)'),(7948,'85044022','RETIFICADOR ELETROLITICO (CONVERSOR ELETR)'),(7949,'85044021','RETIFICADORES DE CRISTAL (SEMICONDUTORES) (CONVELE'),(7950,'85044090','OUTROS CONVERSORES ELETRICOS ESTATICOS'),(7951,'85045000','OUTRAS BOBINAS DE REATANCIA E DE AUTO-INDUCAO'),(7952,'85049010','NUCLEOS DE PO FERROMAGNETICO'),(7953,'85049030','PARTES DE TRANSFORMADORES DE DIELETRLIQOU POT>16KV'),(7954,'85049020','PARTES DE REATORES P/LAMPADAS/TUBOS DE DESCARGA'),(7955,'85049040','PARTES DE CONVERSORES ELETRICOS ESTATICOS'),(7956,'85049090','OUTRAS PARTES DE OUTRAS TRANSFORMADORES,CONVERSORE'),(7957,'85051100','IMAS PERMANENTES DE METAL,E ARTEFSMAGNETIZAVP/IMAS'),(7958,'85051910','IMAS PERMANENTES DE FERRITA,E ARTEFSMAGNETIZAVP/IM'),(7959,'85051990','OUTROS IMAS PERMANENTES E ARTEFSMAGNETIZAVP/IMAS'),(7960,'85052010','FREIOS ELETROMAGNETPOR CORRFOUCAUT,P/VEICAUTOMOVEI'),(7961,'85052090','ACOPLAMENTOS,EMBREAGENS,ETCELETROMAGNETICOS'),(7962,'85053000','CABECAS DE ELEVACAO ELETROMAGNETICAS'),(7963,'85059010','ELETROIMAS'),(7964,'85059090','PARTES DE ACLOPAMENTOS,EMBREAGENS,ETCELETROMAGNETI'),(7965,'85059080','PLACAS,MANDRIS E DISPOSITIVOS MAGNETICOS,ETCDE FIX'),(7966,'85061020','OUTRAS PILHAS ELETRICAS,DE BIOXIDO DE MANGANES'),(7967,'85063010','PILHAS/BATERIAS ELETRDE OXIDO DE MERCURIO,VOL<=300'),(7968,'85064010','PILHAS/BATERIAS ELETRDE OXIDO DE PRATA,VOL<=300CM3'),(7969,'85065010','PILHAS/BATERIAS ELETRDE LITIO,VOL<=300CM3'),(7970,'85066010','PILHAS/BATERIAS ELETRDE AR-ZINCO,VOL<=300CM3'),(7971,'85068010','OUTRAS PILHAS/BATERIAS ELETRVOL<=300CM3'),(7972,'85065090','OUTRAS PILHAS/BATERIAS ELETRDE LITIO'),(7973,'85068090','OUTRAS PILHAS/BATERIAS ELETR'),(7974,'85061010','PILHAS ELETRICAS,DE BIOXIDO DE MANGANES,ALCALINAS'),(7975,'85061030','BATERIAS DE PILHAS,ELETRICAS,DE BIOXIDO DE MANGANE'),(7976,'85063090','OUTRAS PILHAS/BATERIAS ELETRDE OXIDO DE MERCURIO'),(7977,'85064090','OUTRAS PILHAS/BATERIAS ELETRICAS,DE OXIDO DE PRATA'),(7978,'85066090','OUTRAS PILHAS/BATERIAS ELETRDE AR-ZINCO'),(7979,'85069000','PARTES DE PILHAS/BATERIAS DE PILHAS,ELETRICAS'),(7980,'85071000','ACUMULADORES ELETRDE CHUMBO,P/ARRANQUE DE MOTOR PI'),(7981,'85072010','OUTROS ACUMULADORES ELETRICOS,DE CHUMBO,PESO<=1000'),(7982,'85072090','OUTROS ACUMULADORES ELETRICOS,DE CHUMBO'),(7983,'85073011','ACUMULADORES ELETRDE NIQUEL-CADMIO,P<=2500KG,CAP<='),(7984,'85073019','OUTSACUMULADORES ELETRICOS,DE NIQUEL-CADMIO,P<=250'),(7985,'85073090','OUTROS ACUMULADORES ELETRICOS,DE NIQUEL-CADMIO'),(7986,'85074000','ACUMULADORES ELETRDE NIQUEL-FERRO'),(7987,'85078000','OUTROS ACUMULADORES ELETRICOS'),(7988,'85079090','OUTRAS PARTES P/ACUMULADORES ELETR'),(7989,'85079010','SEPARADORES P/ACUMULADORES ELETR'),(7990,'85079020','RECIPIENTES P/ACUMULADORES ELETRDE PLASTICO,TAMPAS'),(7991,'85081000','PERFURADORAS COM MOTOR ELETRINCORPORADO,DE USO MAN'),(7992,'85082000','SERRAS COM MOTOR ELETRINCORPORADO,DE USO MANUAL'),(7993,'85088092','PARAFUSADEIRAS/ROSQUEADEIRAS,C/MOTOR ELETRUSO MANU'),(7994,'85088099','OUTRAS FERRAMENTAS ELETROMECANC/MOTOR ELETRUSO MAN'),(7995,'85088010','TESOURAS COM MOTOR ELETRINCORPORADO,DE USO MANUAL'),(7996,'85088091','CORTADORAS DE TECIDOS,COM MOTOR ELETRDE USO MANUAL'),(7997,'85088093','MARTELOS COM MOTOR ELETRICO INCORPORADO,DE USO MAN'),(7998,'85089000','PARTES DE FERRAMENTAS ELETROMECANC/MOTOR ELETRMANU'),(7999,'85091000','ASPIRADORES DE PO,COM MOTOR ELETRICO,DE USO DOMEST'),(8000,'85092000','ENCERADEIRAS DE PISO,C/MOTOR ELETRUSO DOMESTICO'),(8001,'85093000','TRITURADOR DE RESTOS DE COZINHA,C/MOTOR ELETRDOMES'),(8002,'85094020','BATEDEIRAS DE ALIMENTOS,C/MOTOR ELETRUSO DOMESTICO'),(8003,'85094010','LIQUIDIFICADOR DE ALIMENTOS,C/MOTOR ELETRUSO DOMES'),(8004,'85094030','MOEDORES DE CARNE,C/MOTOR ELETRUSO DOMESTICO'),(8005,'85094040','EXTRATOR CENTRIFUGO DE SUCOS,C/MOTOR ELETRDOMESTIC'),(8006,'85094090','OUTROS TRITURADORES,ETCP/ALIMC/MOTOR ELETRDOMESTIC'),(8007,'85094050','APARSDE FUNCOES MULTIPLAS,P/PROCESSALIMC/MOTOR ELE'),(8008,'85098000','OUTSAPARELHOS ELETROMECANC/MOTOR ELETRUSO DOMESTIC'),(8009,'85103000','APARELHOS DE DEPILAR,COM MOTOR ELETRICO'),(8010,'85099000','PARTES DE APARSELETROMECANC/MOTOR ELETRUSO DOMESTI'),(8011,'85101000','APARELHOS OU MAQUINAS DE BARBEAR,COM MOTOR ELETRIC'),(8012,'85102000','MAQUINAS DE CORTAR O CABELO/TOSQUIAR,C/MOTOR ELETR'),(8013,'85109011','LAMINAS DE APARELHOS OU MAQSDE BARBEAR,C/MOTOR ELE'),(8014,'85109019','OUTSPARTES DE APARSOU MAQSDE BARBEAR,C/MOTOR ELETR'),(8015,'85109090','PARTES DE MAQSDE CORTAR CABELO/TOSQUIAR,C/MOTOR EL'),(8016,'85111000','VELAS DE IGNICAO P/MOTOR EXPLOSAO/DIESEL'),(8017,'85112010','MAGNETOS P/MOTOR EXPLOSAO/DIESEL'),(8018,'85112090','DINAMOS-MAGNETOS/VOLANTE MAGNETP/MOTOR EXPLOSAO/DI'),(8019,'85113010','DISTRIBUIDORES P/MOTOR EXPLOSAO/DIESEL'),(8020,'85113020','BOBINAS DE IGNICAO P/MOTOR EXPLOSAO/DIESEL'),(8021,'85114000','MOTORES DE ARRANQUE P/MOTOR EXPLOSAO/DIESEL'),(8022,'85115010','DINAMOS E ALTERNADORES P/MOTOR EXPLOSAO/DIESEL'),(8023,'85115090','OUTROS GERADORES P/MOTOR EXPLOSAO/DIESEL'),(8024,'85118010','VELAS DE AQUECIMENTO P/MOTOR EXPLOSAO/DIESEL'),(8025,'85118020','REGULADOR DE VOLTAGEM P/MOTOR EXPLOSAO/DIESEL'),(8026,'85118030','IGNICAO ELETRONICA DIGITAL P/MOTOR EXPLOSAO/DIESEL'),(8027,'85118090','OUTSAPARSE DISPOSITELETRDE IGNICAO,ETCP/MOTOR EXPL'),(8028,'85119000','PARTES DE APARSDISPOSITELETRIGNICAO,ETCP/MOTOR EXP'),(8029,'85121000','APARSDE ILUMINACAO/SINALIZVISUAL UTILEM BICICLETAS'),(8030,'85122011','FAROIS P/AUTOMOVEIS E OUTROS CICLOS'),(8031,'85122022','LUZES INDICADORAS DE MANOBRAS P/AUTOMOVEIS/OUTSCIC'),(8032,'85122019','OUTSAPARSELETRDE ILUMINACAO P/AUTOMOVEIS/OUTSCICLO'),(8033,'85122021','LUZES FIXAS P/AUTOMOVEIS E OUTROS CICLOS'),(8034,'85122023','CAIXAS DE LUZES COMBINADAS P/AUTOMOVEIS/OUTROS CIC'),(8035,'85122029','OUTSAPARELHOS ELETRDE SINALIZVISUAL P/AUTOMOVEIS,E'),(8036,'85123000','APARSDE SINALIZACAO ACUSTICA UTILEM CICLOS/AUTOMOV'),(8037,'85124010','LIMPADORES DE PARA-BRISAS P/AUTOMOVEIS'),(8038,'85124090','DEGELADORES E DESEMBACADORES P/AUTOMOVEIS'),(8039,'85129000','PARTES DE APARSELETRILUMIN/SINALIZP/AUTOMOVEIS,ETC'),(8040,'85131010','LANTERNAS MANUAIS'),(8041,'85131090','OUTRAS LANTERNAS ELETRPORTATEIS,DE PILHAS,ETC'),(8042,'85139000','PARTES DE LANTERNAS ELETRPORTATEIS,DE PILHAS,ETC'),(8043,'85141090','FORNOS DE RESISTENCIA,DE LABORATORIO (AQUECIMINDIR'),(8044,'85141010','FORNOS DE RESISTENCIA,INDUSTRIAIS (AQUECIMINDIRETO'),(8045,'85142019','FORNOS DE INDUCAO,DE LABORATORIO'),(8046,'85142020','FORNOS DE PERDAS DIELETRICAS,INDUSTRIAIS/DE LABORA'),(8047,'85142011','FORNOS DE INDUCAO,INDUSTRIAIS'),(8048,'85143019','FORNOS DE RESISTENCIA,DE LABORATORIO (AQUECIMDIRET'),(8049,'85143029','FORNOS DE ARCO VOLTAICO,DE LABORATORIO'),(8050,'85143011','FORNOS DE RESISTENCIA,INDUSTRIAIS (AQUECIMDIRETO)'),(8051,'85143090','OUTROS FORNOS ELETRINDUSTRIAIS OU DE LABORATORIO'),(8052,'85143021','FORNOS DE ARCO VOLTAICO,INDUSTRIAIS'),(8053,'85144000','OUTSAPARSDE INDUCAO/PERDAS DIELETRP/TRATTERMMATER'),(8054,'85149000','PARTES DE FORNOS ELETRINDUSTRIAIS/DE LABORATORIO,E'),(8055,'85151100','FERROS E PISTOLAS P/SOLDADURA FORTE OU FRACA'),(8056,'85151900','OUTRAS MAQUINAS E APARELHOS P/SOLDADURA FORTE OU F'),(8057,'85152100','MAQUINAS E APARSP/SOLDAR METAIS,DE RESISTENCIA,AUT'),(8058,'85152900','OUTSMAQUINAS E APARSP/SOLDAR METAIS,DE RESISTENCIA'),(8059,'85153100','MAQSE APARSP/SOLDAR METAIS,DE ARCO/JATO PLASMA,AUT'),(8060,'85153900','OUTSMAQSE APARSP/SOLDAR METAIS,DE ARCO/JATO PLASMA'),(8061,'85158010','MAQUINAS E APARELHOS P/SOLDAR A \"LASER\"'),(8062,'85158090','OUTSMAQUINAS E APARSP/SOLDAR,ELETRPOR OUTSPROCESSO'),(8063,'85159000','PARTES DE MAQUINAS E APARELHOS P/SOLDAR,ELETR'),(8064,'85161000','AQUECEDORES ELETRICOS DE AGUA,INCLOS DE IMERSAO'),(8065,'85162100','RADIADORES DE ACUMULACAO,P/AQUECIMDE AMBIENTES,ETC'),(8066,'85162900','OUTSAPARELHOS ELETRICOS P/AQUECIMENTO DE AMBIENTES'),(8067,'85163100','SECADORES DE CABELO,ELETROTERMICOS'),(8068,'85163200','OUTROS APARELHOS P/ARRANJOS DO CABELO,ELETROTERMIC'),(8069,'85163300','APARELHOS P/SECAR AS MAOS,ELETROTERMICOS'),(8070,'85164000','FERROS ELETRICOS DE PASSAR'),(8071,'85165000','FORNOS DE MICROONDAS'),(8072,'85166000','OUTSFORNOS,FOGOES DE COZINHA,FOGAREIROS,ETCELETROT'),(8073,'85167100','APARELHOS P/PREPARACAO DE CAFE OU DE CHA,ELETROTER'),(8074,'85167200','TORRADEIRAS DE PAO,ELETROTERMICAS'),(8075,'85167990','OUTROS APARELHOS ELETROTERMICOS,USO DOMESTICO'),(8076,'85167920','FRITADORAS ELETROTERMICAS'),(8077,'85167910','PANELAS ELETROTERMICAS'),(8078,'85168010','RESISTENCIAS DE AQUECIMENTO P/APARSELETR/ELETROTER'),(8079,'85168090','OUTRAS RESISTENCIAS DE AQUECIMENTO'),(8080,'85169000','PARTES DE AQUECEDORES ELETR/APARSELETRP/AQUECIMETC'),(8081,'85171920','APARELHOS TELEFONICOS PUBLICOS'),(8082,'85171100','APARSTELEFONPOR FIO COM 1 APARELHO TELEFPORTATS/FI'),(8083,'85171910','INTERFONES'),(8084,'85171991','OUTROS APARELHOS TELEFONICOS,N/COMBINADOS C/OUTSAP'),(8085,'85171999','OUTROS APARELHOS TELEFONICOS E VIDEOFONES'),(8086,'85172210','APARELHOS DE TRANSMISSAO E RECEPCAO AUTOMATICAS (T'),(8087,'85172290','OUTROS TELEIMPRESSORES'),(8088,'85173011','CENTRAIS AUTOMATCOMUTELETRONICA LINHA TELEFPUBLICA'),(8089,'85173012','CENTRAIS AUTOMATCOMUTELETROMECLINHA TELEFPUBLICA'),(8090,'85173013','CENTRAIS AUTOMATCOMUTLINHA TELEFPRIVADA,C<=25RAMAI'),(8091,'85173014','CENTRAIS AUTOMATCOMUTLINHA TELEFPRIVADA,25/200RAMA'),(8092,'85173015','CENTRAIS AUTOMATCOMUTLINHA TELEFPRIVADA,C>200RAMAI'),(8093,'85173019','OUTRAS CENTRAIS AUTOMATCOMUTLINHA TELEF'),(8094,'85173020','CENTRAIS AUTOMATDE VIDEOTEXTO'),(8095,'85173041','CENTRAIS AUTOMATCOMUTPACOTES>3600/S,VEL>72KBITS/S'),(8096,'85173030','CENTRAIS AUTOMATDE TELEX'),(8097,'85173049','OUTSCENTRAIS AUTOMATCOMUTDE PACOTES P/TELEFONIA,ET'),(8098,'85173050','CENTRAIS AUTOMATSISTEMA TRONCALIZADO P/TELEFONIA,E'),(8099,'85173090','OUTSAPARELHOS ELETRDE COMUTACAO P/TELEFONIA/TELEGR'),(8100,'85173061','ROTEADORES DIGITAIS \"CROSSCONECT\",GRANULARID>=2MBI'),(8101,'85173062','ROTEADORES DIGITAIS,VELINTERFACE SERIAL>4MBITS/S,E'),(8102,'85173069','OUTROS ROTEADORES DIGITAIS ELETRP/TELEFONIA/TELEGR'),(8103,'85175011','MODULADORES/DEMODULADORES DIGITAIS (BANDA BASE)'),(8104,'85175012','MODULADORES/DEMODULADORES ANALOGICOS,VEL<=9600BITS'),(8105,'85175013','MODULADORES/DEMODULADORES ANALOGICOS,9600<V<=28800'),(8106,'85175019','OUTROS MODULADORES/DEMODULADORES (MODEM)'),(8107,'85175021','EQUIPAMTERMINAL/REPETIDOR EM LINHAS METALICAS'),(8108,'85175041','MULTIPLEXADOR POR DIVISAO DE TEMPO,DIGITSINCRONOS,'),(8109,'85175049','OUTROS MULTIPLEXADORES POR DIVISAO DE TEMPO'),(8110,'85175022','EQUIPAMTERMINAL/REPETIDOR,EM FIBRA OPTICA,V>25GBIT'),(8111,'85175029','OUTROS EQUIPAMENTOS TERMINAIS OU REPETIDORES'),(8112,'85178021','CONCENTRADORES DE LINHAS DE ASSINANTES'),(8113,'85178022','CONCENTRADORES DE CIRCUITOS DIGITAIS (DCME)'),(8114,'85178090','OUTROS APARELHOS ELETRICOS P/TELEFONIA/TELEGRAFIA'),(8115,'85172110','TELECOPIADORES (FAX),C/IMPRESSAO POR SISTEMA TERMI'),(8116,'85172120','TELECOPIADORES (FAX),C/IMPRESSAO POR SISTEMA \"LASE'),(8117,'85172130','TELECOPIADORES (FAX),C/IMPRESSAO POR JATO TINTA'),(8118,'85172190','OUTROS TELECOPIADORES (FAX)'),(8119,'85175030','MULTIPLEXADOR POR DIVISAO DE FREQUENCIA'),(8120,'85175050','CONVERSORES DE SINAIS SINCRONOS/ASSINCRONOS,ETC'),(8121,'85175091','TERMINAIS DE TEXTO,OPERC/CODDE TRANSMISSAO BAUDOT,'),(8122,'85175099','OUTSAPARSP/TELECOMCORRENTE PORTADORA/TELECOMDIGITA'),(8123,'85178010','APARELHOS DE GERENCIAMENTO DE REDES (TMN)'),(8124,'85178029','OUTROS CONCENTRADORES ELETRP/TELEFONIA/TELEGRAFIA'),(8125,'85179093','REGISTRADORES/SELETORES P/CENTRAIS AUTOMATTELEFONE'),(8126,'85179094','TRANSDUTORES PIEZOELETRICOS P/APARELHOS TELEFONICO'),(8127,'85179099','OUTRAS PARTES P/APARELHOS DE TELEFONIA/TELEGRAFIA'),(8128,'85179010','CIRCUITO IMPRESSO MONTADO P/TELEFONIA,ETC'),(8129,'85179091','MECANISMO DE IMPRESSAO A \"LASER\",ETCP/APARSFAC-SIM'),(8130,'85179092','BASTIDORES E ARMACOES P/APARELHOS DE TELEFONIA/TEL'),(8131,'85181000','MICROFONES E SEUS SUPORTES'),(8132,'85182100','ALTO-FALANTE UNICO MONTADO NO SEU PROPRIO RECEPTAC'),(8133,'85182200','ALTO-FALANTES MULTIPLOS MONTADOS NO MESMO RECEPTAC'),(8134,'85182900','OUTROS ALTO-FALANTES'),(8135,'85183000','FONES DE OUVIDO (AUSCULTADORES),MESMO C/MICROFONE'),(8136,'85184000','AMPLIFICADOR ELETRICO DE AUDIOFREQUENCIA'),(8137,'85185000','APARELHOS ELETRDE AMPLIFICACAO DE SOM'),(8138,'85189010','PARTES DE ALTO-FALANTES'),(8139,'85189090','PARTES DE MICROFONES,FONES DE OUVIDO,AMPLIFICADORE'),(8140,'85191000','ELETROFONES COMANDADOS POR MOEDA OU FICHA'),(8141,'85192100','ELETROFONES SEM ALTO-FALANTE'),(8142,'85192900','OUTROS ELETROFONES'),(8143,'85193100','TOCA-DISCOS COM PERMUTADOR AUTOMATICO DE DISCOS'),(8144,'85193900','OUTROS TOCA-DISCOS'),(8145,'85194000','MAQUINAS DE DITAR SEM DISPOSITIVO DE GRAVACAO DE S'),(8146,'85199200','TOCA-FITAS (LEITORES DE CASSETES),DE BOLSO'),(8147,'85199300','OUTROS TOCA-FITAS (LEITORES DE CASSETES)'),(8148,'85199990','OUTROS APARELHOS DE REPRODUCAO DO SOM'),(8149,'85199910','APARELHOS DE REPRODDE SOM,C/SISTLEITOPTICA A \"LASE'),(8150,'85201000','MAQSDE DITAR C/DISPOSITDE GRAVSOM,FONTE EXTENERGIA'),(8151,'85202000','SECRETARIAS ELETRONICAS (ATENDEDORES AUTOMATICOS)'),(8152,'85203300','APARSDE GRAVACAO/REPRODSOM,DE FITAS MAGNETDE CASSE'),(8153,'85203200','APARSDIGITAIS DE GRAVACAO/REPRODDE SOM,DE FITA MAG'),(8154,'85203900','OUTROS APARELHOS DE GRAVACAO/REPRODSOM,DE FITAS MA'),(8155,'85209019','OUTSAPARSDE GRAVACAO DO SOM,SEM DISPOSITIVREPRODSO'),(8156,'85209011','GRAVADORES DE DADOS DE VOO,SEM DISPOSITIVDE REPROD'),(8157,'85209020','OUTSAPARELHOS DE GRAVACAO DO SOM,C/DISPOSITREPRODS'),(8158,'85211010','GRAVADOR-REPRODUTOR DE FITA MAGNETS/SINTONIZADOR'),(8159,'85211081','APARSVIDEOFONDE GRAV/REPRODP/FITAS CASSETES,L=12MM'),(8160,'85211089','OUTSAPARSVIDEOFONGRAV/REPRODFITA MAGNETL<1905MM'),(8161,'85211090','OUTSAPARSVIDEOFONGRAV/REPRODFITA MAGNETL>=1905MM'),(8162,'85219010','GRAVADOR-REPRODUTOR E EDITOR IMAG/SOM,EM DISCOS MA'),(8163,'85219090','OUTROS APARELHOS VIDEOFONICOS DE GRAVACAO/REPRODUC'),(8164,'85221000','FONOCAPTORES P/APARELHOS DE GRAVACAO/REPRODUCAO'),(8165,'85229010','AGULHAS C/PONTA DE PEDRA PRECIOSA,P/APARSDE REPROD'),(8166,'85229020','GABINETES P/APARELHOS DE GRAVACAO/REPRODUCAO'),(8167,'85229040','LEITORES DE SOM,MAGNETICOS P/APARELHOS DE REPRODUC'),(8168,'85229050','MECANISMOS TOCA-DISCOS,MESMO C/CAMBIADOR,P/APARSRE'),(8169,'85229030','CHASSIS OU SUPORTES P/APARELHOS DE GRAVACAO/REPROD'),(8170,'85229090','OUTSPARTES E ACESSP/APARELHOS DE GRAVACAO/REPRODUC'),(8171,'85231110','FITAS MAGNETN/GRAVL<=4MM,EM CASSETES'),(8172,'85231190','OUTRAS FITAS MAGNETN/GRAVL<=4MM'),(8173,'85231200','FITAS MAGNETN/GRAV4MM<L<=65MM'),(8174,'85231320','FITAS MAGNETL>65MM,EM CASSETES,P/GRAVDE VIDEO'),(8175,'85231310','FITAS MAGNETN/GRAV65<L<=508MM,EM ROLOS/CARRETEIS'),(8176,'85231390','OUTRAS FITAS MAGNETN/GRAVL>65MM'),(8177,'85232010','DISCOS MAGNETICOS N/GRAVADP/UNIDADES DE DISCOS RIG'),(8178,'85232090','OUTROS DISCOS MAGNETICOS NAO GRAVADOS'),(8179,'85233000','CARTOES MAGNETN/GRAV'),(8180,'85239000','OUTROS SUPORTES P/GRAVACAO DE SOM/SEMELHSN/GRAVADO'),(8181,'85241000','DISCOS FONOGRAFICOS,GRAVADOS'),(8182,'85245110','FITAS MAGNETGRAVADAS,L<=4MM,EM CARTUCHOS/CASSETES'),(8183,'85245190','OUTRAS FITAS MAGNETGRAVADAS,L<=4MM'),(8184,'85245200','OUTRAS FITAS MAGNETGRAVADAS,4MM<L<=65MM'),(8185,'85244000','FITAS MAGNETGRAVADAS,P/REPRODDE FENOMDIFSOM/IMAGEM'),(8186,'85245300','OUTRAS FITAS MAGNETGRAVADAS,L>65MM'),(8187,'85249900','OUTROS SUPORTES P/GRAVDE SOM/SEMELHSGRAVADOS,ETC'),(8188,'85243100','DISCOS GRAVADP/LEITRAIO \"LASER\",DE FENOMDIFSOM/IMA'),(8189,'85243200','DISCOS GRAVADP/LEITRAIO \"LASER\",REPRODAPENAS DO SO'),(8190,'85243900','OUTROS DISCOS GRAVADOS,P/LEITURA POR RAIO \"LASER\"'),(8191,'85246000','CARTOES MAGNETGRAVADOS'),(8192,'85249100','OUTSSUPORTES GRAVADOS,P/REPRODDE FENOMDIFSOM/IMAGE'),(8193,'85251010','APARELHOS TRANSMDE RADIOTELEFONIA OU RADIOTELEGRAF'),(8194,'85251021','APARSTRANSMDE RADIO AM,MODULCOD/LARGPULSO,POT>10KW'),(8195,'85251022','APARSTRANSMDE RADIO EM FM,C/ETAPA SAIDA VALVPOT>30'),(8196,'85251029','OUTROS APARELHOS TRANSMISSORES DE RADIODIFUSAO'),(8197,'85251031','APARELHOS TRANSMDE TELEVISAO,FREQUENCIA>7GHZ'),(8198,'85251032','APARSTRANSMDE TELEVISAO,BANDA UHF 2/27GHZ,10W<P<10'),(8199,'85251033','APARELHOS TRANSMDE TELEVISAO,BANDA UHF,POT>10KW'),(8200,'85251034','APARELHOS TRANSMDE TELEVISAO,BANDA VHF,POT>=20KW'),(8201,'85251039','OUTROS APARELHOS TRANSMISSORES DE TELEVISAO'),(8202,'85252054','TERMINAIS MOVEIS DE SISTEMA TRONCALIZP/VEICAUTOMOV'),(8203,'85252079','OUTSAPARSTRANSM/RECEPRADIOTELEF/TELEGRDIGITF<15GHZ'),(8204,'85252081','APARSTRANSM/RECEPRADIOTELEFDIGITF<=23GHZ,T<=8MBIT/'),(8205,'85252022','TERMINAIS PORTATEIS DE TELEFONIA CELULAR'),(8206,'85252051','APARSTRANSM/RECEPDE SISTEMA TRONCALP/ESTACAO CENTR'),(8207,'85252062','TERMINAIS FIXOS,ANALOGPORTATMONOCANAIS P/RADIOTELE'),(8208,'85252071','APARSTRANSM/RECEPRADIOTELEFDIGITF<15GHZ,T<=8MBIT/S'),(8209,'85252072','APARSTRANSM/RECEPRADIOTELEFDIGITF<15GHZ,T<=34MBIT/'),(8210,'85252089','OUTSAPARSTRANSM/RECEPRADIOTELEFRADIOTELEGRAFDIGIT'),(8211,'85252011','APARSTRANSM/RECEPDE TELECOMSATELITE,P/ESTACAO TERR'),(8212,'85252013','APARSTRANSM/RECEPDIGITDE VOZ/DADOS,OPERBANDA C,KU,'),(8213,'85252023','TERMINAIS FIXOS DE TELEFONIA CELULAR,S/FONTE ENERG'),(8214,'85252029','OUTROS APARELHOS TRANSMISSRECEPTDE TELEFONIA CELUL'),(8215,'85252059','OUTSAPARELHOS TRANSMISSRECEPTDE SISTEMA TRONCALIZA'),(8216,'85252012','APARSTRANSM/RECEPDE TELECOMSATELITE,P/ESTACAO VSAT'),(8217,'85252030','APARELHOS TRANSM/RECEPDO TIPO MODULADOR-DEMODULADO'),(8218,'85252052','TERMINAIS PORTATEIS DE SISTEMA TRONCALIZADO'),(8219,'85252090','OUTSAPARSTRANSMISSORES C/APARELHO RECEPTINCORPORAD'),(8220,'85252061','APARELHOS TRANSM/RECEPDE RADIOTELEFANALOGPORTATETC'),(8221,'85252019','OUTROS APARELHOS TRANSMISSRECEPTDE TELECOMSATELITE'),(8222,'85252053','TERMINAIS FIXOS DE SISTEMA TRONCALIZADO,S/FONTE EN'),(8223,'85252021','APARSTRANSM/RECEPDE TELEFONIA CELULAR,P/ESTACAO BA'),(8224,'85252024','TERMINAIS MOVEIS DE TELEFONIA CELULAR,P/VEICAUTOMO'),(8225,'85252063','TERMINAIS MOVEIS,ANALOGP/RADIOTELEFDE VEICAUTOMOVE'),(8226,'85252069','OUTSAPARELHOS TRANSMISSRECEPTANALOGP/RADIOTELEFETC'),(8227,'85252041','APARELHOS TRANSM/RECEPDE RADIODIFUSAO'),(8228,'85252042','APARELHOS TRANSM/RECEPDE TELEVISAO,FREQUENCIA>7GHZ'),(8229,'85252049','OUTROS APARELHOS TRANSMISSRECEPTDE TELEVISAO'),(8230,'85253010','CAMERAS DE TELEVISAO C/3 OU MAIS CAPTADORES DE IMA'),(8231,'85253020','CAMERAS DE TELEVISAO C/SENSOR IMAGCCD,ETCILUM<020L'),(8232,'85253090','OUTRAS CAMERAS DE TELEVISAO'),(8233,'85254010','CAMERAS DE VIDEO COM TRES OU MAIS CAPTADORES DE IM'),(8234,'85254090','OUTRAS CAMERAS DE VIDEO'),(8235,'85261000','APARELHOS DE RADIODETECCAO E DE RADIOSSONDAGEM (RA'),(8236,'85269100','APARELHOS DE RADIONAVEGACAO'),(8237,'85269200','APARELHOS DE RADIOTELECOMANDO'),(8238,'85271200','RADIO TOCA-FITAS (RADIO-CASSETES),DE BOLSO'),(8239,'85271310','OUTSAPARELHOS RECEPRADIODIFC/TOCA-FITAS,PILHA/ELET'),(8240,'85271390','OUTSAPARSRECEPRADIODIFC/APARELHOS SOM,PILHA/ELETR'),(8241,'85271320','APARSRECEPTDE RADIO C/TOCA-FITAS/GRAVA PILHA/ELETR'),(8242,'85271330','APARSRECEPTDE RADIO C/TOCA-DISCOS/FITAS/GRAVA PILH'),(8243,'85271910','APARELHOS RECEPTDE RADIO C/RELOGIO,A PILHA/ELETRIC'),(8244,'85271990','OUTROS APARELHOS RECEPTDE RADIODIFA PILHA/ELETRETC'),(8245,'85272110','APARSRECEPTDE RADIO C/TOCA-FITAS,P/VEICSAUTOMOVEIS'),(8246,'85272190','OUTSAPARSRECEPRADIODIFC/APARSSOM,P/VEICAUTOMOVEIS'),(8247,'85272900','OUTSAPARELHOS RECEPTDE RADIODIFP/VEICAUTOMOVEIS,ET'),(8248,'85273190','OUTSAPARSRECEPTDE RADIODIFC/APARSGRAV/REPRODSOM'),(8249,'85273110','OUTROS APARELHOS RECEPRADIODIFC/TOCA-FITAS E GRAVA'),(8250,'85273120','OUTSAPARSRECEPRADIODIFC/TOCA-DISCOS/FITAS/GRAVADOR'),(8251,'85273200','APARELHOS RECEPTDE RADIO C/RELOGIO,A ELETRICIDADE'),(8252,'85273910','AMPLIFICADOR COM SINTONIZADOR (RECEIVER)'),(8253,'85273990','OUTROS APARELHOS RECEPTDE RADIODIFETC'),(8254,'85279011','APARSRECEPTPESSOAIS DE RADIMENSAGEM EM TELA (\"ECRA'),(8255,'85279019','OUTROS APARELHOS RECEPTPESSOAIS DE RADIOMENSAGENS'),(8256,'85279090','OUTSAPARSRECEPRADIOTELEF/RADIOTELEGRAF/RADIODIFETC'),(8257,'85282110','MONITORES DE VIDEO,A CORES,C/DISPOSITDE VARREDURA,'),(8258,'85282190','OUTROS MONITORES DE VIDEO,A CORES'),(8259,'85281211','RECEPTOR-DECODIFINTEGRS/SAIDA RADIOFREQC/SAIDA AUD'),(8260,'85281219','OUTSRECEPTOR-DECODIFINTEGRSINAIS DIGVIDEO CODCORES'),(8261,'85281290','OUTSAPARSRECEPTELEVISAO CORES,MESMO C/APARSSOM/IMA'),(8262,'85283000','PROJETORES DE VIDEO'),(8263,'85282200','MONITORES DE VIDEO,EM PRETO E BRANCO OU OUTSMONOCR'),(8264,'85281300','APARSRECEPTDE TV EM PRETO/BRANCO,MESMO C/RADIO,ETC'),(8265,'85291011','ANTENAS COM REFLETOR PARABOLICO,EXCP/TELEFONE CELU'),(8266,'85291019','OUTRAS ANTENAS,EXCETO PARA TELEFONES CELULARES'),(8267,'85291020','ANTENAS P/TELEFONES CELULARES PORTATEXCTELESCOPICA'),(8268,'85291090','OUTRAS ANTENAS E REFLETORES DE ANTENAS,E SUAS PART'),(8269,'85299019','OUTRAS PARTES P/APARELHOS TRANSMISSORES/RECEPTORES'),(8270,'85299040','OUTRAS PARTES P/APARELHOS RADIONAVEGACAO'),(8271,'85299011','GABINETES E BASTIDORES P/APARELHOS TRANSMISSORES/R'),(8272,'85299090','OUTSPARTES P/APARSRADIOTELECOMANDO/CAMERAS TV/VIDE'),(8273,'85299020','OUTSPARTES P/APARELHOS RECEPTRADIODIFTELEVISAO,ETC'),(8274,'85299012','CIRCUITO IMPRESSO MONTADO P/APARELHOS TRANSMISSREC'),(8275,'85299030','OUTSPARTES P/APARELHOS RADIODETECCAO E RADIOSSONDA'),(8276,'85301010','APARSELETRDIGITP/CONTROLE DE TRAFEGO DE VIAS FERRE'),(8277,'85301090','OUTSAPARELHOS ELETRDE SINALIZACAO,ETCP/VIAS FERREA'),(8278,'85308010','APARSELETRDIGITP/CONTROLE DE TRAFEGO DE AUTOMOTORE'),(8279,'85308090','OUTSAPARSELETRSINALIZACAO,ETCP/VIAS TERRESTRES,ETC'),(8280,'85309000','PARTES DE APARSELETRDE SINALIZETCP/VIAS FERREAS,ET'),(8281,'85311010','ALARMES CONTRA INCENDIO OU SOBREAQUECIMENTO'),(8282,'85311090','OUTSAPARELHOS ELETRDE ALARME,P/PROTECAO CONTRA ROU'),(8283,'85312000','PAINEIS INDICADC/DISPCRISTAIS LIQ/DIODOS EMISSLUZ'),(8284,'85318000','OUTROS APARELHOS ELETRDE SINALIZACAO ACUSTICA/VISU'),(8285,'85319000','PARTES DE APARELHOS ELETRDE SINALIZACUSTICA/VISUAL'),(8286,'85321000','CONDENSADOR FIXO P/LINHA ELETR50/60HZ,POT>=05KVAR'),(8287,'85322110','CONDENSADOR FIXO ELETRDE TANTALO,P/MONTAGEM SUPERF'),(8288,'85322190','OUTROS CONDENSADORES FIXOS ELETRDE TANTALO'),(8289,'85322200','CONDENSADOR FIXO ELETROLITICO,DE ALUMINIO'),(8290,'85322310','CONDENSADOR FIXO C/DIELETRCERAM1 CAMADA,MONTAGSUPE'),(8291,'85322390','OUTROS CONDENSADORES FIXOS C/DIELETRCERAM1 CAMADA'),(8292,'85322410','OUTSCONDENSADORES FIXOS C/DIELETRCERAMMONTAGSUPERF'),(8293,'85322490','OUTROS CONDENSADORES FIXOS C/DIELETRCERAM'),(8294,'85322510','CONDENSADOR FIXO C/DIELETRPAPEL/PLASTP/MONTAGSUPER'),(8295,'85322590','OUTROS CONDENSADORES FIXOS C/DIELETRPAPEL/PLAST'),(8296,'85322910','OUTROS CONDENSADORES FIXOS ELETRP/MONTAGEM SUPERF'),(8297,'85322990','OUTROS CONDENSADORES FIXOS ELETRICOS'),(8298,'85323010','CONDENSADORES VARIAVEIS/AJUSTAVELETRP/MONTAGSUPERF'),(8299,'85323090','OUTROS CONDENSADORES VARIAVEIS/AJUSTAVELETR'),(8300,'85329000','PARTES DE CONDENSADORES ELETRFIXOS/VARIAVEIS/AJUST'),(8301,'85331000','RESISTENCIAS ELETRFIXAS,DE CARBONO,AGLOMERADAS/CAM'),(8302,'85332110','RESISTENCIAS ELETRICAS FIXAS,P/POT<=20W,DE FIO'),(8303,'85332120','RESISTENCIAS ELETRFIXAS,P/POT<=20W,P/MONTAGEM SUPE'),(8304,'85332190','OUTRAS RESISTENCIAS ELETRICAS FIXAS,P/POT<=20W'),(8305,'85332900','OUTRAS RESISTENCIAS ELETRICAS FIXAS'),(8306,'85333110','POTENCIOMETROS P/POT<=20W'),(8307,'85333190','OUTSRESISTENCIAS ELETRVARIAVEIS BOBINADAS P/POT<=2'),(8308,'85333910','OUTROS POTENCIOMETROS'),(8309,'85333990','OUTRAS RESISTENCIAS ELETRICAS VARIAVEIS BOBINADAS'),(8310,'85334011','TERMISTORES'),(8311,'85334012','VARISTORES'),(8312,'85334019','OUTRAS RESISTENCIAS ELETRVARIAVN/LINEARES SEMICOND'),(8313,'85334091','POTENCIOMETRO DE CARVAO,UTILSISTEMA INJDE COMBUSTI'),(8314,'85334092','OUTROS POTENCIOMETROS DE CARVAO'),(8315,'85334099','OUTRAS RESISTENCIAS ELETRICAS VARIAVEIS'),(8316,'85339000','PARTES DE RESISTENCIAS ELETRICAS'),(8317,'85340000','CIRCUITO IMPRESSO'),(8318,'85351000','FUSIVEIS/CORTA-CIRCUITO DE FUSIVEIS,P/TENSAO>1000 '),(8319,'85352100','DISJUNTORES,P/TENSAO SUP1 KV E INFERIOR A 72,5 KV'),(8320,'85352900','OUTROS DISJUNTORES P/TENSAO IGUAL OU SUPERIOR A 72'),(8321,'85353011','SECCIONADORES/INTERRUPTT>1KV,CORRENTE<=1600A,N/AUT'),(8322,'85353021','SECCIONADORES/INTERRUPTT>1KV,CORRENTE>1600A,N/AUTO'),(8323,'85353012','SECCIONADORES/INTERRUPTT>1KV,CORRENTE<=1600A,AUTOM'),(8324,'85353019','OUTSSECCIONADORES/INTERRUPTORES,T>1KV,CORRENTE<=16'),(8325,'85353022','SECCIONADORES/INTERRUPTT>1KV,CORRENTE>1600A,AUTOMA'),(8326,'85353029','OUTROS SECCIONADORES/INTERRUPTORES,T>1KV,CORRENTE>'),(8327,'85354010','PARA-RAIOS P/PROTLINHAS TRANSMISSELETRICIDADE,T>1K'),(8328,'85354090','LIMITADORES DE TENSAO/ELIMINADORES DE ONDA ELETRT>'),(8329,'85359000','OUTSAPARSP/INTERRUPCAO,ETCDE CIRCUITOS ELETRT>1KV'),(8330,'85361000','FUSIVEIS E CORTA-CIRCUITOS DE FUSIVEIS,P/TENSAO<=1'),(8331,'85362000','DISJUNTORES P/TENSAO<=1KV'),(8332,'85363000','OUTSAPARSP/PROTECAO DE CIRCUITOS ELETRP/TENSAO<=1K'),(8333,'85364100','RELES P/TENSAO<=60VOLTS'),(8334,'85364900','OUTROS RELES,60VOLTS<TENSAO<=1000VOLTS'),(8335,'85365090','OUTSINTERRUPTORES,ETCDE CIRCUITOS ELETRP/TENSAO<=1'),(8336,'85365010','UNIDADE CHAVEADDE CONVERSOR P/TELECOMSATELITE,T<=1'),(8337,'85365020','UNIDADE CHAVEADDE AMPLIFHPA P/TELECOMSATELITE,T<=1'),(8338,'85365030','COMUTADORES CODIFICADDIGITAIS,P/MONTAGCIRCUITIMPRE'),(8339,'85366100','SUPORTE P/LAMPADAS,P/TENSAO<=1KV'),(8340,'85366910','TOMADA POLARIZADA E TOMADA BLINDADA,P/TENSAO<=1KV'),(8341,'85366990','OUTRAS TOMADAS DE CORRENTE,P/TENSAO<=1KV'),(8342,'85369030','SOQUETES P/MICROESTRUTURAS ELETRONICAS,P/TENSAO<=1'),(8343,'85369040','CONECTORES P/CIRCUITO IMPRESSO,P/TENSAO<=1KV'),(8344,'85369010','CONECTORES P/CABOS PLANOS DE CONDUTOR PARALELO,T<='),(8345,'85369020','TOMADAS DE CONTATO DESLIZANTE EM CONDUTOR AEREO,T<'),(8346,'85369090','OUTSAPARSP/INTERRUPCAO,ETCP/CIRCUITOS ELETRT<=1KV'),(8347,'85371011','SUPORTES C/APARSDE CNC,T<=1KV,C/PROCESS/BARRAM>=32'),(8348,'85371019','OUTSQUADROS,PAINEIS,ETCC/APARSCMDNUMCOMPUTT<=1KV'),(8349,'85371020','QUADROS C/APARELHOS CONTROLPROGRAMAVEIS,T<=1KV'),(8350,'85371030','QUADROS C/APARSCONTROLDEMANDA DE ENERGIA ELETRT<=1'),(8351,'85371090','OUTSQUADROS,ETCC/APARSINTERRUPCIRCUITO ELETRT<=1KV'),(8352,'85372000','QUADROS,ETCC/APARELHOS INTERRUPCIRCUITO ELETRT>1KV'),(8353,'85381000','QUADROS,PAINEIS,ETCS/APARELHOS INTERRUPCIRCUITO EL'),(8354,'85389090','OUTRAS PARTES P/APARELHOS INTERRUPCIRCUITO ELETR'),(8355,'85389010','CIRCUITO IMPRESSO MONTADO P/APARSINTERRUPCIRCELETR'),(8356,'85391010','FAROIS E PROJETORES EM UNIDADES SELADAS,P/TENSAO<='),(8357,'85391090','OUTROS FAROIS E PROJETORES EM UNIDADES SELADAS'),(8358,'85392110','LAMPADAS/TUBOS INCANDESCHALOGENOS,DE TUNGSTENIO,T<'),(8359,'85392190','OUTRAS LAMPADAS/TUBOS INCANDESCHALOGENOS,DE TUNGST'),(8360,'85392200','OUTRAS LAMPADAS/TUBOS INCANDESCPOT<=200W,T>100V'),(8361,'85392990','OUTRAS LAMPADAS/TUBOS INCANDESC'),(8362,'85392910','OUTRAS LAMPADAS/TUBOS INCANDESCT<=15V'),(8363,'85393100','LAMPADAS/TUBOS DESCARGA,FLUORESCENTE,DE CATODO QUE'),(8364,'85393200','LAMPADAS DE VAPOR DE MERCURIO/SODIO OU HALOGENETO '),(8365,'85393900','OUTRAS LAMPADAS/TUBOS DE DESCARGA'),(8366,'85394900','LAMPADAS/TUBOS DE RAIOS ULTRAVIOLETA OU INFRAVERME'),(8367,'85394100','LAMPADAS DE ARCO'),(8368,'85399010','ELETRODOS P/LAMPADAS/TUBOS ELETRDE INCANDESCENCIA,'),(8369,'85399020','BASES P/LAMPADAS/TUBOS ELETRDE INCANDESCENCIA,ETC'),(8370,'85399090','OUTRAS PARTES P/LAMPADAS/TUBOS ELETRINCANDESCENCIA'),(8371,'85401100','TUBOS CATODICOS P/RECEPTDE TELEVISAO A CORES,ETC'),(8372,'85401200','TUBOS CATODICOS P/RECEPTTELEVISAO EM PRETO/BRANCO,'),(8373,'85402019','OUTROS TUBOS P/CAMERAS DE TELEVISAO'),(8374,'85402011','TUBOS P/CAMERAS DE TELEVISAO EM PRETO E BRANCO,ETC'),(8375,'85402020','TUBOS CONVERSORES/INTENSIFICADORES IMAGENS,DE RAIO'),(8376,'85402090','OUTSTUBOS CONVERSORES/INTENSIFICADORES DE IMAGENS,'),(8377,'85404000','TUBOS DE VISUALIZDADOS GRAFA CORES,TELA FOSFORICA,'),(8378,'85405010','TUBO DE VISUALDADO GRAFPRETO/BRANCO,TELA<33,56CM(1'),(8379,'85405020','TUBO DE VISUALDADO GRAFPRETO/BRANCO,TELA>=33,56CM('),(8380,'85406010','OUTSTUBOS CATODICOS,DE VISUALIZDADOS GRAFA CORES,E'),(8381,'85406090','OUTROS TUBOS CATODICOS'),(8382,'85407100','TUBOS P/MICROONDAS,MAGNETRONS'),(8383,'85407200','TUBOS P/MICROONDAS,CLISTRONS'),(8384,'85407900','OUTROS TUBOS P/MICROONDAS'),(8385,'85408100','TUBOS DE RECEPCAO OU DE AMPLIFICACAO'),(8386,'85408910','VALVULAS DE POTENCIA P/TRANSMISSORES'),(8387,'85408990','OUTRAS LAMPADAS,TUBOS E VALVULAS,ELETRONICOS,ETC'),(8388,'85409140','PAINEL DE VIDRO,MASCARA,ETCREUNIDOS,P/TUBOS TRICRO'),(8389,'85409190','OUTRAS PARTES P/TUBOS CATODICOS'),(8390,'85409130','CANHOES ELETRONICOS P/TUBOS CATODICOS'),(8391,'85409110','BOBINAS DE DEFLEXAO (YOKES) P/TUBOS CATODICOS'),(8392,'85409120','NUCLEOS DE PO FERROMAGNETICO P/BOBINAS DE DEFLEXAO'),(8393,'85409900','PARTES P/LAMPADAS,OUTROS TUBOS E VALVULAS,ELETRONE'),(8394,'85411011','DIODOS NAO MONTADOS,ZENER'),(8395,'85411012','DIODOS NAO MONTADOS,DE INTENSIDADE DE CORRENTE<=3A'),(8396,'85411019','OUTROS DIODOS NAO MONTADOS'),(8397,'85411021','DIODOS ZENER MONTADOS P/MONTAGEM EM SUPERFICIE (\"S'),(8398,'85411022','DIODOS MONTADOS P/MONTAGSUPERFINTENSIDCORRENTE<=3A'),(8399,'85411029','OUTROS DIODOS MONTADOS P/MONTAGEM EM SUPERFICIE (\"'),(8400,'85411091','OUTROS DIODOS ZENER'),(8401,'85411092','OUTROS DIODOS DE INTENSIDADE DE CORRENTE<=3A'),(8402,'85411099','OUTROS DIODOS EXCFOTODIODOS E DIODOS EMISSORES DE '),(8403,'85412110','TRANSISTORES C/CAPDISSIP<1W,NAO MONTADOS'),(8404,'85412120','TRANSISTORES C/CAPDISSIP<1W,MONTADOS,P/MONTAGSUPER'),(8405,'85412191','TRANSISTORES C/CAPACIDDISSIP<1W,C/JUNCAO HETEROGEN'),(8406,'85412199','OUTSTRANSISTORES C/CAPDISSIP<1W,EXCFOTOTRANSISTORE'),(8407,'85412910','OUTROS TRANSISTORES,NAO MONTADOS,EXCFOTOTRANSISTOR'),(8408,'85412920','OUTROS TRANSISTORES,MONTADOS,EXCFOTOTRANSISTORES'),(8409,'85413021','TIRISTORES,\"DIACS\",ETCMONTADOS,INTENSIDCORRENTE<=3'),(8410,'85413011','TIRISTORES,\"DIACS\",ETCN/MONTADOS,INTENSIDCORRENTE<'),(8411,'85413019','OUTROS TIRISTORES,\"DIACS\",\"TRIACS\",N/MONTADOS'),(8412,'85413029','OUTROS TIRISTORES,\"DIACS\",\"TRIACS\",MONTADOS'),(8413,'85414016','CELULAS SOLARES NAO MONTADAS'),(8414,'85414032','CELULAS SOLARES EM MODULOS OU PAINEIS'),(8415,'85414011','DIODOS EMISSORES DE LUZ (LED) N/MONTADOS,EXC\"LASER'),(8416,'85414012','DIODOS \"LASER\" NAO MONTADOS'),(8417,'85414021','DIODOS EMISSORES DE LUZ (LED) MONTADOS,P/MONTAGSUP'),(8418,'85414022','OUTSDIODOS EMISSORES DE LUZ (LED) EXCDIODOS \"LASER'),(8419,'85414023','DIODOS \"LASER\" C/COMPRIMONDA DE 1300MM OU 1500MM'),(8420,'85414024','OUTROS DIODOS \"LASER\"'),(8421,'85414013','FOTODIODOS NAO MONTADOS'),(8422,'85414031','FOTODIODOS EM MODULOS OU PAINEIS'),(8423,'85414014','FOTOTRANSITORES NAO MONTADOS'),(8424,'85414015','FOTOTIRISTORES NAO MONTADOS'),(8425,'85414025','FOTODIODOS,FOTOTRANSISTORES E FOTOTIRISTORES MONTA'),(8426,'85414039','OUTRAS CELULAS FOTOVOLTAICAS EM MODULOS OU PAINEIS'),(8427,'85414019','OUTSDISPOSITIVOS FOTOSSENSIVEIS SEMICONDUTN/MONTAD'),(8428,'85414026','FOTORRESISTORES MONTADOS'),(8429,'85414027','ACOPLADORES OTICOS,PARA MONTAGEM EM SUPERFICIE (SM'),(8430,'85414029','OUTROS DISPOSITIVOS FOTOSSENSIVEIS SEMICONDUTMONTA'),(8431,'85415010','OUTROS DISPOSITIVOS SEMICONDUTORES NAO MONTADOS'),(8432,'85415020','OUTROS DISPOSITIVOS SEMICONDUTORES MONTADOS'),(8433,'85416010','CRISTAIS PIEZOELETRMONTADOS,DE QUARTZO,1<=FREQ<=10'),(8434,'85416090','OUTROS CRISTAIS PIEZOELETRICOS MONTADOS'),(8435,'85419090','OUTRAS PARTES DE DIODOS,TRANSISTORES,ETCSEMICONDUT'),(8436,'85419010','SUPORTE-CONECTOR EM TIRAS,DIODOS,ETCSEMICONDUTORES'),(8437,'85419020','COBERTURAS P/ENCAPSULAMENTO (CAPSULAS)'),(8438,'85421310','SEMICONDUTORES DE OXIDO METALICO,TECNMOS,NAO MONTA'),(8439,'85421410','CIRCUITO OBTIDO TECNOLBIPOLAR,NAO MONTADOS'),(8440,'85421200','CARTOES INCORPORANDO 1 CIRCUITO INTEGRADO ELETRONI'),(8441,'85421321','MEMORIAS ROM,PROM,ETCTECNMOS,MONTADAS,P/MONTAGSUPE'),(8442,'85421322','MICROPROCESSADORES,TECNMOS,MONTADOS,P/MONTAGEM SUP'),(8443,'85421323','MICROCONTROLADORES,TECNMOS,MONTADOS,P/MONTAGEM SUP'),(8444,'85421324','CO-PROCESSADORES,TECNMOS,MONTADOS,P/MONTAGEM SUPER'),(8445,'85421325','SEMICONDUTOR\"CHIP-SET\",TECNMOS,MONTADP/MONTAGSUPER'),(8446,'85421328','OUTSMEMORIAS,TECNOLOGMOS,MONTADAS,P/MONTAGEM SUPER'),(8447,'85421329','OUTSSEMICONDUTORES,TECNOLOGMOS,MONTADP/MONTAGSUPER'),(8448,'85421391','OUTSMEMORIAS ROM,PROM,ETCTECNOLOGIA MOS,ACESSO<=25'),(8449,'85421392','OUTSMICROPROCESSADORES,DE OXIDO METALICO,TECNOLOGM'),(8450,'85421393','OUTSMICROCONTROLADORES,DE OXIDO METALICO,TECNOLOGM'),(8451,'85421394','OUTSCO-PROCESSADORES,DE OXIDO METALICO,TECNOLOGIA '),(8452,'85421395','OUTSSEMICONDUTORES \"CHIP-SET\",DE OXIDO METALTECNMO'),(8453,'85421398','OUTSMEMORIAS DE OXIDO METALICO,TECNOLOGIA MOS'),(8454,'85421399','OUTROS SEMICONDUTORES DE OXIDO METALICO,TECNOLOGIA'),(8455,'85421420','CIRCUITO OBTIDO TECNOLBIPOLAR,MONTADOS,P/MONTAGSUP'),(8456,'85421490','OUTSCIRCUITOS DIGITAIS,OBTIDOS POR TECNOLOGIA BIPO'),(8457,'85421910','OUTSCIRCUITOS INTEGRADOS MONOLITDIGITAIS,NAO MONTA'),(8458,'85421921','OUTSMEMORIAS ROM,PROM,ETCMONTADAS,P/MONTAGEM SUPER'),(8459,'85421928','OUTSMEMORIAS,MONTADAS,PARA MONTAGEM EM SUPERFICIE'),(8460,'85421929','OUTSCIRCUITOS INTEGRMONOLITDIGMONTP/MONTAGSUPERF'),(8461,'85421991','OUTSMEMORIAS ROM,PROM,ETCMONTADAS'),(8462,'85421998','OUTSMEMORIAS,MONTADAS'),(8463,'85421999','OUTROS CIRCUITOS INTEGRMONOLITDIGITMONTADOS'),(8464,'85423010','OUTROS CIRCUITOS INTEGRMONOLITNAO MONTADOS'),(8465,'85423021','OUTSCIRCUITOS INTEGRMONOLITDIGITAIS-ANALOGMONTADOS'),(8466,'85423029','OUTROS CIRCUITOS INTEGRMONOLITMONTADOS'),(8467,'85424011','CIRCUITO INTEGRHIBRIDO,ESPCAMAD<=1MICRON,FREQ>=800'),(8468,'85424019','OUTSCIRCUITOS INTEGRADOS HIBRIDOS,ESPCAMAD<=1MICRO'),(8469,'85424090','OUTROS CIRCUITOS INTEGRHIBRIDOS'),(8470,'85425000','MICROCONJUNTOS ELETRONICOS'),(8471,'85429010','SUPORTE-CONECTOR EM TIRAS,P/CIRCUITO INTEGRETCELET'),(8472,'85429020','COBERTURAS P/ENCAPSULAMENTO,P/CIRCUITO INTEGRELETR'),(8473,'85429090','OUTRAS PARTES P/CIRCUITO INTEGRE MICROCONJELETRON'),(8474,'85431100','APARSDE IMPLANTACAO IONICA,P/IMPURIFMATERSEMICONDU'),(8475,'85431900','OUTROS ACELERADORES DE PARTICULAS,ELETRICOS'),(8476,'85432000','GERADORES DE SINAIS,ELETR'),(8477,'85433000','MAQSE APARSDE GALVANOPLASTIA,ELETROLISE,ELETROFORE'),(8478,'85438911','AMPLIFICADOR RADIOFREQP/TRANSMSINAL MICROONDA,HPA,'),(8479,'85438912','AMPLIFICADOR RADIOFREQP/RECEPSINAL MICROONDA,LNA,E'),(8480,'85438999','OUTSMAQUINAS E APARELHOS ELETRICOS COM FUNCAO PROP'),(8481,'85434000','ELETRIFICADORES DE CERCAS'),(8482,'85438100','CARTOES E ETIQUETAS DE ACIONAMPOR APROXIM'),(8483,'85438913','AMPLIFICADOR RADIOFREQP/DISTRIBDE SINAIS DE TELEVI'),(8484,'85438914','OUTSAMPLIFICADDE RADIOFREQP/RECEPSINAIS MICROONDAS'),(8485,'85438915','OUTSAMPLIFICADDE RADIOFREQP/TRANSMSINAIS MICROONDA'),(8486,'85438919','OUTROS AMPLIFICADORES DE RADIOFREQUENCIA'),(8487,'85438920','APARELHOS P/ELETROCUTAR INSETOS'),(8488,'85438931','GERADORES DE EFEITOS ESPECMANIP2/3 DIMENSETCP/VIDE'),(8489,'85438932','GERADORES DE CARACTERES,DIGITAIS,P/VIDEO'),(8490,'85438933','SINCRONIZADOR DE QUADRO ARMAZENETCBASE TEMPO,P/VID'),(8491,'85438934','CONTROLADORES DE EDICAO,P/VIDEO'),(8492,'85438935','MISTURADOR DIGITAL,EM TEMPO REAL DE ENTRADA>=8,P/V'),(8493,'85438936','ROTEADOR-COMUTADOR DE ENTRADA>20,SAIDA>16,P/VIDEO'),(8494,'85438939','OUTRAS MAQUINAS E APARELHOS AUXILIARES,P/VIDEO'),(8495,'85438940','TRANSCODIFICADOR OU CONVERSOR DE PADROES DE TELEVI'),(8496,'85438950','SIMULADOR DE ANTENAS P/TRANSMISSORES,POT>=25KW'),(8497,'85438991','TERMINAIS DE TEXTO,OPERC/CODDE TRANSMISSAO BAUDOT,'),(8498,'85439090','PARTES DE OUTSMAQUINAS E APARSELETRC/FUNCAO PROPRI'),(8499,'85439010','PARTES DE MAQSE APARSAMPLIFICADRADIOFREQVIDEO,ETC'),(8500,'85441100','FIOS DE COBRE P/BOBINAR,ISOLADOS P/USO ELETR'),(8501,'85441910','FIOS DE ALUMINIO P/BOBINAR,ISOLADOS P/USO ELETR'),(8502,'85441990','OUTROS FIOS P/BOBINAR,ISOLADOS P/USO ELETR'),(8503,'85442000','CABOS COAXIAIS E OUTROS CONDUTORES ELETRCOAXIAIS'),(8504,'85443000','JOGOS DE FIOS P/VELAS DE IGNICAO E OUTSFIOS P/VEIC'),(8505,'85444100','OUTSCONDUTORES ELETRMUNIDOS PECAS CONEXAO,TENSAO<='),(8506,'85444900','OUTROS CONDUTORES ELETRP/TENSAO<=80V'),(8507,'85445100','OUTSCONDUTORES ELETRMUNIDOS PECAS CONEXAO,80<T<=10'),(8508,'85445900','OUTROS CONDUTORES ELETR80V<TENSAO<=1000V'),(8509,'85446000','OUTROS CONDUTORES ELETRP/TENSAO>1000V'),(8510,'85447010','CABOS DE FIBRAS OPTICAS REVEXTDE MATERIAL DIELETR'),(8511,'85447020','CABOS DE FIBRAS OPTICAS REVEXTDE ACO P/INSTSUBMARI'),(8512,'85447030','CABOS DE FIBRAS OPTICAS REVEXTDE ALUMINIO'),(8513,'85447090','OUTROS CABOS DE FIBRAS OPTICAS'),(8514,'85451100','ELETRODOS DE CARVAO P/USO EM FORNOS ELETR'),(8515,'85451990','OUTROS ELETRODOS DE CARVAO,P/USO ELETR'),(8516,'85451910','ELETRODOS DE GRAFITA,TEOR CARBONO>=999%,P/USO ELET'),(8517,'85452000','ESCOVAS DE CARVAO,P/USO ELETR'),(8518,'85459090','OUTROS CARVOES E ARTIGOS DE GRAFITA/CARVAO P/USO E'),(8519,'85459010','CARVOES P/PILHAS ELETRICAS'),(8520,'85459020','RESISTENCIAS AQUECEDORAS DESPROVDE REVESTIM/TERMIN'),(8521,'85459030','SUPORTE DE CONEXAO (\"NIPPLES\") P/ELETRODOS'),(8522,'85461000','ISOLADORES DE VIDRO P/USO ELETRICO'),(8523,'85462000','ISOLADORES DE CERAMICA P/USO ELETRICO'),(8524,'85469000','ISOLADORES DE OUTRAS MATERIAS P/USO ELETRICO'),(8525,'85471000','PECAS ISOLANTES DE CERAMICA P/MAQSAPARSE INSTALELE'),(8526,'85472000','PECAS ISOLANTES DE PLASTICO P/MAQSAPARSE INSTALELE'),(8527,'85479000','OUTSPECAS/TUBOS ISOLANTES P/MAQSAPARSE INSTALELETR'),(8528,'85481010','DESPERDICIOS/RESIDSDE ACUMULADORES ELETRDE CHUMBO,'),(8529,'85481090','DESPERDICIOS/RESIDSDE PILHAS/BATERIA PILHAS ELETRE'),(8530,'85489000','PARTES ELETRDE OUTRAS MAQUINAS E APARELHOS'),(8531,'86011000','LOCOMOTIVAS E LOCOTRATORES,DE FONTE EXTDE ELETRICI'),(8532,'86012000','LOCOMOTIVAS E LOCOTRATORES,DE ACUMULADORES ELETRIC'),(8533,'86021000','LOCOMOTIVAS DIESEL-ELETRICAS'),(8534,'86029000','OUTRAS LOCOMOTIVAS E LOCOTRATORES,E TENDERES'),(8535,'86031000','LITORINAS (AUTOMOTORAS),DE FONTE EXTDE ELETRICIDAD'),(8536,'86039000','OUTRAS LITORINAS (AUTOMOTORAS)'),(8537,'86040000','VEICULOS P/INSPECAO/MANUTENCAO DE VIAS FERREAS/SEM'),(8538,'86050010','VAGOES DE PASSAGEIROS P/VIAS FERREAS/SEMELHS'),(8539,'86050090','FURGOES P/BAGAGEM,VAGOES-POSTAIS,ETCP/VIAS FERREAS'),(8540,'86061000','VAGOES-TANQUES/SEMELHSP/TRANSPMERCADEM VIAS FERREA'),(8541,'86062000','VAGOES ISOTERMICOS,REFRIGERADORES,ETCP/VIAS FERREA'),(8542,'86063000','VAGOES DE DESCARGA AUTOMATMERCADORIAS EM VIAS FERR'),(8543,'86069100','VAGOES COBERTOS/FECHADOS,P/TRANSPMERCADVIAS FERREA'),(8544,'86069200','VAGOES ABERTOS/PAREDES FIXAS,ALTURA>60CM P/VIAS FE'),(8545,'86069900','OUTSVAGOES P/TRANSPORTE DE MERCADORIAS EM VIAS FER'),(8546,'86071110','TRUQUES (BOGIES) DE TRACAO DE VEICULOS P/VIAS FERR'),(8547,'86071120','BISSEIS DE TRACAO DE VEICULOS P/VIAS FERREAS/SEMEL'),(8548,'86071200','OUTROS \"BOGIES\" E BISSEIS DE VEICULOS PARA VIAS FE'),(8549,'86071990','EIXOS,RODAS E SUAS PARTES DE VEICULOS P/VIAS FERRE'),(8550,'86071911','MANCAIS C/ROLAMDIAMEXT>190MM,P/EIXO RODA VAGAO FER'),(8551,'86071919','OUTSMANCAIS DE VEICULOS P/VIAS FERREAS'),(8552,'86072100','FREIOS A AR COMPRIMSUAS PARTES DE VEICP/VIAS FERRE'),(8553,'86072900','OUTROS FREIOS E SUAS PARTES,DE VEICULOS P/VIAS FER'),(8554,'86073000','GANCHOS,PARA-CHOQUES,ETCDE VEICULOS P/VIAS FERREAS'),(8555,'86079100','OUTRAS PARTES DE LOCOMOTIVAS OU DE LOCOTRATORES'),(8556,'86079900','OUTRAS PARTES DE VEICULOS P/VIAS FERREAS'),(8557,'86080011','APARELHOS MECANICOS DE SINALIZETCP/VIAS FERREAS,ET'),(8558,'86080012','APARELHOS ELETROMECANDE SINALIZETCP/VIAS FERREAS,E'),(8559,'86080090','MATERIAL FIXO DE VIAS FERREAS/SEMELHSE SUAS PARTES'),(8560,'86090000','CONTEINERES (CONTENTORES) INCLDE TRANSPFLUIDOS,ETC'),(8561,'87011000','TRATORES MOTOCULTORES'),(8562,'87012000','TRATORES RODOVIARIOS P/SEMI-REBOQUES'),(8563,'87013000','TRATORES DE LAGARTAS'),(8564,'87019000','OUTROS TRATORES'),(8565,'87021000','VEICULOS AUTOMOVEIS P/TRANSP>=10 PESSOAS,C/MOTOR D'),(8566,'87029010','TROLEBUS P/TRANSPORTE>=10 PESSOAS'),(8567,'87029090','OUTROS VEICULOS AUTOMOVEIS P/TRANSPORTE>=10 PESSOA'),(8568,'87031000','VEICULOS AUTOMOVEIS P/DESLOCAMNA NEVE,CAMPO GOLFE,'),(8569,'87032100','AUTOMOVEIS C/MOTOR EXPLOSAO,CIL<=1000CM3'),(8570,'87032290','AUTOMOVEIS C/MOTOR EXPLOSAO,1000<CM3<=1500,SUP6 PA'),(8571,'87032210','AUTOMOVEIS C/MOTOR EXPLOSAO,1000<CM3<=1500,ATE 6 P'),(8572,'87032310','AUTOMOVEIS C/MOTOR EXPLOSAO,1500<CM3<=3000,ATE 6 P'),(8573,'87032390','AUTOMOVEIS C/MOTOR EXPLOSAO,1500<CM3<=3000,SUP6 PA'),(8574,'87032490','AUTOMOVEIS C/MOTOR EXPLOSAO,CM3>3000,SUP6 PASSAGEI'),(8575,'87032410','AUTOMOVEIS C/MOTOR EXPLOSAO,CM3>3000,ATE 6 PASSAGE'),(8576,'87033110','AUTOMOVEIS C/MOTOR DIESEL,CM3<=1500,ATE 6 PASSAGEI'),(8577,'87033190','AUTOMOVEIS C/MOTOR DIESEL,CM3<=1500,SUP6 PASSAGEIR'),(8578,'87033210','AUTOMOVEIS C/MOTOR DIESEL,1500<CM3<=2500,ATE 6 PAS'),(8579,'87033290','AUTOMOVEIS C/MOTOR DIESEL,1500<CM3<=2500,SUP6 PASS'),(8580,'87033310','AUTOMOVEIS C/MOTOR DIESEL,CM3>2500,ATE 6 PASSAGEIR'),(8581,'87033390','AUTOMOVEIS C/MOTOR DIESEL,CM3>2500,SUP6 PASSAGEIRO'),(8582,'87039000','OUTROS AUTOMOVEIS DE PASSAGEIROS,INCLDE USO MISTO,'),(8583,'87041000','DUMPERS P/TRANSPDE MERCADORIA,UTILFORA DE RODOVIAS'),(8584,'87042130','VEICAUTOMOVFRIGORIFETCC/MOTOR DIESEL,CARGA<=5T'),(8585,'87042190','OUTROS VEICULOS AUTOMOVEIS C/MOTOR DIESEL,P/CARGA<'),(8586,'87042110','CHASSIS C/MOTOR DIESEL E CABINA,P/CARGA<=5T'),(8587,'87042120','VEICAUTOMOVC/MOTOR DIESEL/CAIXA BASCULP/CARGA<=5T'),(8588,'87042210','CHASSIS C/MOTOR DIESEL E CABINA,5T<CARGA<=20T'),(8589,'87042290','OUTROS VEICULOS AUTOMOVEIS C/MOTOR DIESEL,5T<CARGA'),(8590,'87042220','VEICAUTOMOVC/MOTOR DIESEL/CAIXA BASCUL5T<CARGA<=20'),(8591,'87042230','VEICAUTOMOVFRIGORIFETCC/MOTOR DIESEL,5T<CARGA<=20T'),(8592,'87042320','VEICAUTOMOVC/MOTOR DIESEL/CAIXA BASCULCARGA>20T'),(8593,'87042310','CHASSIS C/MOTOR DIESEL E CABINA,CARGA>20T'),(8594,'87042330','VEICAUTOMOVFRIGORIFETCC/MOTOR DIESEL,CARGA>20T'),(8595,'87042390','OUTROS VEICULOS AUTOMOVEIS C/MOTOR DIESEL,CARGA>20'),(8596,'87043110','CHASSIS C/MOTOR EXPLOSAO E CABINA,CARGA<=5T'),(8597,'87043120','VEICAUTOMOVC/MOTOR EXPLOSAO/CAIXA BASCULCARGA<=5T'),(8598,'87043130','VEICAUTOMOVFRIGORIFETCC/MOTOR EXPLOSAO,CARGA<=5T'),(8599,'87043190','OUTROS VEICULOS AUTOMOVEIS C/MOTOR EXPLOSAO,CARGA<'),(8600,'87043210','CHASSIS C/MOTOR EXPLOSAO E CABINA,CARGA>5T'),(8601,'87043290','OUTROS VEICULOS AUTOMOVEIS C/MOTOR EXPLOSAO,CARGA>'),(8602,'87043220','VEICAUTOMOVC/MOTOR EXPLOSAO/CAIXA BASCULCARGA>5T'),(8603,'87043230','VEICAUTOMOVFRIGORIFETCC/MOTOR EXPLOSAO,CARGA>5T'),(8604,'87049000','OUTROS VEICULOS AUTOMOVEIS P/TRANSPORTE DE MERCADO'),(8605,'87051000','CAMINHOES-GUINDASTES'),(8606,'87052000','TORRES (DERRICKS) AUTOMOVEIS,P/SONDAGEM/PERFURACAO'),(8607,'87053000','VEICULOS AUTOMOVEIS DE COMBATE A INCENDIOS'),(8608,'87054000','CAMINHOES-BETONEIRAS'),(8609,'87059010','CAMINHOES PARA PERFILAGEM DE POCOS PETROLIFEROS'),(8610,'87059090','OUTROS VEICULOS AUTOMOVEIS PARA USOS ESPECIAIS'),(8611,'87060090','OUTSCHASSIS C/MOTOR P/AUTOMOVEIS DE PASSAG/MERCADO'),(8612,'87060010','CHASSIS C/MOTOR P/VEICSAUTOMOVEIS TRANSPPESSOAS>=1'),(8613,'87060020','CHASSIS C/MOTOR P/\"DUMPERS\" E TRATORES EXCRODOVIAR'),(8614,'87071000','CARROCARIAS P/AUTOMOVEIS DE PASSAGEIROS,INCLAS CAB'),(8615,'87079090','CARROCARIAS P/VEICAUTOMOVTRANSP>=10PESSOAS OU P/CA'),(8616,'87079010','CARROCARIAS P/\"DUMPERS\"/TRATORES EXCRODOVINCLCABIN'),(8617,'87081000','PARA-CHOQUES E SUAS PARTES P/VEICULOS AUTOMOVEIS'),(8618,'87082100','CINTOS DE SEGURANCA P/VEICULOS AUTOMOVEIS'),(8619,'87082911','PARA-LAMAS PARA \"DUMPERS\" E TRATORES EXCOS RODOVIA'),(8620,'87082991','PARA-LAMAS P/VEICULOS AUTOMOVEIS'),(8621,'87082919','OUTSPARTES/ACESSDE CARROCARIAS P/\"DUMPERS\" E TRATO'),(8622,'87082912','GRADES DE RADIADORES PARA \"DUMPERS\"/TRATORES EXCRO'),(8623,'87082992','GRADES DE RADIADORES P/VEICULOS AUTOMOVEIS'),(8624,'87082999','OUTRAS PARTES E ACESSDE CARROCARIAS P/VEICAUTOMOVE'),(8625,'87082913','PORTAS PARA \"DUMPERS\" E TRATORES EXCETO OS RODOVIA'),(8626,'87082993','PORTAS P/VEICULOS AUTOMOVEIS'),(8627,'87082914','PAINEIS DE INSTRUMENTOS P/\"DUMPERS\"/TRATORES EXCRO'),(8628,'87082994','PAINEIS DE INSTRUMENTOS P/VEICULOS AUTOMOVEIS'),(8629,'87082995','INFLADOR DE BOLSA DE AR P/DISPOSITSEGURANCA P/AUTO'),(8630,'87083110','GUARNICOES DE FREIOS MONTADAS PARA \"DUMPERS\" E TRA'),(8631,'87083190','GUARNICOES DE FREIOS MONTADAS P/OUTROS VEICSAUTOMO'),(8632,'87083900','OUTROS FREIOS E SUAS PARTES,P/TRATORES/VEICAUTOMOV'),(8633,'87084010','CAIXAS DE MARCHAS P/\"DUMPERS\"/TRATORES EXCRODOVIAR'),(8634,'87084090','CAIXAS DE MARCHAS P/VEICULOS AUTOMOVEIS'),(8635,'87085090','EIXOS DE TRANSMISSAO C/DIFERENCIAL P/VEICAUTOMOVEI'),(8636,'87085010','EIXOS DE TRANSMISSAO C/DIFERENCIAL P/\"DUMPERS\"/TRA'),(8637,'87086010','OUTSEIXOS E SUAS PARTES,P/\"DUMPERS\"/TRATORES EXCRO'),(8638,'87086090','OUTROS EIXOS E SUAS PARTES,P/VEICULOS AUTOMOVEIS'),(8639,'87087010','RODAS DE EIXOS PROPULSORS/PARTES,P/\"DUMPERS\"/TRATO'),(8640,'87087090','OUTRAS RODAS,SUAS PARTES E ACESSP/VEICULOS AUTOMOV'),(8641,'87088000','AMORTECEDORES DE SUSPENSAO P/TRATORES E VEICAUTOMO'),(8642,'87089100','RADIADORES P/TRATORES E VEICULOS AUTOMOVEIS'),(8643,'87089200','SILENCIOSOS E TUBOS DE ESCAPE P/TRATORES/VEICAUTOM'),(8644,'87089300','EMBREAGENS E SUAS PARTES P/TRATORES/VEICULOS AUTOM'),(8645,'87089411','VOLANTE DE DIRECAO PARA \"DUMPERS\" E TRATORES EXCRO'),(8646,'87089491','VOLANTES DE DIRECAO P/VEICULOS AUTOMOVEIS'),(8647,'87089412','BARRA DE DIRECAO P/\"DUMPERS\" E TRATORES EXCRODOVIA'),(8648,'87089492','BARRAS DE DIRECAO P/VEICULOS AUTOMOVEIS'),(8649,'87089413','CAIXA DE DIRECAO P/\"DUMPERS\" E TRATORES EXCRODOVIA'),(8650,'87089493','CAIXAS DE DIRECAO P/VEICULOS AUTOMOVEIS'),(8651,'87089910','DISPOSITIVO P/CMDOACELERADOR,FREIO,ETCP/VEICAUTOMO'),(8652,'87089990','OUTRAS PARTES E ACESSP/TRATORES E VEICULOS AUTOMOV'),(8653,'87091100','VEICULOS AUTOMOVELETRS/DISPELEVUTILEM FABRICAS,ETC'),(8654,'87091900','OUTSVEICULOS AUTOMOVS/DISPELEVUTILEM FABRICAS,ETC'),(8655,'87099000','PARTES DE VEICAUTOMOVS/DISPELEVUTILEM FABRICAS,ETC'),(8656,'87100000','VEICULOS E CARROS BLINDADOS DE COMBATE E SUAS PART'),(8657,'87111000','MOTOCICLETAS,ETCC/MOTOR PISTAO ALTERNATCIL<=50CM3'),(8658,'87112010','MOTOCICLETAS C/MOTOR PISTAO ALTERNAT50CM3<CIL<=125'),(8659,'87112020','MOTOCICLETAS C/MOTOR PISTAO ALTERNAT125CM3<CIL<=25'),(8660,'87112090','OUTROS CICLOS C/MOTOR PISTAO ALTERNAT50CM3<CIL<=25'),(8661,'87113000','MOTOCICLETAS,ETCC/MOTOR PISTAO ALTERNAT250<C<=500C'),(8662,'87114000','MOTOCICLETAS,ETCC/MOTOR PISTAO ALTERNAT500<C<=800C'),(8663,'87115000','MOTOCICLETAS,ETCC/MOTOR PISTAO ALTERNATCIL>800CM3'),(8664,'87119000','OUTSMOTOCICLETAS/CICLOS C/MOTOR AUXILCARROS LATERA'),(8665,'87120010','BICICLETAS SEM MOTOR'),(8666,'87120090','OUTROS CICLOS SEM MOTOR,INCLTRICICLOS'),(8667,'87131000','CADEIRAS DE RODAS,ETCSEM MECANISMO DE PROPULSAO'),(8668,'87139000','OUTRAS CADEIRAS DE RODAS E OUTRAS VEICULOS P/INVAL'),(8669,'87141100','SELINS P/MOTOCICLETAS INCLCICLOMOTORES'),(8670,'87141900','OUTRAS PARTES E ACESSP/MOTOCICLETAS INCLCICLOMOTOR'),(8671,'87142000','PARTES E ACESSP/CADEIRAS DE RODAS/OUTSVEICP/INVALI'),(8672,'87149100','QUADROS,GARFOS E SUAS PARTES P/BICICLETAS E OUTSCI'),(8673,'87149200','AROS E RAIOS PARA BICICLETAS E OUTROS CICLOS'),(8674,'87149300','OUTROS CUBOS E PINHOES DE RODAS LIVRES P/BICIBLETA'),(8675,'87149410','CUBOS DE FREIOS P/BICICLETAS E OUTROS CICLOS'),(8676,'87149490','OUTROS FREIOS E SUAS PARTES P/BICICLETAS E OUTSCIC'),(8677,'87149500','SELINS DE BICICLETAS E OUTROS CICLOS'),(8678,'87149600','PEDAIS,PEDALEIROS E SUAS PARTES,P/BICICLETAS,ETC'),(8679,'87149900','OUTRAS PARTES E ACESSP/BICICLETAS E OUTRAS CICLOS'),(8680,'87150000','CARRINHOS,VEICSEMELHE SUAS PARTES,P/TRANSPCRIANCAS'),(8681,'87161000','REBOQUES/SEMI-REBOQUES P/HABITACAO/ACAMPAR \"TRAILE'),(8682,'87162000','REBOQUES/SEMI-REBOQUES AUTOCARREGAVEIS,ETCUSO AGRI'),(8683,'87163100','REBOQUES-CISTERNAS P/TRANSPORTE DE MERCADORIAS'),(8684,'87163900','OUTROS REBOQUES E SEMI-REBOQUES P/TRANSPDE MERCADO'),(8685,'87164000','OUTROS REBOQUES E SEMI-REBOQUES'),(8686,'87168000','OUTROS VEICULOS NAO AUTOPROPULSORES'),(8687,'87169010','CHASSIS DE REBOQUES E SEMI-REBOQUES'),(8688,'87169090','OUTSPARTES DE REBOQUES/SEMI-REBOQUES/VEICN/AUTOPRO'),(8689,'88011000','PLANADORES E ASAS VOADORAS'),(8690,'88019000','BALOES,DIRIGIVEIS E OUTSVEICULOS AEREOS N/MOTORIZA'),(8691,'88021100','HELICOPTEROS DE PESO<=2000KG,VAZIOS'),(8692,'88021210','HELICOPTEROS DE 2000KG<PESO<=3500KG,VAZIOS'),(8693,'88021290','OUTROS HELICOPTEROS DE PESO>3500KG,VAZIOS'),(8694,'88022010','AVIOES A HELICE,ETCPESO<=2000KG,VAZIOS'),(8695,'88022022','AVIOES A TURBOELICE,ETCMULTIMOTORES,P<=2000KG,VAZI'),(8696,'88022021','AVIOES A TURBOELICE,ETCMONOMOTORES,P<=2000KG,VAZIO'),(8697,'88022090','OUTROS AVIOES/VEICULOS AEREOS,PESO<=2000KG,VAZIOS'),(8698,'88023010','AVIOES A HELICE,ETC2000KG<PESO<=15000KG,VAZIOS'),(8699,'88023021','AVIOES A TURBOELICE,ETCMULTIMOTORES,2T<PESO<=7T,VA'),(8700,'88023029','OUTROS AVIOES A TURBOELICE,ETC7T<PESO<=15T,VAZIOS'),(8701,'88023031','AVIOES A TURBOJATO,ETC2000KG<PESO<=7000KG,VAZIOS'),(8702,'88023039','OUTSAVIOES A TURBOJATO,ETC7000KG<PESO<=15000KG,VAZ'),(8703,'88023090','OUTSAVIOES/VEICULOS AEREOS,2000KG<PESO<=15000KG,VA'),(8704,'88024090','OUTROS AVIOES/VEICULOS AEREOS,PESO>15000KG,VAZIOS'),(8705,'88024010','AVIOES A TURBOELICE,ETCPESO>15000KG,VAZIOS'),(8706,'88026000','VEICULOS ESPACIAIS E SEUS VEICULOS DE LANCAMENTO,E'),(8707,'88031000','HELICES,ROTORES E SUAS PARTES,P/VEICULOS AEREOS,ET'),(8708,'88032000','TRENS DE ATERRISSAGEM E SUAS PARTES,P/VEICAEREOS,E'),(8709,'88033000','OUTRAS PARTES P/AVIOES OU HELICOPTEROS'),(8710,'88039000','OUTRAS PARTES P/VEICULOS AEREOS/ESPACIAIS'),(8711,'88040000','PARA-QUEDAS/PARA-QUEDAS GIRATORIOS,SUAS PARTES E A'),(8712,'88051000','APARELHOS E DISPOSITP/LANCAMDE VEICAEREO,ETCPARTES'),(8713,'88052000','APARELHOS SIMULADORES DE VOO EM TERRA E SUAS PARTE'),(8714,'89011000','TRANSATLANTICOS,BARCOS DE CRUZEIRO,\"FERRY-BOATS\",E'),(8715,'89012000','NAVIOS-TANQUE'),(8716,'89013000','BARCOS FRIGORIFICOS,EXCOS NAVIOS-TANQUE'),(8717,'89019000','OUTSEMBARCACOES P/TRANSPMERCADORIAS OU PESSOAS/MER'),(8718,'89020090','OUTROS BARCOS DE PESCA,NAVIOS-FABRICAS,ETC'),(8719,'89020010','BARCOS DE PESCA,NAVIOS-FABRICAS,ETCCOMPRIMENTO>=35'),(8720,'89031000','BARCOS INFLAVEIS'),(8721,'89039100','BARCOS A VELA,MESMO C/MOTOR AUXILIAR'),(8722,'89039200','BARCOS A MOTOR,EXCCOM MOTOR FORA-DE-BORDA'),(8723,'89039900','OUTSBARCOS/EMBARCACOES DE RECREIO/ESPORTE,INCLCANO'),(8724,'89040000','REBOCADORES E BARCOS P/EMPURRAR OUTRAS EMBARCACOES'),(8725,'89051000','DRAGAS'),(8726,'89052000','PLATAFORMAS DE PERFURACAO/EXPLORACAO,FLUTUANTES,ET'),(8727,'89059000','BARCOS-FAROIS/QUINDASTES/DOCAS/DIQUES FLUTUANTES,E'),(8728,'89060000','OUTRAS EMBARCACOES'),(8729,'89071000','BALSAS INFLAVEIS'),(8730,'89079000','OUTRAS ESTRUTURAS FLUTUANTES'),(8731,'89080000','EMBARCACOES E OUTRAS ESTRUTURAS FLUTUANTES P/DEMOL'),(8732,'90011011','FIBRAS OPTICAS,DIAMETRO DE NUCLEO<11MICRONS'),(8733,'90011019','OUTRAS FIBRAS OPTICAS'),(8734,'90011020','FEIXES E CABOS DE FIBRAS OPTICAS'),(8735,'90012000','MATERIAS POLARIZANTES,EM FOLHAS E PLACAS'),(8736,'90013000','LENTES DE CONTATO'),(8737,'90014000','LENTES DE VIDRO,P/OCULOS'),(8738,'90015000','LENTES DE OUTRAS MATERIAS,P/OCULOS'),(8739,'90019010','OUTRAS LENTES N/MONTADAS'),(8740,'90019090','PRISMAS,ESPELHOS E OUTSELEMENTOS DE OPTICA,N/MONTA'),(8741,'90021110','LENTES OBJETIVMONTADAS,P/CAMERAS FOTOGRAFPROJETOR,'),(8742,'90021120','LENTES OBJETIVAS MONTADAS,\"ZOOM\">=20,P/CAMERA TELE'),(8743,'90021190','OUTSLENTES OBJETIVMONTADAS,P/CAMERAS,APARSFOTOGRAF'),(8744,'90021900','OUTRAS LENTES OBJETIVMONTADAS'),(8745,'90022010','FILTROS POLARIZANTES,MONTADOS'),(8746,'90022090','OUTROS FILTROS OPTICOS,MONTADOS'),(8747,'90029000','OUTRAS LENTES,PRISMAS E ELEMENTOS DE OPTICA,MONTAD'),(8748,'90031100','ARMACOES DE PLASTICOS,PARA OCULOS'),(8749,'90031910','ARMACOES DE METAIS COMUNS,P/OCULOS,MESMO FOLHEADO,'),(8750,'90031990','ARMACOES DE OUTRAS MATERIAS,PARA OCULOS'),(8751,'90039010','CHARNEIRAS P/ARMACOES DE OCULOS'),(8752,'90039090','OUTRAS PARTES P/ARMACOES DE OCULOS E ARTIGOS SEMEL'),(8753,'90041000','OCULOS DE SOL'),(8754,'90049010','OCULOS P/CORRECAO'),(8755,'90049090','OUTSOCULOS P/PROTECAO OU OUTROS FINS E ARTIGOS SEM'),(8756,'90049020','OCULOS DE SEGURANCA'),(8757,'90051000','BINOCULOS'),(8758,'90058000','LUNETAS E OUTSINSTRUMENTOS DE ASTRONOMIA,SUAS ARMA'),(8759,'90059010','PARTES E ACESSDE BINOCULOS'),(8760,'90059090','PARTES E ACESSDE LUNETAS E OUTSINSTRUMDE ASTRONOMI'),(8761,'90061000','APARSFOTOGRAFP/PREPARDE CLICHES/CILINDROS DE IMPRE'),(8762,'90062000','APARSFOTOGRAFP/REGISTRO DE DOCUMEM MICROFILMES,ETC'),(8763,'90063000','APARELHOS FOTOGRAFP/FOTOGRAFIA SUBMARINA,AEREA,ETC'),(8764,'90064000','APARELHOS FOTOGRAFP/FILMES DE REVELACAO/COPIAGINST'),(8765,'90065100','APARSFOTOGRAFC/VISOR REFLEXP/PELICEM ROLOS,L<=35MM'),(8766,'90065200','OUTSAPARELHOS FOTOGRAFICOS,P/PELICULAS,EM ROLOS,L<'),(8767,'90065310','APARSFOTOGRAFDE FOCO FIXO,P/PELICULAS,EM ROLOS,L=3'),(8768,'90065320','APARSFOTOGRAFDE FOCO AJUSTAVP/PELICEM ROLOS,L=35MM'),(8769,'90065910','OUTROS APARELHOS FOTOGRAFICOS,DE FOCO FIXO'),(8770,'90065921','APARSFOTOGRAFICOS,DE FOCO AJUSTAVEL,P/NEGAT>=45MMX'),(8771,'90065929','OUTROS APARELHOS FOTOGRAFICOS,DE FOCO AJUSTAVEL'),(8772,'90066100','APARSDE TUBO DE DESCARGA,P/PRODUCAO DE LUZ-RELAMPA'),(8773,'90066200','LAMPADAS,CUBOS E SEMELHDE LUZ RELAMPAGO P/FOTOGRAF'),(8774,'90066900','OUTROS APARELHOS E DISPOSITIVOS PARA FOTOGRAFIA'),(8775,'90069190','OUTRAS PARTES E ACESSP/APARELHOS FOTOGRAFICOS'),(8776,'90069110','CORPOS P/APARELHOS FOTOGRAFICOS'),(8777,'90069900','OUTSPARTES E ACESSP/APARELHOS E DISPOSITP/FOTOGRAF'),(8778,'90071100','CAMERAS CINEMATOGRAFP/FILMES DE L<16MM OU \"DUPLO-8'),(8779,'90071900','OUTRAS CAMERAS CINEMATOGRAFICAS'),(8780,'90072010','PROJETORES CINEMATOGRAFICOS,P/FILMES DE L<16MM'),(8781,'90072090','OUTROS PROJETORES CINEMATOGRAFICOS'),(8782,'90079100','PARTES E ACESSP/CAMERAS CINEMATOGRAFICAS'),(8783,'90079200','PARTES E ACESSP/PROJETORES CINEMATOGRAFICOS'),(8784,'90081000','PROJETORES DE DIAPOSITIVOS'),(8785,'90082010','LEITORAS DE MICROFILMES'),(8786,'90082090','LEITORAS DE MICROFICHAS/OUTROS MICROFORMATOS,ETC'),(8787,'90083000','OUTROS PROJETORES DE IMAGENS FIXAS'),(8788,'90084000','APARELHOS FOTOGRAFDE AMPLIACAO OU DE REDUCAO'),(8789,'90089000','PARTES E ACESSP/APARELHOS DE PROJECAO FIXA,ETC'),(8790,'90091100','APARELHOS DE REPRODDIRETA DE FOTOCOPIA,ELETROSTATI'),(8791,'90091210','APARSDE REPRODINDIRDE FOTOCOPIA MONOCROMELETROSTAT'),(8792,'90091290','OUTSAPARELHOS DE FOTOCOPIA,ELETROSTATPROCINDIRETO'),(8793,'90092100','APARELHOS DE FOTOCOPIA,POR SISTEMA OPTICO'),(8794,'90092200','APARELHOS DE FOTOCOPIA,POR CONTATO'),(8795,'90093000','APARELHOS DE TERMOCOPIA'),(8796,'90099010','CILINDRO RECOBSELENIO P/APARSFOTOCOPIA,REPRODINDIR'),(8797,'90099090','PARTES E ACESSP/OUTSAPARELHOS DE FOTOCOPIA/TERMOCO'),(8798,'90101010','CUBAS E CUBETAS AUTOMATPROGRELETRONP/REVELPELICULA'),(8799,'90101020','AMPLIADORAS-COPIADORAS AUTOMATP/PAPEL FOTOGRAF>100'),(8800,'90101090','OUTSAPARSE MATERP/REVELAUTOMATPELICFOTOGRAFETC'),(8801,'90104900','OUTSAPARSP/PROJECAO,ETCDE TRACADOS DE CIRCUITOS,ET'),(8802,'90105090','OUTSAPARSE MATERP/LABORATFOTOGRAFCINEMATOGRAFETC'),(8803,'90105010','EQUIPAMENTO PROCESSADFOTOGRAFP/TRATAMELETRONIMAGEN'),(8804,'90104100','APARELHOS P/INSCRICAO EM DISCO (\"WAFERS\")'),(8805,'90104200','FOTORREPETIDORES'),(8806,'90106000','TELAS P/PROJECAO FOTOGRAFICA/CINEMATOGRAFICA'),(8807,'90109010','PARTES E ACESSP/APARSREVELAUTOMATPELICFOTOGRAFETC'),(8808,'90109090','PARTES E ACESSP/OUTSAPARSUTILLABORATFOTOGRAFETC'),(8809,'90111000','MICROSCOPIOS OPTICOS ESTEREOSCOPICOS'),(8810,'90112010','MICROSCOPIOS P/FOTOMICROGRAFIA'),(8811,'90112020','MICROSCOPIOS P/CINEFOTOMICROGRAFIA'),(8812,'90112030','MICROSCOPIOS P/MICROPROJECAO'),(8813,'90118090','OUTROS MICROSCOPIOS OPTICOS'),(8814,'90118010','MICROSCOPIOS OPTICOS BINOCULARES DE PLATINA MOVEL'),(8815,'90119010','PARTES E ACESSP/MICROSCOPIOS P/FOTOMICROGRAFIA,ETC'),(8816,'90119090','PARTES E ACESSP/MICROSCOPIOS OPTICOS'),(8817,'90121010','MICROSCOPIOS ELETRONICOS'),(8818,'90121090','OUTROS MICROSCOPIOS E DIFRATOGRAFOS'),(8819,'90129010','PARTES E ACESSP/MICROSCOPIOS ELETRONICOS'),(8820,'90129090','PARTES E ACESSP/OUTROS MICROSCOPIOS E DIFRATOGRAFO'),(8821,'90131090','PERISCOPIOS,LUNETAS P/MAQUINAS APARSE INSTRUMOPTIC'),(8822,'90131010','MIRAS TELESCOPICAS P/ARMAS'),(8823,'90132000','LASERS,EXCETO OS DIODOS LASER'),(8824,'90138090','OUTROS DISPOSITIVOS,APARELHOS E INSTRUMENTOS OPTIC'),(8825,'90138010','DISPOSITIVOS DE CRISTAIS LIQUIDOS (LCD)'),(8826,'90139000','PARTES E ACESSDE MIRAS TELESCOPICAS,PERISCOPIOS,ET'),(8827,'90141000','BUSSOLAS INCLAS AGULHAS DE MAREAR'),(8828,'90142010','ALTIMETROS PARA NAVEGACAO AEREA OU ESPACIAL'),(8829,'90142020','PILOTOS AUTOMATICOS P/NAVEGACAO AEREA/ESPACIAL'),(8830,'90142090','OUTSINSTRUMENTOS E APARSP/NAVEGACAO AEREA/ESPACIAL'),(8831,'90142030','INCLINOMETROS P/NAVEGACAO AEREA/ESPACIAL'),(8832,'90148090','OUTROS APARELHOS E INSTRUMENTOS P/NAVEGACAO'),(8833,'90148010','SONDAS ACUSTICAS OU DE ULTRA-SONS P/NAVEGACAO'),(8834,'90149000','PARTES E ACESSP/INSTRUMENTOS E APARELHOS P/NAVEGAC'),(8835,'90151000','TELEMETROS'),(8836,'90152010','TEODOLITOS E TAQUEOMETROS,LEITPOR PRISMA,ETCPREC=1'),(8837,'90152090','OUTROS TEODOLITOS E TAQUEOMETROS'),(8838,'90153000','NIVEIS'),(8839,'90154000','INSTRUMENTOS E APARELHOS DE FOTOGRAMETRIA'),(8840,'90158090','OUTSINSTRUMENTOS E APARSDE GEODESIA,TOPOGRAFIA,ETC'),(8841,'90158010','MOLINETES HIDROMETRICOS'),(8842,'90159010','PARTES E ACESSDE INSTRUMENTOS E APARSDE FOTOGRAMET'),(8843,'90159090','PARTES E ACESSDE INSTRUMENTOS E APARSDE GEODESIA,E'),(8844,'90160010','BALANCAS SENSIVEIS A PESOS<=02MG'),(8845,'90160090','BALANCAS SENSIVEIS A 02MG<PESOS<=50MG,COM/SEM PESO'),(8846,'90171010','MESAS E MAQUINAS DE DESENHAR,AUTOMATICAS'),(8847,'90171090','OUTRAS MESAS E MAQUINAS DE DESENHAR'),(8848,'90172000','OUTROS INSTRUMENTOS DE DESENHO,DE TRACADO OU DE CA'),(8849,'90173010','MICROMETROS (INSTRUMENTO DE MEDIDA MANUAL DE DISTA'),(8850,'90173020','PAQUIMETROS (INSTRUMENTO DE MEDIDA MANUAL DE DISTA'),(8851,'90173090','CALIBRES E SEMELHS(INSTRUMMEDIDA MANUAL DE DISTANC'),(8852,'90178090','OUTROS INSTRUMENTOS DE MEDIDA MANUAL DE DISTANCIAS'),(8853,'90178010','METROS (INSTRUMENTOS DE MEDIDA MANUAL DE DISTANCIA'),(8854,'90179010','PARTES E ACESSDE MESAS E MAQUINAS DE DESENHAR,AUTO'),(8855,'90179090','PARTES E ACESSDE OUTSINSTRUMDE DESENHO,MEDIDA,ETC'),(8856,'90181100','ELETROCARDIOGRAFOS'),(8857,'90181300','APARELHOS DE DIAGNOSTPOR VISUALIZRESSONANCIA MAGNE'),(8858,'90181990','PARTES DE APARELHOS DE ELETRODIAGNOSTICO'),(8859,'90181210','ECOGRAFOS C/ANALISE ESPECTRAL DOPPLER'),(8860,'90181290','OUTSAPARELHOS DE ELETRODIAGNOSTVARREDURA ULTRA-SON'),(8861,'90181400','APARELHOS DE CINTILOGRAFIA'),(8862,'90181910','ENDOSCOPIOS'),(8863,'90181930','CAMARAS GAMA'),(8864,'90181980','OUTROS APARELHOS DE ELETRODIAGNOSTICO'),(8865,'90182010','APARELHOS PARA CIRURGIA,QUE OPEREM POR \"LASER\"'),(8866,'90182090','OUTROS APARELHOS DE RAIOS ULTRAVIOLETA OU INFRAVER'),(8867,'90183111','SERINGAS DE PLASTICO,MESMO C/AGULHAS,CAPACIDADE<=2'),(8868,'90183119','OUTRAS SERINGAS DE PLASTICO,MESMO C/AGULHAS'),(8869,'90183190','SERINGAS DE OUTRAS MATERIAS,MESMO C/AGULHAS'),(8870,'90183220','AGULHAS PARA SUTURAS'),(8871,'90183211','AGULHAS TUBULARES DE METAL,GENGIVAIS'),(8872,'90183212','AGULHAS TUBULARES DE ACO CROMO-NIQUEL/BISEL TRIFAC'),(8873,'90183219','OUTRAS AGULHAS TUBULARES DE METAL'),(8874,'90183910','OUTRAS AGULHAS'),(8875,'90183921','SONDAS,CATETERES E CANULAS,DE BORRACHA'),(8876,'90183922','CATETER DE POLICLORETO VINILA,P/EMBOLECTOMIA ARTER'),(8877,'90183923','CATETER DE POLICLORETO VINILA,P/TERMODILUICAO'),(8878,'90183929','OUTRAS SONDAS,CATETERES E CANULAS'),(8879,'90183930','LANCETAS P/ACINACAO E CAUTERIOS'),(8880,'90183990','OUTSINSTRUMENTOS SEMELHSERINGAS,AGULHAS,CATETERES,'),(8881,'90184100','APARSDENTARIOS DE BROCAR MESMO C/OUTSEQUIPDENTARIO'),(8882,'90184911','BROCAS P/ODONTOLOGIA,DE CARBONETO DE TUNGSTENIO'),(8883,'90184912','BROCAS P/ODONTOLOGIA,DE ACO-VANADIO'),(8884,'90184919','BROCAS P/ODONTOLOGIA,DE OUTRAS MATERIAS'),(8885,'90184920','LIMAS P/ODONTOLOGIA'),(8886,'90184999','OUTROS INSTRUMENTOS E APARELHOS P/ODONTOLOGIA'),(8887,'90184930','APARELHOS OPERANDO POR \"LASER\" P/TRATAMENTO BUCAL'),(8888,'90184940','APARSOPERANDO POR PROJCINETDE PARTICP/TRATAMBUCAL'),(8889,'90184991','APARSP/DESENHO/CONSTRPECA CERAMDENTARIA,COMPUTADOR'),(8890,'90185000','INSTRUMENTOS E APARELHOS P/OFTALMOLOGIA'),(8891,'90189050','APARELHOS DE DIATERMIA'),(8892,'90189021','BISTURIS ELETRICOS'),(8893,'90189092','APARELHOS P/MEDIDA DA PRESSAO ARTERIAL'),(8894,'90189029','OUTROS BISTURIS'),(8895,'90189031','LITOTRITORES POR ONDA DE CHOQUE'),(8896,'90189039','LITOTOMOS E OUTROS LITOTRITORES'),(8897,'90189095','GRAMPOS,CLIPES,APLICADOR,EXTRATOR P/APARSMEDICINA,'),(8898,'90189091','INCUBADORA P/BEBES'),(8899,'90189040','RINS ARTIFICIAIS'),(8900,'90181920','AUDIOMETROS'),(8901,'90189010','INSTRUMENTOS E APARELHOS P/TRANSFUSAO DE SANGUE,ET'),(8902,'90189099','OUTROS INSTRUMENTOS E APARELHOS P/MEDICINA,CIRURGI'),(8903,'90189093','APARSP/TERAPIA INTRA-URETRAL P/MICROONDAS,COMPUTAD'),(8904,'90189094','ENDOCOSCOPIO'),(8905,'90191000','APARELHOS DE MECANOTERAPIA,DE MASSAGEM/DE PSICOTEC'),(8906,'90192090','APARSDE OZONOTERAPIA E OUTSDE TERAPIA RESPIRATORIA'),(8907,'90192010','APARELHOS DE OXIGENOTERAPIA'),(8908,'90192020','APARELHOS DE AEROSSOLTERAPIA'),(8909,'90192030','RESPIRATORIOS DE REANIMACAO'),(8910,'90192040','RESPIRADORES AUTOMATICOS (PULMOES DE ACO)'),(8911,'90200010','MASCARAS CONTRA GASES'),(8912,'90200090','OUTROS APARELHOS RESPIRATORIOS'),(8913,'90211110','PROTESES ARTICULARES,FEMURAIS'),(8914,'90211120','PROTESES ARTICULARES,MIOLETRICAS'),(8915,'90211190','OUTRAS PROTESES ARTICULARES'),(8916,'90211910','ARTIGOS E APARELHOS ORTOPEDICOS'),(8917,'90211920','ARTIGOS E APARELHOS PARA FRATURAS'),(8918,'90212110','DENTES ARTIFICIAIS DE ACRILICO'),(8919,'90212190','OUTROS DENTES ARTIFICIAIS EXCDE ACRILICO'),(8920,'90212900','OUTROS ARTIGOS E APARELHOS DE PROTESE DENTARIA'),(8921,'90213011','VALVULAS CARDIACAS MECANICAS'),(8922,'90213019','VALVULAS CARDIACAS EXCETO AS MECANICAS'),(8923,'90213040','PROTESES MAMARIAS NAO IMPLANTAVEIS'),(8924,'90213080','OUTROS ARTIGOS E APARELHOS DE PROTESE'),(8925,'90213020','LENTES INTRAOCULARES'),(8926,'90213030','PROTESES DE ARTERIAS VASCULARES REVESTIDAS'),(8927,'90214000','APARSP/FACILITAR A AUDICAO DE SURDOS,EXCPARTES/ACE'),(8928,'90215000','MARCA-PASSOS CARDIACOS,EXCPARTES E ACESS'),(8929,'90219091','PARTES E ACESSDE MARCA-PASSOS CARDIACOS'),(8930,'90211991','PARTES E ACESSDE ARTIGOS E APARSORTOPEDIA,ARTICULA'),(8931,'90211999','OUTSPARTES E ACESSDE PROTESES ARTICUL/APARSORTOPED'),(8932,'90213091','PARTES DE PROTESES MODULARES SUBSTMEMBROS SUPERINF'),(8933,'90213099','PARTES E ACESSDE OUTROS ARTIGOS E APARELHOS DE PRO'),(8934,'90219011','CARDIODESFIBRILADOR AUTOMATICO'),(8935,'90219019','OUTSAPARSIMPLANTORGANP/COMPENSAR DEFEITO/INCAPACID'),(8936,'90219080','OUTSAPARELHOS P/COMPENSAR DEFICIENCIAS OU ENFERMID'),(8937,'90219092','PARTES E ACESSDE APARSP/FACILITAR AUDICAO DOS SURD'),(8938,'90219099','PARTES E ACESSDE ARTIGOS/APARSP/COMPENSAR DEFICIEN'),(8939,'90221311','APARSDE RAIOS X,DE DIAGNOSTDE TOMADA MAXILAR PANOR'),(8940,'90221319','OUTROS APARELHOS DE RAIOS X,P/DIAGNOSTICO ODONTOLO'),(8941,'90221390','OUTROS APARELHOS DE RAIOS X,PARA ODONTOLOGIA'),(8942,'90221411','APARELHOS DE RAIOS X,DE DIAGNOSTP/MAMOGRAFIA'),(8943,'90221412','APARELHOS DE RAIOS X,DE DIAGNOSTP/ANGIOGRAFIA'),(8944,'90221200','APARELHOS DE TOMOGRAFIA COMPUTADORIZADA'),(8945,'90221490','OUTSAPARSDE RAIOS X,P/USO MEDICO,CIRURGICO,VETERIN'),(8946,'90221413','APARSCOMPUTADORIZDE DIAGNOSTICO,P/DENSITOMETRIA OS'),(8947,'90221419','OUTSAPARELHOS DE RAIOS X,P/DIAGNOSTMEDICO,CIRURGET'),(8948,'90221990','OUTSAPARELHOS DE RAIOS X,P/RADIOFOTOGRAFIA/RADIOTE'),(8949,'90221910','ESPECTROMETROS OU ESPECTROGRAFOS,DE RAIOS X'),(8950,'90222110','APARSDE RADIOCOBALTO (BOMBA DE COBALTO),USO MEDICO'),(8951,'90222120','APARELHOS DE GAMATERAPIA P/USO MEDICO,CIRURGICO,ET'),(8952,'90222190','OUTSAPARSDE RADIACAO ALFA/BETA/GAMA,P/USO MEDICO,E'),(8953,'90222900','OUTROS APARELHOS DE RADIACAO ALFA,BETA OU GAMA'),(8954,'90223000','TUBOS DE RAIOS X'),(8955,'90229019','OUTROS APARELHOS GERADORES DE RAIOS X'),(8956,'90229011','GERADORES DE TENSAO,P/APARSDE RAIOS X/OUTRAS RADIA'),(8957,'90229012','TELAS RADIOLOGICAS P/APARSDE RAIOS X/OUTRAS RADIAC'),(8958,'90229080','OUTROS DISPOSITIVOS GERADORES DE RAIOS X'),(8959,'90229090','PARTES E ACESSP/APARSDE RAIOS X/OUTRAS RADIACOES,E'),(8960,'90230000','INSTRUMENTOS,APARSE MODELOS P/DEMONSTRACAO ENSINO,'),(8961,'90241010','MAQSE APARSP/ENSAIOS DE TRACAO/COMPRESSAO DE METAI'),(8962,'90241020','MAQUINAS E APARELHOS P/ENSAIOS DE DUREZA DE METAIS'),(8963,'90241090','MAQUINAS E APARELHOS P/OUTROS ENSAIOS DE METAIS'),(8964,'90248011','MAQUINAS E APARELHOS P/ENSAIO DE FIOS TEXTEIS,AUTO'),(8965,'90248019','OUTRAS MAQUINAS E APARELHOS P/ENSAIOS DE TEXTEIS'),(8966,'90248020','MAQUINAS E APARSP/ENSAIOS DE PAPEIS,CARTAO,LINOLEO'),(8967,'90248090','OUTSMAQSE APARSP/ENSAIOS DE DUREZA,ETCDE MATERIAIS'),(8968,'90249000','PARTES E ACESSDE MAQSE APARSP/ENSAIOS DE DUREZA,ET'),(8969,'90251110','TERMOMETROS CLINICOS,DE LIQUIDO,DE LEITURA DIRETA'),(8970,'90251190','OUTROS TERMOMETROS E PIROMETROS,DE LIQUIDO,LEITURA'),(8971,'90251910','PIROMETROS OPTICOS'),(8972,'90251990','OUTROS TERMOMETROS E PIROMETROS'),(8973,'90258000','DENSIMETROS,AREOMETROS,HIGROMETROS E OUTSINSTRUMEN'),(8974,'90259010','PARTES E ACESSDE TERMOMETROS'),(8975,'90259090','PARTES E ACESSDE DENSIMETROS E OUTROS INSTRUMENTOS'),(8976,'90261020','INSTRUMENTOS E APARELHOS P/MEDIDA/CONTROLE DO NIVE'),(8977,'90261011','MEDIDOR-TRANSMISSOR ELETRONINDUCELETROMAGNETDE VAZ'),(8978,'90261019','OUTROS INSTRUMENTOS E APARSP/MEDIDA/CONTROLE DE VA'),(8979,'90262010','MANOMETROS'),(8980,'90262090','OUTSINSTRUMENTOS E APARSP/MEDIDA/CONTROLE DA PRESS'),(8981,'90268000','OUTSINSTRUMENTOS E APARSP/MEDIDA/CONTROLE DE LIQET'),(8982,'90269020','PARTES E ACESSP/MANOMETROS'),(8983,'90269010','PARTES E ACESSP/INSTRUME APARSMEDIDA/CONTROLE NIVE'),(8984,'90269090','PARTES E ACESSP/OUTSINSTRUME APARSDE MEDIDA/CONTRO'),(8985,'90271000','ANALISADORES DE GASES OU DE FUMACA (FUMO)'),(8986,'90272011','CROMATOGRAFOS DE FASE GASOSA'),(8987,'90272012','CROMATOGRAFOS DE FASE LIQUIDA'),(8988,'90272019','OUTROS CROMATOGRAFOS'),(8989,'90272020','APARELHOS DE ELETROFORESE'),(8990,'90273011','ESPECTROMETROS DE EMISSAO OPTICA (EMISSAO ATOMICA)'),(8991,'90278020','ESPECTROMETROS DE MASSA'),(8992,'90273021','ESPECTROFOTOMETROS DE RADIACOES UV,VISIVEIS E IV'),(8993,'90273022','ESPECTROFOTOMETROS DE ABSORCAO ATOMICA'),(8994,'90273031','ESPECTROGRAFOS DE EMISSAO OPTICA (EMISSAO ATOMICA)'),(8995,'90273039','OUTROS ESPECTROGRAFOS'),(8996,'90273019','OUTROS ESPECTROMETROS'),(8997,'90273023','ESPECTROFOTOMETROS DE EMISSAO OPTICA (EMISSAO ATOM'),(8998,'90273029','OUTROS ESPECTROFOTOMETROS'),(8999,'90274000','INDICADORES DE TEMPO DE EXPOSICAO'),(9000,'90275010','COLORIMETROS'),(9001,'90275020','FOTOMETROS'),(9002,'90275040','SACARIMETROS'),(9003,'90275030','REFRATOMETROS'),(9004,'90275090','OUTSINSTRUMENTOS E APARSQUE UTILIZRADIACOES OPTICA'),(9005,'90278030','POLAROGRAFOS'),(9006,'90278011','CALORIMETROS'),(9007,'90278012','VISCOSIMETROS'),(9008,'90278013','DENSITOMETROS'),(9009,'90278014','APARELHOS MEDIDORES DE PH'),(9010,'90278090','OUTSINSTRUMENTOS E APARSP/ANALISE/ENSAIO/MEDIDA,ET'),(9011,'90279010','MICROTOMOS'),(9012,'90279091','PARTES E ACESSP/ESPECTROMETROS DE EMISSAO OPTICA'),(9013,'90279092','PARTES E ACESSP/ESPECTROGRAFOS DE EMISSAO OPTICA'),(9014,'90279093','PARTES E ACESSP/POLAROGRAFOS'),(9015,'90279099','PARTES E ACESSP/OUTSINSTRUME APARSP/ANALISE,ETC'),(9016,'90281010','CONTADORES DE GAS NATURAL COMPRIMIDO,ELETRONICOS'),(9017,'90281090','OUTROS CONTADORES DE GASES'),(9018,'90282010','CONTADORES DE LIQUIDOS,PESO<=50KG'),(9019,'90282020','CONTADORES DE LIQUIDOS,PESO>50KG'),(9020,'90283090','OUTROS CONTADORES DE ELETRICIDADE'),(9021,'90283011','CONTADORES MONOFASICOS,P/CORRELETRALTERNADA,DIGITA'),(9022,'90283019','OUTROS CONTADORES MONOFASICOS,P/CORRELETRALTERNADA'),(9023,'90283021','CONTADORES BIFASICOS DE ELETRICIDADE,DIGITAIS'),(9024,'90283029','OUTROS CONTADORES BIFASICOS DE ELETRICIDADE'),(9025,'90283031','CONTADORES TRIFASICOS DE ELETRICIDADE,DIGITAIS'),(9026,'90283039','OUTROS CONTADORES TRIFASICOS DE ELETRICIDADE'),(9027,'90289010','PARTES E ACESSP/CONTADORES DE ELETRICIDADE'),(9028,'90289090','PARTES E ACESSP/CONTADORES DE GASES/LIQUIDOS'),(9029,'90291090','TAXIMETROS,TOTALIZADORES DE CAMINHO PERCORRIDO,ETC'),(9030,'90291010','CONTADORES DE VOLTAS OU DE PRODUCAO/HORAS DE TRABA'),(9031,'90292010','INDICADORES DE VELOCIDADE E TACOMETROS'),(9032,'90292020','ESTROBOSCOPIOS'),(9033,'90299010','PARTES E ACESSP/INDICADORES DE VELOCIDADE/TACOMETR'),(9034,'90299090','PARTES E ACESSP/OUTROS CONTADORES/ESTROBOSCOPIOS'),(9035,'90301010','MEDIDORES DE RADIOATIVIDADE'),(9036,'90301090','OUTSINSTRUMENTOS E APARSP/MEDIDA RADIACOES IONIZAN'),(9037,'90302010','OLCILOSCOPIOS CATODICOS,DIGITAIS'),(9038,'90302021','OLCILOSCOPIOS CATODICOS ANALOGICOS,FREQUENCIA>=60M'),(9039,'90302022','VETORSCOPIOS (OSCILOSCOPIOS ANALOGICOS CATODICOS)'),(9040,'90302029','OUTROS OLCILOSCOPIOS CATODICOS ANALOGICOS'),(9041,'90302030','OSCILOGRAFOS CATODICOS'),(9042,'90303100','MULTIMETROS SEM DISPOSITIVO REGISTRADOR'),(9043,'90303911','VOLTIMETROS DIGITAIS,SEM DISPOSITIVO REGISTRADOR'),(9044,'90303919','OUTROS VOLTIMETROS SEM DISPOSITIVO REGISTRADOR'),(9045,'90303921','AMPERIMETROS SEM DISPOSITREGISTRADOR,P/VEICAUTOMOV'),(9046,'90303929','OUTROS AMPERIMETROS SEM DISPOSITIVO REGISTRADOR'),(9047,'90303990','OUTROS APARELHOS E INSTRUMP/MEDIDA/CONTROLE TENSAO'),(9048,'90304010','ANALISADORES DE PROTOCOLO,PARA TELECOMUNICACAO'),(9049,'90304020','ANALISADORES DE NIVEL SELETIVO,PARA TELECOMUNICACA'),(9050,'90304030','ANALISADORES DIGITAIS DE TRANSMISSAO,P/TELECOMUNIC'),(9051,'90304090','OUTROS INSTRUMENTOS E APARELHOS P/TELECOMUNICACAO'),(9052,'90308210','INSTRUMENTOS E APARSP/TESTES DE CIRCUITOS INTEGRAD'),(9053,'90308290','OUTSINSTRUMENTOS E APARSP/MEDIDA/CONTROLE DISCOS,E'),(9054,'90308310','APARSDE TESTE DE CONTINDE CIRCUITIMPRESSO,C/DISPRE'),(9055,'90308320','APARSDE TESTE AUTOMATCIRCUITIMPRESSO,MONTC/DISPREG'),(9056,'90308330','APARSDE MEDIDA DE PARAMDE SINAIS DE TV,ETCC/DISPRE'),(9057,'90308390','OUTSINSTRUME APARSP/MEDIDA/CONTROLE ELETRC/DISPOSI'),(9058,'90308910','ANALISADORES LOGICOS DE CIRCUITOS DIGITAIS'),(9059,'90308920','ANALISADORES DE ESPECTRO DE FREQUENCIA'),(9060,'90308930','FREQUENCIMETROS'),(9061,'90308940','FASIMETROS'),(9062,'90308990','OUTROS INSTRUMENTOS E APARSP/MEDIDA/CONTROLE ELETR'),(9063,'90309010','PARTES E ACESSP/APARSDE MEDIDA,ETCRADIACAO IONIZAN'),(9064,'90309020','PARTES E ACESSP/APARSDE MEDIDA,ETCELETRSEM DISPREG'),(9065,'90309030','PARTES E ACESSP/APARSDE MEDIDA,ETCSEMICOND/DISPREG'),(9066,'90309090','PARTES E ACESSP/OSCILOSCOPIOS,OSCILOGRAFOS,ETC'),(9067,'90311000','MAQUINAS DE EQUILIBRAR PECAS MECANICAS'),(9068,'90312010','BANCOS DE ENSAIO P/MOTORES'),(9069,'90312090','OUTROS BANCOS DE ENSAIO,EXCP/MOTORES'),(9070,'90313000','PROJETORES DE PERFIS'),(9071,'90314100','INSTRUMENTOS E APARSOPTICOS,P/CONTROLE DE DISCOS,E'),(9072,'90314900','OUTROS INSTRUMENTOS E APARELHOS OPTICOS'),(9073,'90318011','DINAMOMETROS'),(9074,'90318012','RUGOSIMETROS'),(9075,'90318020','MAQUINAS P/MEDICAO TRIDIMENSIONAL'),(9076,'90318030','METROS PADROES'),(9077,'90318090','OUTROS INSTRUMENTOS,APARELHOS E MAQSDE MEDIDA/CONT'),(9078,'90318040','APARSDIGITAIS UTILEM AUTOMOVEIS (COMPUTADOR DE BOR'),(9079,'90318050','APARELHOS PARA ANALISE DE TEXTEIS,COMPUTADORIZADOS'),(9080,'90318060','CELULAS DE CARGA'),(9081,'90319010','PARTES E ACESSP/BANCOS DE ENSAIO'),(9082,'90319090','PARTES E ACESSP/OUTROS INSTRUME APARSMEDIDA/CONTRO'),(9083,'90321010','TERMOSTATOS AUTOMATICOS,DE EXPANSAO DE FLUIDOS'),(9084,'90321090','OUTROS TERMOSTATOS AUTOMATICOS'),(9085,'90322000','MANOSTATOS AUTOMATICOS (PRESSOSTATOS)'),(9086,'90328100','INSTRUMENTOS E APARSHIDRAULICOS/PNEUMATICOS,AUTOMA'),(9087,'90328919','OUTROS REGULADORES DE VOLTAGEM,AUTOMATICOS'),(9088,'90328911','REGULADORES ELETRONICOS,DE VOLTAGEM,AUTOMATICOS'),(9089,'90328981','INSTRUMENTOS E APARELHOS AUTOMATP/CONTROLE DE PRES'),(9090,'90328982','INSTRUMENTOS E APARSAUTOMATP/CONTROLE DE TEMPERATU'),(9091,'90328984','INSTRUMENTOS E APARSAUTOMATP/CONTROLE VELOCIDMOTOR'),(9092,'90328989','OUTSINSTRUME APARSAUTOMATP/CONTROLE GRANDEZN/ELETR'),(9093,'90328921','CONTROLADORES ELETRONP/SISTANTIBLOQDE FREIO,AUTOMA'),(9094,'90328922','CONTROLADORES ELETRONP/SISTDE SUSPENSAO,AUTOMATICO'),(9095,'90328923','CONTROLADORES ELETRONP/SISTDE TRANSMISSAO,AUTOMATI'),(9096,'90328924','CONTROLADORES ELETRONP/SISTDE IGNICAO,AUTOMATICOS'),(9097,'90328925','CONTROLADORES ELETRONP/SISTDE INJECAO,AUTOMATICOS'),(9098,'90328929','OUTROS CONTROLADORES ELETRONAUTOMATP/VEICAUTOMOVEI'),(9099,'90328930','EQUIPAMENTO DIGITAL AUTOMATP/CONTROLE DE VEICFERRO'),(9100,'90328983','INSTRUMENTOS E APARELHOS AUTOMATP/CONTROLE DE UMID'),(9101,'90328990','OUTSINSTRUMENTOS E APARSAUTOMATP/REGULACAO/CONTROL'),(9102,'90329091','PARTES E ACESSP/TERMOSTATOS AUTOMATICOS'),(9103,'90329099','PARTES E ACESSP/OUTSAPARELHOS AUTOMATP/REGULACAO,E'),(9104,'90329010','CIRCUITO IMPRESSO MONTADO,P/APARSAUTOMATREGULACAO,'),(9105,'90330000','PARTES E ACESSP/OUTSMAQSAPARSINSTRUMDE OPTICA,ETC'),(9106,'91011100','RELOGIO DE PULSO,CXMETPRECFUNCELETRMOSTRMECAN'),(9107,'91011200','RELOGIO DE PULSO,CXMETPRECFUNCELETRMOSTROPTOELETR'),(9108,'91011900','OUTSRELOGIOS DE PULSO,CXDE METAL PRECETCFUNCELETR'),(9109,'91012100','RELOGIO DE PULSO,CXMETPRECETCCORDA AUTOMAT'),(9110,'91012900','OUTROS RELOGIOS DE PULSO,CXMETAL PRECETC'),(9111,'91019100','RELOGIO DE BOLSO,SEMELHCXMETPRECETCFUNCELETR'),(9112,'91019900','OUTROS RELOGIOS DE BOLSO,SEMELHCXMETAL PRECETC'),(9113,'91021110','RELOGIO DE PULSO,CXMETCOMUM,FUNCELETRMOSTRMECAN'),(9114,'91021190','OUTROS RELOGIOS DE PULSO,FUNCELETRMOSTRMECAN'),(9115,'91021210','RELOGIO DE PULSO,CXMETCOMUM,FUNCELETRMOSTROPTOELET'),(9116,'91021220','RELOGIO DE PULSO,CXPLASTICO,FUNCELETRMOSTROPTOELET'),(9117,'91021290','OUTROS RELOGIOS DE PULSO,FUNCELETRMOSTROPTOELETR'),(9118,'91021900','OUTROS RELOGIOS DE PULSO,FUNCELETR'),(9119,'91022100','RELOGIO DE PULSO,DE CORDA AUTOMAT'),(9120,'91022900','OUTROS RELOGIOS DE PULSO'),(9121,'91029100','RELOGIO DE BOLSO,SEMELHFUNCELETR'),(9122,'91029900','OUTROS RELOGIOS DE BOLSO,SEMELH'),(9123,'91031000','DESPERTADORES E OUTSRELOGIOS,MAQUINPEQVOLFUNCELETR'),(9124,'91039000','OUTROS DESPERTADORES/OUTROS RELOGIOS,MAQUINPEQVOL'),(9125,'91040000','RELOGIOS P/PAINEIS DE INSTRUMP/AUTOMOVEIS E OUTSVE'),(9126,'91051100','OUTROS DESPERTADORES FUNCELETREXCMAQUINPEQVOL'),(9127,'91051900','OUTROS DESPERTADORES EXCMAQUINPEQVOL'),(9128,'91052100','PENDULAS/RELOGIOS PAREDE,FUNCELETREXCMAQUINPEQVOL'),(9129,'91052900','OUTRAS PENDULAS E RELOGIOS DE PAREDE,EXCMAQUINPEQV'),(9130,'91059100','OUTSAPARSDE RELOJOARIA,FUNCELETREXCMAQUINPEQVOL'),(9131,'91059900','OUTSAPARSDE RELOJOARIA,EXCC/MAQUINISMO DE PEQVOLUM'),(9132,'91061000','RELOGIOS DE PONTO,RELOGDATADORES E CONTADORES DE H'),(9133,'91062000','PARQUIMETROS'),(9134,'91069000','OUTROS APARELHOS DE CONTROLE/CONTADORES DE TEMPO,E'),(9135,'91070010','INTERRUPTORES HORARIOS'),(9136,'91070090','OUTSAPARSP/ACIONAR MECANISMO EM TEMPO DETERMINADO,'),(9137,'91081110','MAQUINISMO MONTADO P/RELOGPULSO,FUNCELETRMOSTRMECA'),(9138,'91081190','MAQUINISMO MONTADO P/OUTSRELOGPEQVOLFELETRMMECAN'),(9139,'91081200','MAQUINISMO MONTADO P/RELOGPULSO,FUNCELETRMOSTROPTO'),(9140,'91081900','MAQUINISMO MONTADO P/OUTSRELOGPEQVOLFELETRMOPTOE'),(9141,'91082000','MAQUINISMO MONTADO P/RELOGIO PEQVOLDE CORDA AUTOMA'),(9142,'91089100','OUTROS MAQUINISMOS MONTADOS MED<=338MM,P/OUTSRELOG'),(9143,'91089900','OUTSMAQUINISMOS MONTADOS PEQVOLCOMPLP/OUTSRELOGIOS'),(9144,'91091100','MAQUINISMO MONTADO EXCPEQVOLP/DESPERTADOR,FUNCELET'),(9145,'91091900','MAQUINISMO MONTADO EXCPEQVOLP/OUTSRELOGFUNCELETR'),(9146,'91099000','MAQUINISMO MONTADO EXCPEQVOLP/OUTSAPARSRELOJOARIA'),(9147,'91101110','MAQUINISMO N/MONTADO COMPLP/RELOGIO DE PULSO,BOLSO'),(9148,'91101190','MAQUINISMO N/MONTADO COMPLP/OUTROS RELOGIOS DE PEQ'),(9149,'91101200','MAQUINISMO MONTADO INCOMPLP/APARSRELOJOARIA PEQVOL'),(9150,'91101900','ESBOCOS DE MAQUINISMOS P/APARSRELOJOARIA DE PEQVOL'),(9151,'91109000','MAQUINISMO N/MONTADO COMPLP/APARSRELOJOAREXCPEQVOL'),(9152,'91111000','CAIXAS P/RELOGIO DE PULSO/BOLSO,DE METAL PRECIOSO,'),(9153,'91112010','CAIXAS P/RELOGIO DE PULSO/BOLSO,DE LATAO,EM ESBOCO'),(9154,'91112090','CAIXAS P/RELOGIO DE PULSO/BOLSO,DE OUTROS METAIS C'),(9155,'91118000','CAIXAS P/RELOGIO DE PULSO/BOLSO,DE OUTRAS MATERIAS'),(9156,'91119090','OUTRAS PARTES P/CAIXA DE RELOGIO DE PULSO/BOLSO'),(9157,'91119010','FUNDOS P/CAIXA DE RELOGIO DE PULSO/BOLSO,DE METAL '),(9158,'91121000','CAIXAS E SEMELHP/APARELHOS DE RELOJOARIA,DE METAL'),(9159,'91128000','CAIXAS E SEMELHP/APARSDE RELOJOARIA,DE OUTSMATERIA'),(9160,'91129000','PARTES P/CAIXAS E SEMELHP/APARELHOS DE RELOJOARIA'),(9161,'91131000','PULSEIRAS P/RELOGIOS,DE METAL PRECIOSO,FOLHEADO,ET'),(9162,'91132000','PULSEIRAS P/RELOGIOS,DE METAL COMUM'),(9163,'91139000','PULSEIRAS P/RELOGIOS,DE OUTSMATERE PARTES P/PULSEI'),(9164,'91141000','MOLAS P/APARELHOS DE RELOJOARIA,INCLAS ESPIRAIS'),(9165,'91142000','PEDRAS P/APARELHOS DE RELOJOARIA'),(9166,'91143000','QUADRANTES P/APARELHOS DE RELOJOARIA'),(9167,'91144000','PLATINAS E PONTES P/APARELHOS DE RELOJOARIA'),(9168,'91149010','COROAS P/APARELHOS DE RELOJOARIA'),(9169,'91149020','PONTEIROS P/APARELHOS DE RELOJOARIA'),(9170,'91149030','HASTES P/APARELHOS DE RELOJOARIA'),(9171,'91149040','BASCULAS P/APARELHOS DE RELOJOARIA'),(9172,'91149050','EIXOS E PINHOES P/APARELHOS DE RELOJOARIA'),(9173,'91149060','RODAS P/APARELHOS DE RELOJOARIA'),(9174,'91149070','ROTORES P/APARELHOS DE RELOJOARIA'),(9175,'91149090','OUTRAS PARTES E ACESSP/APARELHOS DE RELOJOARIA'),(9176,'92011000','PIANOS VERTICAIS'),(9177,'92012000','PIANOS DE CAUDA'),(9178,'92019000','OUTROS PIANOS,CRAVOS E OUTSINSTRUMDE CORDAS,C/TECL'),(9179,'92021000','INSTRUMENTOS MUSICAIS DE CORDAS,TOCADOS C/AUXILIO '),(9180,'92029000','OUTROS INSTRUMENTOS MUSICAIS DE CORDAS'),(9181,'92030000','ORGAOS DE TUBOS E DE TECLADO,HARMONIOS E INSTRUMSE'),(9182,'92041000','ACORDEOES E INSTRUMENTOS SEMELHANTES'),(9183,'92042000','HARMONICAS (GAITAS) DE BOCA'),(9184,'92051000','INSTRUMENTOS MUSICAIS DE SOPRO DENOMINADOS \"METAIS'),(9185,'92059000','OUTROS INSTRUMENTOS MUSICAIS DE SOPRO'),(9186,'92060000','INSTRUMENTOS MUSICAIS DE PERCUSSAO (TAMBORES,ETC)'),(9187,'92071010','SINTETIZADORES (INSTRUMENTOS MUSICAIS DE TECLADO)'),(9188,'92071090','OUTROS INSTRUMENTOS MUSICAIS DE TECLADO'),(9189,'92079010','GUITARRA E CONTRABAIXO'),(9190,'92079090','OUTROS INSTRUMENTOS MUSICAIS C/SOM AMPLIFPOR MEIO '),(9191,'92081000','CAIXAS DE MUSICA'),(9192,'92089000','ORGAOS MECANICOS DE FEIRA E OUTSINSTRUMENTOS MUSIC'),(9193,'92091000','METRONOMOS E DIAPASOES P/INSTRUMENTOS MUSICAIS'),(9194,'92092000','MECANISMO DE CAIXAS DE MUSICA'),(9195,'92093000','CORDAS P/INSTRUMENTOS MUSICAIS'),(9196,'92099100','PARTES E ACESSP/PIANOS'),(9197,'92099200','PARTES E ACESSP/INSTRUMENTOS MUSICAIS DE CORDAS'),(9198,'92099300','PARTES E ACESSP/ORGAOS DE TUBOS E DE TECLADOS,ETC'),(9199,'92099400','PARTES E ACESSP/INSTRUMMUSICAIS SOM AMPLIFMEIO ELE'),(9200,'92099900','PARTES E ACESSP/OUTROS INSTRUMENTOS MUSICAIS'),(9201,'93010000','ARMAS DE GUERRA,EXCREVOLVERES,PISTOLAS E ARMAS BRA'),(9202,'93020000','OUTROS REVOLVERES E PISTOLAS'),(9203,'93031000','ARMAS DE FOGO CARREGAVEIS EXCLUSIVAMENTE PELA BOCA'),(9204,'93032000','ESPINGARDAS/CARABINAS P/CACA/TIRO-AO-ALVO,CANO LIS'),(9205,'93033000','OUTRAS ESPINGARDAS/CARABINAS P/CACA/TIRO-AO-ALVO'),(9206,'93039000','OUTSARMAS DE FOGO QUE UTILDEFLAGRACAO DA POLVORA,E'),(9207,'93040000','OUTSARMAS (ESPINGARDAS/CARABINAS/PISTOLAS/CASSETET'),(9208,'93051000','PARTES E ACESSP/REVOLVERES/PISTOLAS'),(9209,'93052100','PARTES E ACESSP/ESPINGARDA/CARABINA DE FOGO,CANO L'),(9210,'93052900','PARTES E ACESSP/OUTRAS ESPINGARDAS/CARABINAS DE FO'),(9211,'93059010','PARTES E ACESSP/ARMAS DE GUERRA'),(9212,'93059090','PARTES E ACESSP/OUTRAS ARMAS'),(9213,'93061000','CARTUCHOS P/PISTOLAS DE REBITAR/EMBOLO P/ABATER AN'),(9214,'93062100','CARTUCHOS P/ESPINGARDAS/CARABINAS DE CANO LISO'),(9215,'93062900','CHUMBOS P/CARABINAS DE AR COMPRIMIDO,PARTES P/CART'),(9216,'93063000','OUTROS CARTUCHOS E SUAS PARTES'),(9217,'93069000','BOMBAS,GRANADAS,OUTSMUNICOES E PROJETEIS E SUAS PA'),(9218,'93070000','SABRES,ESPADAS,BAIONETAS,OUTSARMAS BRANCAS,SUAS PA'),(9219,'94011010','ASSENTOS EJETAVEIS,PARA VEICULOS AEREOS'),(9220,'94011090','OUTROS ASSENTOS P/VEICULOS AEREOS,EXCEJETAVEIS'),(9221,'94012000','ASSENTOS PARA VEICULOS AUTOMOVEIS'),(9222,'94013010','ASSENTOS GIRATORIOS,DE ALTURA AJUSTAVDE MADEIRA'),(9223,'94013090','ASSENTOS GIRATORIOS,DE ALTURA AJUSTAVDE OUTSMATERI'),(9224,'94014090','ASSENTOS TRANSFORMAVEIS EM CAMAS,DE OUTRAS MATERIA'),(9225,'94014010','ASSENTOS TRANSFORMAVEIS EM CAMAS,DE MADEIRA'),(9226,'94015000','ASSENTOS DE CANA,VIME,BAMBU OU DE MATERIAS SEMELHA'),(9227,'94016100','ASSENTOS ESTOFADOS,COM ARMACAO DE MADEIRA'),(9228,'94016900','OUTROS ASSENTOS C/ARMACAO DE MADEIRA'),(9229,'94017100','ASSENTOS ESTOFADOS,COM ARMACAO DE METAL'),(9230,'94017900','OUTROS ASSENTOS C/ARMACAO DE METAL'),(9231,'94018000','OUTROS ASSENTOS'),(9232,'94019010','PARTES P/ASSENTOS,DE MADEIRA'),(9233,'94019090','PARTES P/ASSENTOS,DE OUTRAS MATERIAS'),(9234,'94021000','CADEIRAS DE DENTISTA/SALOES DE CABELEIREIRO,ETCPAR'),(9235,'94029020','CAMAS DOTADAS DE MECANISMOS P/USOS CLINICOS'),(9236,'94029010','MESAS P/OPERACAO CIRURGICA'),(9237,'94029090','OUTROS MOBILIARIOS P/MEDICINA,CIRURGIA,ODONTOLOGIA'),(9238,'94031000','MOVEIS DE METAL P/ESCRITORIOS'),(9239,'94032000','OUTROS MOVEIS DE METAL'),(9240,'94033000','MOVEIS DE MADEIRA P/ESCRITORIOS'),(9241,'94034000','MOVEIS DE MADEIRA P/COZINHAS'),(9242,'94035000','MOVEIS DE MADEIRA P/QUARTOS DE DORMIR'),(9243,'94036000','OUTROS MOVEIS DE MADEIRA'),(9244,'94037000','MOVEIS DE PLASTICOS'),(9245,'94038000','MOVEIS DE OUTRAS MATERIAS,INCLROTIM,VIME,BAMBU,ETC'),(9246,'94039010','PARTES P/MOVEIS,DE MADEIRA'),(9247,'94039090','PARTES P/MOVEIS,DE OUTRAS MATERIAS'),(9248,'94041000','SUPORTE ELASTICO P/CAMAS'),(9249,'94042100','COLCHOES DE BORRACHA/PLASTICOS ALVEOLARES,MESMO RO'),(9250,'94042900','COLCHOES DE OUTRAS MATERIAS'),(9251,'94043000','SACOS DE DORMIR'),(9252,'94049000','EDEDROES,ALMOFADAS,PUFES,TRAVESSEIROS E ARTIGOS SE'),(9253,'94051091','LUSTRES E APARELHOS ILUMINELETRDE PEDRA,P/TETO/PAR'),(9254,'94051092','LUSTRES E APARELHOS ILUMINELETRDE VIDRO,P/TETO/PAR'),(9255,'94051093','LUSTRES E APARSILUMINELETRDE METCOMUM,P/TETO/PARED'),(9256,'94051010','LAMPADAS ESCIALITICAS'),(9257,'94051099','LUSTRES E APARSILUMINELETRDE OUTSMATERP/TETO/PARED'),(9258,'94052000','ABAJURES DE CABECEIRA OU DE ESCRITORIO,ETCELETRICO'),(9259,'94053000','GUIRLANDAS ELETRICAS P/ARVORES DE NATAL'),(9260,'94054010','OUTSAPARELHOS ELETRICOS DE ILUMINACAO,DE METAIS CO'),(9261,'94054090','OUTSAPARELHOS ELETRICOS DE ILUMINACAO,DE OUTSMATER'),(9262,'94055000','APARELHOS NAO ELETRICOS DE ILUMINACAO'),(9263,'94056000','ANUNCIOS,CARTAZES E PLACAS INDICADORAS,LUMINOSOS,E'),(9264,'94059100','PARTES P/APARELHOS DE ILUMINACAO,DE VIDRO'),(9265,'94059200','PARTES P/APARELHOS DE ILUMINACAO,DE PLASTICOS'),(9266,'94059900','PARTES P/APARELHOS DE ILUMINACAO,DE OUTRAS MATERIA'),(9267,'94060099','OUTRAS CONSTRUCOES PRE-FABRICADAS,DE OUTRAS MATERI'),(9268,'94060091','OUTRAS CONSTRUCOES PRE-FABRICADAS,DE MADEIRA'),(9269,'94060010','ESTUFAS PRE-FABRICADAS'),(9270,'94060092','OUTRAS CONSTRUCOES PRE-FABRICADAS,DE FERRO OU ACO'),(9271,'95010000','BRINQUEDOS DE RODAS P/CRIANCAS E CARRINHOS P/BONEC'),(9272,'95021010','BONECOS DE FIGURA HUMANA,C/MECANISMO A CORDA/ELETR'),(9273,'95021090','OUTROS BONECOS DE FIGURA HUMANA,MESMO VESTIDOS'),(9274,'95029100','VESTUARIO E SEUS ACESSETCP/BONECOS DE FIGURA HUMAN'),(9275,'95029900','OUTRAS PARTES E ACESSP/BONECOS DE FIGURA HUMANA'),(9276,'95031000','TRENS ELETRDE BRINQUEDO,INCLTRILHOS/SINAIS/OUTSACE'),(9277,'95032000','OUTSMODELOS REDUZIDOS,DE BRINQUEDO,EM CONJP/MONTAG'),(9278,'95033000','OUTROS CONJUNTOS E BRINQUEDOS,P/CONSTRUCAO'),(9279,'95034100','BRINQUEDOS C/ENCHIMENTO,DE FIGURA ANIMAL OU NAO-HU'),(9280,'95034900','OUTROS BRINQUEDOS DE FIGURA ANIMAL OU NAO HUMANA'),(9281,'95035000','INSTRUMENTOS E APARELHOS MUSICAIS,DE BRINQUEDO'),(9282,'95036000','QUEBRA-CABECAS (\"PUZZLES\")'),(9283,'95037000','OUTROS BRINQUEDOS EM SORTIDOS OU EM PANOPLIAS'),(9284,'95038010','OUTROS BRINQUEDOS E MODELOS,MOTORIZADOS,ELETRICOS'),(9285,'95038090','OUTROS BRINQUEDOS E MODELOS,MOTORIZADOS'),(9286,'95039010','OUTROS BRINQUEDOS DE FRICCAO,DE CORDA OU DE MOLA'),(9287,'95039090','OUTROS BRINQUEDOS'),(9288,'95041010','JOGOS DE VIDEO P/UTILEM APARSRECEPTORES DE TELEVIS'),(9289,'95041091','CARTUCHOS P/JOGOS DE VIDEO'),(9290,'95041099','OUTRAS PARTES E ACESSP/JOGOS DE VIDEO'),(9291,'95042000','BILHARES E SEUS ACESS'),(9292,'95043000','OUTSJOGOS ACIONADOS POR FICHA/MOEDA,EXCJOGOS BALIZ'),(9293,'95044000','CARTAS DE JOGAR'),(9294,'95049000','OUTROS ARTIGOS P/JOGOS DE SALAO'),(9295,'95051000','ARTIGOS PARA FESTAS DE NATAL'),(9296,'95059000','ARTIGOS P/OUTRAS FESTAS,CARNAVAL OU OUTSDIVERTIMEN'),(9297,'95061100','ESQUIS P/NEVE'),(9298,'95061200','FIXADORES P/ESQUIS'),(9299,'95061900','OUTROS EQUIPAMENTOS P/ESQUIAR NA NEVE'),(9300,'95062100','PRANCHAS A VELA'),(9301,'95062900','ESQUIS AQUATICOS E OUTROS EQUIPAMP/ESPORTES AQUATI'),(9302,'95063100','TACOS COMPLETOS P/GOLFE'),(9303,'95063200','BOLAS P/GOLFE'),(9304,'95063900','OUTROS EQUIPAMENTOS P/GOLFE'),(9305,'95064000','ARTIGOS E EQUIPAMENTOS P/TENIS DE MESA'),(9306,'95065100','RAQUETES DE TENIS,MESMO NAO ENCORDOADAS'),(9307,'95065900','RAQUETES DE \"BADMINTON\" E RAQUETES SEMELH'),(9308,'95066100','BOLAS P/TENIS,EXCTENIS DE MESA'),(9309,'95066200','BOLAS INFLAVEIS'),(9310,'95066900','OUTRAS BOLAS'),(9311,'95067000','PATINS P/GELO E PATINS DE RODAS,INCLFIXADOS EM CAL'),(9312,'95069100','ARTIGOS E EQUIPAMENTOS P/CULTURA FISICA,GINASTICA,'),(9313,'95069900','ARTIGOS E EQUIPAMENTOS P/OUTROS ESPORTES E PISCINA'),(9314,'95071000','VARAS (CANAS) DE PESCA'),(9315,'95072000','ANZOIS,MESMO MONTADOS EM SEDELAS (TERMINAIS)'),(9316,'95073000','MOLINETES (CARRETOS) DE PESCA'),(9317,'95079000','OUTSARTIGOS P/PESCA A LINHA,PUCAS,REDES,ISCAS,CACA'),(9318,'95080000','CARROSSEIS/BALANCOS/OUTSDIVERSOES P/PARQUES,CIRCOS'),(9319,'96011000','MARFIM TRABALHADO E OBRAS DE MARFIM'),(9320,'96019000','OUTRAS MATERIAS ANIMAIS P/ENTALHAR,TRABALHADOS E O'),(9321,'96020090','OUTSMATERIAS VEGET/MINERDE ENTALHAR,TRABALHOBRAS,E'),(9322,'96020010','CAPSULAS DE GELATINAS DIGERIVEIS'),(9323,'96020020','COLMEIAS ARTIFICIAIS'),(9324,'96031000','VASSOURAS E ESCOVAS,DE MATERIAS VEGETAIS EM FEIXES'),(9325,'96032100','ESCOVAS DE DENTES,INCLAS ESCOVAS P/DENTADURAS'),(9326,'96032900','ESCOVAS E PINCEIS DE BARBA,ESCOVAS P/CABELOS,CILIO'),(9327,'96033000','PINCEIS E ESCOVAS P/ARTISTAS,P/PRODSCOSMETICOS,ETC'),(9328,'96034090','ESCOVAS E PINCEIS P/PINTAR,CAIAR,ENVERNIZAR,ETCBON'),(9329,'96034010','ROLOS P/PINTURA'),(9330,'96035000','OUTRAS ESCOVAS CONSTITPARTES DE MAQSAPARSOU VEICUL'),(9331,'96039000','OUTRAS VASSOURAS,ESCOVAS,PINCEIS,ESPANADORES,RODOS'),(9332,'96040000','PENEIRAS E CRIVOS,MANUAIS'),(9333,'96050000','SORTIDOS DE VIAGEM,P/TOUCADOR,P/COSTURA/LIMPEZA RO'),(9334,'96061000','BOTOES DE PRESSAO E SUAS PARTES'),(9335,'96062100','BOTOES DE PLASTICO,N/RECOBDE MATERIAS TEXTEIS'),(9336,'96062200','BOTOES DE METAIS COMUNS,N/RECOBDE MATERIAS TEXTEIS'),(9337,'96062900','OUTROS BOTOES'),(9338,'96063000','FORMAS E OUTRAS PARTES DE BOTOES E ESBOCOS DE BOTO'),(9339,'96071100','FECHOS ECLER C/GRAMPOS DE METAL COMUM'),(9340,'96071900','OUTROS FECHOS ECLER'),(9341,'96072000','PARTES DE FECHOS ECLER'),(9342,'96081000','CANETAS ESFEROGRAFICAS'),(9343,'96082000','CANETAS E MARCADORES,C/PONTA DE FELTRO/PONTAS PORO'),(9344,'96083100','CANETAS P/DESENHAR C/NANQUIM'),(9345,'96083900','OUTRAS CANETAS-TINTEIRO'),(9346,'96084000','LAPISEIRAS'),(9347,'96085000','SORTIDOS DE CANETAS COM LAPISEIRAS'),(9348,'96086000','CARGAS C/PONTA,P/CANETAS ESFEROGRAFICAS'),(9349,'96089100','PENAS (APAROS) E SUAS PONTAS,P/CANETAS-TINTEIRO'),(9350,'96089990','ESTILETES P/DUPLICADORES,PORTA-LAPIS E ARTIGOS SEM'),(9351,'96089989','OUTRAS PARTES P/CANETAS,LAPISEIRAS,ETC'),(9352,'96089981','PONTAS POROSAS,P/CANETAS E MARCADORES'),(9353,'96091000','LAPIS'),(9354,'96092000','MINAS P/LAPIS/LAPISEIRAS'),(9355,'96099000','PASTEIS,CARVOES,GIZES P/ESCREVER/DESENHAR E DE ALF'),(9356,'96100000','LOUSAS E QUADROS P/ESCREVER/DESENHAR,MESMO EMOLDUR'),(9357,'96110000','CARIMBOS,DATADORES,NUMERADORES,SINETES E ARTIGOS S'),(9358,'96121011','FITAS DE PLASTICO,C/TINTA MAGNETIZP/IMPRESSAO CARA'),(9359,'96121012','FITAS DE PLASTICO,CORRETIVAS,P/MAQUINAS DE ESCREVE'),(9360,'96121013','OUTSFITAS DE PLASTICO,EM CARTUCHOS,P/MAQSDE ESCREV'),(9361,'96121090','OUTRAS FITAS IMPRESSORAS DE OUTRAS MATERIAS'),(9362,'96121019','OUTRAS FITAS IMPRESSORAS DE PLASTICO'),(9363,'96122000','ALMOFADAS DE CARIMBO'),(9364,'96131000','ISQUEIROS DE BOLSO,A GAS,N/RECARREGAVEIS'),(9365,'96132000','ISQUEIROS DE BOLSO,A GAS,RECARREGAVEIS'),(9366,'96133000','ISQUEIROS DE MESA'),(9367,'96138000','OUTROS ISQUEIROS E ACENDEDORES'),(9368,'96139000','PARTES DE ISQUEIROS E OUTROS ACENDEDORES'),(9369,'96142000','CACHIMBOS E SEUS FORNILHOS'),(9370,'96149000','PITEIRAS (BOQUILHAS) E SUAS PARTES'),(9371,'96151100','PENTES E TRAVESSAS P/CABELO,DE BORRACHA ENDUR/PLAS'),(9372,'96151900','OUTROS PENTES E TRAVESSAS P/CABELO,DE OUTROS MATER'),(9373,'96159000','GRAMPOS P/CABELO,PINCAS E OUTROS ARTIGOS P/PENTEAD'),(9374,'96161000','VAPORIZADORES DE TOUCADOR,ARMACOES E SUAS CABECAS'),(9375,'96162000','BORLAS/ESPONJAS P/POS/OUTSCOSMETICOS/PRODSDE TOUCA'),(9376,'96170010','GARRAFA TERMICA/OUTSRECIPISOTERMMONTADOS,ISOLVACUO'),(9377,'96170020','PARTES DE GARRAFAS TERMICAS E OUTROS RECIPSISOTERM'),(9378,'96180000','MANEQUIM,AUTOMATO E CENAS ANIMADAS P/VITRINE/MOSTR'),(9379,'97011000','QUADROS,PINTURAS E DESENHOS,FEITOS A MAO'),(9380,'97019000','COLAGENS E QUADROS DECORATIVOS SEMELH'),(9381,'97020000','GRAVURAS,ESTAMPAS E LITOGRAFIAS,ORIGINAIS'),(9382,'97030000','PRODUCOES ORIGINAIS DE ARTE ESTATUARIA OU DE ESCUL'),(9383,'97040000','SELOS POSTAIS,SELOS FISCAIS,MARCAS POSTAIS,ETC'),(9384,'97050000','COLECOES E ESPECIME P/COLECOES ZOOLOGICAS,BOTANICA'),(9385,'97060000','ANTIGUIDADES COM MAIS DE 100 ANOS');
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
  KEY `idx_tipo_lcto` (`id_tipo_lcto`),
  CONSTRAINT `fk_nfe_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `fk_tipo_lcto` FOREIGN KEY (`id_tipo_lcto`) REFERENCES `tipo_lancamento` (`id_tipo_lcto`)
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
  `cfop_natureza` varchar(4) DEFAULT NULL,
  `id_cst` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id_nfe_det`),
  KEY `idx_nfe_cab` (`id_nfe_cab`),
  KEY `idx_estoque` (`id_estoque`),
  KEY `idx_numero_nfe` (`numero_nfe_cab`),
  KEY `idx_cfop_nfe` (`cfop_natureza`),
  KEY `idx_nfe_cfop` (`id_cst`),
  CONSTRAINT `fk_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`),
  CONSTRAINT `fk_nfe_cfop` FOREIGN KEY (`cfop_natureza`) REFERENCES `cfop` (`cfop_natureza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nfe_cst` FOREIGN KEY (`id_cst`) REFERENCES `cst` (`id_cst`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nfedetalhe_nfecab` FOREIGN KEY (`id_nfe_cab`) REFERENCES `nfe_cab` (`id_nfe_cab`)
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`pagamento_BEFORE_INSERT` BEFORE INSERT ON `pagamento` FOR EACH ROW
BEGIN
set new.lancamento_pagamento = now();

END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`pagamento_BEFORE_UPDATE` BEFORE UPDATE ON `pagamento` FOR EACH ROW
BEGIN
set new.alterado_pagamento = now();
END */;;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfilusuario`
--

LOCK TABLES `perfilusuario` WRITE;
/*!40000 ALTER TABLE `perfilusuario` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissaoacesso`
--

LOCK TABLES `permissaoacesso` WRITE;
/*!40000 ALTER TABLE `permissaoacesso` DISABLE KEYS */;
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
  `dt_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `class_pessoa` int(1) DEFAULT NULL COMMENT '1 - Juridica , 2 - Fisica',
  `dt_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_inicio` date DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 - ativo\n2 - inativo',
  UNIQUE KEY `idpessoa_unique` (`id_pessoa`),
  UNIQUE KEY `chave2_unique` (`id_empresa`,`cnpj_cpf`),
  KEY `idx_nome` (`nome`),
  KEY `idx_pessoa_cnpjcpf` (`cnpj_cpf`),
  KEY `idx_id_atividades` (`id_atividades`),
  CONSTRAINT `fk_pessoa_atividades` FOREIGN KEY (`id_atividades`) REFERENCES `atividades` (`id_atividades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`pessoa_BEFORE_INSERT` BEFORE INSERT ON `pessoa` FOR EACH ROW
BEGIN
set new.dt_criacao = now();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`pessoa_BEFORE_UPDATE` BEFORE UPDATE ON `pessoa` FOR EACH ROW
BEGIN
set new.dt_alteracao = now();
END */;;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_conta`
--

LOCK TABLES `plano_conta` WRITE;
/*!40000 ALTER TABLE `plano_conta` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_servico`
--

LOCK TABLES `prestacao_servico` WRITE;
/*!40000 ALTER TABLE `prestacao_servico` DISABLE KEYS */;
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
  `id_ncm` int(11) unsigned NOT NULL,
  `id_pessoa` int(11) unsigned NOT NULL COMMENT 'Fabricante',
  `descricao_produto` varchar(50) DEFAULT NULL,
  `cadastro_produto` timestamp NULL DEFAULT NULL,
  `alterado_produto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `idx_subgrupo` (`id_subgrupo`),
  KEY `idx_descricao` (`descricao_produto`),
  KEY `idx_idncm` (`id_ncm`),
  KEY `idx_pessoa_fabricante` (`id_pessoa`),
  CONSTRAINT `fk_pessoa_fabricante` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `fk_produto_ncm` FOREIGN KEY (`id_ncm`) REFERENCES `ncm` (`id_ncm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_subgrupo` FOREIGN KEY (`id_subgrupo`) REFERENCES `subgrupo` (`id_subgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cadastro de produtos';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`produto_BEFORE_INSERT` BEFORE INSERT ON `produto` FOR EACH ROW
BEGIN
set new.cadastro_produto = now();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `azul_controle`.`produto_BEFORE_UPDATE` BEFORE UPDATE ON `produto` FOR EACH ROW
BEGIN
set new.alterado_produto = now();
END */;;
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
  CONSTRAINT `fk_recbto_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  CONSTRAINT `fk_tipo_lancamento` FOREIGN KEY (`id_tipo_lcto`) REFERENCES `tipo_lancamento` (`id_tipo_lcto`)
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
-- Table structure for table `referencia`
--

DROP TABLE IF EXISTS `referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencia` (
  `id_referencia` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) unsigned NOT NULL,
  `id_cor` int(10) unsigned NOT NULL,
  `id_dimensao` int(10) unsigned NOT NULL,
  `cod_ean` varchar(14) DEFAULT NULL,
  `foto` text,
  `quant_minima` decimal(5,3) DEFAULT NULL,
  `observacao` text,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = ativo, 1 = inativo',
  PRIMARY KEY (`id_referencia`),
  KEY `idx_idcor` (`id_cor`),
  KEY `idx_dimensao` (`id_dimensao`),
  KEY `idx_idproduto` (`id_produto`),
  CONSTRAINT `fk_referencia_cor` FOREIGN KEY (`id_cor`) REFERENCES `cor` (`id_cor`),
  CONSTRAINT `fk_referencia_dimensao` FOREIGN KEY (`id_dimensao`) REFERENCES `dimensao` (`id_dimensao`),
  CONSTRAINT `fk_referencia_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia`
--

LOCK TABLES `referencia` WRITE;
/*!40000 ALTER TABLE `referencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencia` ENABLE KEYS */;
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
  KEY `idx_grupo` (`id_grupo`),
  KEY `idx_subgrupo` (`cod_subgrupo`),
  CONSTRAINT `fk_subgrupo_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo`
--

LOCK TABLES `subgrupo` WRITE;
/*!40000 ALTER TABLE `subgrupo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='telefone dos clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_lancamento`
--

LOCK TABLES `tipo_lancamento` WRITE;
/*!40000 ALTER TABLE `tipo_lancamento` DISABLE KEYS */;
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
  `id_produto` int(11) unsigned NOT NULL,
  `descricao_unidade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_unidade`),
  KEY `idx_id_produto` (`id_produto`),
  CONSTRAINT `fk_unidade_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cadastro de unidade dos produtos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
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
  `cod_tipo_pgto` int(11) DEFAULT NULL,
  `data_venda_cab` date DEFAULT NULL,
  `vlr_venda_cab` double(11,2) DEFAULT NULL,
  `desconto_venda_cab` double(11,2) DEFAULT NULL,
  `total_venda_cab` double(11,2) DEFAULT NULL,
  `num_parcelas_venda_cab` int(11) DEFAULT NULL,
  `pri_venc_venda_cab` date DEFAULT NULL,
  `num_nf_venda_cab` int(11) DEFAULT NULL,
  `chave_acesso` varchar(44) DEFAULT NULL,
  `status_retorno` int(11) DEFAULT NULL,
  `descricao_retorno` varchar(255) DEFAULT NULL,
  `xml` text,
  PRIMARY KEY (`id_venda_cab`),
  KEY `idx_nfvenda_cab` (`num_nf_venda_cab`),
  KEY `idx_cliente` (`id_pessoa`),
  KEY `idx_funcionario` (`id_funcionario`),
  KEY `idx_tp_recbto_venda_cab` (`cod_tipo_pgto`),
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
  `cfop_venda` varchar(4) DEFAULT NULL,
  `id_cst` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id_venda_det`),
  KEY `idx_id_estoque` (`id_estoque`),
  KEY `idx_id_vendacab` (`id_venda_cab`),
  KEY `idx_cfop` (`cfop_venda`),
  KEY `idx_idcst` (`id_cst`),
  CONSTRAINT `fk_venda_cfop` FOREIGN KEY (`cfop_venda`) REFERENCES `cfop` (`cfop_natureza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_cst` FOREIGN KEY (`id_cst`) REFERENCES `cst` (`id_cst`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_detcab` FOREIGN KEY (`id_venda_cab`) REFERENCES `venda_cab` (`id_venda_cab`),
  CONSTRAINT `fk_venda_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`)
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
-- Dumping events for database 'azul_controle'
--

--
-- Dumping routines for database 'azul_controle'
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
/*!50003 DROP PROCEDURE IF EXISTS `classEmpresa_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classEmpresa_proc`(
  in p_opt int(1),
  in p_id_empresa int(11),
  in p_id_atividade int(11),
  in p_cnpj_cpf varchar(20),
  in p_class_empresa int(1),
  in p_razao_social varchar(100),
  in p_fantasia varchar(100),
  in p_contato varchar(100),
  in p_numero_telefone varchar(20),
  in p_tipo_telefone char(1),
  in p_endereco varchar(100),
  in p_numero_endereco varchar(10),
  in p_complemento varchar(45),
  in p_bairro varchar(45),
  in p_cidade varchar(45),
  in p_uf varchar(2),
  in p_inscr_estadual varchar(45),
  in p_inscr_municipal varchar(45),
  in p_cep_empresa varchar(10),
  in p_pais varchar(45),
  in p_e_mail varchar(100),
  in p_site varchar(100),
  in p_status char(1) 
 )
begin
  declare d_countcp int;
  declare d_ultimoid int(11);
  declare d_cnpjcpf varchar(20);
  declare d_inclusao int(1);
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

DECLARE EXIT HANDLER FOR 1052 rollback;
DECLARE EXIT HANDLER FOR 1054 rollback;
DECLARE EXIT HANDLER FOR 1062 rollback;
DECLARE EXIT HANDLER FOR 1048 rollback;
-- p_class_empresa = 1 Juridica, 2 Fisica.
  start transaction;

  set d_opt=0;
  set d_cod_grupo=0;
  set bresult = false; 
  set d_cnpjcpf = (select fun_formata_cpfcnpj(p_cnpj_cpf,p_class_empresa));
  set d_countcp = (select char_length(d_cnpjcpf));

  if (p_opt = 1) then
      set icount = (select count(0) from empresa where `cnpj_cpf`=p_cnpj_cpf);
      if (icount = 0 or icount is null) then     
         INSERT INTO `empresa`
               (`id_atividade`
               ,`cnpj_cpf`
               ,`razao_social`
               ,`fantasia`
               ,`contato`
               ,`numero_telefone`
               ,`tipo_telefone`
               ,`endereco`
               ,`numero_endereco`
               ,`complemento`
               ,`bairro`
               ,`cidade`
               ,`uf`
               ,`inscr_estadual`
               ,`inscr_municipal`
               ,`cep_empresa`
               ,`pais`
               ,`e_mail`
               ,`site`
               ,`class_empresa`
               ,`status`)
         VALUES
               (p_id_atividade
               ,p_cnpj_cpf
               ,p_razao_social
               ,p_fantasia
               ,p_contato
               ,p_numero_telefone
               ,p_tipo_telefone
               ,p_endereco
               ,p_numero_endereco
               ,p_complemento
               ,p_bairro
               ,p_cidade
               ,p_uf
               ,p_inscr_estadual
               ,p_inscr_municipal
               ,p_cep_empresa
               ,p_pais
               ,p_e_mail
               ,p_site
               ,p_class_empresa
               ,p_status);
         set d_ultimoid=(SELECT id_empresa FROM empresa WHERE id_empresa = LAST_INSERT_ID());
         INSERT INTO `local_estoque`
               (`id_empresa`
               ,`localizacao`
               ,`area`
               ,`setor`)
         VALUES
               (d_ultimoid
               ,'MATRIZ'
               ,'CENTRAL'
               ,'0');
      else
         select 'empresa já cadastrada';
         rollback;
         set d_inclusao =0;
         set p_opt = 0;
      end if;
  end if;    
commit;

END ;;
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
   in p_id_matricula int(11),
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
if (p_classe > 2) or (p_classe < 1) then
   select 'Classe Invalida';
   rollback;
   set d_inclusao =0;
   set p_opt = 0;
end if;

if (p_tppessoa = 4) and (p_id_matricula = 0 or p_id_matricula is null) then
   select 'funcionario exige numero da matricula';
   rollback;
   set d_inclusao =0;
   set p_opt = 0;
end if;

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
            ,`acesso_total`
            ,`id_matricula`)
         VALUES
            (d_idpessoa
            ,p_id_departamento
            ,upper(p_funcao_funcionario)
            ,upper(p_login_funcionario)
            ,upper(p_senha_funcionario)
            ,d_admissao_funcionario
            ,p_acesso_total
            ,p_id_matricula);           
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
         ,`acesso_total`
         ,`id_matricula`)
      VALUES
         (d_idpessoa
         ,p_id_departamento
         ,upper(p_funcao_funcionario)
         ,upper(p_login_funcionario)
         ,upper(p_senha_funcionario)
         ,d_admissao_funcionario
         ,p_acesso_total
         ,p_id_matricula);           
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

-- Dump completed on 2016-04-18 17:32:11
