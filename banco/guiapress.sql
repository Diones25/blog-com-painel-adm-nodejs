-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: guiapress
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (7,'Apple: quedas nas vendas, no lucro e na bolsa de valores preocupam','Apple:-quedas-nas-vendas-no-lucro-e-na-bolsa-de-valores-preocupam','<p><span style=\"color: #3598db;\"><em>A Apple come&ccedil;ou mal o ano de 2019. J&aacute; no dia 3 de janeiro seu valor de mercado encolheu mais de US$ 72 bilh&otilde;es. No fim do mesmo m&ecirc;s, a empresa anunciou pela primeira vez em mais de uma d&eacute;cada uma queda simult&acirc;nea de lucro e receita em um quarto trimestre.</em></span></p>\r\n<p><span style=\"color: #3598db;\"><em>Enquanto a sua receita caiu 5% em rela&ccedil;&atilde;o ao ano anterior, seu lucro teve uma queda de 0,5%. A empresa estima uma receita de pouco mais de 78 bilh&otilde;es de d&oacute;lares no primeiro trimestre fiscal do ano, valor 7% mais baixo do que o previsto anteriormente.</em></span></p>','2021-05-07 00:32:53','2021-05-07 00:32:53',4),(8,'Apple: quedas nas vendas, no lucro e na bolsa de valores preocupam','Apple:-quedas-nas-vendas-no-lucro-e-na-bolsa-de-valores-preocupam','<p><span style=\"color: #3598db;\"><em>A Apple come&ccedil;ou mal o ano de 2019. J&aacute; no dia 3 de janeiro seu valor de mercado encolheu mais de US$ 72 bilh&otilde;es. No fim do mesmo m&ecirc;s, a empresa anunciou pela primeira vez em mais de uma d&eacute;cada uma queda simult&acirc;nea de lucro e receita em um quarto trimestre.</em></span></p>\r\n<p><span style=\"color: #3598db;\"><em>Enquanto a sua receita caiu 5% em rela&ccedil;&atilde;o ao ano anterior, seu lucro teve uma queda de 0,5%. A empresa estima uma receita de pouco mais de 78 bilh&otilde;es de d&oacute;lares no primeiro trimestre fiscal do ano, valor 7% mais baixo do que o previsto anteriormente.</em></span></p>','2021-05-07 00:33:56','2021-05-07 00:33:56',4),(9,'Apple: quedas nas vendas, no lucro e na bolsa de valores preocupam','Apple:-quedas-nas-vendas-no-lucro-e-na-bolsa-de-valores-preocupam','<p><span style=\"color: #3598db;\"><em>A Apple come&ccedil;ou mal o ano de 2019. J&aacute; no dia 3 de janeiro seu valor de mercado encolheu mais de US$ 72 bilh&otilde;es. No fim do mesmo m&ecirc;s, a empresa anunciou pela primeira vez em mais de uma d&eacute;cada uma queda simult&acirc;nea de lucro e receita em um quarto trimestre.</em></span></p>\r\n<p><span style=\"color: #3598db;\"><em>Enquanto a sua receita caiu 5% em rela&ccedil;&atilde;o ao ano anterior, seu lucro teve uma queda de 0,5%. A empresa estima uma receita de pouco mais de 78 bilh&otilde;es de d&oacute;lares no primeiro trimestre fiscal do ano, valor 7% mais baixo do que o previsto anteriormente.</em></span></p>','2021-05-07 00:38:59','2021-05-07 00:38:59',4),(10,'Review anual - Os textos que você não pode perder','Review-anual-Os-textos-que-voce-nao-pode-perder','<p><span style=\"color: #2dc26b;\"><em>Retrospectiva r&aacute;pida sobre 2018, abaixo segue lista em ordem dos artigos mais relevantes do ano. V&aacute;rias pessoas escreveram para o&nbsp;<a style=\"color: #2dc26b;\" href=\"https://tableless.com.br/\">Tableless</a>&nbsp;este ano, ao total foram 113 artigos publicados este ano (por enquanto), com milhares de visualiza&ccedil;&otilde;es. Mas antes, caso prefira, voc&ecirc; pode ver a&nbsp;<a style=\"color: #2dc26b;\" href=\"https://tableless.com.br/textos-mais-acessados-2017/\">retrospectiva de 2017</a>.</em></span></p>\r\n<p><span style=\"color: #2dc26b;\"><em>Sem delongas, lhe convido para&nbsp;<a style=\"color: #2dc26b;\" href=\"https://tableless.com.br/seja-um-autor/\">ser um autor</a>, as pessoas querem te &ldquo;ouvir&rdquo;. Caso voc&ecirc; nunca escreveu, ser&aacute; um prazer ajud&aacute;-lo nesse processo :D</em></span></p>','2021-05-07 00:40:23','2021-05-07 00:40:23',4),(11,'Whindersson Nunes quebra dente após treinar sem proteção: ‘Vacilei’','Whindersson-Nunes-quebra-dente-apos-treinar-sem-protecao:-\'Vacilei\'','<p>O humorista&nbsp;<a href=\"https://jovempan.com.br/tag/Whindersson-Nunes\"><strong>Whindersson Nunes</strong></a>&nbsp;deixou os f&atilde;s chocados ao aparecer nesta sexta-feira, 22, com um dente quebrado. &ldquo;Whindersson Nunes perde tudo veja como ele est&aacute; hoje em dia&rdquo;, brincou o comediante ao postar a foto do acidente. Em seus Stories, ele contou que estava em uma aula de luta quando foi atingido. &ldquo;Paulada. Box sem prote&ccedil;&atilde;o, porque eu vacilei, levei um &lsquo;murra&ccedil;o\'&rdquo;, detalhou. Whindersson perdeu parte da sua pr&oacute;tese e seu dente verdadeiro ficou exposto.</p>\r\n<div class=\"clearfix text-center advert\">\r\n<div id=\"ad-middle1\" class=\"ads-gam\"></div>\r\n</div>\r\n<p>Em v&iacute;deo, ele mostrou que estava no dentista para reaplicar a pr&oacute;tese e ainda aproveitou para fazer uma auto-cr&iacute;tica. &ldquo;Estava devendo umas visitas para o doutor tamb&eacute;m. Quando voc&ecirc; ajeita o dente, voc&ecirc; tem que ir regularmente no dentista. Eu demorei um mont&atilde;o de tempo para vir e ainda treinei sem prote&ccedil;&atilde;o. Enfim, um irrespons&aacute;vel&rdquo;, afirmou. &ldquo;Esses famosos.. sempre se envolvendo com drogas, acabam perdendo tudo&rdquo;, comentou uma seguidora. &ldquo;Ainda bem que &eacute; dente de leite, j&aacute; t&aacute; nascendo outro ali embaixo&rdquo;, brincou outro.</p>','2021-05-07 00:43:08','2021-05-07 00:43:08',13),(12,'‘A gente não pode brincar com mais nada’, diz Batoré sobre humor nos dias de hoje','\'A-gente-nao-pode-brincar-com-mais-nada\'-diz-Batore-sobre-humor-nos-dias-de-hoje','<p>Falando sobre o humor nos dias de hoje, o humorista&nbsp;<a href=\"https://jovempan.com.br/tag/batore\"><strong>Bator&eacute;</strong>&nbsp;</a>diz que as piadas e brincadeiras est&atilde;o mais limitadas nos dias de hoje, se referindo &agrave;s falas de que os humoristas tocam em assuntos considerados delicados atualmente. O ator foi o convidado da edi&ccedil;&atilde;o desta ter&ccedil;a-feira, 12, do programa&nbsp;<a href=\"https://jovempan.com.br/tag/de-tudo-um-pouco\"><strong>De Tudo Um Pouco</strong></a>, transmitido de ter&ccedil;a &agrave; sexta no canal do<strong>&nbsp;Youtube da Jovem Pan Entretenimento</strong>&nbsp;e no&nbsp;<strong>Panflix</strong>&nbsp;&agrave;s 21h. Ao ser questionado sobre o assunto, Bator&eacute; chamou de &ldquo;frescura&rdquo; a limita&ccedil;&otilde;es com piadas sobre alguns temas. &ldquo;Voc&ecirc; v&ecirc; essa frescura que est&aacute; que a gente n&atilde;o pode brincar com mais nada. Tudo &eacute; racismo, tudo &eacute; n&atilde;o sei o que. Que frescura. Isso &eacute; pra acabar com o humor&rdquo;, explicou o humorista.</p>','2021-05-07 00:45:47','2021-05-07 00:45:47',13),(13,'Jepsen contesta alegações de consistência de dados do MongoDB','Jepsen-contesta-alegacoes-de-consistencia-de-dados-do-MongoDB','<p>Em um artigo intitulado&nbsp;<a href=\"https://www.mongodb.com/jepsen\">MongoDB and Jepsen</a>, a empresa MongoDB afirmou que o banco de dados passou \"nos testes de seguran&ccedil;a, corre&ccedil;&atilde;o e consist&ecirc;ncia de dados mais dif&iacute;ceis do setor\". Em resposta, Jepsen publicou um artigo declarando que o MongoDB 3.6.4 havia falhado em alguns de seus testes, por&eacute;m, o&nbsp;<a href=\"http://jepsen.io/analyses/mongodb-4.2.6\">MongoDB 4.2.6 teve ainda mais problemas</a>, incluindo \"transa&ccedil;&otilde;es retro-causais\", nas quais uma transa&ccedil;&atilde;o reverte a ordem para que uma leitura possa ver o resultado de uma grava&ccedil;&atilde;o futura.</p>','2021-05-07 00:48:07','2021-05-07 00:48:07',8),(14,'Luan reconhece bom momento no Corinthians e segue acreditando em vaga na Sula: \'Tudo é possível\'','Luan-reconhece-bom-momento-no-Corinthians-e-segue-acreditando-em-vaga-na-Sula:-\'Tudo-e-possivel\'','<p>O Corinthians venceu o Sport Huancayo-PER, por 2 a 0, em Lima, pela terceira rodada da fase de grupos da Copa Sul-Americana. Al&eacute;m dos tr&ecirc;s pontos, extremamente necess&aacute;rios, o time viu mais uma grande atua&ccedil;&atilde;o de Luan, que marcou dois gols, sendo um deles um gola&ccedil;o, como j&aacute; havia feito contra o S&atilde;o Paulo. A boa fase foi reconhecida pelo meia, que ainda cr&ecirc; na classifica&ccedil;&atilde;o.... - Veja mais em https://www.uol.com.br/esporte/futebol/ultimas-noticias/lancepress/2021/05/07/luan-reconhece-bom-momento-no-corinthians-e-segue-acreditando-em-vaga-na-sula-tudo-e-possivel.htm?cmpid=copiaecola</p>','2021-05-07 00:50:57','2021-05-07 00:50:57',11),(15,'Presidente da Conmebol doidão','Presidente-da-Conmebol-doidao','<p>O plano da Conmebol de vacinar a mal&aacute;ria rsrs</p>','2021-05-07 00:52:01','2021-05-10 22:46:38',13);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Desenvolvimento Web','Desenvolvimento-Web','2021-05-03 03:32:50','2021-05-03 03:32:50'),(5,'Estrutura de Dados','Estrutura-de-Dados','2021-05-04 03:02:56','2021-05-04 03:02:56'),(8,'Banco de dados','Banco-de-dados','2021-05-04 03:04:41','2021-05-04 03:04:41'),(11,'Esporte e muito mais','Esporte-e-muito-mais','2021-05-04 03:07:46','2021-05-05 02:19:42'),(12,'Música sertaneja','Musica-sertaneja','2021-05-04 03:07:57','2021-05-05 02:19:57'),(13,'Humor','Humor','2021-05-04 03:08:21','2021-05-04 03:08:21');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pereiradiones987@gmail.com','$2a$10$Lqng3Qd46Kj0zpBckIzBuOfcp1Rn0v957te7OoFb5Da6c9OGP1PBK','2021-05-16 01:15:37','2021-05-16 01:15:37');
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

-- Dump completed on 2021-05-16 22:07:34
