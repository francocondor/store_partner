-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: bitel_ecommerce
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2-log

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('puBgks7PTk4ydnr5vfsglyiZCZHZTsnyIG73MdtM',NULL,'203.133.171.52','Mozilla/5.0 (compatible; Daum/4.1; +http://cs.daum.net/faq/15/4118.html?faqId=28966)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjVFdHN3MW05c3Y3VER5VENwZno0empmbnpYT2ZtTkhpckJydERCRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvazQtMjAxNy9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553229160),('8s73v57WMpwt97KwS6A9u4MRixiOOR9H9anzx5oK',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlRtSFYzczV0ZFlrTGNPTGYxVjFqYTBLcm4zSHJFSUJRZmloTUl0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvNTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232414),('KVKCWIEUAFu5YkObXkd6DSGbv0FmiQYbylPIYAbV',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUlIZjNiTWFvbWt2dXJiVFpNOFQ5WkxUZUpUeFhTYTFLV0dHR2lOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGF0ZWNuaWNhLzUyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232422),('SJwW10C47akXSAx0DyDCvvjuHFDlMD2FrKdyB7jK',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSndHQlhIVDM0aEpudGJXZFBoRk5UTlgyaXhteFVHU0l6R0NHUkRzMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2h1YXdlaS9wMjAtcHJvL3BvcnRhYmlsaWRhZC9pY2hpcC0xMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232426),('W2mXuOWJlXoQN85vDdlKDpoHyATFc39mYHN5kvPw',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoielFwSTNMR2JVM2NPNnRtb2NuYTI3NDlVZ29oSExtTHU1VHpaNXV5biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3AyMi9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232431),('Ir6kksEyO2xoUm4dX2W4xY1bRDkuonQonSoIG21l',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlU3bWtWTEE1WEVkSjl6VU1QaU1rV0ZjT0hLVWpiYjBUazNFVWJBVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3AyMi9wb3J0YWJpbGlkYWQvaWNoaXAtNjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232435),('3CFfQ0P8ZSCDMr5AiuL4yogwdhpwZbIHSXrvwG3g',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JJNmpxZWR6MlVyNFZuYjhzMGp1WGRiT0FSNFZZbVlXVzRvYmU2bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2h1YXdlaS9wOC1saXRlL3BvcnRhYmlsaWRhZC9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232438),('eKtOCVNd8Y7SyxkHc9liGaJIfkhfrgMXfOcH8ZnE',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnV1Q2JCWkZnS3o0bTczeVFLVU5aZ1piV3gxREFZWmtDeFg2Rm85SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3A5L3BvcnRhYmlsaWRhZC9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232440),('E2cKIoHvpWFRv4JHN1hLtxTHCg7fa5EqjtEi6Hg0',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkZBdGVEdlhTU1FTSDRQallwenZvUUljNm02Nk5zZWFMNGdqRGJsRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3kzNjBpaS9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232447),('0ZiufOmlHFgFG9rvA6bCXiGCC6S1VKsvQXjIAtBW',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidHN0ZzNPUlpDMjZNa3FSRkFKbVpqWWRTTGRoT2Vidk9aOUFtaU1ybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2xlbm92by92aWJlLWIvcG9ydGFiaWxpZGFkL2ljaGlwLTEyOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232452),('WxPqiyQUVgg56uEa9gBDFC3MsEvQZtAiJs2yP1eJ',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVhGM1NzRERwZEI0cDNRbWpqQm04anl0dnhmU2FUQU1Bd1BzTHhiTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGVub3ZvL3ZpYmUtYi9wb3J0YWJpbGlkYWQvaWNoaXAtNjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232454),('YXIb6Xj7zrq6ge34g5WzgMzB2FxLbhWLxAKuQK7v',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemxjYXozdzdTUW9FWjNFajMyamhEc0NXUUpnV0VwVUlSdUNCcjNKSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvazQtMjAxNy9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232459),('TU9RTtp63VIgzx9H6Y8drl5yzC8Z1cQaAkvqp2s6',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiakxUOVZhdWdhTmJZcEpPeWkyNHN0ZU9UWVQzS3lMNlBIU3ZIUjlsaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvc3R5bHVzLTMvcG9ydGFiaWxpZGFkL2ljaGlwLTEyOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232461),('xPFjbBzsTyJNi7AvE17lI7Mc4TMm9qu3gbepz9zl',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidzI5V0JCSU5VQnBiUDhXbGR3Vm1xQnM4dm5PWXRNU0J6YkhQMG9QOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvc3R5bHVzLTMvcG9ydGFiaWxpZGFkL2ljaGlwLTI5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232464),('F5NPRKetF2EXSDTiaPWuIP2DelsSDXsAWjJ6QtpA',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoieXR0emJxT0RVT1owcmlQMk1mdGJ3Qm9jRGhaYzZrRXNBeEEwcGxndSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvc3R5bHVzLTMvcG9ydGFiaWxpZGFkL2ljaGlwLTY5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232466),('TxixSNC1P4Nd32HUgRFch2KjJCVtbnfsSB7jc8vc',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2ZNU1V5dkhvUkd0ZU1OTUxlQmI2a0VPTjQyc3A1YXI2YlRYc0NBYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2xnL3gtcG93ZXItazIyMC9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232468),('3inw6da3XJ891jfu9nWVkSJUXwAG6YDD6h0GFRAx',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWxuTkJFdWs0RmZnaU9lbGFuUzc4V3N4elp1RGpib2Z0RWxuYVJNTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcveDIyMG0vcG9ydGFiaWxpZGFkL2ljaGlwLTY5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232470),('BCyRNK5LqEj8jjtAOVK3wGL0zlRDdVhR2BjEfQKl',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVZNODVrS1BsRjcxTTZjdEV2b294U2dlWjRiVUU1d1BwdUxCZUNHNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL21laXp1L202LW5vdGUvcG9ydGFiaWxpZGFkL2ljaGlwLTEyOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232477),('RG5XqZf9eEM1sBAhp3iucnbvjA5CpPrlvW4nAToo',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWZsd1FaVzhsNGtGbHRMOW5ONDFBT2V6UWlua0lSUGp0Y2JIYmh3aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL21laXp1L202LXBydWViYS9wb3J0YWJpbGlkYWQvaWNoaXAtOTlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232479),('UtTKj7Cl9jCfg7yyBFEtpzlQCmQu57Rif3JUaeNM',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiekxQZWVMWk9DNkRkcGc5MXY3Q25ObHlTVVlveGlRRDJIVFVJR2dtYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA5OiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvZ2FsYXh5LWo3LXByaW1lL3BvcnRhYmlsaWRhZC9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232481),('YKG6k7y9rKBG3nkWevofAGi5gQnoNFp1J4Lvdlka',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3JQZmdvTmRZVGM3a0psQkxOMEdSZTllT2lscFRSeTR2Y0JZd0hwbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAyOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvczctZWRnZS9wb3J0YWJpbGlkYWQvaWNoaXAtMTI5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232484),('eAIPem4ghCw9gfMzGZVGMUTeeqFrmJIRZg5yybHW',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGRzVXBJMkkwZUJkY3pNU1NvM29KdTdLMlg3bXZOREU5UWdZZXNLcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvczctZWRnZS9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232487),('IavRmYjfMtTYnbEEonkoJeqVL7VCFVjreGZomVpK',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXIzTk82VzdmcndsbHJJbVZVV2l5bmhsWjZJVk1KZ0hQOVVYeXZCbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvczctZWRnZS9wb3J0YWJpbGlkYWQvaWNoaXAtNjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232491),('Bhr0nd0V4UkIHYvYfLDGMAxHlZ7SYla6SUpf7ewm',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0YzMDZpOXhMMnRBWW5jaTVpZHFWRE9lNkRQNUdzeFJ0eXVvY2VaVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vc2Ftc3VuZy9zNy9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232493),('U5x6Sj4hcWOh5TuiuFfXQ6J2XJqTRJaqM48YG8Js',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUR3bmpjV25TOUZvVW5GZTNGdEd6aFgzNDRtZEJKaUdFbzNOdmM2SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDIwLXByby9iLXZveiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232495),('5fR95xwwJtyssBkQoHi1fA9IiEW3VsZjdCjtoRGV',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidm04WFdweW90SXRGM29tUzFZajFtN3RsSDZtUEJDWkFHR041YnJpRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDIwLXByby9iaWZyaS01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232497),('Lu6TPEhdqmsjSqjp2NmPatPa1Q206oItSEEWZoOY',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHhVOU1JZ3Z0NWtmaVVIeGllYUpMb0IzYkMzZFVCcjlyNVhwQnVsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDIyL2Itdm96Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232499),('J5Vj3k720BEYNGhvJ3UCaxoEEA3KoE4KqHC1RDs9',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlZiZURyOWx3MzdldXFTd0gzeWFHdU1tdkUzZDNhS3BmM0JaVjNtNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDIyL2JpZnJpLTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232501),('gKmuNvBOPiYzD0RiTtaYdmT8BwlzLQTdLONWtRgM',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibGNjb3BOazB0UjhHZmo2NVljOVJVZ0kwUWtsQjNqalFiYkJ0cEJodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDgtbGl0ZS9iaWZyaS01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232503),('CQ5WoZT4xFJBwDnxyaokZs7KddaAMTDfhOSszjo5',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlJkSnVVeTVhZGRoVVN4c21SeFZGQWpjajBRUFl3ZEhpU0RCSlJXeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkvcDkvYmlmcmktNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232504),('h8SOGV33mSl01bayT0dGgbslxSw9xzVKMb0UFLgg',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUhoa2N3NmFUS2czeTdob1B2QXpiUnJmREtWa2JNbHJxUThWSGNtUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9odWF3ZWkveTM2MGlpL2JpZnJpLTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232506),('fuqnWnCIK77NUg3fSbWzjAz9GJ4WgPK2Ec343JLZ',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnlUOTNqWDVrV1R4Mld0UUk2ZXpOaThaekpuNEJITk9kVFNlT05tOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9sZy9rNC0yMDE3L2JpZnJpLTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232508),('3LSBw4CJsLI77i51XA7QPu3PeKLPlDdtoCie16Tx',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkYwcXd2Q0dpdlY2eG1QREs5aW81MHI3OWQyMkp0T1VFMnJ0M1N5cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9sZy9zdHlsdXMtMy9iLXZveiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232514),('UmqsRNKI1vSLlEZm3TLxyvWTeWVheECchZ5SurDj',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoieFJXTW9MWG5Tak10amxpNnpGeUFWam9PQXgwYXdYd21LVThFazRCdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9sZy9zdHlsdXMtMy9iaWZyaS01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232516),('Nq0IZ65Pw5BurqUBbQbqDLC1koYgHkLh2l6Fr1gQ',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUQwdmtQRnBoNjN2RWtQcFFGWXhjRkZ1WWxvQWV1MFRNeFlDdHZNViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9sZy94LXBvd2VyLWsyMjAvYmlmcmktNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232518),('0Zop85pY7tpebUPRx5YHVARGjBEIuOFIpIRnAuG9',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGZTNmxVWFBxdjBXUjVLVWI3OEtOOXJCdWNXeFBNN3BBWHdPclhRTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9sZy94MjIwbS9iaWZyaS01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232520),('wZKGQzfsrjAYaNXV2wKc5IqzsbHaXDphosVx3Ouu',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1hLVUxsdUZkVjBXVFZzYWh1MklHRzZUdTZCanE3R2Rid3drRHNjUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9tZWl6dS9tNi1wcnVlYmEvYmlmcmktNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232527),('kwxSHNpb58Addzedg8Cm1P8NLC2bt2eaprLPHydU',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemxZSGhTdWM1YjRtcWVWMno2a1hPMGlieUdaNUJ5d3oyQ1hzVmp5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9zYW1zdW5nL2dhbGF4eS1qNy1wcmltZS9iaWZyaS01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553232531),('nNzrGZCOYhEpwmyjO40FmlYPOKwKSOZ3tkqLi1Bg',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0FWR2lic2RQN0Nwb1N4YUpYNHF3ajBsd3loZzhpYktnZk5UcjB6MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9zYW1zdW5nL3M3LWVkZ2UvYmlmcmktNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232533),('jCMlbav8VjiWGUiJAf96ZWKZ7zdyJOOycmRyJZyr',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2xRQXI1U2xPMEZkd0NINk5tUnNqOEVrRFNVd1lTSVZ0elJRV0tMUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9zYW1zdW5nL3M3L2JpZnJpLTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232537),('IeIWcd1S4LOtdBDZ5C07UPU2SgicLWoY4w6sgiBk',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHRxbW9KelpCMUZVeWlKSDJGdmdXMktrZG9WSDlNc2xkU3pIZTRJcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9za3kvcm9iaW4vYi12b3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553232540),('eTS1w0xqw2PMWB3Tf1hLXDXbp7WpQkRwimFZe45X',NULL,'95.216.2.253','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTR6N2c5bkRHQkNmY2x5RzBXdkhjYU9wNnBxVTVpb2puV0tMT1pqcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9za3kvcm9iaW4vYmlmcmktNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553232542),('CZVVFsIVyA70WCwXhKH6C9nKhFItooY2QKxbG35i',NULL,'216.244.66.242','Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEZQMDZHTUN1dWt6eGVGZEoxczNjaWhtQVJ5YXJjdHhwaVp4NU5rRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3AyMC1wcm8vcG9ydGFiaWxpZGFkL2ljaGlwLTEyOV85MC8xOC1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553236306),('4gDKERSYtBt79lDKqDK0VXz7hWUjqL49213sWdZQ',NULL,'66.249.75.129','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHgwTUxucENYTFZWZHBKRnhyblU5SFhqMmV0RVpOWGZYZ2dYdENRdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553243041),('k2J3jaVqqh7oSrbKma7Z2lAQf9mlW6cFtuxlp4mw',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2o0bzhJSjU0aGpmMERLVGt0YnF1bmduVDVwVk02aFF1R1p0Q3ZuYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvMTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553252598),('tFGNt9K5T1mXHxYfa5hAfZaTiv7xQOpzeMwav9TQ',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiODZnUm13d1E5UHVEcDhMd244RnJ5eTVLaWZnaE1ISlk4NWY5cjlGdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvMTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553252600),('wv7D7vMRiyViINyek6t6yfeHmufzJNk0tfjSFtcf',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2dlTnJuWXBGa1gyZ0dtZFYyZU1sSFhHRkZuemVFNUlqOXZCTjBLRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3A4LWxpdGUvbGluZWEtbnVldmEvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553252602),('hnNgPUGgk4ZbbkeejBowTgpbV45qoHg5RguA21m8',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVhUWWJhSlJtRkg4MlYxM3YxWlZ6ckRHNUh0NWp5RXlWZzRTU2NxbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vaHVhd2VpL3kzNjBpaS9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553252604),('Ki6Mqs6YyfRzceWi4jc8zfhDo77fRNhqq9KZ0Nkc',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVBvOFhYWENodFAzdGpBSlZZRkU2ZDFWMTdGY1pmTnZYTzhFT3JjUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvazQtMjAxNy9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553252606),('LpNmbVs8eAZ06Y9g98reRMXMlFYncwXv2ATBdbXj',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxsYW5DMEZ3N3g5QnpEZXN4ZFFiTWdCMkgxMjNQVkl2bFJ4WlgwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcvc3R5bHVzLTMvbGluZWEtbnVldmEvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553252607),('F101EjXQjeTgPpRfpkXtj7H2fExxTJdYasXBZNpP',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjlJd251ZEx0Tlg4RXpKVjVjWm5McE9uR0EwTU52Z2lHbGY1NFF3NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2xnL3gtcG93ZXItazIyMC9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553252610),('bqKGpBgU9wXMEhaq5C1IrlvhyAhtNDk13CnUfCzy',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoicG1qS2J5Tnd5eTRDeE9hMWh0UTRKeTNDZjlCZXNBTDFmWmZra2JkdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vbGcveDIyMG0vbGluZWEtbnVldmEvaWNoaXAtMjlfOTAtdm96LzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553252612),('7IByXVRfdSAfJXDWMqm662A0Kaaumm7Z8k5wGdCX',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXVUTVA0YUNXWHc1ZERvcFlWSTRuQ0YybFBKTllibXc5TVdQd2tyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA4OiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvZ2FsYXh5LWo3LXByaW1lL2xpbmVhLW51ZXZhL2ljaGlwLTI5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553252614),('Mj5su0TqyBp1e3iuiJ9DwVtJUTciXfElb6MmMoCX',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWt5TThEOGMwbW1VVGRGV1Z3a2hsbUN1dTA1QzhFa2V3QURTeW1YSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvczctZWRnZS9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553252616),('upzJl9RA7TKPKGOO1sYQDMZ9rRPzg5ibSoeCNGOe',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTdCbDR0U3dYd0FXU2t1RFNoUThoWEs1c1piYUw0dkp3ODJSTUJndCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vc2Ftc3VuZy9zNy9saW5lYS1udWV2YS9pY2hpcC0yOV85MC82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553252618),('6YmGBVKG3NongVXzzGrgi7sTsY0R4D1l9A9LNvz3',NULL,'95.216.38.186','Mozilla/5.0 (compatible; MJ12bot/v1.4.7; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXlOQnZvN1c1TGtLNmtoenJlMnBJblJUb0hTQ3lCN1dPeVo5NHhwSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcHJlcGFnby9zYW1zdW5nL3MyMC9iLXZveiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553252620),('Uho8ssRgSo1ew7M3AGBo3k8791Aa0k3SftkOSUBc',NULL,'66.249.75.129','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm5uTE5GckFwZVRnUG4zQ3RvTVk1cE16V1RpNVF3TlJ5bVI1bnV5OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553259425),('wfycP0AK45n1j9dJs2nlFpyZkPMJLHUgxIRysfr9',NULL,'66.249.75.129','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm9CMXJSOVB5Y2pCVnY2aG9kRTRWa0xoNW1QYkNXTXF6UkFBOTVsUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvY29uc2lkZXJhY2lvbmVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553270191),('KA0fEt5YGqkZhEa25smLz81vCYDvwxHxI99wzFZa',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzdYUmQwSlFTMG9nNjF2alJheGRoMHFMbDk0UnptdWFZR1B0dmQ0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvdGVybWlub3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553272587),('osxRPeVSitXUF2HUST3JUZWt9towy0y7D6sF3bGT',NULL,'207.180.246.175','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkVqZm0yRW93RWFJZFl0YkkwdnFCVFlWekJpU0hWSlNDU1NnQXp4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vc2Ftc3VuZy9zNy9saW5lYS1udWV2YS9pY2hpcC0yOV85MC12b3ovNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553277185),('aybV8TECul8Kzth5dGDrQGZ4igJoOJ0RSyVfxZyT',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXM4azUyQlE0aGRLbGVUZ3hUWkxhUW5GMEQwc3lEWnhjb1huNEdiaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553279237),('oGmsKo1CggrIGTOfww9SuHkBlsEILWUhvWQoWuz1',NULL,'176.9.140.208','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUExrRWl4UndReHdhN1FMVjRUcGpwcGdrYjRBc1JYdG9TQjBRaGxUeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGF0ZWNuaWNhLzcwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553282165),('ST7rLYWNBSlk9iTI8tXbjFf2pOhCvTbBOlRNefLG',NULL,'176.9.140.208','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibGM0S2Job2s2U2F3TkJvZWpwdG5ROEhGVWlhSWlxNlVodUJJZk4yTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAyOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2xlbm92by92aWJlLWIvbGluZWEtbnVldmEvaWNoaXAtMjlfOTAtdm96LzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553282168),('uckFgySrCvc87QJtXNFRxRnybWdJ6hR41ofYhLig',NULL,'176.9.140.208','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWVBN1E2TWx5TGhyME5NRWtGQWlWYno0Qm0ydlJ0MnpmNXZPRzlGNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL2xnL3N0eWx1cy0zL2xpbmVhLW51ZXZhL2ljaGlwLTI5XzkwLXZvei82LW1lc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553282170),('lFA98BlhTM1ueJCweykysGgORHzoKXGE4hiHJ8Nz',NULL,'176.9.140.208','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDRmV2ZrakZIMDB5dE5lMjZsdXY1b3VkWHlwakNIMlgzdWxvWndBZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vc2Ftc3VuZy9zMjAvcG9ydGFiaWxpZGFkL2ljaGlwLTI5XzkwLzYtbWVzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553282173),('aPbM4WMljbiUD3OfRwvNCxoMyqvhPsawQOOqvfo7',NULL,'176.9.140.208','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFBld3ZHbHlRY3AxRjFvYXpEUWpEMmNsRHZiT2tJTG93dzhuYlQ3UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA0OiJodHRwczovL2JpdGVsLXN0b3JlLmNsaWVudGVzLWZvcmNlY2xvc2UuY29tL3Bvc3RwYWdvL3NhbXN1bmcvczctZWRnZS9saW5lYS1udWV2YS9pY2hpcC0yOV85MC12b3ovNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553282174),('bE9HeE26NBsIpfjfTatAZ50V8az3YgfX70W2ffsC',NULL,'79.143.186.26','Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoia3NVV2VJNFh0V1pNS2xEdktBc3NONjdBR2dFNW9oYzVZdVNjeGVCMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvNzAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553295453),('feMBPKXKNr4ErVZy1iJ8s50FW6siN6MmA39Q4GrP',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFlnaEhqMTN1Mm9BeGdERkFNRWNRZllGakphcVN5VlIyT3NzTXV2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvNDkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553297429),('3fop469nxnD7NAonuDLerBhbnSKMGcFrRVYqQKLi',NULL,'141.8.143.165','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOElCVHJnSjVpZm1wMXhSbkdWM2R1VHJUdDU1b290SkpvZmxmcDcwRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553300829),('H0Cfk7GN6w44xZIq8cmmg35s9B6nMn7OThxs49Tz',NULL,'37.9.87.160','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzNWVzdtc2FzWFc3cFhpeEpPNzNKZHdIZTcxYUFQNDFMaDJ3YzFSQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553300829),('4Po40yMFJm4snoFFwPsmnPOwQrsDxyfbzCelC9HR',NULL,'66.249.75.129','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlBKbDZXM1E5MHJQZHRTeE4zcldpcGljZzVmMzJXSXpWbDBVVUk3TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvY29uc2lkZXJhY2lvbmVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553304183),('WReHr4YzhJM25Rjrk3r9oufaJhLEBjM6G2AoM74l',NULL,'141.8.143.165','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjd0UVJoOHhKQXFHQWRHMFVJNnJ5M0FDQXcwVjFGU0VJenFONDRTRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553309697),('7YRHPZeB4TxIvJESdja0F1wQ47DCNlhNV1OhTzRs',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE1IUGRoeWI4WGQxd3I1MlpUcVBBQUZ4em9DYnJ6THFkWE5wTVdTdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvdGVybWlub3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553310228),('Tj1h0UmSL4XrdQzg6TDCg7qFxC3C0qRw0dQTFuJ5',NULL,'66.249.75.129','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTJWWHVRVWRBMFk4ZXBVUWpSSzFsNTR1cEJwMVhLQ2hTMk9zWEFhbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553319832),('stYBaudJLi1wKMxn32eYdvgRWDvKjcomhH9SnpLW',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibHlzNDhYcFNZMGR1SFF4QUR5ZmhndEN3dW1kYUhwYWV4dGlxRWo4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvNDkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553333730),('jMJFTQQtToQ436ePiwjHpTs4Ag3VNAMCC4uovxOb',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDI3eWhGUWtQRU90ZDJaTUtJajhEdk1EcWFHaHRWZnZMOGxhRDhwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvY29uc2lkZXJhY2lvbmVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553336176),('l6MsGgmT5QugZpnxn8dF1tnTFVSFrZrrMikW4gTy',NULL,'66.249.75.131','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoicUtqSER5WGZBZm42ejlmSXN6c1J5RVM5b0pLMFY1eVlIVUNkalhENCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvdGVybWlub3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553343387),('1b1EYJPBfwx6iBKiGrhWGkCVEJxG7GazyAZpCxaX',NULL,'66.249.75.129','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHpDQWhYNEpYdXFKVHZ2U0JQNHo4QWhBUzVDdnJQV0NHTmFIYm1YciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553353636),('mirV7p9OOqPtfeMmgaDjTdLnAKJfPj3uw3Bvy1a4',NULL,'141.8.143.165','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlByTENjY3lsV09BNzdySGtXOFVHaUt3dVRqeklaSzVrSVBUZ2VwTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553409996),('i8keEQntDmAmKXwlkB2EZgbEtO3u9n5N34ct6gjC',NULL,'37.9.87.160','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0tOTlU2VnBQa254MU10WnByZlprUU9QWjFOZnhaUUFQYk4yZ1FWRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553409996),('MAWOxVZp493zXobmy4N1G9MvukSlcOd0z4oh0NpW',NULL,'66.249.79.91','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHk2dGk3aTFrcUtxQzZRQ0ptbXhGNXJuSGQxVllwZG9XNFNHVldjaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGFjb21lcmNpYWwvNjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1553423772),('eLI8BwE4ZZd9NuOfHXPxK2KZNk7BiL542UtaVKpd',NULL,'66.249.79.91','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0Q4dkdGU0hjUXB5Z2VwdXJmY0Foa29ua2gwcktuNjAzNVNMc3JYUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vZmlsZXMvZmljaGF0ZWNuaWNhLzYxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553423991),('U5zjOKeLKCzNNUrtmuoF7kCRtLs3NYzI5OvSrgW4',NULL,'190.238.28.208','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFlzekRsazJHN1BRZFlZNlhRamZEQWpGbklKUEVQVmlNQXdaWk1pQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbS9wb3N0cGFnby9zYW1zdW5nL3MxMy9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553631693),('bMFG31rCEufPAw4cK2lXfB958e2JR9yWq8NzisRX',NULL,'190.238.28.208','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoickJNdEJ2WWRBY3d6ZjVqZW5BdFNxNGxCc2o4N2szUEhQbGZaOGVDUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwOi8vYml0ZWwtc3RvcmUuY2xpZW50ZXMtZm9yY2VjbG9zZS5jb20vcG9zdHBhZ28vc2Ftc3VuZy9zMTMvcG9ydGFiaWxpZGFkL3BsYW4tZHJhZy82LW1lc2VzL2JsYWNrIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1553626062),('klgicNkKLA6uJYZl49hwjMsZstrmAzGHm3wah5mM',NULL,'190.238.28.208','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMko1R1BmcHVNRVJsajNBT1pPdllaYlQ1ODg3dUladTUwbWhCc1VscCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553631363),('CXtEKswPhWZTESoujNHhOeMHtG4iJgM0evzXCcPL',NULL,'190.238.28.208','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTVKa2lUbVE4ZnduMzRycHJJWDc5cmV3WFdTRVdFT1BTSnRJeDQ5aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553637202),('5WB0uoEUPvgqA5L0SOjSlgZPQJQ3vvMyIB19qljo',NULL,'190.238.28.208','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWROZFRjVXFpa2ppaTBWeTVlTWt4TGZnZFM1eDF3bG4xSzY0ZWZoNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTY6Imh0dHA6Ly9iaXRlbC1zdG9yZS5jbGllbnRlcy1mb3JjZWNsb3NlLmNvbS9wb3N0cGFnby9zYW1zdW5nL3MxMy9wb3J0YWJpbGlkYWQvaWNoaXAtMjlfOTAvNi1tZXNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1553641861);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_affiliation`
--

DROP TABLE IF EXISTS `tbl_affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_affiliation` (
  `affiliation_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliation_name` varchar(45) NOT NULL,
  `affiliation_slug` varchar(150) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`affiliation_id`),
  FULLTEXT KEY `indx_srch_affiliation_slug` (`affiliation_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_affiliation`
--

LOCK TABLES `tbl_affiliation` WRITE;
/*!40000 ALTER TABLE `tbl_affiliation` DISABLE KEYS */;
INSERT INTO `tbl_affiliation` VALUES (1,'Portabilidad','portabilidad',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(2,'Linea Nueva','linea-nueva',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(3,'Renueva tu Plan','renovacion',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_affiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_branch`
--

DROP TABLE IF EXISTS `tbl_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `branch_address` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_branch`
--

LOCK TABLES `tbl_branch` WRITE;
/*!40000 ALTER TABLE `tbl_branch` DISABLE KEYS */;
INSERT INTO `tbl_branch` VALUES (1,'LI1','',NULL,'2017-12-11 12:49:13','2018-09-13 16:24:31',NULL,1,NULL,NULL,1),(2,'LI2','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(3,'LI3','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(4,'LI4','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(5,'LI5','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(6,'LI6','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(7,'LI7','',NULL,'2017-12-11 12:49:13',NULL,NULL,1,NULL,NULL,1),(8,'LI8','',NULL,'2017-12-11 12:49:13','2018-10-17 11:04:10',NULL,1,NULL,NULL,0),(9,'BR_ARE','Arequipa','Cayma','2018-09-13 16:51:43','2018-09-19 15:00:33',NULL,1,NULL,NULL,1),(10,'test','test234','calle testeo','2018-10-17 11:06:44',NULL,NULL,1,NULL,NULL,1),(11,'LimaTesteo100','','Calle de las pizza','2018-11-07 14:29:53',NULL,NULL,1,NULL,NULL,1),(12,'NUeva sucursal 00232','','Calle HJH 23','2019-02-06 16:56:25',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) NOT NULL,
  `brand_slug` varchar(150) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  FULLTEXT KEY `indx_srchbrand` (`brand_name`),
  FULLTEXT KEY `indx_srch_brand_slug` (`brand_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (1,'Alcatel','alcatel',1,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(2,'Bitel','bitel',1,'2017-12-05 12:32:36','2018-11-07 11:50:31',NULL,1,NULL,NULL,0),(3,'Huawei','huawei',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(4,'Lenovo','lenovo',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(5,'LG','lg',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(6,'Samsung','samsung',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(7,'Sky','sky',1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(8,'Bitel','Bitel',1,'2018-04-05 15:19:40','2018-10-26 14:45:24',NULL,1,NULL,NULL,1),(9,'Bitel','Bitel',1,'2018-04-18 22:48:44','2018-11-07 11:50:27',NULL,1,NULL,NULL,0),(10,'Stay On','meizu',1,'2018-05-25 15:25:00','2018-10-29 15:22:39',NULL,1,NULL,NULL,1),(11,'Pruebas','pruebas',1,'2018-10-26 14:45:41','2018-11-07 11:50:24',NULL,1,NULL,NULL,0),(12,'Pruton','pruton',1,'2018-11-07 11:40:04',NULL,NULL,1,NULL,NULL,1),(13,'Venus1','venus1',1,'2018-11-07 16:52:09','2018-11-07 16:53:50',NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  `category_slug` varchar(150) DEFAULT NULL,
  `allow_variation` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`),
  FULLTEXT KEY `indx_srch_category_slug` (`category_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Equipos','equipos',1,1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(2,'Accesorios','accesorios',0,1,'2017-12-05 12:32:36',NULL,NULL,1,NULL,NULL,1),(3,'Tablets','tablets',1,1,'2018-01-10 12:00:00',NULL,NULL,1,NULL,NULL,1),(4,'Chips','chips',1,1,'2018-04-05 15:18:00',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(50) NOT NULL,
  `color_hexcode` varchar(8) DEFAULT NULL,
  `color_slug` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`color_id`),
  FULLTEXT KEY `indx_srch_color_slug` (`color_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
INSERT INTO `tbl_color` VALUES (1,'Black','000000','black','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(2,'Grey','D3D3D3','grey','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(3,'Silver','BCC6CC','silver','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(4,'Rose','FFE4E1','rose','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(5,'Titan','0C2340','titan','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(6,'j','123...','j','2018-04-24 22:50:27',NULL,NULL,1,NULL,NULL,1),(7,'Rojo','ff0000','rojo','2018-08-21 20:19:14',NULL,NULL,1,NULL,NULL,1),(8,'blanco','ffffff','blanco','2018-11-29 22:50:02',NULL,NULL,1,NULL,NULL,1),(9,'Nuevo color','223453','nuevo-color','2019-02-11 19:20:40',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contract`
--

DROP TABLE IF EXISTS `tbl_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(50) NOT NULL,
  `contract_months` int(11) NOT NULL,
  `contract_slug` varchar(150) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contract_id`),
  FULLTEXT KEY `indx_srch_contract_slug` (`contract_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contract`
--

LOCK TABLES `tbl_contract` WRITE;
/*!40000 ALTER TABLE `tbl_contract` DISABLE KEYS */;
INSERT INTO `tbl_contract` VALUES (1,'6 meses',6,'6-meses',1,'2017-12-05 12:32:36','2018-10-16 17:06:25',NULL,1,NULL,NULL,1),(2,'Sin contrato',0,'sin-contrato',1,'2018-09-05 19:14:56','2018-11-09 17:37:42',NULL,1,NULL,NULL,1),(3,'Contrato de Pre Venta',24,'contrato-de-pre-venta',0,'2018-09-05 18:11:13','2018-10-17 09:18:33',NULL,1,NULL,NULL,1),(4,'Contrato Test',30,'contrato-test',1,'2018-09-21 14:30:28','2018-10-17 09:18:36',NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_department` (
  `departament_id` int(11) NOT NULL AUTO_INCREMENT,
  `departament_name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '51',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`departament_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'AMAZONAS',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'ANCASH',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,'APURIMAC',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(4,'AREQUIPA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(5,'AYACUCHO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(6,'CAJAMARCA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(7,'CALLAO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(8,'CUSCO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(9,'HUANCAVELICA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(10,'HUANUCO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(11,'ICA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(12,'JUNIN',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(13,'LA LIBERTAD',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(14,'LAMBAYEQUE',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(15,'LIMA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(16,'LORETO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(17,'MADRE DE DIOS',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(18,'MOQUEGUA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(19,'PASCO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(20,'PIURA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(21,'PUNO',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(22,'SAN MARTIN',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(23,'TACNA',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(24,'TUMBES',167,NULL,NULL,NULL,NULL,NULL,NULL,1),(25,'UCAYALI',167,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_district`
--

DROP TABLE IF EXISTS `tbl_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `district_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`district_id`),
  KEY `fk_tbl_district_tbl_province1_idx` (`province_id`),
  KEY `fk_tbl_district_tbl_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_tbl_district_tbl_branch1` FOREIGN KEY (`branch_id`) REFERENCES `tbl_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_district_tbl_province1` FOREIGN KEY (`province_id`) REFERENCES `tbl_province` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1841 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_district`
--

LOCK TABLES `tbl_district` WRITE;
/*!40000 ALTER TABLE `tbl_district` DISABLE KEYS */;
INSERT INTO `tbl_district` VALUES (1,1,NULL,'CHACHAPOYAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(2,1,NULL,'ASUNCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(3,1,NULL,'BALSAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(4,1,NULL,'CHETO',NULL,NULL,NULL,NULL,NULL,NULL,1),(5,1,NULL,'CHILIQUIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(6,1,NULL,'CHUQUIBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(7,1,NULL,'GRANADA',NULL,NULL,NULL,NULL,NULL,NULL,1),(8,1,NULL,'HUANCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(9,1,NULL,'LA JALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(10,1,NULL,'LEIMEBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(11,1,NULL,'LEVANTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(12,1,NULL,'MAGDALENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(13,1,NULL,'MARISCAL CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(14,1,NULL,'MOLINOPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(15,1,NULL,'MONTEVIDEO',NULL,NULL,NULL,NULL,NULL,NULL,1),(16,1,NULL,'OLLEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(17,1,NULL,'QUINJALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(18,1,NULL,'SAN FRANCISCO DE DAGUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(19,1,NULL,'SAN ISIDRO DE MAINO',NULL,NULL,NULL,NULL,NULL,NULL,1),(20,1,NULL,'SOLOCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(21,1,NULL,'SONCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(22,2,NULL,'BAGUA 5/',NULL,NULL,NULL,NULL,NULL,NULL,1),(23,2,NULL,'ARAMANGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(24,2,NULL,'COPALLIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(25,2,NULL,'EL PARCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(26,2,NULL,'IMAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(27,2,NULL,'LA PECA 5/',NULL,NULL,NULL,NULL,NULL,NULL,1),(28,3,NULL,'JUMBILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(29,3,NULL,'CHISQUILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(30,3,NULL,'CHURUJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(31,3,NULL,'COROSHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(32,3,NULL,'CUISPES',NULL,NULL,NULL,NULL,NULL,NULL,1),(33,3,NULL,'FLORIDA',NULL,NULL,NULL,NULL,NULL,NULL,1),(34,3,NULL,'JAZAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(35,3,NULL,'RECTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(36,3,NULL,'SAN CARLOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(37,3,NULL,'SHIPASBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(38,3,NULL,'VALERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(39,3,NULL,'YAMBRASBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(40,4,NULL,'NIEVA 6/',NULL,NULL,NULL,NULL,NULL,NULL,1),(41,4,NULL,'EL CENEPA 6/',NULL,NULL,NULL,NULL,NULL,NULL,1),(42,4,NULL,'RIO SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(43,5,NULL,'LAMUD',NULL,NULL,NULL,NULL,NULL,NULL,1),(44,5,NULL,'CAMPORREDONDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(45,5,NULL,'COCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(46,5,NULL,'COLCAMAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(47,5,NULL,'CONILA',NULL,NULL,NULL,NULL,NULL,NULL,1),(48,5,NULL,'INGUILPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(49,5,NULL,'LONGUITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(50,5,NULL,'LONYA CHICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(51,5,NULL,'LUYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(52,5,NULL,'LUYA VIEJO',NULL,NULL,NULL,NULL,NULL,NULL,1),(53,5,NULL,'MARIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(54,5,NULL,'OCALLI',NULL,NULL,NULL,NULL,NULL,NULL,1),(55,5,NULL,'OCUMAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(56,5,NULL,'PISUQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(57,5,NULL,'PROVIDENCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(58,5,NULL,'SAN CRISTOBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(59,5,NULL,'SAN FRANCISCO DEL YESO',NULL,NULL,NULL,NULL,NULL,NULL,1),(60,5,NULL,'SAN JERONIMO',NULL,NULL,NULL,NULL,NULL,NULL,1),(61,5,NULL,'SAN JUAN DE LOPECANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(62,5,NULL,'SANTA CATALINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(63,5,NULL,'SANTO TOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(64,5,NULL,'TINGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(65,5,NULL,'TRITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(66,6,NULL,'SAN NICOLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(67,6,NULL,'CHIRIMOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(68,6,NULL,'COCHAMAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(69,6,NULL,'HUAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(70,6,NULL,'LIMABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(71,6,NULL,'LONGAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(72,6,NULL,'MARISCAL BENAVIDES',NULL,NULL,NULL,NULL,NULL,NULL,1),(73,6,NULL,'MILPUC',NULL,NULL,NULL,NULL,NULL,NULL,1),(74,6,NULL,'OMIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(75,6,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(76,6,NULL,'TOTORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(77,6,NULL,'VISTA ALEGRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(78,7,NULL,'BAGUA GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(79,7,NULL,'CAJARURO 6/',NULL,NULL,NULL,NULL,NULL,NULL,1),(80,7,NULL,'CUMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(81,7,NULL,'EL MILAGRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(82,7,NULL,'JAMALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(83,7,NULL,'LONYA GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(84,7,NULL,'YAMON',NULL,NULL,NULL,NULL,NULL,NULL,1),(85,8,NULL,'HUARAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(86,8,NULL,'COCHABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(87,8,NULL,'COLCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(88,8,NULL,'HUANCHAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(89,8,NULL,'INDEPENDENCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(90,8,NULL,'JANGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(91,8,NULL,'LA LIBERTAD',NULL,NULL,NULL,NULL,NULL,NULL,1),(92,8,NULL,'OLLEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(93,8,NULL,'PAMPAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(94,8,NULL,'PARIACOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(95,8,NULL,'PIRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(96,8,NULL,'TARICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(97,9,NULL,'AIJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(98,9,NULL,'CORIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(99,9,NULL,'HUACLLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(100,9,NULL,'LA MERCED',NULL,NULL,NULL,NULL,NULL,NULL,1),(101,9,NULL,'SUCCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(102,10,NULL,'LLAMELLIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(103,10,NULL,'ACZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(104,10,NULL,'CHACCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(105,10,NULL,'CHINGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(106,10,NULL,'MIRGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(107,10,NULL,'SAN JUAN DE RONTOY',NULL,NULL,NULL,NULL,NULL,NULL,1),(108,11,NULL,'CHACAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(109,11,NULL,'ACOCHACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(110,12,NULL,'CHIQUIAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(111,12,NULL,'ABELARDO PARDO LEZAMETA',NULL,NULL,NULL,NULL,NULL,NULL,1),(112,12,NULL,'ANTONIO RAYMONDI',NULL,NULL,NULL,NULL,NULL,NULL,1),(113,12,NULL,'AQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(114,12,NULL,'CAJACAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(115,12,NULL,'CANIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(116,12,NULL,'COLQUIOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(117,12,NULL,'HUALLANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(118,12,NULL,'HUASTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(119,12,NULL,'HUAYLLACAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(120,12,NULL,'LA PRIMAVERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(121,12,NULL,'MANGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(122,12,NULL,'PACLLON',NULL,NULL,NULL,NULL,NULL,NULL,1),(123,12,NULL,'SAN MIGUEL DE CORPANQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(124,12,NULL,'TICLLOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(125,13,NULL,'CARHUAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(126,13,NULL,'ACOPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(127,13,NULL,'AMASHCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(128,13,NULL,'ANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(129,13,NULL,'ATAQUERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(130,13,NULL,'MARCARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(131,13,NULL,'PARIAHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(132,13,NULL,'SAN MIGUEL DE ACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(133,13,NULL,'SHILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(134,13,NULL,'TINCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(135,13,NULL,'YUNGAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(136,14,NULL,'SAN LUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(137,14,NULL,'SAN NICOLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(138,14,NULL,'YAUYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(139,15,NULL,'CASMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(140,15,NULL,'BUENA VISTA ALTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(141,15,NULL,'COMANDANTE NOEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(142,15,NULL,'YAUTAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(143,16,NULL,'CORONGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(144,16,NULL,'ACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(145,16,NULL,'BAMBAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(146,16,NULL,'CUSCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(147,16,NULL,'LA PAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(148,16,NULL,'YANAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(149,16,NULL,'YUPAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(150,17,NULL,'HUARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(151,17,NULL,'ANRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(152,17,NULL,'CAJAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(153,17,NULL,'CHAVIN DE HUANTAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(154,17,NULL,'HUACACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(155,17,NULL,'HUACCHIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(156,17,NULL,'HUACHIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(157,17,NULL,'HUANTAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(158,17,NULL,'MASIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(159,17,NULL,'PAUCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(160,17,NULL,'PONTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(161,17,NULL,'RAHUAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(162,17,NULL,'RAPAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(163,17,NULL,'SAN MARCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(164,17,NULL,'SAN PEDRO DE CHANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(165,17,NULL,'UCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(166,18,NULL,'HUARMEY',NULL,NULL,NULL,NULL,NULL,NULL,1),(167,18,NULL,'COCHAPETI',NULL,NULL,NULL,NULL,NULL,NULL,1),(168,18,NULL,'CULEBRAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(169,18,NULL,'HUAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(170,18,NULL,'MALVAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(171,19,NULL,'CARAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(172,19,NULL,'HUALLANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(173,19,NULL,'HUATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(174,19,NULL,'HUAYLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(175,19,NULL,'MATO',NULL,NULL,NULL,NULL,NULL,NULL,1),(176,19,NULL,'PAMPAROMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(177,19,NULL,'PUEBLO LIBRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(178,19,NULL,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(179,19,NULL,'SANTO TORIBIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(180,19,NULL,'YURACMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(181,20,NULL,'PISCOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(182,20,NULL,'CASCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(183,20,NULL,'ELEAZAR GUZMAN BARRON',NULL,NULL,NULL,NULL,NULL,NULL,1),(184,20,NULL,'FIDEL OLIVAS ESCUDERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(185,20,NULL,'LLAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(186,20,NULL,'LLUMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(187,20,NULL,'LUCMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(188,20,NULL,'MUSGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(189,21,NULL,'OCROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(190,21,NULL,'ACAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(191,21,NULL,'CAJAMARQUILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(192,21,NULL,'CARHUAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(193,21,NULL,'COCHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(194,21,NULL,'CONGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(195,21,NULL,'LLIPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(196,21,NULL,'SAN CRISTOBAL DE RAJAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(197,21,NULL,'SAN PEDRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(198,21,NULL,'SANTIAGO DE CHILCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(199,22,NULL,'CABANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(200,22,NULL,'BOLOGNESI',NULL,NULL,NULL,NULL,NULL,NULL,1),(201,22,NULL,'CONCHUCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(202,22,NULL,'HUACASCHUQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(203,22,NULL,'HUANDOVAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(204,22,NULL,'LACABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(205,22,NULL,'LLAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(206,22,NULL,'PALLASCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(207,22,NULL,'PAMPAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(208,22,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(209,22,NULL,'TAUCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(210,23,NULL,'POMABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(211,23,NULL,'HUAYLLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(212,23,NULL,'PAROBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(213,23,NULL,'QUINUABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(214,24,NULL,'RECUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(215,24,NULL,'CATAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(216,24,NULL,'COTAPARACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(217,24,NULL,'HUAYLLAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(218,24,NULL,'LLACLLIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(219,24,NULL,'MARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(220,24,NULL,'PAMPAS CHICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(221,24,NULL,'PARARIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(222,24,NULL,'TAPACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(223,24,NULL,'TICAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(224,25,NULL,'CHIMBOTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(225,25,NULL,'CACERES DEL PERU',NULL,NULL,NULL,NULL,NULL,NULL,1),(226,25,NULL,'COISHCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(227,25,NULL,'MACATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(228,25,NULL,'MORO',NULL,NULL,NULL,NULL,NULL,NULL,1),(229,25,NULL,'NEPEÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(230,25,NULL,'SAMANCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(231,25,NULL,'SANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(232,25,NULL,'NUEVO CHIMBOTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(233,26,NULL,'SIHUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(234,26,NULL,'ACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(235,26,NULL,'ALFONSO UGARTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(236,26,NULL,'CASHAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(237,26,NULL,'CHINGALPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(238,26,NULL,'HUAYLLABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(239,26,NULL,'QUICHES',NULL,NULL,NULL,NULL,NULL,NULL,1),(240,26,NULL,'RAGASH',NULL,NULL,NULL,NULL,NULL,NULL,1),(241,26,NULL,'SAN JUAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(242,26,NULL,'SICSIBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(243,27,NULL,'YUNGAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(244,27,NULL,'CASCAPARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(245,27,NULL,'MANCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(246,27,NULL,'MATACOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(247,27,NULL,'QUILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(248,27,NULL,'RANRAHIRCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(249,27,NULL,'SHUPLUY',NULL,NULL,NULL,NULL,NULL,NULL,1),(250,27,NULL,'YANAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(251,28,NULL,'ABANCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(252,28,NULL,'CHACOCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(253,28,NULL,'CIRCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(254,28,NULL,'CURAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(255,28,NULL,'HUANIPACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(256,28,NULL,'LAMBRAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(257,28,NULL,'PICHIRHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(258,28,NULL,'SAN PEDRO DE CACHORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(259,28,NULL,'TAMBURCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(260,29,NULL,'ANDAHUAYLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(261,29,NULL,'ANDARAPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(262,29,NULL,'CHIARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(263,29,NULL,'HUANCARAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(264,29,NULL,'HUANCARAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(265,29,NULL,'HUAYANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(266,29,NULL,'KISHUARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(267,29,NULL,'PACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(268,29,NULL,'PACUCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(269,29,NULL,'PAMPACHIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(270,29,NULL,'POMACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(271,29,NULL,'SAN ANTONIO DE CACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(272,29,NULL,'SAN JERONIMO',NULL,NULL,NULL,NULL,NULL,NULL,1),(273,29,NULL,'SAN MIGUEL DE CHACCRAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(274,29,NULL,'SANTA MARIA DE CHICMO',NULL,NULL,NULL,NULL,NULL,NULL,1),(275,29,NULL,'TALAVERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(276,29,NULL,'TUMAY HUARACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(277,29,NULL,'TURPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(278,29,NULL,'KAQUIABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(279,30,NULL,'ANTABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(280,30,NULL,'EL ORO',NULL,NULL,NULL,NULL,NULL,NULL,1),(281,30,NULL,'HUAQUIRCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(282,30,NULL,'JUAN ESPINOZA MEDRANO',NULL,NULL,NULL,NULL,NULL,NULL,1),(283,30,NULL,'OROPESA',NULL,NULL,NULL,NULL,NULL,NULL,1),(284,30,NULL,'PACHACONAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(285,30,NULL,'SABAINO',NULL,NULL,NULL,NULL,NULL,NULL,1),(286,31,NULL,'CHALHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(287,31,NULL,'CAPAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(288,31,NULL,'CARAYBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(289,31,NULL,'CHAPIMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(290,31,NULL,'COLCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(291,31,NULL,'COTARUSE',NULL,NULL,NULL,NULL,NULL,NULL,1),(292,31,NULL,'HUAYLLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(293,31,NULL,'JUSTO APU SAHUARAURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(294,31,NULL,'LUCRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(295,31,NULL,'POCOHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(296,31,NULL,'SAN JUAN DE CHACÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(297,31,NULL,'SAÑAYCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(298,31,NULL,'SORAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(299,31,NULL,'TAPAIRIHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(300,31,NULL,'TINTAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(301,31,NULL,'TORAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(302,31,NULL,'YANACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(303,32,NULL,'TAMBOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(304,32,NULL,'COTABAMBAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(305,32,NULL,'COYLLURQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(306,32,NULL,'HAQUIRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(307,32,NULL,'MARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(308,32,NULL,'CHALLHUAHUACHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(309,33,NULL,'CHINCHEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(310,33,NULL,'ANCO-HUALLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(311,33,NULL,'COCHARCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(312,33,NULL,'HUACCANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(313,33,NULL,'OCOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(314,33,NULL,'ONGOY',NULL,NULL,NULL,NULL,NULL,NULL,1),(315,33,NULL,'URANMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(316,33,NULL,'RANRACANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(317,34,NULL,'CHUQUIBAMBILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(318,34,NULL,'CURPAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(319,34,NULL,'GAMARRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(320,34,NULL,'HUAYLLATI',NULL,NULL,NULL,NULL,NULL,NULL,1),(321,34,NULL,'MAMARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(322,34,NULL,'MICAELA BASTIDAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(323,34,NULL,'PATAYPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(324,34,NULL,'PROGRESO',NULL,NULL,NULL,NULL,NULL,NULL,1),(325,34,NULL,'SAN ANTONIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(326,34,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(327,34,NULL,'TURPAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(328,34,NULL,'VILCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(329,34,NULL,'VIRUNDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(330,34,NULL,'CURASCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(331,35,NULL,'AREQUIPA',NULL,'2018-09-19 15:00:44',NULL,NULL,NULL,NULL,1),(332,35,NULL,'ALTO SELVA ALEGRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(333,35,9,'CAYMA',NULL,'2018-09-19 15:08:49',NULL,NULL,NULL,NULL,1),(334,35,NULL,'CERRO COLORADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(335,35,NULL,'CHARACATO',NULL,NULL,NULL,NULL,NULL,NULL,1),(336,35,NULL,'CHIGUATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(337,35,NULL,'JACOBO HUNTER',NULL,NULL,NULL,NULL,NULL,NULL,1),(338,35,NULL,'LA JOYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(339,35,NULL,'MARIANO MELGAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(340,35,NULL,'MIRAFLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(341,35,NULL,'MOLLEBAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(342,35,NULL,'PAUCARPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(343,35,NULL,'POCSI',NULL,NULL,NULL,NULL,NULL,NULL,1),(344,35,NULL,'POLOBAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(345,35,NULL,'QUEQUEÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(346,35,NULL,'SABANDIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(347,35,NULL,'SACHACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(348,35,NULL,'SAN JUAN DE SIGUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(349,35,NULL,'SAN JUAN DE TARUCANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(350,35,NULL,'SANTA ISABEL DE SIGUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(351,35,NULL,'SANTA RITA DE SIGUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(352,35,NULL,'SOCABAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(353,35,NULL,'TIABAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(354,35,NULL,'UCHUMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(355,35,NULL,'VITOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(356,35,NULL,'YANAHUARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(357,35,NULL,'YARABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(358,35,NULL,'YURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(359,35,NULL,'JOSE LUIS BUSTAMANTE Y RIVERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(360,36,NULL,'CAMANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(361,36,NULL,'JOSE MARIA QUIMPER',NULL,NULL,NULL,NULL,NULL,NULL,1),(362,36,NULL,'MARIANO NICOLAS VALCARCEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(363,36,NULL,'MARISCAL CACERES',NULL,NULL,NULL,NULL,NULL,NULL,1),(364,36,NULL,'NICOLAS DE PIEROLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(365,36,NULL,'OCOÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(366,36,NULL,'QUILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(367,36,NULL,'SAMUEL PASTOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(368,37,NULL,'CARAVELI',NULL,NULL,NULL,NULL,NULL,NULL,1),(369,37,NULL,'ACARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(370,37,NULL,'ATICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(371,37,NULL,'ATIQUIPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(372,37,NULL,'BELLA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(373,37,NULL,'CAHUACHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(374,37,NULL,'CHALA',NULL,NULL,NULL,NULL,NULL,NULL,1),(375,37,NULL,'CHAPARRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(376,37,NULL,'HUANUHUANU',NULL,NULL,NULL,NULL,NULL,NULL,1),(377,37,NULL,'JAQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(378,37,NULL,'LOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(379,37,NULL,'QUICACHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(380,37,NULL,'YAUCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(381,38,NULL,'APLAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(382,38,NULL,'ANDAGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(383,38,NULL,'AYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(384,38,NULL,'CHACHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(385,38,NULL,'CHILCAYMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(386,38,NULL,'CHOCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(387,38,NULL,'HUANCARQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(388,38,NULL,'MACHAGUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(389,38,NULL,'ORCOPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(390,38,NULL,'PAMPACOLCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(391,38,NULL,'TIPAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(392,38,NULL,'UÑON',NULL,NULL,NULL,NULL,NULL,NULL,1),(393,38,NULL,'URACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(394,38,NULL,'VIRACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(395,39,NULL,'CHIVAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(396,39,NULL,'ACHOMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(397,39,NULL,'CABANACONDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(398,39,NULL,'CALLALLI',NULL,NULL,NULL,NULL,NULL,NULL,1),(399,39,NULL,'CAYLLOMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(400,39,NULL,'COPORAQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(401,39,NULL,'HUAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(402,39,NULL,'HUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(403,39,NULL,'ICHUPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(404,39,NULL,'LARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(405,39,NULL,'LLUTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(406,39,NULL,'MACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(407,39,NULL,'MADRIGAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(408,39,NULL,'SAN ANTONIO DE CHUCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(409,39,NULL,'SIBAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(410,39,NULL,'TAPAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(411,39,NULL,'TISCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(412,39,NULL,'TUTI',NULL,NULL,NULL,NULL,NULL,NULL,1),(413,39,NULL,'YANQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(414,39,NULL,'MAJES',NULL,NULL,NULL,NULL,NULL,NULL,1),(415,40,NULL,'CHUQUIBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(416,40,NULL,'ANDARAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(417,40,NULL,'CAYARANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(418,40,NULL,'CHICHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(419,40,NULL,'IRAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(420,40,NULL,'RIO GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(421,40,NULL,'SALAMANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(422,40,NULL,'YANAQUIHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(423,41,NULL,'MOLLENDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(424,41,NULL,'COCACHACRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(425,41,NULL,'DEAN VALDIVIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(426,41,NULL,'ISLAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(427,41,NULL,'MEJIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(428,41,NULL,'PUNTA DE BOMBON',NULL,NULL,NULL,NULL,NULL,NULL,1),(429,42,NULL,'COTAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(430,42,NULL,'ALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(431,42,NULL,'CHARCANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(432,42,NULL,'HUAYNACOTAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(433,42,NULL,'PAMPAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(434,42,NULL,'PUYCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(435,42,NULL,'QUECHUALLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(436,42,NULL,'SAYLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(437,42,NULL,'TAURIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(438,42,NULL,'TOMEPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(439,42,NULL,'TORO',NULL,NULL,NULL,NULL,NULL,NULL,1),(440,43,NULL,'AYACUCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(441,43,NULL,'ACOCRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(442,43,NULL,'ACOS VINCHOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(443,43,NULL,'CARMEN ALTO 7/',NULL,NULL,NULL,NULL,NULL,NULL,1),(444,43,NULL,'CHIARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(445,43,NULL,'OCROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(446,43,NULL,'PACAYCASA',NULL,NULL,NULL,NULL,NULL,NULL,1),(447,43,NULL,'QUINUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(448,43,NULL,'SAN JOSE DE TICLLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(449,43,NULL,'SAN JUAN BAUTISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(450,43,NULL,'SANTIAGO DE PISCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(451,43,NULL,'SOCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(452,43,NULL,'TAMBILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(453,43,NULL,'VINCHOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(454,43,NULL,'JESUS NAZARENO',NULL,NULL,NULL,NULL,NULL,NULL,1),(455,44,NULL,'CANGALLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(456,44,NULL,'CHUSCHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(457,44,NULL,'LOS MOROCHUCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(458,44,NULL,'MARIA PARADO DE BELLIDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(459,44,NULL,'PARAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(460,44,NULL,'TOTOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(461,45,NULL,'SANCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(462,45,NULL,'CARAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(463,45,NULL,'SACSAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(464,45,NULL,'SANTIAGO DE LUCANAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(465,46,NULL,'HUANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(466,46,NULL,'AYAHUANCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(467,46,10,'HUAMANGUILLA',NULL,'2018-10-17 11:07:33',NULL,NULL,NULL,NULL,1),(468,46,10,'IGUAIN',NULL,'2018-10-17 11:07:46',NULL,NULL,NULL,NULL,1),(469,46,NULL,'LURICOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(470,46,NULL,'SANTILLANA',NULL,'2018-10-23 11:44:51',NULL,NULL,NULL,NULL,1),(471,46,NULL,'SIVIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(472,46,NULL,'LLOCHEGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(473,47,NULL,'SAN MIGUEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(474,47,NULL,'ANCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(475,47,NULL,'AYNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(476,47,NULL,'CHILCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(477,47,NULL,'CHUNGUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(478,47,NULL,'LUIS CARRANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(479,47,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(480,47,NULL,'TAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(481,48,NULL,'PUQUIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(482,48,NULL,'AUCARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(483,48,NULL,'CABANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(484,48,NULL,'CARMEN SALCEDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(485,48,NULL,'CHAVIÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(486,48,NULL,'CHIPAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(487,48,NULL,'HUAC-HUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(488,48,NULL,'LARAMATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(489,48,NULL,'LEONCIO PRADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(490,48,NULL,'LLAUTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(491,48,NULL,'LUCANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(492,48,NULL,'OCAÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(493,48,NULL,'OTOCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(494,48,NULL,'SAISA',NULL,NULL,NULL,NULL,NULL,NULL,1),(495,48,NULL,'SAN CRISTOBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(496,48,NULL,'SAN JUAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(497,48,NULL,'SAN PEDRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(498,48,NULL,'SAN PEDRO DE PALCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(499,48,NULL,'SANCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(500,48,NULL,'SANTA ANA DE HUAYCAHUACHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(501,48,NULL,'SANTA LUCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(502,49,NULL,'CORACORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(503,49,NULL,'CHUMPI',NULL,NULL,NULL,NULL,NULL,NULL,1),(504,49,NULL,'CORONEL CASTAÑEDA',NULL,NULL,NULL,NULL,NULL,NULL,1),(505,49,NULL,'PACAPAUSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(506,49,NULL,'PULLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(507,49,NULL,'PUYUSCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(508,49,NULL,'SAN FRANCISCO DE RAVACAYCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(509,49,NULL,'UPAHUACHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(510,50,NULL,'PAUSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(511,50,NULL,'COLTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(512,50,NULL,'CORCULLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(513,50,NULL,'LAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(514,50,NULL,'MARCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(515,50,NULL,'OYOLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(516,50,NULL,'PARARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(517,50,NULL,'SAN JAVIER DE ALPABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(518,50,NULL,'SAN JOSE DE USHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(519,50,NULL,'SARA SARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(520,51,NULL,'QUEROBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(521,51,NULL,'BELEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(522,51,NULL,'CHALCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(523,51,NULL,'CHILCAYOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(524,51,NULL,'HUACAÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(525,51,NULL,'MORCOLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(526,51,NULL,'PAICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(527,51,NULL,'SAN PEDRO DE LARCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(528,51,NULL,'SAN SALVADOR DE QUIJE',NULL,NULL,NULL,NULL,NULL,NULL,1),(529,51,NULL,'SANTIAGO DE PAUCARAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(530,51,NULL,'SORAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(531,52,NULL,'HUANCAPI',NULL,NULL,NULL,NULL,NULL,NULL,1),(532,52,NULL,'ALCAMENCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(533,52,NULL,'APONGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(534,52,NULL,'ASQUIPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(535,52,NULL,'CANARIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(536,52,NULL,'CAYARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(537,52,NULL,'COLCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(538,52,NULL,'HUAMANQUIQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(539,52,NULL,'HUANCARAYLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(540,52,NULL,'HUAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(541,52,NULL,'SARHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(542,52,NULL,'VILCANCHOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(543,53,NULL,'VILCAS HUAMAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(544,53,NULL,'ACCOMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(545,53,NULL,'CARHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(546,53,NULL,'CONCEPCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(547,53,NULL,'HUAMBALPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(548,53,NULL,'INDEPENDENCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(549,53,NULL,'SAURAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(550,53,NULL,'VISCHONGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(551,54,NULL,'CAJAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(552,54,NULL,'ASUNCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(553,54,NULL,'CHETILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(554,54,NULL,'COSPAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(555,54,NULL,'ENCAÑADA',NULL,NULL,NULL,NULL,NULL,NULL,1),(556,54,NULL,'JESUS',NULL,NULL,NULL,NULL,NULL,NULL,1),(557,54,NULL,'LLACANORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(558,54,NULL,'LOS BAÑOS DEL INCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(559,54,NULL,'MAGDALENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(560,54,NULL,'MATARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(561,54,NULL,'NAMORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(562,54,NULL,'SAN JUAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(563,55,NULL,'CAJABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(564,55,NULL,'CACHACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(565,55,NULL,'CONDEBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(566,55,NULL,'SITACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(567,56,NULL,'CELENDIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(568,56,NULL,'CHUMUCH',NULL,NULL,NULL,NULL,NULL,NULL,1),(569,56,NULL,'CORTEGANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(570,56,NULL,'HUASMIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(571,56,NULL,'JORGE CHAVEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(572,56,NULL,'JOSE GALVEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(573,56,NULL,'MIGUEL IGLESIAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(574,56,NULL,'OXAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(575,56,NULL,'SOROCHUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(576,56,NULL,'SUCRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(577,56,NULL,'UTCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(578,56,NULL,'LA LIBERTAD DE PALLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(579,57,NULL,'CHOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(580,57,NULL,'ANGUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(581,57,NULL,'CHADIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(582,57,NULL,'CHIGUIRIP',NULL,NULL,NULL,NULL,NULL,NULL,1),(583,57,NULL,'CHIMBAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(584,57,NULL,'CHOROPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(585,57,NULL,'COCHABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(586,57,NULL,'CONCHAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(587,57,NULL,'HUAMBOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(588,57,NULL,'LAJAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(589,57,NULL,'LLAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(590,57,NULL,'MIRACOSTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(591,57,NULL,'PACCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(592,57,NULL,'PION',NULL,NULL,NULL,NULL,NULL,NULL,1),(593,57,NULL,'QUEROCOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(594,57,NULL,'SAN JUAN DE LICUPIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(595,57,NULL,'TACABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(596,57,NULL,'TOCMOCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(597,57,NULL,'CHALAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(598,58,NULL,'CONTUMAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(599,58,NULL,'CHILETE',NULL,NULL,NULL,NULL,NULL,NULL,1),(600,58,NULL,'CUPISNIQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(601,58,NULL,'GUZMANGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(602,58,NULL,'SAN BENITO',NULL,NULL,NULL,NULL,NULL,NULL,1),(603,58,NULL,'SANTA CRUZ DE TOLED',NULL,NULL,NULL,NULL,NULL,NULL,1),(604,58,NULL,'TANTARICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(605,58,NULL,'YONAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(606,59,NULL,'CUTERVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(607,59,NULL,'CALLAYUC',NULL,NULL,NULL,NULL,NULL,NULL,1),(608,59,NULL,'CHOROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(609,59,NULL,'CUJILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(610,59,NULL,'LA RAMADA',NULL,NULL,NULL,NULL,NULL,NULL,1),(611,59,NULL,'PIMPINGOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(612,59,NULL,'QUEROCOTILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(613,59,NULL,'SAN ANDRES DE CUTERVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(614,59,NULL,'SAN JUAN DE CUTERVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(615,59,NULL,'SAN LUIS DE LUCMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(616,59,NULL,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(617,59,NULL,'SANTO DOMINGO DE LA CAPILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(618,59,NULL,'SANTO TOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(619,59,NULL,'SOCOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(620,59,NULL,'TORIBIO CASANOVA',NULL,NULL,NULL,NULL,NULL,NULL,1),(621,60,NULL,'BAMBAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(622,60,NULL,'CHUGUR',NULL,NULL,NULL,NULL,NULL,NULL,1),(623,60,NULL,'HUALGAYOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(624,61,NULL,'JAEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(625,61,NULL,'BELLAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(626,61,NULL,'CHONTALI',NULL,NULL,NULL,NULL,NULL,NULL,1),(627,61,NULL,'COLASAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(628,61,NULL,'HUABAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(629,61,NULL,'LAS PIRIAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(630,61,NULL,'POMAHUACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(631,61,NULL,'PUCARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(632,61,NULL,'SALLIQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(633,61,NULL,'SAN FELIPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(634,61,NULL,'SAN JOSE DEL ALTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(635,61,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(636,62,NULL,'SAN IGNACIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(637,62,NULL,'CHIRINOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(638,62,NULL,'HUARANGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(639,62,NULL,'LA COIPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(640,62,NULL,'NAMBALLE',NULL,NULL,NULL,NULL,NULL,NULL,1),(641,62,NULL,'SAN JOSE DE LOURDES',NULL,NULL,NULL,NULL,NULL,NULL,1),(642,62,NULL,'TABACONAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(643,63,NULL,'PEDRO GALVEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(644,63,NULL,'CHANCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(645,63,NULL,'EDUARDO VILLANUEVA',NULL,NULL,NULL,NULL,NULL,NULL,1),(646,63,NULL,'GREGORIO PITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(647,63,NULL,'ICHOCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(648,63,NULL,'JOSE MANUEL QUIROZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(649,63,NULL,'JOSE SABOGAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(650,64,NULL,'SAN MIGUEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(651,64,NULL,'BOLIVAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(652,64,NULL,'CALQUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(653,64,NULL,'CATILLUC',NULL,NULL,NULL,NULL,NULL,NULL,1),(654,64,NULL,'EL PRADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(655,64,NULL,'LA FLORIDA',NULL,NULL,NULL,NULL,NULL,NULL,1),(656,64,NULL,'LLAPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(657,64,NULL,'NANCHOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(658,64,NULL,'NIEPOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(659,64,NULL,'SAN GREGORIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(660,64,NULL,'SAN SILVESTRE DE COCHAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(661,64,NULL,'TONGOD',NULL,NULL,NULL,NULL,NULL,NULL,1),(662,64,NULL,'UNION AGUA BLANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(663,65,NULL,'SAN PABLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(664,65,NULL,'SAN BERNARDINO',NULL,NULL,NULL,NULL,NULL,NULL,1),(665,65,NULL,'SAN LUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(666,65,NULL,'TUMBADEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(667,66,NULL,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(668,66,NULL,'ANDABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(669,66,NULL,'CATACHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(670,66,NULL,'CHANCAYBAÑOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(671,66,NULL,'LA ESPERANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(672,66,NULL,'NINABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(673,66,NULL,'PULAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(674,66,NULL,'SAUCEPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(675,66,NULL,'SEXI',NULL,NULL,NULL,NULL,NULL,NULL,1),(676,66,NULL,'UTICYACU',NULL,NULL,NULL,NULL,NULL,NULL,1),(677,66,NULL,'YAUYUCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(678,67,4,'CALLAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(679,67,4,'BELLAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(680,67,4,'CARMEN DE LA LEGUA REYNOSO',NULL,NULL,NULL,NULL,NULL,NULL,1),(681,67,11,'LA PERLA',NULL,'2018-11-07 14:30:41',NULL,NULL,NULL,NULL,1),(682,67,4,'LA PUNTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(683,67,6,'VENTANILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(684,68,NULL,'CUSCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(685,68,NULL,'CCORCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(686,68,NULL,'POROY',NULL,NULL,NULL,NULL,NULL,NULL,1),(687,68,NULL,'SAN JERONIMO',NULL,NULL,NULL,NULL,NULL,NULL,1),(688,68,NULL,'SAN SEBASTIAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(689,68,NULL,'SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(690,68,NULL,'SAYLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(691,68,NULL,'WANCHAQ',NULL,NULL,NULL,NULL,NULL,NULL,1),(692,69,NULL,'ACOMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(693,69,NULL,'ACOPIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(694,69,NULL,'ACOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(695,69,NULL,'MOSOC LLACTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(696,69,NULL,'POMACANCHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(697,69,NULL,'RONDOCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(698,69,NULL,'SANGARARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(699,70,NULL,'ANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(700,70,NULL,'ANCAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(701,70,NULL,'CACHIMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(702,70,NULL,'CHINCHAYPUJIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(703,70,NULL,'HUAROCONDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(704,70,NULL,'LIMATAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(705,70,NULL,'MOLLEPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(706,70,NULL,'PUCYURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(707,70,NULL,'ZURITE',NULL,NULL,NULL,NULL,NULL,NULL,1),(708,71,NULL,'CALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(709,71,NULL,'COYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(710,71,NULL,'LAMAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(711,71,NULL,'LARES',NULL,NULL,NULL,NULL,NULL,NULL,1),(712,71,NULL,'PISAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(713,71,NULL,'SAN SALVADOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(714,71,NULL,'TARAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(715,71,NULL,'YANATILE',NULL,NULL,NULL,NULL,NULL,NULL,1),(716,72,NULL,'YANAOCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(717,72,NULL,'CHECCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(718,72,NULL,'KUNTURKANKI',NULL,NULL,NULL,NULL,NULL,NULL,1),(719,72,NULL,'LANGUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(720,72,NULL,'LAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(721,72,NULL,'PAMPAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(722,72,NULL,'QUEHUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(723,72,NULL,'TUPAC AMARU',NULL,NULL,NULL,NULL,NULL,NULL,1),(724,73,NULL,'SICUANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(725,73,NULL,'CHECACUPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(726,73,11,'COMBAPATA',NULL,'2018-11-07 14:44:26',NULL,NULL,NULL,NULL,1),(727,73,NULL,'MARANGANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(728,73,NULL,'PITUMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(729,73,NULL,'SAN PABLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(730,73,NULL,'SAN PEDRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(731,73,NULL,'TINTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(732,74,NULL,'SANTO TOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(733,74,NULL,'CAPACMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(734,74,NULL,'CHAMACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(735,74,NULL,'COLQUEMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(736,74,NULL,'LIVITACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(737,74,NULL,'LLUSCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(738,74,NULL,'QUIÑOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(739,74,NULL,'VELILLE',NULL,NULL,NULL,NULL,NULL,NULL,1),(740,75,NULL,'ESPINAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(741,75,NULL,'CONDOROMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(742,75,NULL,'COPORAQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(743,75,NULL,'OCORURO',NULL,NULL,NULL,NULL,NULL,NULL,1),(744,75,NULL,'PALLPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(745,75,NULL,'PICHIGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(746,75,NULL,'SUYCKUTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(747,75,NULL,'ALTO PICHIGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(748,76,NULL,'SANTA ANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(749,76,NULL,'ECHARATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(750,76,NULL,'HUAYOPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(751,76,NULL,'MARANURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(752,76,NULL,'OCOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(753,76,NULL,'QUELLOUNO',NULL,NULL,NULL,NULL,NULL,NULL,1),(754,76,NULL,'KIMBIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(755,76,NULL,'SANTA TERESA',NULL,NULL,NULL,NULL,NULL,NULL,1),(756,76,NULL,'VILCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(757,76,NULL,'PICHARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(758,77,NULL,'PARURO',NULL,NULL,NULL,NULL,NULL,NULL,1),(759,77,NULL,'ACCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(760,77,NULL,'CCAPI',NULL,NULL,NULL,NULL,NULL,NULL,1),(761,77,NULL,'COLCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(762,77,NULL,'HUANOQUITE',NULL,NULL,NULL,NULL,NULL,NULL,1),(763,77,NULL,'OMACHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(764,77,NULL,'PACCARITAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(765,77,NULL,'PILLPINTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(766,77,NULL,'YAURISQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(767,78,NULL,'PAUCARTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(768,78,NULL,'CAICAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(769,78,NULL,'CHALLABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(770,78,NULL,'COLQUEPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(771,78,NULL,'HUANCARANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(772,78,NULL,'KOSÑIPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(773,79,NULL,'URCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(774,79,NULL,'ANDAHUAYLILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(775,79,NULL,'CAMANTI',NULL,NULL,NULL,NULL,NULL,NULL,1),(776,79,NULL,'CCARHUAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(777,79,NULL,'CCATCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(778,79,NULL,'CUSIPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(779,79,NULL,'HUARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(780,79,NULL,'LUCRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(781,79,NULL,'MARCAPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(782,79,NULL,'OCONGATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(783,79,NULL,'OROPESA',NULL,NULL,NULL,NULL,NULL,NULL,1),(784,79,NULL,'QUIQUIJANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(785,80,NULL,'URUBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(786,80,NULL,'CHINCHERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(787,80,NULL,'HUAYLLABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(788,80,NULL,'MACHUPICCHU',NULL,NULL,NULL,NULL,NULL,NULL,1),(789,80,NULL,'MARAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(790,80,NULL,'OLLANTAYTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(791,80,NULL,'YUCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(792,81,NULL,'HUANCAVELICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(793,81,NULL,'ACOBAMBILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(794,81,NULL,'ACORIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(795,81,NULL,'CONAYCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(796,81,NULL,'CUENCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(797,81,NULL,'HUACHOCOLPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(798,81,NULL,'HUAYLLAHUARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(799,81,NULL,'IZCUCHACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(800,81,NULL,'LARIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(801,81,NULL,'MANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(802,81,NULL,'MARISCAL CACERES',NULL,NULL,NULL,NULL,NULL,NULL,1),(803,81,NULL,'MOYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(804,81,NULL,'NUEVO OCCORO',NULL,NULL,NULL,NULL,NULL,NULL,1),(805,81,NULL,'PALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(806,81,NULL,'PILCHACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(807,81,NULL,'VILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(808,81,NULL,'YAULI 8/',NULL,NULL,NULL,NULL,NULL,NULL,1),(809,81,NULL,'ASCENSION',NULL,NULL,NULL,NULL,NULL,NULL,1),(810,81,NULL,'HUANDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(811,82,NULL,'ACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(812,82,NULL,'ANDABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(813,82,NULL,'ANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(814,82,NULL,'CAJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(815,82,NULL,'MARCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(816,82,NULL,'PAUCARA 8/',NULL,NULL,NULL,NULL,NULL,NULL,1),(817,82,NULL,'POMACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(818,82,NULL,'ROSARIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(819,83,NULL,'LIRCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(820,83,NULL,'ANCHONGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(821,83,NULL,'CALLANMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(822,83,NULL,'CCOCHACCASA',NULL,NULL,NULL,NULL,NULL,NULL,1),(823,83,NULL,'CHINCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(824,83,NULL,'CONGALLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(825,83,NULL,'HUANCA-HUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(826,83,NULL,'HUAYLLAY GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(827,83,NULL,'JULCAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(828,83,NULL,'SAN ANTONIO DE ANTAPARCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(829,83,NULL,'SANTO TOMAS DE PATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(830,83,NULL,'SECCLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(831,84,NULL,'CASTROVIRREYNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(832,84,NULL,'ARMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(833,84,NULL,'AURAHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(834,84,NULL,'CAPILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(835,84,NULL,'CHUPAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(836,84,NULL,'COCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(837,84,NULL,'HUACHOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(838,84,NULL,'HUAMATAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(839,84,NULL,'MOLLEPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(840,84,NULL,'SAN JUAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(841,84,NULL,'SANTA ANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(842,84,NULL,'TANTARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(843,84,NULL,'TICRAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(844,85,NULL,'CHURCAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(845,85,NULL,'ANCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(846,85,NULL,'CHINCHIHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(847,85,NULL,'EL CARMEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(848,85,NULL,'LA MERCED',NULL,NULL,NULL,NULL,NULL,NULL,1),(849,85,NULL,'LOCROJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(850,85,NULL,'PAUCARBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(851,85,NULL,'SAN MIGUEL DE MAYOCC',NULL,NULL,NULL,NULL,NULL,NULL,1),(852,85,NULL,'SAN PEDRO DE CORIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(853,85,NULL,'PACHAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(854,86,NULL,'HUAYTARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(855,86,NULL,'AYAVI',NULL,NULL,NULL,NULL,NULL,NULL,1),(856,86,NULL,'CORDOVA',NULL,NULL,NULL,NULL,NULL,NULL,1),(857,86,NULL,'HUAYACUNDO ARMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(858,86,NULL,'LARAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(859,86,NULL,'OCOYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(860,86,NULL,'PILPICHACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(861,86,NULL,'QUERCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(862,86,NULL,'QUITO-ARMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(863,86,NULL,'SAN ANTONIO DE CUSICANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(864,86,NULL,'SAN FRANCISCO DE SANGAYAICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(865,86,NULL,'SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(866,86,NULL,'SANTIAGO DE CHOCORVOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(867,86,NULL,'SANTIAGO DE QUIRAHUARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(868,86,NULL,'SANTO DOMINGO DE CAPILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(869,86,NULL,'TAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(870,87,NULL,'PAMPAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(871,87,NULL,'ACOSTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(872,87,NULL,'ACRAQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(873,87,NULL,'AHUAYCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(874,87,NULL,'COLCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(875,87,NULL,'DANIEL HERNANDEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(876,87,NULL,'HUACHOCOLPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(877,87,NULL,'HUARIBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(878,87,NULL,'ÑAHUIMPUQUIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(879,87,NULL,'PAZOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(880,87,NULL,'QUISHUAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(881,87,NULL,'SALCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(882,87,NULL,'SALCAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(883,87,NULL,'SAN MARCOS DE ROCCHAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(884,87,NULL,'SURCUBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(885,87,NULL,'TINTAY PUNCU',NULL,NULL,NULL,NULL,NULL,NULL,1),(886,88,NULL,'HUANUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(887,88,NULL,'AMARILIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(888,88,NULL,'CHINCHAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(889,88,NULL,'CHURUBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(890,88,NULL,'MARGOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(891,88,NULL,'QUISQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(892,88,NULL,'SAN FRANCISCO DE CAYRAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(893,88,NULL,'SAN PEDRO DE CHAULAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(894,88,NULL,'SANTA MARIA DEL VALLE',NULL,NULL,NULL,NULL,NULL,NULL,1),(895,88,NULL,'YARUMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(896,88,NULL,'PILLCO MARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(897,89,NULL,'AMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(898,89,NULL,'CAYNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(899,89,NULL,'COLPAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(900,89,NULL,'CONCHAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(901,89,NULL,'HUACAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(902,89,NULL,'SAN FRANCISCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(903,89,NULL,'SAN RAFAEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(904,89,NULL,'TOMAY KICHWA',NULL,NULL,NULL,NULL,NULL,NULL,1),(905,90,NULL,'LA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(906,90,NULL,'CHUQUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(907,90,NULL,'MARIAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(908,90,NULL,'PACHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(909,90,NULL,'QUIVILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(910,90,NULL,'RIPAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(911,90,NULL,'SHUNQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(912,90,NULL,'SILLAPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(913,90,NULL,'YANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(914,91,NULL,'HUACAYBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(915,91,NULL,'CANCHABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(916,91,NULL,'COCHABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(917,91,NULL,'PINRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(918,92,NULL,'LLATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(919,92,NULL,'ARANCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(920,92,NULL,'CHAVIN DE PARIARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(921,92,NULL,'JACAS GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(922,92,NULL,'JIRCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(923,92,NULL,'MIRAFLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(924,92,NULL,'MONZON',NULL,NULL,NULL,NULL,NULL,NULL,1),(925,92,NULL,'PUNCHAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(926,92,NULL,'PUÑOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(927,92,NULL,'SINGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(928,92,NULL,'TANTAMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(929,93,NULL,'RUPA-RUPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(930,93,NULL,'DANIEL ALOMIA ROBLES',NULL,NULL,NULL,NULL,NULL,NULL,1),(931,93,NULL,'HERMILIO VALDIZAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(932,93,NULL,'JOSE CRESPO Y CASTILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(933,93,NULL,'LUYANDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(934,93,NULL,'MARIANO DAMASO BERAUN',NULL,NULL,NULL,NULL,NULL,NULL,1),(935,94,NULL,'HUACRACHUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(936,94,NULL,'CHOLON',NULL,NULL,NULL,NULL,NULL,NULL,1),(937,94,NULL,'SAN BUENAVENTURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(938,95,NULL,'PANAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(939,95,NULL,'CHAGLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(940,95,NULL,'MOLINO',NULL,NULL,NULL,NULL,NULL,NULL,1),(941,95,NULL,'UMARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(942,96,NULL,'PUERTO INCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(943,96,NULL,'CODO DEL POZUZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(944,96,NULL,'HONORIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(945,96,NULL,'TOURNAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(946,96,NULL,'YUYAPICHIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(947,97,NULL,'JESUS',NULL,NULL,NULL,NULL,NULL,NULL,1),(948,97,NULL,'BAÑOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(949,97,NULL,'JIVIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(950,97,NULL,'QUEROPALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(951,97,NULL,'RONDOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(952,97,NULL,'SAN FRANCISCO DE ASIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(953,97,NULL,'SAN MIGUEL DE CAURI',NULL,NULL,NULL,NULL,NULL,NULL,1),(954,98,NULL,'CHAVINILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(955,98,NULL,'CAHUAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(956,98,NULL,'CHACABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(957,98,NULL,'APARICIO POMARES',NULL,NULL,NULL,NULL,NULL,NULL,1),(958,98,NULL,'JACAS CHICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(959,98,NULL,'OBAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(960,98,NULL,'PAMPAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(961,98,NULL,'CHORAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(962,99,NULL,'ICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(963,99,NULL,'LA TINGUIÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(964,99,NULL,'LOS AQUIJES',NULL,NULL,NULL,NULL,NULL,NULL,1),(965,99,NULL,'OCUCAJE',NULL,NULL,NULL,NULL,NULL,NULL,1),(966,99,NULL,'PACHACUTEC',NULL,NULL,NULL,NULL,NULL,NULL,1),(967,99,NULL,'PARCONA',NULL,NULL,NULL,NULL,NULL,NULL,1),(968,99,NULL,'PUEBLO NUEVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(969,99,NULL,'SALAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(970,99,NULL,'SAN JOSE DE LOS MOLINOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(971,99,NULL,'SAN JUAN BAUTISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(972,99,NULL,'SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(973,99,NULL,'SUBTANJALLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(974,99,NULL,'TATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(975,99,NULL,'YAUCA DEL ROSARIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(976,100,NULL,'CHINCHA ALTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(977,100,NULL,'ALTO LARAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(978,100,NULL,'CHAVIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(979,100,NULL,'CHINCHA BAJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(980,100,NULL,'EL CARMEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(981,100,NULL,'GROCIO PRADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(982,100,NULL,'PUEBLO NUEVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(983,100,NULL,'SAN JUAN DE YANAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(984,100,NULL,'SAN PEDRO DE HUACARPANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(985,100,NULL,'SUNAMPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(986,100,NULL,'TAMBO DE MORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(987,101,NULL,'NAZCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(988,101,NULL,'CHANGUILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(989,101,NULL,'EL INGENIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(990,101,NULL,'MARCONA',NULL,NULL,NULL,NULL,NULL,NULL,1),(991,101,NULL,'VISTA ALEGRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(992,102,NULL,'PALPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(993,102,NULL,'LLIPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(994,102,NULL,'RIO GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(995,102,NULL,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(996,102,NULL,'TIBILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(997,103,NULL,'PISCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(998,103,NULL,'HUANCANO',NULL,NULL,NULL,NULL,NULL,NULL,1),(999,103,NULL,'HUMAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1000,103,NULL,'INDEPENDENCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1001,103,NULL,'PARACAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1002,103,NULL,'SAN ANDRES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1003,103,NULL,'SAN CLEMENTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1004,103,NULL,'TUPAC AMARU INCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1005,104,NULL,'HUANCAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1006,104,NULL,'CARHUACALLANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1007,104,NULL,'CHACAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1008,104,NULL,'CHICCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1009,104,NULL,'CHILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1010,104,NULL,'CHONGOS ALTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1011,104,NULL,'CHUPURO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1012,104,NULL,'COLCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1013,104,NULL,'CULLHUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1014,104,NULL,'EL TAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1015,104,NULL,'HUACRAPUQUIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1016,104,NULL,'HUALHUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1017,104,NULL,'HUANCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1018,104,NULL,'HUASICANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1019,104,NULL,'HUAYUCACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1020,104,NULL,'INGENIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1021,104,NULL,'PARIAHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1022,104,NULL,'PILCOMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1023,104,NULL,'PUCARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1024,104,NULL,'QUICHUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1025,104,NULL,'QUILCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1026,104,NULL,'SAN AGUSTIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1027,104,NULL,'SAN JERONIMO DE TUNAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1028,104,NULL,'SAÑO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1029,104,NULL,'SAPALLANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1030,104,NULL,'SICAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1031,104,NULL,'SANTO DOMINGO DE ACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1032,104,NULL,'VIQUES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1033,105,NULL,'CONCEPCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(1034,105,NULL,'ACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1035,105,NULL,'ANDAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1036,105,NULL,'CHAMBARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1037,105,NULL,'COCHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1038,105,NULL,'COMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1039,105,NULL,'HEROINAS TOLEDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1040,105,NULL,'MANZANARES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1041,105,NULL,'MARISCAL CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1042,105,NULL,'MATAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1043,105,NULL,'MITO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1044,105,NULL,'NUEVE DE JULIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1045,105,NULL,'ORCOTUNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1046,105,NULL,'SAN JOSE DE QUERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1047,105,NULL,'SANTA ROSA DE OCOPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1048,106,NULL,'CHANCHAMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1049,106,NULL,'PERENE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1050,106,NULL,'PICHANAQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1051,106,NULL,'SAN LUIS DE SHUARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1052,106,NULL,'SAN RAMON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1053,106,NULL,'VITOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1054,107,NULL,'JAUJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1055,107,NULL,'ACOLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1056,107,NULL,'APATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1057,107,NULL,'ATAURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1058,107,NULL,'CANCHAYLLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1059,107,NULL,'CURICACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1060,107,NULL,'EL MANTARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1061,107,NULL,'HUAMALI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1062,107,NULL,'HUARIPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1063,107,NULL,'HUERTAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1064,107,NULL,'JANJAILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1065,107,NULL,'JULCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1066,107,NULL,'LEONOR ORDOÑEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1067,107,NULL,'LLOCLLAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1068,107,NULL,'MARCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1069,107,NULL,'MASMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1070,107,NULL,'MASMA CHICCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1071,107,NULL,'MOLINOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1072,107,NULL,'MONOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1073,107,NULL,'MUQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1074,107,NULL,'MUQUIYAUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1075,107,NULL,'PACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1076,107,NULL,'PACCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1077,107,NULL,'PANCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1078,107,NULL,'PARCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1079,107,NULL,'POMACANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1080,107,NULL,'RICRAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1081,107,NULL,'SAN LORENZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1082,107,NULL,'SAN PEDRO DE CHUNAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1083,107,NULL,'SAUSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1084,107,NULL,'SINCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1085,107,NULL,'TUNAN MARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1086,107,NULL,'YAULI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1087,107,NULL,'YAUYOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1088,108,NULL,'JUNIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1089,108,NULL,'CARHUAMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1090,108,NULL,'ONDORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1091,108,NULL,'ULCUMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1092,109,NULL,'SATIPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1093,109,NULL,'COVIRIALI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1094,109,NULL,'LLAYLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1095,109,NULL,'MANZARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1096,109,NULL,'PAMPAHERMOSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1097,109,NULL,'PANGOA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1098,109,NULL,'RIO NEGRO 9/',NULL,NULL,NULL,NULL,NULL,NULL,1),(1099,109,NULL,'RIO TAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1100,110,NULL,'TARMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1101,110,NULL,'ACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1102,110,NULL,'HUARICOLCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1103,110,NULL,'HUASAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1104,110,NULL,'LA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(1105,110,NULL,'PALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1106,110,NULL,'PALCAMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1107,110,NULL,'SAN PEDRO DE CAJAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1108,110,NULL,'TAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1109,111,NULL,'LA OROYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1110,111,NULL,'CHACAPALPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1111,111,NULL,'HUAY-HUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1112,111,NULL,'MARCAPOMACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1113,111,NULL,'MOROCOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1114,111,NULL,'PACCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1115,111,NULL,'SANTA BARBARA DE CARHUACAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1116,111,NULL,'SANTA ROSA DE SACCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1117,111,NULL,'SUITUCANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1118,111,NULL,'YAULI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1119,112,NULL,'CHUPACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1120,112,NULL,'AHUAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1121,112,NULL,'CHONGOS BAJO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1122,112,NULL,'HUACHAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1123,112,NULL,'HUAMANCACA CHICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1124,112,NULL,'SAN JUAN DE ISCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1125,112,NULL,'SAN JUAN DE JARPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1126,112,NULL,'TRES DE DICIEMBRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1127,112,NULL,'YANACANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1128,113,NULL,'TRUJILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1129,113,NULL,'EL PORVENIR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1130,113,NULL,'FLORENCIA DE MORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1131,113,NULL,'HUANCHACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1132,113,NULL,'LA ESPERANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1133,113,NULL,'LAREDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1134,113,NULL,'MOCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1135,113,NULL,'POROTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1136,113,NULL,'SALAVERRY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1137,113,NULL,'SIMBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1138,113,NULL,'VICTOR LARCO HERRERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1139,114,NULL,'ASCOPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1140,114,NULL,'CHICAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1141,114,NULL,'CHOCOPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1142,114,NULL,'MAGDALENA DE CAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1143,114,NULL,'PAIJAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1144,114,NULL,'RAZURI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1145,114,NULL,'SANTIAGO DE CAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1146,114,NULL,'CASA GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1147,115,NULL,'BOLIVAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1148,115,NULL,'BAMBAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1149,115,NULL,'CONDORMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1150,115,NULL,'LONGOTEA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1151,115,NULL,'UCHUMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1152,115,NULL,'UCUNCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1153,116,NULL,'CHEPEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1154,116,NULL,'PACANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1155,116,NULL,'PUEBLO NUEVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1156,117,NULL,'JULCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1157,117,NULL,'CALAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1158,117,NULL,'CARABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1159,117,NULL,'HUASO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1160,118,NULL,'OTUZCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1161,118,NULL,'AGALLPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1162,118,NULL,'CHARAT',NULL,NULL,NULL,NULL,NULL,NULL,1),(1163,118,NULL,'HUARANCHAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1164,118,NULL,'LA CUESTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1165,118,NULL,'MACHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1166,118,NULL,'PARANDAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1167,118,NULL,'SALPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1168,118,NULL,'SINSICAP',NULL,NULL,NULL,NULL,NULL,NULL,1),(1169,118,NULL,'USQUIL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1170,119,NULL,'SAN PEDRO DE LLOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1171,119,NULL,'GUADALUPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1172,119,NULL,'JEQUETEPEQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1173,119,NULL,'PACASMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1174,119,NULL,'SAN JOSE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1175,120,NULL,'TAYABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1176,120,NULL,'BULDIBUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1177,120,NULL,'CHILLIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1178,120,NULL,'HUANCASPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1179,120,NULL,'HUAYLILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1180,120,NULL,'HUAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1181,120,NULL,'ONGON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1182,120,NULL,'PARCOY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1183,120,NULL,'PATAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1184,120,NULL,'PIAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1185,120,NULL,'SANTIAGO DE CHALLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1186,120,NULL,'TAURIJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1187,120,NULL,'URPAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1188,121,NULL,'HUAMACHUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1189,121,NULL,'CHUGAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1190,121,NULL,'COCHORCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1191,121,NULL,'CURGOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1192,121,NULL,'MARCABAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1193,121,NULL,'SANAGORAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1194,121,NULL,'SARIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1195,121,NULL,'SARTIMBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1196,122,NULL,'SANTIAGO DE CHUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1197,122,NULL,'ANGASMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1198,122,NULL,'CACHICADAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1199,122,NULL,'MOLLEBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1200,122,NULL,'MOLLEPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1201,122,NULL,'QUIRUVILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1202,122,NULL,'SANTA CRUZ DE CHUCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1203,122,NULL,'SITABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1204,123,NULL,'CASCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1205,123,NULL,'LUCMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1206,123,NULL,'MARMOT',NULL,NULL,NULL,NULL,NULL,NULL,1),(1207,123,NULL,'SAYAPULLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1208,124,NULL,'VIRU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1209,124,NULL,'CHAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1210,124,NULL,'GUADALUPITO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1211,125,NULL,'CHICLAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1212,125,NULL,'CHONGOYAPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1213,125,NULL,'ETEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1214,125,NULL,'ETEN PUERTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1215,125,NULL,'JOSE LEONARDO ORTIZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1216,125,NULL,'LA VICTORIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1217,125,NULL,'LAGUNAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1218,125,NULL,'MONSEFU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1219,125,NULL,'NUEVA ARICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1220,125,NULL,'OYOTUN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1221,125,NULL,'PICSI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1222,125,NULL,'PIMENTEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1223,125,NULL,'REQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1224,125,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1225,125,NULL,'SAÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1226,125,NULL,'CAYALTI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1227,125,NULL,'PATAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1228,125,NULL,'POMALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1229,125,NULL,'PUCALA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1230,125,NULL,'TUMAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1231,126,NULL,'FERREÑAFE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1232,126,NULL,'CAÑARIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1233,126,NULL,'INCAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1234,126,NULL,'MANUEL ANTONIO MESONES MURO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1235,126,NULL,'PITIPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1236,126,NULL,'PUEBLO NUEVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1237,127,NULL,'LAMBAYEQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1238,127,NULL,'CHOCHOPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1239,127,NULL,'ILLIMO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1240,127,NULL,'JAYANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1241,127,NULL,'MOCHUMI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1242,127,NULL,'MORROPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1243,127,NULL,'MOTUPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1244,127,NULL,'OLMOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1245,127,NULL,'PACORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1246,127,NULL,'SALAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1247,127,NULL,'SAN JOSE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1248,127,NULL,'TUCUME',NULL,NULL,NULL,NULL,NULL,NULL,1),(1249,128,4,'LIMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1250,128,6,'ANCON',NULL,'2018-09-13 16:55:32',NULL,NULL,NULL,NULL,1),(1251,128,NULL,'ATE',NULL,'2018-09-19 14:56:43',NULL,NULL,NULL,NULL,1),(1252,128,NULL,'BARRANCO',NULL,'2018-09-19 14:57:04',NULL,NULL,NULL,NULL,1),(1253,128,NULL,'BREÑA',NULL,'2018-09-19 14:59:15',NULL,NULL,NULL,NULL,1),(1254,128,NULL,'CARABAYLLO',NULL,'2018-10-23 11:44:20',NULL,NULL,NULL,NULL,1),(1255,128,2,'CHACLACAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1256,128,3,'CHORRILLOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1257,128,2,'CIENEGUILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1258,128,1,'COMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1259,128,7,'EL AGUSTINO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1260,128,1,'INDEPENDENCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1261,128,2,'JESUS MARIA',NULL,'2018-09-19 14:57:37',NULL,NULL,NULL,NULL,1),(1262,128,2,'LA MOLINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1263,128,7,'LA VICTORIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1264,128,4,'LINCE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1265,128,1,'LOS OLIVOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1266,128,2,'LURIGANCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1267,128,8,'LURIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1268,128,4,'MAGDALENA DEL MAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1269,128,NULL,'MAGDALENA VIEJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1270,128,3,'MIRAFLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1271,128,2,'PACHACAMAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1272,128,8,'PUCUSANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1273,128,6,'PUENTE PIEDRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1274,128,NULL,'PUNTA HERMOSA',NULL,'2018-10-23 11:44:09',NULL,NULL,NULL,NULL,1),(1275,128,NULL,'PUNTA NEGRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1276,128,1,'RIMAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1277,128,8,'SAN BARTOLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1278,128,7,'SAN BORJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1279,128,4,'SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1280,128,7,'SAN JUAN DE LURIGANCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1281,128,3,'SAN JUAN DE MIRAFLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1282,128,2,'SAN LUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1283,128,1,'SAN MARTIN DE PORRES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1284,128,4,'SAN MIGUEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1285,128,2,'SANTA ANITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1286,128,8,'SANTA MARIA DEL MAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1287,128,6,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1288,128,3,'SANTIAGO DE SURCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1289,128,3,'SURQUILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1290,128,8,'VILLA EL SALVADOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1291,128,2,'VILLA MARIA DEL TRIUNFO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1292,129,NULL,'BARRANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1293,129,NULL,'PARAMONGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1294,129,NULL,'PATIVILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1295,129,NULL,'SUPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1296,129,NULL,'SUPE PUERTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1297,130,NULL,'CAJATAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1298,130,NULL,'COPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1299,130,NULL,'GORGOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1300,130,NULL,'HUANCAPON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1301,130,NULL,'MANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1302,131,NULL,'CANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1303,131,NULL,'ARAHUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1304,131,NULL,'HUAMANTANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1305,131,NULL,'HUAROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1306,131,NULL,'LACHAQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1307,131,NULL,'SAN BUENAVENTURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1308,131,NULL,'SANTA ROSA DE QUIVES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1309,132,NULL,'SAN VICENTE DE CAÑETE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1310,132,NULL,'ASIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1311,132,NULL,'CALANGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1312,132,NULL,'CERRO AZUL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1313,132,NULL,'CHILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1314,132,NULL,'COAYLLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1315,132,NULL,'IMPERIAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1316,132,NULL,'LUNAHUANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1317,132,NULL,'MALA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1318,132,NULL,'NUEVO IMPERIAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1319,132,NULL,'PACARAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1320,132,NULL,'QUILMANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1321,132,NULL,'SAN ANTONIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1322,132,NULL,'SAN LUIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1323,132,NULL,'SANTA CRUZ DE FLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1324,132,NULL,'ZUÑIGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1325,133,NULL,'HUARAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1326,133,NULL,'ATAVILLOS ALTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1327,133,NULL,'ATAVILLOS BAJO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1328,133,NULL,'AUCALLAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1329,133,NULL,'CHANCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1330,133,NULL,'IHUARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1331,133,NULL,'LAMPIAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1332,133,NULL,'PACARAOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1333,133,NULL,'SAN MIGUEL DE ACOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1334,133,NULL,'SANTA CRUZ DE ANDAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1335,133,NULL,'SUMBILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1336,133,NULL,'VEINTISIETE DE NOVIEMBRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1337,134,NULL,'MATUCANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1338,134,NULL,'ANTIOQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1339,134,NULL,'CALLAHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1340,134,NULL,'CARAMPOMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1341,134,NULL,'CHICLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1342,134,NULL,'CUENCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1343,134,NULL,'HUACHUPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1344,134,NULL,'HUANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1345,134,NULL,'HUAROCHIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1346,134,NULL,'LAHUAYTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1347,134,NULL,'LANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1348,134,NULL,'LARAOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1349,134,NULL,'MARIATANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1350,134,NULL,'RICARDO PALMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1351,134,NULL,'SAN ANDRES DE TUPICOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1352,134,NULL,'SAN ANTONIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1353,134,NULL,'SAN BARTOLOME',NULL,NULL,NULL,NULL,NULL,NULL,1),(1354,134,NULL,'SAN DAMIAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1355,134,NULL,'SAN JUAN DE IRIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1356,134,NULL,'SAN JUAN DE TANTARANCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1357,134,NULL,'SAN LORENZO DE QUINTI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1358,134,NULL,'SAN MATEO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1359,134,NULL,'SAN MATEO DE OTAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1360,134,NULL,'SAN PEDRO DE CASTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1361,134,NULL,'SAN PEDRO DE HUANCAYRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1362,134,NULL,'SANGALLAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1363,134,NULL,'SANTA CRUZ DE COCACHACRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1364,134,NULL,'SANTA EULALIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1365,134,NULL,'SANTIAGO DE ANCHUCAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1366,134,NULL,'SANTIAGO DE TUNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1367,134,NULL,'SANTO DOMINGO DE LOS OLLERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1368,134,NULL,'SURCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1369,135,NULL,'HUACHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1370,135,NULL,'AMBAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1371,135,NULL,'CALETA DE CARQUIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1372,135,NULL,'CHECRAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1373,135,NULL,'HUALMAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1374,135,NULL,'HUAURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1375,135,NULL,'LEONCIO PRADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1376,135,NULL,'PACCHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1377,135,NULL,'SANTA LEONOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1378,135,NULL,'SANTA MARIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1379,135,NULL,'SAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1380,135,NULL,'VEGUETA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1381,136,NULL,'OYON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1382,136,NULL,'ANDAJES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1383,136,NULL,'CAUJUL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1384,136,NULL,'COCHAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1385,136,NULL,'NAVAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1386,136,NULL,'PACHANGARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1387,137,NULL,'YAUYOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1388,137,NULL,'ALIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1389,137,NULL,'AYAUCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1390,137,NULL,'AYAVIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1391,137,NULL,'AZANGARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1392,137,NULL,'CACRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1393,137,NULL,'CARANIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1394,137,NULL,'CATAHUASI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1395,137,NULL,'CHOCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1396,137,NULL,'COCHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1397,137,NULL,'COLONIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1398,137,NULL,'HONGOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1399,137,NULL,'HUAMPARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1400,137,NULL,'HUANCAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1401,137,NULL,'HUANGASCAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1402,137,NULL,'HUANTAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1403,137,NULL,'HUAÑEC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1404,137,NULL,'LARAOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1405,137,NULL,'LINCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1406,137,NULL,'MADEAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1407,137,NULL,'MIRAFLORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1408,137,NULL,'OMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1409,137,NULL,'PUTINZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1410,137,NULL,'QUINCHES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1411,137,NULL,'QUINOCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1412,137,NULL,'SAN JOAQUIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1413,137,NULL,'SAN PEDRO DE PILAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1414,137,NULL,'TANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1415,137,NULL,'TAURIPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1416,137,NULL,'TOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1417,137,NULL,'TUPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1418,137,NULL,'VIÑAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1419,137,NULL,'VITIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1420,138,NULL,'IQUITOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1421,138,NULL,'ALTO NANAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1422,138,NULL,'FERNANDO LORES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1423,138,NULL,'INDIANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1424,138,NULL,'LAS AMAZONAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1425,138,NULL,'MAZAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1426,138,NULL,'NAPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1427,138,NULL,'PUNCHANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1428,138,NULL,'PUTUMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1429,138,NULL,'TORRES CAUSANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1430,138,NULL,'BELEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1431,138,NULL,'SAN JUAN BAUTISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1432,138,NULL,'TENIENTE MANUEL CLAVERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1433,139,NULL,'YURIMAGUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1434,139,NULL,'BALSAPUERTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1435,139,NULL,'JEBEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1436,139,NULL,'LAGUNAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1437,139,NULL,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1438,139,NULL,'TENIENTE CESAR LOPEZ ROJAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1439,140,NULL,'NAUTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1440,140,NULL,'PARINARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1441,140,NULL,'TIGRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1442,140,NULL,'TROMPETEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1443,140,NULL,'URARINAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1444,141,NULL,'RAMON CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1445,141,NULL,'PEBAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1446,141,NULL,'YAVARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1447,141,NULL,'SAN PABLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1448,142,NULL,'REQUENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1449,142,NULL,'ALTO TAPICHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1450,142,NULL,'CAPELO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1451,142,NULL,'EMILIO SAN MARTIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1452,142,NULL,'MAQUIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1453,142,NULL,'PUINAHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1454,142,NULL,'SAQUENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1455,142,NULL,'SOPLIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1456,142,NULL,'TAPICHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1457,142,NULL,'JENARO HERRERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1458,142,NULL,'YAQUERANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1459,143,NULL,'CONTAMANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1460,143,NULL,'INAHUAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1461,143,NULL,'PADRE MARQUEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1462,143,NULL,'PAMPA HERMOSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1463,143,NULL,'SARAYACU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1464,143,NULL,'VARGAS GUERRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1465,144,NULL,'BARRANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1466,144,NULL,'CAHUAPANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1467,144,NULL,'MANSERICHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1468,144,NULL,'MORONA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1469,144,NULL,'PASTAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1470,144,NULL,'ANDOAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1471,145,NULL,'TAMBOPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1472,145,NULL,'INAMBARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1473,145,NULL,'LAS PIEDRAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1474,145,NULL,'LABERINTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1475,146,NULL,'MANU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1476,146,NULL,'FITZCARRALD',NULL,NULL,NULL,NULL,NULL,NULL,1),(1477,146,NULL,'MADRE DE DIOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1478,146,NULL,'HUEPETUHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1479,147,NULL,'IÑAPARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1480,147,NULL,'IBERIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1481,147,NULL,'TAHUAMANU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1482,148,NULL,'MOQUEGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1483,148,NULL,'CARUMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1484,148,NULL,'CUCHUMBAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1485,148,NULL,'SAMEGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1486,148,NULL,'SAN CRISTOBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1487,148,NULL,'TORATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1488,149,NULL,'OMATE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1489,149,NULL,'CHOJATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1490,149,NULL,'COALAQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1491,149,NULL,'ICHUÑA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1492,149,NULL,'LA CAPILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1493,149,NULL,'LLOQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1494,149,NULL,'MATALAQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1495,149,NULL,'PUQUINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1496,149,NULL,'QUINISTAQUILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1497,149,NULL,'UBINAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1498,149,NULL,'YUNGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1499,150,NULL,'ILO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1500,150,NULL,'EL ALGARROBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1501,150,NULL,'PACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1502,151,NULL,'CHAUPIMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1503,151,NULL,'HUACHON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1504,151,NULL,'HUARIACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1505,151,NULL,'HUAYLLAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1506,151,NULL,'NINACACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1507,151,NULL,'PALLANCHACRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1508,151,NULL,'PAUCARTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1509,151,NULL,'SAN FCO.DE ASIS DE YARUSYAC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1510,151,NULL,'SIMON BOLIVAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1511,151,NULL,'TICLACAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1512,151,NULL,'TINYAHUARCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1513,151,NULL,'VICCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1514,151,NULL,'YANACANCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1515,152,NULL,'YANAHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1516,152,NULL,'CHACAYAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1517,152,NULL,'GOYLLARISQUIZGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1518,152,NULL,'PAUCAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1519,152,NULL,'SAN PEDRO DE PILLAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1520,152,NULL,'SANTA ANA DE TUSI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1521,152,NULL,'TAPUC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1522,152,NULL,'VILCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1523,153,NULL,'OXAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1524,153,NULL,'CHONTABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1525,153,NULL,'HUANCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1526,153,NULL,'PALCAZU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1527,153,NULL,'POZUZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1528,153,NULL,'PUERTO BERMUDEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1529,153,NULL,'VILLA RICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1530,154,NULL,'PIURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1531,154,NULL,'CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1532,154,NULL,'CATACAOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1533,154,NULL,'CURA MORI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1534,154,NULL,'EL TALLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1535,154,NULL,'LA ARENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1536,154,NULL,'LA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(1537,154,NULL,'LAS LOMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1538,154,NULL,'TAMBO GRANDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1539,155,NULL,'AYABACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1540,155,NULL,'FRIAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1541,155,NULL,'JILILI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1542,155,NULL,'LAGUNAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1543,155,NULL,'MONTERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1544,155,NULL,'PACAIPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1545,155,NULL,'PAIMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1546,155,NULL,'SAPILLICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1547,155,NULL,'SICCHEZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1548,155,NULL,'SUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1549,156,NULL,'HUANCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1550,156,NULL,'CANCHAQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1551,156,NULL,'EL CARMEN DE LA FRONTERA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1552,156,NULL,'HUARMACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1553,156,NULL,'LALAQUIZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1554,156,NULL,'SAN MIGUEL DE EL FAIQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1555,156,NULL,'SONDOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1556,156,NULL,'SONDORILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1557,157,NULL,'CHULUCANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1558,157,NULL,'BUENOS AIRES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1559,157,NULL,'CHALACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1560,157,NULL,'LA MATANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1561,157,NULL,'MORROPON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1562,157,NULL,'SALITRAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1563,157,NULL,'SAN JUAN DE BIGOTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1564,157,NULL,'SANTA CATALINA DE MOSSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1565,157,NULL,'SANTO DOMINGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1566,157,NULL,'YAMANGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1567,158,NULL,'PAITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1568,158,NULL,'AMOTAPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1569,158,NULL,'ARENAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1570,158,NULL,'COLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1571,158,NULL,'LA HUACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1572,158,NULL,'TAMARINDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1573,158,NULL,'VICHAYAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1574,159,NULL,'SULLANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1575,159,NULL,'BELLAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1576,159,NULL,'IGNACIO ESCUDERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1577,159,NULL,'LANCONES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1578,159,NULL,'MARCAVELICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1579,159,NULL,'MIGUEL CHECA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1580,159,NULL,'QUERECOTILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1581,159,NULL,'SALITRAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1582,160,NULL,'PARIÑAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1583,160,NULL,'EL ALTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1584,160,NULL,'LA BREA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1585,160,NULL,'LOBITOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1586,160,NULL,'LOS ORGANOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1587,160,NULL,'MANCORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1588,161,NULL,'SECHURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1589,161,NULL,'BELLAVISTA DE LA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(1590,161,NULL,'BERNAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1591,161,NULL,'CRISTO NOS VALGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1592,161,NULL,'VICE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1593,161,NULL,'RINCONADA LLICUAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1594,162,NULL,'PUNO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1595,162,NULL,'ACORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1596,162,NULL,'AMANTANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1597,162,NULL,'ATUNCOLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1598,162,NULL,'CAPACHICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1599,162,NULL,'CHUCUITO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1600,162,NULL,'COATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1601,162,NULL,'HUATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1602,162,NULL,'MAÑAZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1603,162,NULL,'PAUCARCOLLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1604,162,NULL,'PICHACANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1605,162,NULL,'PLATERIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1606,162,NULL,'SAN ANTONIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1607,162,NULL,'TIQUILLACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1608,162,NULL,'VILQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1609,163,NULL,'AZANGARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1610,163,NULL,'ACHAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1611,163,NULL,'ARAPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1612,163,NULL,'ASILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1613,163,NULL,'CAMINACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1614,163,NULL,'CHUPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1615,163,NULL,'JOSE DOMINGO CHOQUEHUANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1616,163,NULL,'MUÑANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1617,163,NULL,'POTONI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1618,163,NULL,'SAMAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1619,163,NULL,'SAN ANTON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1620,163,NULL,'SAN JOSE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1621,163,NULL,'SAN JUAN DE SALINAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1622,163,NULL,'SANTIAGO DE PUPUJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1623,163,NULL,'TIRAPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1624,164,NULL,'MACUSANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1625,164,NULL,'AJOYANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1626,164,NULL,'AYAPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1627,164,NULL,'COASA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1628,164,NULL,'CORANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1629,164,NULL,'CRUCERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1630,164,NULL,'ITUATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1631,164,NULL,'OLLACHEA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1632,164,NULL,'SAN GABAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1633,164,NULL,'USICAYOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1634,165,NULL,'JULI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1635,165,NULL,'DESAGUADERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1636,165,NULL,'HUACULLANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1637,165,NULL,'KELLUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1638,165,NULL,'PISACOMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1639,165,NULL,'POMATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1640,165,NULL,'ZEPITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1641,166,NULL,'ILAVE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1642,166,NULL,'CAPAZO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1643,166,NULL,'PILCUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1644,166,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1645,166,NULL,'CONDURIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1646,167,NULL,'HUANCANE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1647,167,NULL,'COJATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1648,167,NULL,'HUATASANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1649,167,NULL,'INCHUPALLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1650,167,NULL,'PUSI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1651,167,NULL,'ROSASPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1652,167,NULL,'TARACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1653,167,NULL,'VILQUE CHICO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1654,168,NULL,'LAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1655,168,NULL,'CABANILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1656,168,NULL,'CALAPUJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1657,168,NULL,'NICASIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1658,168,NULL,'OCUVIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1659,168,NULL,'PALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1660,168,NULL,'PARATIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1661,168,NULL,'PUCARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1662,168,NULL,'SANTA LUCIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1663,168,NULL,'VILAVILA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1664,169,NULL,'AYAVIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1665,169,NULL,'ANTAUTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1666,169,NULL,'CUPI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1667,169,NULL,'LLALLI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1668,169,NULL,'MACARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1669,169,NULL,'NUÑOA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1670,169,NULL,'ORURILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1671,169,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1672,169,NULL,'UMACHIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1673,170,NULL,'MOHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1674,170,NULL,'CONIMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1675,170,NULL,'HUAYRAPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1676,170,NULL,'TILALI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1677,171,NULL,'PUTINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1678,171,NULL,'ANANEA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1679,171,NULL,'PEDRO VILCA APAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1680,171,NULL,'QUILCAPUNCU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1681,171,NULL,'SINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1682,172,NULL,'JULIACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1683,172,NULL,'CABANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1684,172,NULL,'CABANILLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1685,172,NULL,'CARACOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1686,173,NULL,'SANDIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1687,173,NULL,'CUYOCUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1688,173,NULL,'LIMBANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1689,173,NULL,'PATAMBUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1690,173,NULL,'PHARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1691,173,NULL,'QUIACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1692,173,NULL,'SAN JUAN DEL ORO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1693,173,NULL,'YANAHUAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1694,173,NULL,'ALTO INAMBARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1695,173,NULL,'SAN PEDRO DE PUTINA PUNCU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1696,174,NULL,'YUNGUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1697,174,NULL,'ANAPIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1698,174,NULL,'COPANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1699,174,NULL,'CUTURAPI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1700,174,NULL,'OLLARAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1701,174,NULL,'TINICACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1702,174,NULL,'UNICACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1703,175,NULL,'MOYOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1704,175,NULL,'CALZADA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1705,175,NULL,'HABANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1706,175,NULL,'JEPELACIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1707,175,NULL,'SORITOR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1708,175,NULL,'YANTALO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1709,176,NULL,'BELLAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1710,176,NULL,'ALTO BIAVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1711,176,NULL,'BAJO BIAVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1712,176,NULL,'HUALLAGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1713,176,NULL,'SAN PABLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1714,176,NULL,'SAN RAFAEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1715,177,NULL,'SAN JOSE DE SISA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1716,177,NULL,'AGUA BLANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1717,177,NULL,'SAN MARTIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1718,177,NULL,'SANTA ROSA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1719,177,NULL,'SHATOJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1720,178,NULL,'SAPOSOA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1721,178,NULL,'ALTO SAPOSOA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1722,178,NULL,'EL ESLABON',NULL,NULL,NULL,NULL,NULL,NULL,1),(1723,178,NULL,'PISCOYACU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1724,178,NULL,'SACANCHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1725,178,NULL,'TINGO DE SAPOSOA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1726,179,NULL,'LAMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1727,179,NULL,'ALONSO DE ALVARADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1728,179,NULL,'BARRANQUITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1729,179,NULL,'CAYNARACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1730,179,NULL,'CUÑUMBUQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1731,179,NULL,'PINTO RECODO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1732,179,NULL,'RUMISAPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1733,179,NULL,'SAN ROQUE DE CUMBAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1734,179,NULL,'SHANAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1735,179,NULL,'TABALOSOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1736,179,NULL,'ZAPATERO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1737,180,NULL,'JUANJUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1738,180,NULL,'CAMPANILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1739,180,NULL,'HUICUNGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1740,180,NULL,'PACHIZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1741,180,NULL,'PAJARILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1742,181,NULL,'PICOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1743,181,NULL,'BUENOS AIRES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1744,181,NULL,'CASPISAPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1745,181,NULL,'PILLUANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1746,181,NULL,'PUCACACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1747,181,NULL,'SAN CRISTOBAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1748,181,NULL,'SAN HILARION',NULL,NULL,NULL,NULL,NULL,NULL,1),(1749,181,NULL,'SHAMBOYACU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1750,181,NULL,'TINGO DE PONASA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1751,181,NULL,'TRES UNIDOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1752,182,NULL,'RIOJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1753,182,NULL,'AWAJUN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1754,182,NULL,'ELIAS SOPLIN VARGAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1755,182,NULL,'NUEVA CAJAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1756,182,NULL,'PARDO MIGUEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1757,182,NULL,'POSIC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1758,182,NULL,'SAN FERNANDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1759,182,NULL,'YORONGOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1760,182,NULL,'YURACYACU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1761,183,NULL,'TARAPOTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1762,183,NULL,'ALBERTO LEVEAU',NULL,NULL,NULL,NULL,NULL,NULL,1),(1763,183,NULL,'CACATACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1764,183,NULL,'CHAZUTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1765,183,NULL,'CHIPURANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1766,183,NULL,'EL PORVENIR',NULL,NULL,NULL,NULL,NULL,NULL,1),(1767,183,NULL,'HUIMBAYOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(1768,183,NULL,'JUAN GUERRA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1769,183,NULL,'LA BANDA DE SHILCAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1770,183,NULL,'MORALES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1771,183,NULL,'PAPAPLAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1772,183,NULL,'SAN ANTONIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1773,183,NULL,'SAUCE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1774,183,NULL,'SHAPAJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1775,184,NULL,'TOCACHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1776,184,NULL,'NUEVO PROGRESO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1777,184,NULL,'POLVORA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1778,184,NULL,'SHUNTE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1779,184,NULL,'UCHIZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1780,185,NULL,'TACNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1781,185,NULL,'ALTO DE LA ALIANZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1782,185,NULL,'CALANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1783,185,NULL,'CIUDAD NUEVA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1784,185,NULL,'INCLAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1785,185,NULL,'PACHIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1786,185,NULL,'PALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1787,185,NULL,'POCOLLAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1788,185,NULL,'SAMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1789,185,NULL,'CRNEL.GREGORIO ALBARRACIN LANCHIPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1790,186,NULL,'CANDARAVE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1791,186,NULL,'CAIRANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1792,186,NULL,'CAMILACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1793,186,NULL,'CURIBAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1794,186,NULL,'HUANUARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1795,186,NULL,'QUILAHUANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1796,187,NULL,'LOCUMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1797,187,NULL,'ILABAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1798,187,NULL,'ITE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1799,188,NULL,'TARATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1800,188,NULL,'CHUCATAMANI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1801,188,NULL,'ESTIQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1802,188,NULL,'ESTIQUE-PAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1803,188,NULL,'SITAJARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1804,188,NULL,'SUSAPAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1805,188,NULL,'TARUCACHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1806,188,NULL,'TICACO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1807,189,NULL,'TUMBES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1808,189,NULL,'CORRALES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1809,189,NULL,'LA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(1810,189,NULL,'PAMPAS DE HOSPITAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1811,189,NULL,'SAN JACINTO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1812,189,NULL,'SAN JUAN DE LA VIRGEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1813,190,NULL,'ZORRITOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1814,190,NULL,'CASITAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1815,190,NULL,'CANOAS DE PUNTA SAL 8/',NULL,NULL,NULL,NULL,NULL,NULL,1),(1816,191,NULL,'ZARUMILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1817,191,NULL,'AGUAS VERDES',NULL,NULL,NULL,NULL,NULL,NULL,1),(1818,191,NULL,'MATAPALO',NULL,NULL,NULL,NULL,NULL,NULL,1),(1819,191,NULL,'PAPAYAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(1820,192,NULL,'CALLERIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1821,192,NULL,'CAMPOVERDE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1822,192,NULL,'IPARIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1823,192,NULL,'MASISEA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1824,192,NULL,'YARINACOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1825,192,NULL,'NUEVA REQUENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1826,192,NULL,'MANANTAY 9/',NULL,NULL,NULL,NULL,NULL,NULL,1),(1827,193,NULL,'RAYMONDI',NULL,NULL,NULL,NULL,NULL,NULL,1),(1828,193,NULL,'SEPAHUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1829,193,NULL,'TAHUANIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1830,193,NULL,'YURUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1831,194,NULL,'PADRE ABAD',NULL,NULL,NULL,NULL,NULL,NULL,1),(1832,194,NULL,'IRAZOLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1833,194,NULL,'CURIMANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1834,195,NULL,'PURUS',NULL,NULL,NULL,NULL,NULL,NULL,1),(1835,128,2,'CHOSICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(1836,128,2,'HUAYCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(1837,128,2,'MANCHAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(1838,128,4,'PUEBLO LIBRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(1839,128,NULL,'CUZCO',NULL,'2018-11-07 14:55:58',NULL,NULL,NULL,NULL,1),(1840,128,NULL,'AREQUIPA',NULL,'2018-09-19 14:56:34',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_idtype`
--

DROP TABLE IF EXISTS `tbl_idtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_idtype` (
  `idtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `idtype_name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_idtype`
--

LOCK TABLES `tbl_idtype` WRITE;
/*!40000 ALTER TABLE `tbl_idtype` DISABLE KEYS */;
INSERT INTO `tbl_idtype` VALUES (1,'DNI','2017-12-05 12:32:41',NULL,NULL,1,NULL,NULL,1),(2,'Carnet de extranjería','2017-12-05 12:32:41',NULL,NULL,1,NULL,NULL,1),(3,'Pasaporte','2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_idtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_image`
--

DROP TABLE IF EXISTS `tbl_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) DEFAULT NULL,
  `image_description` varchar(200) DEFAULT NULL,
  `image_url` varchar(150) DEFAULT NULL,
  `imagem_url` varchar(150) DEFAULT NULL,
  `image_link` varchar(150) DEFAULT NULL,
  `image_type` enum('SLIDER','HOME','BANNERS') DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id_UNIQUE` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_image`
--

LOCK TABLES `tbl_image` WRITE;
/*!40000 ALTER TABLE `tbl_image` DISABLE KEYS */;
INSERT INTO `tbl_image` VALUES (1,'img-slider-1','1. Banner Principal','images/img-slider-1.jpeg','images/mimg-slider-1.jpeg','https://tienda.bitel.com.pe/postpago/Bitel/chip-bitel/portabilidad/ichip-plus-39_90','SLIDER',1),(2,'img-slider-2','2. Segundo Banner','images/img-slider-2.png','images/mimg-slider-2.png','https://tienda.bitel.com.pe/postpago/lenovo/vibe-b/portabilidad/ichip-plus-39_90','SLIDER',1),(3,'img-slider-3','3. Tercer Banner','images/img-slider-3.png','images//img-slider-3.jpeg','https://www.bitel.com.pe/','SLIDER',1),(4,'img-slider-4','4. Cuarto Banner','images//img-slider-4.jpeg','images//img-slider-4.jpeg','https://www.bitel.com.pe/','SLIDER',0),(5,'img-slider-5','5. Quinto Banner','images/img-slider-5.gif','','Link Actualizado','SLIDER',1),(6,'img-slider-6','6. Sexto Banner','images/img-slider-6.gif','images/img-slider-6.png','Link Actualizado','SLIDER',1),(7,'img-home-7','1. Imágen de Equipos','images/img-home-7.jpeg','images/mimg-home-7.jpeg','google.com','HOME',1),(8,'img-home-8','2. Equipo Promocionado 1','images/img-home-8.jpeg','images//img-home-8.jpeg','https://www.google.com/','HOME',1),(9,'img-home-9','3. Equipo Promocionado 2','images/img-home-9.jpeg','images//img-home-9.jpeg','https://www.facebook.com/','HOME',1),(10,'img-banner-10','1. Banner Postpago','images/img-banner-10.jpeg','images/mimg-banner-10.jpeg','https://www.google.com/','BANNERS',1),(11,'img-banner-11','2. Banner Prepago','images//img-banner-11.jpeg','images/mimg-banner-11.jpeg','https://www.facebook.com/','BANNERS',1),(12,'img-banner-12','3. Banner Accesorios','images//img-banner-12.jpeg','images//img-banner-12.jpeg','https://www.facebook.com/','BANNERS',1),(13,'img-banner-13','4. Banner Promociones','images//img-banner-13.jpeg','images//img-banner-13.jpeg','https://www.google.com/','BANNERS',1);
/*!40000 ALTER TABLE `tbl_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `order_id` int(10) NOT NULL,
  `idtype_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `tracking_code` varchar(50) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `id_number` varchar(20) NOT NULL,
  `billing_district` int(11) NOT NULL,
  `billing_phone` varchar(20) DEFAULT NULL,
  `source_operator` varchar(45) DEFAULT NULL,
  `porting_phone` varchar(45) DEFAULT NULL,
  `delivery_address` varchar(150) NOT NULL,
  `delivery_district` int(11) NOT NULL,
  `contact_email` varchar(150) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `credit_status` enum('Pendiente','Aprobada','Rechazada','Observada') DEFAULT 'Pendiente',
  `service_type` varchar(150) DEFAULT NULL,
  `affiliation_type` varchar(150) DEFAULT NULL,
  `type_number_carry` enum('Prepaid','Postpaid','') DEFAULT NULL,
  `has_debt` tinyint(1) NOT NULL DEFAULT '0',
  `isdn_status` enum('0','5','4','6') NOT NULL DEFAULT '0',
  `porting_request_id` varchar(20) DEFAULT NULL,
  `mnp_request_id` varchar(20) DEFAULT NULL,
  `porting_state_code` varchar(20) DEFAULT NULL,
  `porting_status` varchar(20) DEFAULT NULL,
  `porting_status_desc` text,
  `total` decimal(6,2) NOT NULL,
  `total_igv` decimal(6,2) NOT NULL,
  `terminos_condiciones` tinyint(1) DEFAULT '0',
  `idschedule_id` int(11) NOT NULL DEFAULT '1',
  `store_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`),
  KEY `fk_tbl_order_tbl_idtype1_idx` (`idtype_id`),
  KEY `fk_tbl_order_tbl_payment_method1_idx` (`payment_method_id`),
  KEY `fk_tbl_order_tbl_branch1_idx` (`branch_id`),
  KEY `fk_tbl_order_tbl_district_delivery_idx` (`delivery_district`),
  KEY `fk_tbl_order_tbl_schedule` (`idschedule_id`),
  CONSTRAINT `fk_tbl_order_tbl_branch1` FOREIGN KEY (`branch_id`) REFERENCES `tbl_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_tbl_district_delivery` FOREIGN KEY (`delivery_district`) REFERENCES `tbl_district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_tbl_idtype1` FOREIGN KEY (`idtype_id`) REFERENCES `tbl_idtype` (`idtype_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_tbl_payment_method1` FOREIGN KEY (`payment_method_id`) REFERENCES `tbl_payment_method` (`payment_method_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_tbl_schedule` FOREIGN KEY (`idschedule_id`) REFERENCES `tbl_schedule` (`idschedule_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,1,4,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','263751',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 13:06:43','2018-02-07 13:13:13',NULL,1,NULL,NULL,1),(2,1,4,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','263753',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1),(3,1,4,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','263709',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1),(4,1,4,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','263710',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 13:06:44',NULL,NULL,1,NULL,NULL,1),(5,1,4,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','263711',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 13:06:45',NULL,NULL,1,NULL,NULL,1),(6,1,3,7,'11231231','rodrigo','abanto','11231231',1249,'973711271','','','Lima17',1278,'rodrigoab93@gmail.com','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,0,1,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(7,1,3,7,'11231231','rodrigo','abanto','11231231',1249,'973711271','','','Lima17',1278,'rodrigoab93@gmail.com','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,0,1,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(8,1,3,7,'11231231','rodrigo','abanto','11231231',1249,'973711271','','','Lima17',1278,'rodrigoab93@gmail.com','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,0,1,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(9,1,3,7,'11231231','rodrigo','abanto','11231231',1249,'973711271','','','Lima17',1278,'rodrigoab93@gmail.com','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,0,1,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(10,1,3,7,'11231231','rodrigo','abanto','11231231',1249,'973711271','','','Lima17',1278,'rodrigoab93@gmail.com','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,0,1,NULL,'2018-02-07 13:08:37',NULL,NULL,1,NULL,NULL,1),(11,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1),(12,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1),(13,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:34','2018-02-07 13:12:50',NULL,1,NULL,NULL,1),(14,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:35',NULL,NULL,1,NULL,NULL,1),(15,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:36',NULL,NULL,1,NULL,NULL,1),(16,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(17,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(18,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(19,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:38','2018-02-07 13:12:07',NULL,1,NULL,NULL,1),(20,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(21,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:41','2018-02-07 13:12:32',NULL,1,NULL,NULL,1),(22,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(23,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(24,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(25,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:42','2018-02-07 13:11:45',NULL,1,NULL,NULL,1),(26,2,4,2,'as12d1d1d12d','rodrigo','abanto','as12d1d1d12d',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-07 13:10:43',NULL,NULL,1,NULL,NULL,1),(27,1,2,1,'45677136','Diego','Chinga Olivera','45677136',1835,'996800986','Claro, América Móvil S.A.C','996800986','Av. Gregorio Escobedo 542',1258,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','263907',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 14:30:35',NULL,NULL,1,NULL,NULL,1),(28,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264634',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:00:11',NULL,NULL,1,NULL,NULL,1),(29,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264639',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 19:02:39',NULL,NULL,1,NULL,NULL,1),(30,1,4,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264663',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-07 19:04:03',NULL,NULL,1,NULL,NULL,1),(31,1,4,4,'48010886','rodrigo','abanto','48010886',1249,'973711271','Entel Perú S.A','973711271','Lima17',679,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','264664',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 19:04:10',NULL,NULL,1,NULL,NULL,1),(32,1,3,3,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Convergia Perú S.A.','996800986','Av. Gregorio Escobedo 542',1252,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264683',NULL,NULL,NULL,NULL,409.18,499.00,0,1,NULL,'2018-02-07 19:07:45',NULL,NULL,1,NULL,NULL,1),(33,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264699',NULL,NULL,NULL,NULL,409.18,499.00,0,1,NULL,'2018-02-07 19:13:39',NULL,NULL,1,NULL,NULL,1),(34,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264649',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 19:18:53',NULL,NULL,1,NULL,NULL,1),(35,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264790',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(36,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264791',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(37,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264792',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(38,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264793',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(39,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264794',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-07 19:54:46',NULL,NULL,1,NULL,NULL,1),(40,1,3,6,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1250,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264800',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 19:58:12',NULL,NULL,1,NULL,NULL,1),(41,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Convergia Perú S.A.','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264801',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 19:59:03',NULL,NULL,1,NULL,NULL,1),(42,1,2,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264816',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:06:55',NULL,NULL,1,NULL,NULL,1),(43,1,3,4,'45677136','Diego','chinga Olivera','45677136',1262,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264846',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:25:14',NULL,NULL,1,NULL,NULL,1),(44,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1253,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264870',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:41:59',NULL,NULL,1,NULL,NULL,1),(45,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1253,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264871',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:42:00',NULL,NULL,1,NULL,NULL,1),(46,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1253,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264872',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1),(47,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1253,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264873',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1),(48,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1253,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264875',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:42:03',NULL,NULL,1,NULL,NULL,1),(49,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Claro, América Móvil S.A.C','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264883',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-07 20:45:35',NULL,NULL,1,NULL,NULL,1),(50,1,2,4,'46485759','Rosa','Ordoñez Cairo','46485759',1249,'997645659','Claro, América Móvil S.A.C','997645659','Prueba',679,'rosa.ordoniez@gmail.com','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','264930',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 00:06:06',NULL,NULL,1,NULL,NULL,1),(51,1,3,3,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Convergia Perú S.A.','996800986','Av. Gregorio Escobedo 542',1252,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264933',NULL,NULL,NULL,NULL,655.18,799.00,0,1,NULL,'2018-02-08 00:16:29',NULL,NULL,1,NULL,NULL,1),(52,1,2,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264951',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 00:40:20',NULL,NULL,1,NULL,NULL,1),(53,1,2,3,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1252,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264952',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 00:45:27',NULL,NULL,1,NULL,NULL,1),(54,1,3,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264934',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 00:47:23',NULL,NULL,1,NULL,NULL,1),(55,1,3,2,'45677136','Diego','Chinga Olivera','45677136',1257,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542',1835,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264935',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 01:07:21',NULL,NULL,1,NULL,NULL,1),(56,1,3,6,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Viettel Peru S.A.C.','996800986','Av. Gregorio Escobedo 542 Dpto. 602',1250,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264936',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 01:29:00',NULL,NULL,1,NULL,NULL,1),(57,1,2,3,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1252,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264937',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 01:37:40',NULL,NULL,1,NULL,NULL,1),(58,1,4,4,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542, Dpto. 602',679,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264938',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 01:44:59',NULL,NULL,1,NULL,NULL,1),(59,1,3,2,'45677136','Diego','Chinga Olivera','45677136',1252,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542',1257,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264955',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-08 02:18:55',NULL,NULL,1,NULL,NULL,1),(60,1,3,2,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264956',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 02:19:54',NULL,NULL,1,NULL,NULL,1),(61,1,3,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264939',NULL,NULL,NULL,NULL,655.18,799.00,0,1,NULL,'2018-02-08 02:27:31',NULL,NULL,1,NULL,NULL,1),(62,1,2,6,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Americatel Perú S.A.C','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1250,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','264940',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 02:29:40',NULL,NULL,1,NULL,NULL,1),(63,1,1,1,'46485759','Rosa','Ordoñez','46485759',1251,'997645659','Claro, América Móvil S.A.C','997645659','ppppppppppppppp',1260,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','264965',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 08:30:22',NULL,NULL,1,NULL,NULL,1),(64,1,2,3,'10752611','Christian','Zevallos','10752611',1256,'989088337','Claro, América Móvil S.A.C','989088337','Lima',1252,'czevallos99@gmail.com','989088337','Pendiente','Postpago','Portabilidad',NULL,0,'0','265075',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 10:03:49',NULL,NULL,1,NULL,NULL,1),(65,1,4,4,'44444444','rodrigo','abanto','44444444',1249,'973711271','Americatel Perú S.A.C','973711271','Lima17',1253,'rodrigoab93@gmail.com','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','265125',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 10:13:35',NULL,NULL,1,NULL,NULL,1),(66,1,4,6,'24144234','rosrigoas','asdaskjh','24144234',1260,'12312312312','Fijo - Telefónica del Perú S.A.A.','141223423','qwdasdasd',1250,'rodrigo.abanto@forceclose.pe','21312312','Pendiente','Postpago','Portabilidad',NULL,0,'0','265115',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 10:16:01',NULL,NULL,1,NULL,NULL,1),(67,1,3,2,'12312312','rosrigoas','asdasdas','12312312',1259,'12312312312','','','asdasda',1262,'rodrigo.abanto@forceclose.pe','123123123','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-02-08 10:17:23',NULL,NULL,1,NULL,NULL,1),(68,1,4,3,'48010886','rodrigo','abanto','48010886',1249,'973711271','Entel Perú S.A','973711271','Lima17',1252,'rodrigoab93@gmail.com','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','265119',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 10:18:09',NULL,NULL,1,NULL,NULL,1),(69,1,4,4,'12312312','rosrigoas','asd','12312312',1250,'123123123','Convergia Perú S.A.','12312312312','asdasdas',1253,'rodrigo.abanto@forceclose.pe','12312312312','Pendiente','Postpago','Portabilidad',NULL,0,'0','265564',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 12:52:34',NULL,NULL,1,NULL,NULL,1),(70,1,4,4,'41231231','rodrigo','abanto','41231231',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',679,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','265567',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 12:53:30',NULL,NULL,1,NULL,NULL,1),(71,1,2,2,'45677136','Diego','Chinga Olivera','45677136',1253,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1836,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','265848',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:16:46',NULL,NULL,1,NULL,NULL,1),(72,1,2,2,'45677136','Diego','chinga Olivera','45677136',1261,'996800986','Fijo - Telefónica del Perú S.A.A.','996800986','Av. Gregorio Escobedo 542, Dpto. 602',1251,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','265814',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-08 15:17:45',NULL,NULL,1,NULL,NULL,1),(73,1,3,3,'48010886','rodrigo','abanto','48010886',1249,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','Lima17',1252,'rodrigo.abanto@forceclose.pe','973711271','Observada','Postpago','Portabilidad',NULL,0,'0','265854',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:21:51','2018-05-15 10:39:34',NULL,1,NULL,NULL,1),(74,1,3,3,'48010886','rodrigo','abanto','48010886',1249,'973711271','Americatel Perú S.A.C','973711271','Lima17',1252,'rodrigo.abanto@forceclose.pe','973711271','Rechazada','Postpago','Portabilidad',NULL,0,'0','265856',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:22:41','2018-05-15 10:39:30',NULL,1,NULL,NULL,1),(75,1,2,2,'48010886','rodrigo','abanto','48010886',1249,'973711271','Convergia Perú S.A.','973711271','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Aprobada','Postpago','Portabilidad',NULL,0,'0','265858',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:23:52','2018-05-15 10:39:25',NULL,1,NULL,NULL,1),(76,2,1,2,'490123917263','rodrigo','abanto','490123917263',1249,'973711271','','','Lima17',1251,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 15:26:59',NULL,NULL,1,NULL,NULL,1),(77,1,4,2,'48010886','rodrigo','abanto','48010886',678,'973712711','Fijo - Telefónica del Perú S.A.A.','973711271','123123123',1251,'rodrigo.abanto@forceclose.pe','123123123','Pendiente','Postpago','Portabilidad',NULL,0,'0','265895',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:29:24',NULL,NULL,1,NULL,NULL,1),(78,3,4,2,'asdasdasdas','asdasd','asdasd','asdasdasdas',1256,'12312312312','Convergia Perú S.A.','123123123','asdasdar',1255,'rodrigo.abanto@forceclose.pe','12312312','Pendiente','Postpago','Portabilidad',NULL,0,'0','265897',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 15:30:47',NULL,NULL,1,NULL,NULL,1),(79,1,1,4,'12312311','rasdasd','asdasd','12312311',1252,'12312312','','','asdasd',679,'rodrigo.abanto@forceclose.pe','123123123','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-02-08 15:32:51',NULL,NULL,1,NULL,NULL,1),(80,1,1,4,'46485759','Rosa','Ordoñez','46485759',1252,'997645659','Claro, América Móvil S.A.C','997645659','qqqqqqqqqqq',1261,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','265906',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 15:35:35',NULL,NULL,1,NULL,NULL,1),(81,1,1,1,'46485759','Maria','Gonzales','46485759',1260,'997645659','Claro, América Móvil S.A.C','997645659','qqqqqqqqqqqqq',1260,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','265909',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 15:36:45',NULL,NULL,1,NULL,NULL,1),(82,1,1,2,'46485759','Rosa','Ordoñez','46485759',1260,'997645659','Claro, América Móvil S.A.C','997645659','qq',1257,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','265914',NULL,NULL,NULL,NULL,1393.18,1699.00,0,1,NULL,'2018-02-08 15:39:52',NULL,NULL,1,NULL,NULL,1),(83,1,2,3,'46485759','Rosa','Ordoñez Cairo','46485759',1249,'997645659','Claro, América Móvil S.A.C','997645659','Los Olivos',1252,'rosa.ordoniez@gmail.com','997645659','Pendiente','Postpago','Linea Nueva',NULL,0,'0','265921',NULL,NULL,NULL,NULL,491.18,599.00,0,1,NULL,'2018-02-08 15:43:56',NULL,NULL,1,NULL,NULL,1),(84,1,4,2,'46485759','Rosa','Ordoñez','46485759',1267,'997645659','Claro, América Móvil S.A.C','997645659','qqqq',1266,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','265928',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-08 15:45:49',NULL,NULL,1,NULL,NULL,1),(85,1,2,4,'10752611','christian','zevallos','10752611',1255,'989088337','Americatel Perú S.A.C','9898999999','Lima',678,'czevallos99@gmail.com','989088337','Pendiente','Postpago','Portabilidad',NULL,0,'0','265929',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:47:00',NULL,NULL,1,NULL,NULL,1),(86,1,3,4,'46485759','Angela','Ordoñez','46485759',1262,'997645659','Claro, América Móvil S.A.C','997645659','qqqqqqqqqqqqqq',1261,'rosa.ordonez@bitel.com.pe','997645659','Pendiente','Postpago','Portabilidad',NULL,0,'0','265936',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-08 15:51:07',NULL,NULL,1,NULL,NULL,1),(87,1,2,6,'48010886','rodrigo','abanto','48010886',1252,'973711271','','','Av. Javier Prado 751',1250,'rodrigo.abanto@forceclose.pe','973712271','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-02-20 23:07:39',NULL,NULL,1,NULL,NULL,1),(88,1,2,4,'12312312','rodrigo','abanto','12312312',1249,'973711271','','','Lima17',1253,'rodrigo.abanto@forceclose.pe','12312312312','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-20 23:12:05',NULL,NULL,1,NULL,NULL,1),(89,1,4,2,'12312312','rodrigo','abanto','12312312',1249,'973711271','','','Lima17',1251,'rodrigoab93@gmail.com','12312312312','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-20 23:14:07',NULL,NULL,1,NULL,NULL,1),(90,1,2,3,'45677136','Diego ernesto','Olivera','45677136',1261,'996800986','','','Av. Gregorio Escobedo 542, Dpto. 602',1252,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1639.18,1999.00,0,1,NULL,'2018-02-21 03:28:17',NULL,NULL,1,NULL,NULL,1),(91,1,3,6,'45677136','Diego ernesto','Olivera','45677136',1261,'996800986','','','Av. Gregorio Escobedo 542, Dpto. 602',1250,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-02-21 03:32:51',NULL,NULL,1,NULL,NULL,1),(92,1,4,1,'45232313','Juan','Perez','45232313',1260,'1212121221','Claro, América Móvil S.A.C','994318479','Calle las alondras 343',1260,'eder@deec.com','12323','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-03-19 18:16:01',NULL,NULL,1,NULL,NULL,1),(93,1,4,1,'10379052','Carlos','Euribe','10379052',1258,'920654734','Entel Perú S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','921654734','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,164.00,200.00,0,1,NULL,'2018-04-16 17:30:17',NULL,NULL,1,NULL,NULL,1),(94,1,4,1,'10379052','Luis','Cardenas','10379052',1257,'920654734','Entel Perú S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','920654734','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,0,1,NULL,'2018-04-16 19:17:35',NULL,NULL,1,NULL,NULL,1),(95,1,4,3,'45456365','deryue ey er','etyjetyj etyj y','45456365',1840,'54654645654','Fijo - Telefónica del Perú S.A.A.','45654656546','PREVENTA HUAWEI',1256,'carlos.euribe@forceclose.pe','75675675676','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-04-18 17:52:58',NULL,NULL,1,NULL,NULL,1),(96,1,4,4,'48010886','Rodrigo','Abanto Blanco','48010886',1839,'973711271','Entel Perú S.A','973711271','PREVENTA HUAWEI',1840,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,0,1,NULL,'2018-04-18 17:56:12',NULL,NULL,1,NULL,NULL,1),(97,1,4,4,'20323421','Chris','Garcia','20323421',678,'78966565656','','','PREVENTA HUAWEI',1253,'chris@f.com','11111111111','Pendiente','Postpago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1476.00,1800.00,0,1,NULL,'2018-04-19 17:07:59','2018-05-02 17:08:38',NULL,1,NULL,NULL,1),(98,2,4,1,'ddfsd2222222','sdsf','sdfsd','ddfsd2222222',1839,'15445444444','Fijo - Telefónica del Perú S.A.A.','54545454545','PREVENTA HUAWEI',1260,'sdasd@hotmail.com','323423','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1721.18,2099.00,0,1,NULL,'2018-04-19 17:30:42','2018-05-02 09:27:01',NULL,1,NULL,NULL,1),(99,1,4,2,'14785203','Johsddf','Porfdggdf','14785203',1260,'12345678999','','','PREVENTA HUAWEI',1285,'a@gmail.com','12345678912','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,409.18,499.00,0,1,NULL,'2018-04-19 17:49:10',NULL,NULL,1,NULL,NULL,1),(100,1,4,2,'23424234','sdsdf','xfgdfgd','23424234',1259,'55555555555','','','PREVENTA HUAWEI',1835,'3434@hmai.com','15987815158','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,2296.00,2800.00,0,1,NULL,'2018-04-19 17:55:03','2018-05-02 09:27:27',NULL,1,NULL,NULL,1),(101,1,4,7,'72255454','Johari','Garcia','72255454',1261,'955852641','','','PREVENTA HUAWEI',1278,'chris.garcia@forceclose.pe','955852641','Aprobada','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-04-19 20:56:41','2018-04-19 15:59:10',NULL,1,NULL,NULL,1),(102,1,4,6,'42579860','Rodolfo','Campos Tarazona','42579860',1273,'989669146','Entel Perú S.A','955321599','PREVENTA HUAWEI',1273,'rcampost.ing@gmail.com','989669146','Aprobada','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,363.42,443.20,0,1,NULL,'2018-04-20 04:58:58','2018-05-02 09:27:53',NULL,1,NULL,NULL,1),(103,1,4,6,'48010886','Rodrigo','Abanto','48010886',1250,'973711271','Americatel Perú S.A.C','973711271','PREVENTA HUAWEI',1250,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,7.38,9.00,0,1,NULL,'2018-04-23 17:02:10',NULL,NULL,1,NULL,NULL,1),(104,1,4,4,'14785203','fsdf','sdfsd','14785203',1260,'959154547','Americatel Perú S.A.C','5145645656','PREVENTA HUAWEI',1840,'asasd@gmail.com','4848451','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1476.00,1800.00,0,1,NULL,'2018-05-02 21:50:06',NULL,NULL,1,NULL,NULL,1),(105,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Rechazada','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,455.10,555.00,0,1,NULL,'2018-05-07 20:21:06','2018-05-07 16:29:43',NULL,1,NULL,NULL,1),(106,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,455.10,555.00,0,1,NULL,'2018-05-07 22:38:39',NULL,NULL,1,NULL,NULL,1),(107,1,4,4,'45677136','Diego','Chinga','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,455.10,555.00,0,1,NULL,'2018-05-07 22:54:25',NULL,NULL,1,NULL,NULL,1),(108,1,4,4,'45677136','Diego','Chinga','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,455.10,555.00,0,1,NULL,'2018-05-07 23:25:53',NULL,NULL,1,NULL,NULL,1),(109,1,4,4,'00000000','Andrés','Benavides','00000000',1249,'999999999','Claro, América Móvil S.A.C','999999999','PREVENTA HUAWEI',1249,'correo.de.prueba@gmail.com','999999999','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,1476.00,1800.00,0,1,NULL,'2018-05-08 13:51:55','2018-05-08 09:23:38',NULL,1,NULL,NULL,1),(110,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,455.10,555.00,0,1,NULL,'2018-05-08 14:57:17',NULL,NULL,1,NULL,NULL,1),(111,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','',NULL,NULL,NULL,NULL,540.38,659.00,0,1,NULL,'2018-05-09 15:02:35',NULL,NULL,1,NULL,NULL,1),(112,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','504244',NULL,NULL,NULL,NULL,646.98,789.00,0,1,NULL,'2018-05-09 22:24:40',NULL,NULL,1,NULL,NULL,1),(113,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','504299','5230184','01_REJECTED','0','01_REJECTED',646.98,789.00,0,1,NULL,'2018-05-09 22:38:01',NULL,NULL,1,NULL,NULL,1),(114,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','Movistar, Telefónica Móviles S.A','996800986','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Portabilidad',NULL,0,'0','504874','5233388','01_REJECTED','01_REJECTED','The telephone number does not correspond to the legal id document indicated, or the requesting party is no longer a subscriber.',1885.18,2299.00,0,1,NULL,'2018-05-09 23:58:16',NULL,NULL,1,NULL,NULL,1),(115,1,4,7,'72005799','Johari','Garcia','72005799',1278,'966410333','Claro, América Móvil S.A.C','966410333','PREVENTA HUAWEI',1278,'chris.garcia@forceclose.pe','966410333','Observada','Postpago','Portabilidad',NULL,0,'0','507208','5247051','01_REJECTED','01_REJECTED','The number does not belong to the transferor operator',1476.00,1800.00,0,1,NULL,'2018-05-10 19:18:22','2018-05-10 14:26:30',NULL,1,NULL,NULL,1),(116,1,4,4,'14785203','asda','asda','14785203',1836,'966410333','Entel Perú S.A','966410333','PREVENTA HUAWEI',1253,'chris.garcia@forceclose.pe','966410333','Aprobada','Postpago','Portabilidad',NULL,0,'0','507234','5247275','01_REJECTED','01_REJECTED','Numbering within the minimum contractual period',646.98,789.00,0,1,NULL,'2018-05-10 19:27:49','2018-05-10 14:29:20',NULL,1,NULL,NULL,1),(117,2,4,1,'46a4s5d4asd','asdasd','asdasd','46a4s5d4asd',1261,'973711271','Fijo - Telefónica del Perú S.A.A.','973711271','PREVENTA HUAWEI',1260,'chris.garcia@forceclose.pe','973711271','Rechazada','Postpago','Portabilidad',NULL,0,'0','507281','5247488','01_REJECTED','01_REJECTED','The number does not belong to the transferor operator',123.00,150.00,0,1,NULL,'2018-05-10 19:35:49','2018-05-10 14:36:34',NULL,1,NULL,NULL,1),(118,2,4,1,'845545455','afsdf','sdfsdf','845545455',1836,'973711271','Entel Perú S.A','973711271','PREVENTA HUAWEI',1260,'rodrigo.abanto@forceclose.pe','973711271','Pendiente','Postpago','Portabilidad',NULL,0,'0','507290','5247588','01_REJECTED','01_REJECTED','The subcriber has the service suspended',7.38,9.00,0,1,NULL,'2018-05-10 19:39:34',NULL,NULL,1,NULL,NULL,1),(119,2,4,3,'dsfsdf','efsdfsdf','sdfsdf','dsfsdf',1260,'962219994','Claro, América Móvil S.A.C','962219994','PREVENTA HUAWEI',1252,'chris.garcia@forceclose.pe','962219994','Pendiente','Postpago','Portabilidad',NULL,0,'0','507313','5247713','01_REJECTED','01_REJECTED','The telephone number does not correspond to the legal id document indicated, or the requesting party is no longer a subscriber.',646.98,789.00,0,1,NULL,'2018-05-10 19:44:01',NULL,NULL,1,NULL,NULL,1),(120,1,4,1,'06933999','Monica','Porras','06933999',1258,'989352399','Claro, América Móvil S.A.C','989352399','PREVENTA HUAWEI',1260,'chris.garcia@forceclose.pe','989352399','Rechazada','Postpago','Portabilidad',NULL,0,'0','507344','5247818','01_ACCEPTED','01_ACCEPTED',NULL,81.18,99.00,0,1,NULL,'2018-05-10 19:47:47','2018-05-10 14:53:51',NULL,1,NULL,NULL,1),(121,1,4,3,'10752611','test','bitel','10752611',1256,'989088337','','','PREVENTA HUAWEI',1256,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1967.18,2399.00,0,1,NULL,'2018-05-16 14:48:01',NULL,NULL,1,NULL,NULL,1),(122,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1967.18,2399.00,0,1,NULL,'2018-05-17 04:45:11',NULL,NULL,1,NULL,NULL,1),(123,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,0,1,NULL,'2018-05-17 04:49:39',NULL,NULL,1,NULL,NULL,1),(124,1,4,4,'76610970','Diego','Chinga Olivera','76610970',1261,'928602538','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','928602538','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,0,1,NULL,'2018-05-21 17:46:31',NULL,NULL,1,NULL,NULL,1),(125,1,4,3,'76610970','test','bitel','76610970',1255,'928602538','','','PREVENTA HUAWEI',1256,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,983.18,1199.00,0,1,NULL,'2018-05-21 19:20:47','2018-09-05 16:14:52',NULL,1,NULL,NULL,1),(126,1,4,4,'76610970','Diego','Chinga Olivera','76610970',1261,'928602538','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','928602538','Pendiente','Postpago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,0,1,NULL,'2018-05-22 00:01:21','2018-09-05 16:09:55',NULL,1,NULL,NULL,1),(127,1,4,4,'45677136','Diego','Chinga Olivera','45677136',1261,'996800986','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','996800986','Pendiente','Prepago','Linea Nueva',NULL,0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-05-22 00:09:50','2018-09-05 16:03:30',NULL,1,NULL,NULL,1),(128,1,4,4,'76610970','Diego','Chinga Olivera','76610970',1261,'928602538','','','PREVENTA HUAWEI',1261,'diego.chinga@forceclose.pe','928602538','Pendiente','Prepago','Renovación',NULL,0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-05-22 00:18:59','2018-09-05 16:02:22',NULL,1,NULL,NULL,1),(129,1,4,6,'10752611','tienda','Bitel','10752611',1256,'989088337','Claro, América Móvil S.A.C','99999999999','test',1254,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)',NULL,0,'0','567980','5593506','02_PROCESSING','02_PROCESSING','Error de formato: Rango de Inicio',1885.18,2299.00,0,1,NULL,'2018-05-25 20:19:57','2018-05-25 16:48:02',NULL,1,NULL,NULL,1),(130,1,4,6,'48010886','rodrigo','abanto','48010886',1249,'973711271','Entel Perú S.A','973711271','Lima17',1250,'rodrigoab93@gmail.com','973711271','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)',NULL,0,'0','594483','5737753','01_ACCEPTED','01_ACCEPTED',NULL,540.38,659.00,0,1,NULL,'2018-05-31 20:53:42','2018-08-23 18:35:52',NULL,1,NULL,NULL,1),(131,1,4,1,'10379052','Carlos Luis','Euribe Solorzano','10379052',1258,'920654734','Entel Perú S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)',NULL,0,'0','',NULL,NULL,NULL,NULL,81.92,99.90,0,1,NULL,'2018-09-05 17:38:11','2018-09-05 12:40:39',NULL,1,NULL,NULL,1),(132,1,4,1,'10379052','Carlos Luis','r thrt rthtr','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,25.65,0,1,NULL,'2018-09-05 22:05:27',NULL,NULL,1,NULL,NULL,1),(133,1,4,1,'10379052','Carlos Luis','Euribe Solorzano','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,25.65,0,1,NULL,'2018-09-05 22:08:53',NULL,NULL,1,NULL,NULL,1),(134,1,4,1,'10379052','Carlos Luis','Euribe Solorzano','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,25.65,0,1,NULL,'2018-09-06 16:36:34','2018-09-06 11:56:42',NULL,1,NULL,NULL,1),(135,1,4,1,'10379052','Carlos Luis','Euribe Solorzano','10379052',1258,'920654734','','','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-09-06 16:37:34','2018-09-06 12:03:15',NULL,1,NULL,NULL,1),(136,1,4,4,'88888888','gsg','kbhjb','88888888',1256,'966368699','Claro, América Móvil S.A.C','966368699','wiiiiiiiiii',1840,'agente.prueba@bitel.pe','966368699','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,1476.00,1800.00,0,1,NULL,'2018-09-13 01:20:29',NULL,NULL,1,NULL,NULL,1),(137,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1258,'920654734','','','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,44.84,54.68,0,1,NULL,'2018-09-13 21:33:48',NULL,NULL,1,NULL,NULL,1),(138,1,4,2,'10379052','Carlos Luis Euribe Solorzano','','10379052',680,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1257,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,81.92,99.90,0,1,NULL,'2018-09-13 21:39:21',NULL,NULL,1,NULL,NULL,1),(139,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,81.92,99.90,0,1,NULL,'2018-09-13 22:18:43',NULL,NULL,1,NULL,NULL,1),(140,1,4,1,'10379052','Carlos Luis','','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,39.11,47.69,0,1,NULL,'2018-09-14 00:39:21',NULL,NULL,1,NULL,NULL,1),(141,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1839,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,48.13,58.69,0,1,NULL,'2018-09-17 21:17:54',NULL,NULL,1,NULL,NULL,1),(142,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1258,'920654730','','','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,0,1,NULL,'2018-09-17 21:22:01',NULL,NULL,1,NULL,NULL,1),(143,1,4,4,'10379052','Carlos Luis Euribe Solorzano','','10379052',1259,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',680,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,1.64,2.00,0,1,NULL,'2018-09-17 21:26:36',NULL,NULL,1,NULL,NULL,1),(144,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',680,'920654730','','','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1311.18,1599.00,0,1,NULL,'2018-09-17 21:34:35',NULL,NULL,1,NULL,NULL,1),(145,2,4,3,'848484848484','Carlos Luis Euribe Solorzano','','848484848484',1256,'920654739','','','Jr San Mateo 100 Urb San Carlos Comas',1256,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,8.20,10.00,0,1,NULL,'2018-09-17 21:38:21',NULL,NULL,1,NULL,NULL,1),(146,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1258,'920654730','Movistar, Telefónica Móviles S.A','920654730','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,1.00,26,1,2,'2018-09-21 17:07:59','2018-10-15 11:19:28',NULL,1,NULL,NULL,1),(147,1,4,1,'10379052','Carlos Luis','','10379052',1258,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1258,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,1.00,26,1,NULL,'2018-09-21 17:08:53',NULL,NULL,1,NULL,NULL,1),(148,1,4,1,'10379052','Carlos Luis Euribe Solorzano','','10379052',1261,'920654734','Entel Perú S.A','920654734','Jr San Mateo 100 Urb San Carlos Comas',1265,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,39.11,47.69,1,2,2,'2018-10-11 00:43:38','2018-10-22 12:46:34',NULL,1,NULL,NULL,1),(149,1,4,3,'10358785','Juan Luis Diaz Salinas','','10358785',1279,'920654734','Movistar, Telefónica Móviles S.A','920654734','Av Javier Prado 393',1270,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,1,5,'2018-10-15 16:31:20','2018-10-15 11:34:08',NULL,1,NULL,NULL,1),(150,2,4,4,'634543534534','Juana Maria Lopez Arellano','','634543534534',1257,'920654734','Claro, América Móvil S.A.C','920654734','Jr San Mateo 100 Urb San Carlos Comas',681,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,39.11,47.69,1,3,7,'2018-10-15 16:41:37','2018-10-15 11:45:17',NULL,1,NULL,NULL,1),(151,1,4,4,'54874488','Carlos Luis Solis Arteaga','','54874488',1262,'920654734','Claro, América Móvil S.A.C','920654734','Jr San Mateo 100 Urb San Carlos Comas',1249,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,69.70,85.00,1,2,8,'2018-10-17 15:35:03','2018-10-17 12:04:29',NULL,1,NULL,NULL,1),(152,1,4,3,'10456873','test','','10456873',1258,'98989898989','Entel Perú S.A','98989898989','whewewh',1256,'christian.zevallos@bitel.com.pe','898888888','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,2,5,'2018-10-17 17:15:49','2018-10-22 12:49:21',NULL,1,NULL,NULL,1),(153,1,4,4,'10379052','Juana Lopez','','10379052',0,'920654734','Entel Perú S.A','920654734','Jr Chacarilla 354',679,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,2,NULL,'2018-10-30 22:07:30',NULL,NULL,1,NULL,NULL,1),(154,2,4,2,'456455345353','Maria Salazar','','456455345353',0,'','','','Jr Chacarilla 354',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,49.49,60.35,1,1,NULL,'2018-10-30 22:12:11',NULL,NULL,1,NULL,NULL,1),(155,1,4,2,'45645645','Walter Cardenas','','45645645',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Av Javier Padro 746',1257,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,69.70,85.00,1,2,NULL,'2018-10-30 22:22:43',NULL,NULL,1,NULL,NULL,1),(156,1,4,4,'34545435','David Sanchez Cardenas','','34545435',0,'90654734','','','Av Javier Padro 746',681,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,1,3,NULL,'2018-10-30 22:26:31',NULL,NULL,1,NULL,NULL,1),(157,1,4,10,'34534534','Martha Salinas','','34534534',0,'45645645645','','','Jr Chacarilla 354',467,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,8.20,10.00,1,2,NULL,'2018-10-30 22:36:57',NULL,NULL,1,NULL,NULL,1),(158,1,4,2,'10752611','christian','','10752611',0,'98908833777','Entel Perú S.A','98908833777','ssdsdsdsdsdsdsds',1261,'45454545@rerere.com','54545454545','Pendiente','Prepago','Cambiate a Bitel (Portabilidad)','Prepaid',0,'0','',NULL,NULL,NULL,NULL,8.20,10.00,1,1,NULL,'2018-10-31 17:39:20',NULL,NULL,1,NULL,NULL,1),(159,1,4,2,'10379052','Carlos Luis Euribe Solorzano','','10379052',0,'920654734','Claro, América Móvil S.A.C','920654734','Jr San Mateo 100 Urb San Carlos',1257,'carlos.euribe@forceclose.pe','920654734','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Prepaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,2,NULL,'2018-11-05 20:16:02',NULL,NULL,1,NULL,NULL,1),(160,2,4,2,'635345345345','Juan Lopez Ramirez','','635345345345',0,'920654734','Claro, América Móvil S.A.C','920654734','Jr Chacarilla 354',1262,'carlos.euribe@forceclose.pe','920654734','Pendiente','Postpago','Cambiate a Bitel (Portabilidad)','Postpaid',0,'0','',NULL,NULL,NULL,NULL,5.74,7.00,1,2,NULL,'2018-11-05 20:37:35',NULL,NULL,1,NULL,NULL,1),(161,1,4,11,'10752611','christian Zevallos','','10752611',0,'989088337','Claro, América Móvil S.A.C','989088337','Calle los princesos',726,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,18.86,23.00,1,1,NULL,'2018-11-07 19:52:17',NULL,NULL,1,NULL,NULL,1),(162,1,4,2,'66666666','Enrique princeso santillana','','66666666',0,'','','','Calle los princesos 666',1837,'enrique.santillana@bitel.com.pe','999999999','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,48.13,58.69,1,2,NULL,'2018-11-07 19:58:56',NULL,NULL,1,NULL,NULL,1),(163,1,4,7,'10379052','Carlos Luis','','10379052',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr Chacarilla 354',1259,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,46.56,56.78,1,2,NULL,'2018-11-07 22:29:49',NULL,NULL,1,NULL,NULL,1),(164,1,4,3,'10752611','christian Zevallos','','10752611',0,'989088337','Claro, América Móvil S.A.C','989088337','sdnksdsjfjklc',1256,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,189.42,231.00,1,1,NULL,'2018-11-08 15:48:34',NULL,NULL,1,NULL,NULL,1),(165,1,4,2,'10379052','Ana Maria Salinas Lopez','','10379052',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Av Javier Padro 746',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,21.03,25.65,1,2,NULL,'2018-11-08 19:35:42',NULL,NULL,1,NULL,NULL,1),(166,1,4,2,'10379052','Julio Andres Lopez Cardenas','','10379052',0,'999999999','','','Jr Chacarilla 354',1261,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,8.20,10.00,1,1,NULL,'2018-11-08 19:59:35',NULL,NULL,1,NULL,NULL,1),(167,2,4,2,'346534533453','Juan Carlos Maldonado Zarate','','346534533453',0,'920654734','Virgin Mobile','920654734','Av Javier Padro 746',1261,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,69.70,85.00,1,3,NULL,'2018-11-08 20:19:11',NULL,NULL,1,NULL,NULL,1),(168,1,4,9,'84785588','Saul Jose Huertas Marengo','','84785588',0,'888888888','','','Av Javier Padro 746',333,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,1,3,NULL,'2018-11-08 20:23:17',NULL,NULL,1,NULL,NULL,1),(169,1,4,10,'10379059','Ivan Xavier Salas Portocarrero','','10379059',0,'920654734','Virgin Mobile','920654734','Av Javier Padro 746',467,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Prepaid',0,'0','',NULL,NULL,NULL,NULL,69.70,85.00,1,2,NULL,'2018-11-08 20:30:24',NULL,NULL,1,NULL,NULL,1),(170,1,4,7,'10379052','Angel Santiago Marcial Zarate','','10379052',0,'920654734','Claro, América Móvil S.A.C','920654734','Jr Chacarilla 354',1259,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,3,NULL,'2018-11-08 20:46:42',NULL,NULL,1,NULL,NULL,1),(171,1,4,2,'10379052','Carlos Luis Euribe Solorzano','','10379052',0,'920654734','Virgin Mobile','920654734','Jr Chacarilla 354',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,39.11,47.69,1,3,NULL,'2018-11-08 23:28:44',NULL,NULL,1,NULL,NULL,1),(172,1,4,11,'10752611','Chrisitian Zevallos','','10752611',0,'989088337','Claro, América Móvil S.A.C','989088337','Calle burrito.',726,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,39.11,47.69,1,2,NULL,'2018-11-09 15:38:40',NULL,NULL,1,NULL,NULL,1),(173,1,4,2,'10379052','Carlos Lopez','','10379052',0,'920654734','Virgin Mobile','920654734','Jr San Mateo 100 Urb San Carlos',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,1,NULL,'2018-11-09 20:45:00',NULL,NULL,1,NULL,NULL,1),(174,2,4,11,'345345345345','Ana Lopez Salas','','345345345345',0,'','','','Jr Chacarilla 354',681,'carlos.euribe@forceclose.pe','464564564','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,44.84,54.68,1,3,NULL,'2018-11-09 20:48:33',NULL,NULL,1,NULL,NULL,1),(175,1,4,7,'10379054','Karina Castillo','','10379054',0,'','','','Jr Chacarilla 354',1259,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,1,3,NULL,'2018-11-09 20:59:01',NULL,NULL,1,NULL,NULL,1),(176,1,4,2,'10378547','Juan Salas Martinez','','10378547',0,'920654734','Virgin Mobile','920654734','Jr Chacarilla 354',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Prepago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,1376.78,1679.00,1,2,NULL,'2018-11-09 21:04:27',NULL,NULL,1,NULL,NULL,1),(177,1,4,2,'10379052','Daniel Lopez Salinas','','10379052',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Av Javier Padro 746',1262,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Prepaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,2,NULL,'2018-11-09 21:31:39',NULL,NULL,1,NULL,NULL,1),(178,1,4,2,'10548484','Marcos Santana','','10548484',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr Chacarilla 354',1261,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,2,NULL,'2018-11-09 21:41:45',NULL,NULL,1,NULL,NULL,1),(179,3,4,10,'456546345345','Carlos Luis','','456546345345',0,'','','','Jr Chacarilla 354',467,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','',0,'0','',NULL,NULL,NULL,NULL,69.70,85.00,1,2,NULL,'2018-11-09 21:42:52',NULL,NULL,1,NULL,NULL,1),(180,1,4,4,'10752611','christian zevallos','','10752611',0,'989088337','Claro, América Móvil S.A.C','989088337','tu  burrito',1264,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,57.11,69.65,1,1,NULL,'2018-11-12 14:49:40',NULL,NULL,1,NULL,NULL,1),(181,1,4,11,'10752611','christian Zevallos Bustamante','','10752611',0,'','','','12131231sfrdefdfd',726,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1640.00,2000.00,1,1,NULL,'2018-11-12 14:58:25',NULL,NULL,1,NULL,NULL,1),(182,1,4,2,'10379052','esta es una prueba','','10379052',0,'920654734','Entel Perú S.A','920654734','Jr San Mateo 100 Urb San Carlos',1257,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Prepaid',0,'0','',NULL,NULL,NULL,NULL,37.43,45.65,1,3,NULL,'2018-11-12 15:04:35',NULL,NULL,1,NULL,NULL,1),(183,1,4,10,'10752611','christian test','','10752611',0,'888888888','Claro, América Móvil S.A.C','888888888','werererere',468,'christian.zevallos@bitel.com.pe','888888888','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,4.10,5.00,1,1,NULL,'2018-11-12 15:06:20',NULL,NULL,1,NULL,NULL,1),(184,1,4,4,'10752611','christian zevallos','','10752611',0,'','','','sdsdsdsdsd',680,'christian.zevallos@bitel.com.pe','556565656','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1246.40,1520.00,1,1,NULL,'2018-11-12 15:08:22',NULL,NULL,1,NULL,NULL,1),(185,1,4,11,'10752611','Christián Zevallos','','10752611',0,'989088333','Movistar, Telefónica Móviles S.A','989088333','Djdjjdjsjjsjs',681,'Christián.zevallos@bitel.com.pe','989088333','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,57.11,69.65,1,2,NULL,'2018-11-12 15:34:23',NULL,NULL,1,NULL,NULL,1),(186,1,4,4,'10752611','Christián Zevallos','','10752611',0,'','','','Bdjejejbwjw',682,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,45.92,56.00,1,2,NULL,'2018-11-12 15:37:55',NULL,NULL,1,NULL,NULL,1),(187,1,4,4,'10752611','Christián Zevallos','','10752611',0,'','','','Jdjdndnxk',682,'Christián.zevallos@bitel.com.pe','999988888','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,8.20,10.00,1,2,NULL,'2018-11-12 15:43:33',NULL,NULL,1,NULL,NULL,1),(188,1,4,2,'10379052','Carlos Lopez','','10379052',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Jr Chacarilla 354',1257,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','1783368','10669993','01_REJECTED','01_REJECTED','El Cedente no respondió a la Consulta Previa',37.43,45.65,1,2,NULL,'2018-11-12 17:47:05',NULL,NULL,1,NULL,NULL,1),(189,1,4,7,'10379052','Juan Cardenas','','10379052',0,'920654734','Movistar, Telefónica Móviles S.A','920654734','Av Javier Padro 746',1259,'carlos.euribe@forceclose.pe','4874641','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','1783439','10670299','01_REJECTED','01_REJECTED','El Cedente no respondió a la Consulta Previa',37.43,45.65,1,1,NULL,'2018-11-12 17:53:27',NULL,NULL,1,NULL,NULL,1),(190,1,4,7,'65656565','christian zevallos','','65656565',0,'','','','eerererererererrer',1263,'christian.zevallos@bitel.com.pe','888888888','Aprobada','Postpago','Portabilidad','',0,'0','',NULL,NULL,NULL,NULL,5.74,7.00,1,2,NULL,'2018-11-22 17:13:26','2018-11-29 17:14:04',NULL,1,NULL,NULL,1),(191,1,4,2,'12332145','bbb','','12332145',0,'','','','1351',1266,'numero@numerazo.com','123321440','Pendiente','Postpago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,1476.00,1800.00,1,2,NULL,'2018-12-10 20:08:51',NULL,NULL,1,NULL,NULL,1),(192,1,4,4,'32659874','Pruebauno','','32659874',0,'','','','La direccion de la prueba 1',1249,'alexander.olivares@forceclose.pe','999996254','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,62.32,76.00,1,1,NULL,'2019-01-28 14:19:09',NULL,NULL,1,NULL,NULL,1),(193,1,4,4,'32659877','Pruebados','','32659877',0,'','','','La direccion de la prueba2',1249,'alexander.olivares@forceclose.pe','945655546','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,212.38,259.00,1,2,NULL,'2019-01-28 14:24:02',NULL,NULL,1,NULL,NULL,1),(194,1,4,4,'32659812','Pruebatres','','32659812',0,'','','','la direccion de la prueba 3',1249,'alexander.olivares@forceclose.pe','955884321','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,1,3,NULL,'2019-01-28 14:27:51',NULL,NULL,1,NULL,NULL,1),(195,1,4,4,'32659878','Pruebacuatro','','32659878',0,'','','','LA DIRECCION DE LA PRUEBA 4',1249,'alexander.olivares@forceclose.pe','945655547','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,212.38,259.00,1,2,NULL,'2019-01-28 15:07:50',NULL,NULL,1,NULL,NULL,1),(196,2,4,4,'g465456456','Pruebafinal','','g465456456',0,'','','','Direccion de la prueba final',1249,'alexander.olivares@forceclose.pe','945655544','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,1,2,NULL,'2019-01-29 00:21:01',NULL,NULL,1,NULL,NULL,1),(197,1,4,11,'12356478','djsnds','','12356478',0,'','','','Cerca de cuzco',726,'alexander.olivares@forceclose.pe','945655546','Pendiente','Prepago','Linea Nueva','',0,'0','',NULL,NULL,NULL,NULL,245.18,299.00,1,2,NULL,'2019-01-29 00:23:23',NULL,NULL,1,NULL,NULL,1),(198,1,4,6,'45677136','Diego CHinga','','45677136',0,'996800986','Entel Perú S.A','996800986','Calle ABCD 123',1250,'diego.chinga@forceclose.pe','999999999','Aprobada','Postpago','Portabilidad','Postpaid',0,'0','2590361','13710928','01_REJECTED','01_REJECTED','El número de teléfono no corresponde al documento de ID legal indicado, o la parte solicitante ya no es un abonado.',46.56,56.78,1,1,NULL,'2019-02-06 16:32:12','2019-02-06 11:57:17',NULL,1,NULL,NULL,1),(199,1,4,4,'46043942','Junior Meza','','46043942',0,'994318480','Entel Perú S.A','994318480','Calle ABFGHHG',1249,'junior.meza@forceclose.pe','994318480','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','2597081','13735205','01_ACCEPTED','01_ACCEPTED',NULL,37.43,45.65,1,2,NULL,'2019-02-06 23:10:35',NULL,NULL,1,NULL,NULL,1),(200,1,4,10,'89765412','jfbgjkdbgjkfdbgjfdbkjgdf','','89765412',0,'986565324','Entel Perú S.A','986565324','puedes dejarlo en cualquier luagr',467,'aolivaresrz@gmail.com','985642321','Pendiente','Postpago','Portabilidad','Prepaid',0,'0','2739723','14223743','01_REJECTED','01_REJECTED','El Número de Teléfono no pertenece al Cedente.',46.56,56.78,1,1,NULL,'2019-02-19 16:55:00','2019-03-06 10:23:38',NULL,1,NULL,NULL,1),(201,1,4,2,'46043942','Junior meza','','46043942',0,'994318480','Entel Perú S.A','994318480','Calle Los cedros 563',1285,'juniormezapr@gmail.com','994318480','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,2460.00,3000.00,1,1,NULL,'2019-03-07 15:24:10',NULL,NULL,1,NULL,NULL,1),(202,1,4,6,'46911698','Anthony Roger Cantuta Jorge','','46911698',0,'923474430','Entel Perú S.A','923474430','Calle ABCD 23434',1250,'anthony.cantuta@forceclose.pe','923474430','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,2460.00,3000.00,1,1,NULL,'2019-03-07 15:31:54',NULL,NULL,1,NULL,NULL,1),(203,1,4,2,'46911698','Junior Meza Bazan','','46911698',0,'994318480','Entel Perú S.A','994318480','Calle Los cedros 563',1285,'juniormezapr@gmail.com','994318480','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,328.00,400.00,1,1,NULL,'2019-03-07 15:56:22',NULL,NULL,1,NULL,NULL,1),(204,1,4,6,'46911698','Junior Meza Bazan','','46911698',0,'994318480','Entel Perú S.A','994318480','Calle Los cedros 563',1250,'junior.meza@forceclose.pe','994318480','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,2460.00,3000.00,1,1,NULL,'2019-03-07 16:04:26',NULL,NULL,1,NULL,NULL,1),(205,1,4,7,'11111111','Norca CC Bitel','','11111111',0,'989088334','Entel Perú S.A','989088334','Avenida el exitos y la felicidad',1259,'test@test.com','989088334','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,902.00,1100.00,1,2,NULL,'2019-03-18 22:59:47',NULL,NULL,1,NULL,NULL,1),(206,1,4,1,'10752611','christian Zevallos','','10752611',0,'989088337','Claro, América Móvil S.A.C','989088337','testy',1265,'christian.zevallos@bitel.com.pe','989088337','Pendiente','Postpago','Portabilidad','Postpaid',0,'0','',NULL,NULL,NULL,NULL,2460.00,3000.00,1,1,NULL,'2019-03-19 21:46:00',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_item`
--

DROP TABLE IF EXISTS `tbl_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `stock_model_id` int(11) NOT NULL,
  `product_variation_id` int(11) DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `subtotal` decimal(6,2) NOT NULL,
  `subtotal_igv` decimal(6,2) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `equipo_plan` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `fk_tbl_order_item_tbl_order1_idx` (`order_id`),
  KEY `fk_tbl_order_item_tbl_stock_model1_idx` (`stock_model_id`),
  KEY `fk_tbl_order_item_tbl_product_variation1_idx` (`product_variation_id`),
  KEY `fk_tbl_order_item_tbl_promo1_idx` (`promo_id`),
  CONSTRAINT `fk_tbl_order_item_tbl_order1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  CONSTRAINT `fk_tbl_order_item_tbl_product_variation1` FOREIGN KEY (`product_variation_id`) REFERENCES `tbl_product_variation` (`product_variation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_item_tbl_promo1` FOREIGN KEY (`promo_id`) REFERENCES `tbl_promo` (`promo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_item_tbl_stock_model1` FOREIGN KEY (`stock_model_id`) REFERENCES `tbl_stock_model` (`stock_model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_item`
--

LOCK TABLES `tbl_order_item` WRITE;
/*!40000 ALTER TABLE `tbl_order_item` DISABLE KEYS */;
INSERT INTO `tbl_order_item` VALUES (1,1,4,437,NULL,1,7.38,9.00,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1,0),(2,2,4,437,NULL,1,7.38,9.00,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1,0),(3,3,4,437,NULL,1,7.38,9.00,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1,0),(4,4,4,437,NULL,1,7.38,9.00,'2018-02-07 13:06:44',NULL,NULL,1,NULL,NULL,1,0),(5,5,4,437,NULL,1,7.38,9.00,'2018-02-07 13:06:45',NULL,NULL,1,NULL,NULL,1,0),(6,6,12,806,NULL,1,245.18,299.00,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1,0),(7,7,12,806,NULL,1,245.18,299.00,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1,0),(8,8,12,806,NULL,1,245.18,299.00,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1,0),(9,9,12,806,NULL,1,245.18,299.00,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1,0),(10,10,12,806,NULL,1,245.18,299.00,'2018-02-07 13:08:37',NULL,NULL,1,NULL,NULL,1,0),(11,11,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1,0),(12,12,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1,0),(13,13,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1,0),(14,14,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:35',NULL,NULL,1,NULL,NULL,1,0),(15,15,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:36',NULL,NULL,1,NULL,NULL,1,0),(16,16,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1,0),(17,17,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1,0),(18,18,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1,0),(19,19,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1,0),(20,20,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1,0),(21,21,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1,0),(22,22,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1,0),(23,23,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1,0),(24,24,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1,0),(25,25,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:42',NULL,NULL,1,NULL,NULL,1,0),(26,26,6,229,NULL,1,1639.18,1999.00,'2018-02-07 13:10:43',NULL,NULL,1,NULL,NULL,1,0),(27,27,6,489,NULL,1,1393.18,1699.00,'2018-02-07 14:30:35',NULL,NULL,1,NULL,NULL,1,0),(28,28,4,437,NULL,1,7.38,9.00,'2018-02-07 19:00:11',NULL,NULL,1,NULL,NULL,1,0),(29,29,6,489,NULL,1,1393.18,1699.00,'2018-02-07 19:02:39',NULL,NULL,1,NULL,NULL,1,0),(30,30,3,411,NULL,1,1311.18,1599.00,'2018-02-07 19:04:03',NULL,NULL,1,NULL,NULL,1,0),(31,31,6,489,NULL,1,1393.18,1699.00,'2018-02-07 19:04:10',NULL,NULL,1,NULL,NULL,1,0),(32,32,3,413,NULL,1,409.18,499.00,'2018-02-07 19:07:45',NULL,NULL,1,NULL,NULL,1,0),(33,33,3,413,NULL,1,409.18,499.00,'2018-02-07 19:13:39',NULL,NULL,1,NULL,NULL,1,0),(34,34,6,489,NULL,1,1393.18,1699.00,'2018-02-07 19:18:53',NULL,NULL,1,NULL,NULL,1,0),(35,35,4,437,NULL,1,7.38,9.00,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1,0),(36,36,4,437,NULL,1,7.38,9.00,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1,0),(37,37,4,437,NULL,1,7.38,9.00,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1,0),(38,38,4,437,NULL,1,7.38,9.00,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1,0),(39,39,4,437,NULL,1,7.38,9.00,'2018-02-07 19:54:46',NULL,NULL,1,NULL,NULL,1,0),(40,40,6,489,NULL,1,1393.18,1699.00,'2018-02-07 19:58:12',NULL,NULL,1,NULL,NULL,1,0),(41,41,6,489,NULL,1,1393.18,1699.00,'2018-02-07 19:59:03',NULL,NULL,1,NULL,NULL,1,0),(42,42,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:06:55',NULL,NULL,1,NULL,NULL,1,0),(43,43,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:25:14',NULL,NULL,1,NULL,NULL,1,0),(44,44,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:41:59',NULL,NULL,1,NULL,NULL,1,0),(45,45,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:42:00',NULL,NULL,1,NULL,NULL,1,0),(46,46,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1,0),(47,47,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1,0),(48,48,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:42:03',NULL,NULL,1,NULL,NULL,1,0),(49,49,6,489,NULL,1,1393.18,1699.00,'2018-02-07 20:45:35',NULL,NULL,1,NULL,NULL,1,0),(50,50,3,411,NULL,1,1311.18,1599.00,'2018-02-08 00:06:06',NULL,NULL,1,NULL,NULL,1,0),(51,51,3,412,NULL,1,655.18,799.00,'2018-02-08 00:16:29',NULL,NULL,1,NULL,NULL,1,0),(52,52,6,489,NULL,1,1393.18,1699.00,'2018-02-08 00:40:20',NULL,NULL,1,NULL,NULL,1,0),(53,53,6,489,NULL,1,1393.18,1699.00,'2018-02-08 00:45:27',NULL,NULL,1,NULL,NULL,1,0),(54,54,6,489,NULL,1,1393.18,1699.00,'2018-02-08 00:47:23',NULL,NULL,1,NULL,NULL,1,0),(55,55,4,437,NULL,1,7.38,9.00,'2018-02-08 01:07:21',NULL,NULL,1,NULL,NULL,1,0),(56,56,6,489,NULL,1,1393.18,1699.00,'2018-02-08 01:29:00',NULL,NULL,1,NULL,NULL,1,0),(57,57,6,489,NULL,1,1393.18,1699.00,'2018-02-08 01:37:40',NULL,NULL,1,NULL,NULL,1,0),(58,58,6,489,NULL,1,1393.18,1699.00,'2018-02-08 01:44:59',NULL,NULL,1,NULL,NULL,1,0),(59,59,6,490,NULL,1,1639.18,1999.00,'2018-02-08 02:18:55',NULL,NULL,1,NULL,NULL,1,0),(60,60,6,489,NULL,1,1393.18,1699.00,'2018-02-08 02:19:54',NULL,NULL,1,NULL,NULL,1,0),(61,61,3,412,NULL,1,655.18,799.00,'2018-02-08 02:27:31',NULL,NULL,1,NULL,NULL,1,0),(62,62,6,489,NULL,1,1393.18,1699.00,'2018-02-08 02:29:40',NULL,NULL,1,NULL,NULL,1,0),(63,63,4,437,NULL,1,7.38,9.00,'2018-02-08 08:30:22',NULL,NULL,1,NULL,NULL,1,0),(64,64,3,411,NULL,1,1311.18,1599.00,'2018-02-08 10:03:49',NULL,NULL,1,NULL,NULL,1,0),(65,65,6,489,NULL,1,1393.18,1699.00,'2018-02-08 10:13:35',NULL,NULL,1,NULL,NULL,1,0),(66,66,6,489,NULL,1,1393.18,1699.00,'2018-02-08 10:16:01',NULL,NULL,1,NULL,NULL,1,0),(67,67,1,797,NULL,1,1376.78,1679.00,'2018-02-08 10:17:23',NULL,NULL,1,NULL,NULL,1,0),(68,68,3,411,NULL,1,1311.18,1599.00,'2018-02-08 10:18:09',NULL,NULL,1,NULL,NULL,1,0),(69,69,6,489,NULL,1,1393.18,1699.00,'2018-02-08 12:52:34',NULL,NULL,1,NULL,NULL,1,0),(70,70,6,489,NULL,1,1393.18,1699.00,'2018-02-08 12:53:30',NULL,NULL,1,NULL,NULL,1,0),(71,71,4,437,NULL,1,7.38,9.00,'2018-02-08 15:16:46',NULL,NULL,1,NULL,NULL,1,0),(72,72,6,491,NULL,1,1639.18,1999.00,'2018-02-08 15:17:45',NULL,NULL,1,NULL,NULL,1,0),(73,73,4,437,NULL,1,7.38,9.00,'2018-02-08 15:21:51',NULL,NULL,1,NULL,NULL,1,0),(74,74,4,437,NULL,1,7.38,9.00,'2018-02-08 15:22:41',NULL,NULL,1,NULL,NULL,1,0),(75,75,4,437,NULL,1,7.38,9.00,'2018-02-08 15:23:52',NULL,NULL,1,NULL,NULL,1,0),(76,76,4,804,10,1,1311.18,1599.00,'2018-02-08 15:26:59',NULL,NULL,1,NULL,NULL,1,0),(77,77,4,437,NULL,1,7.38,9.00,'2018-02-08 15:29:24',NULL,NULL,1,NULL,NULL,1,0),(78,78,6,489,NULL,1,1393.18,1699.00,'2018-02-08 15:30:47',NULL,NULL,1,NULL,NULL,1,0),(79,79,1,797,NULL,1,1376.78,1679.00,'2018-02-08 15:32:51',NULL,NULL,1,NULL,NULL,1,0),(80,80,6,489,NULL,1,1393.18,1699.00,'2018-02-08 15:35:35',NULL,NULL,1,NULL,NULL,1,0),(81,81,3,411,NULL,1,1311.18,1599.00,'2018-02-08 15:36:45',NULL,NULL,1,NULL,NULL,1,0),(82,82,6,489,NULL,1,1393.18,1699.00,'2018-02-08 15:39:52',NULL,NULL,1,NULL,NULL,1,0),(83,83,4,177,NULL,1,491.18,599.00,'2018-02-08 15:43:56',NULL,NULL,1,NULL,NULL,1,0),(84,84,3,411,NULL,1,1311.18,1599.00,'2018-02-08 15:45:49',NULL,NULL,1,NULL,NULL,1,0),(85,85,4,437,NULL,1,7.38,9.00,'2018-02-08 15:47:00',NULL,NULL,1,NULL,NULL,1,0),(86,86,4,437,NULL,1,7.38,9.00,'2018-02-08 15:51:07',NULL,NULL,1,NULL,NULL,1,0),(87,87,4,697,NULL,1,7.38,9.00,'2018-02-20 23:07:39',NULL,NULL,1,NULL,NULL,1,0),(88,88,6,229,NULL,1,1639.18,1999.00,'2018-02-20 23:12:05',NULL,NULL,1,NULL,NULL,1,0),(89,89,6,229,NULL,1,1639.18,1999.00,'2018-02-20 23:14:07',NULL,NULL,1,NULL,NULL,1,0),(90,90,6,229,NULL,1,1639.18,1999.00,'2018-02-21 03:28:17',NULL,NULL,1,NULL,NULL,1,0),(91,91,3,671,NULL,1,1311.18,1599.00,'2018-02-21 03:32:51',NULL,NULL,1,NULL,NULL,1,0),(92,92,3,411,NULL,1,1311.18,1599.00,'2018-03-19 18:16:01',NULL,NULL,1,NULL,NULL,1,0),(94,94,15,827,NULL,1,1640.00,2000.00,'2018-04-16 19:17:35',NULL,NULL,1,NULL,NULL,1,0),(95,95,4,437,NULL,1,7.38,9.00,'2018-04-18 17:52:58',NULL,NULL,1,NULL,NULL,1,0),(96,96,15,827,NULL,1,1640.00,2000.00,'2018-04-18 17:56:12',NULL,NULL,1,NULL,NULL,1,0),(97,97,15,829,NULL,1,1476.00,1800.00,'2018-04-19 17:07:59',NULL,NULL,1,NULL,NULL,1,0),(98,98,7,502,NULL,1,1721.18,2099.00,'2018-04-19 17:30:42',NULL,NULL,1,NULL,NULL,1,0),(99,99,4,698,NULL,1,409.18,499.00,'2018-04-19 17:49:10',NULL,NULL,1,NULL,NULL,1,0),(100,100,15,826,NULL,1,2296.00,2800.00,'2018-04-19 17:55:03',NULL,NULL,1,NULL,NULL,1,0),(101,101,1,797,NULL,1,1376.78,1679.00,'2018-04-19 20:56:41',NULL,NULL,1,NULL,NULL,1,0),(102,102,15,846,18,1,363.42,443.20,'2018-04-20 04:58:58',NULL,NULL,1,NULL,NULL,1,0),(103,103,4,437,NULL,1,7.38,9.00,'2018-04-23 17:02:10',NULL,NULL,1,NULL,NULL,1,0),(104,104,15,828,NULL,1,1476.00,1800.00,'2018-05-02 21:50:06',NULL,NULL,1,NULL,NULL,1,0),(105,105,20,911,NULL,1,455.10,555.00,'2018-05-07 20:21:06',NULL,NULL,1,NULL,NULL,1,0),(106,106,20,911,NULL,1,455.10,555.00,'2018-05-07 22:38:39',NULL,NULL,1,NULL,NULL,1,0),(107,107,20,911,NULL,1,455.10,555.00,'2018-05-07 22:54:25',NULL,NULL,1,NULL,NULL,1,0),(108,108,20,911,NULL,1,455.10,555.00,'2018-05-07 23:25:53',NULL,NULL,1,NULL,NULL,1,0),(109,109,17,852,19,1,1476.00,1800.00,'2018-05-08 13:51:55',NULL,NULL,1,NULL,NULL,1,0),(110,110,20,911,NULL,1,455.10,555.00,'2018-05-08 14:57:17',NULL,NULL,1,NULL,NULL,1,0),(111,111,4,430,NULL,1,540.38,659.00,'2018-05-09 15:02:35',NULL,NULL,1,NULL,NULL,1,0),(112,112,20,938,NULL,1,646.98,789.00,'2018-05-09 22:24:40',NULL,NULL,1,NULL,NULL,1,0),(113,113,20,938,NULL,1,646.98,789.00,'2018-05-09 22:38:01',NULL,NULL,1,NULL,NULL,1,0),(114,114,6,482,NULL,1,1885.18,2299.00,'2018-05-09 23:58:16',NULL,NULL,1,NULL,NULL,1,0),(115,115,17,852,19,1,1476.00,1800.00,'2018-05-10 19:18:22',NULL,NULL,1,NULL,NULL,1,0),(116,116,3,932,NULL,1,646.98,789.00,'2018-05-10 19:27:49',NULL,NULL,1,NULL,NULL,1,0),(117,117,17,873,NULL,1,123.00,150.00,'2018-05-10 19:35:49',NULL,NULL,1,NULL,NULL,1,0),(118,118,12,461,NULL,1,7.38,9.00,'2018-05-10 19:39:34',NULL,NULL,1,NULL,NULL,1,0),(119,119,3,932,NULL,1,646.98,789.00,'2018-05-10 19:44:01',NULL,NULL,1,NULL,NULL,1,0),(120,120,1,931,NULL,1,81.18,99.00,'2018-05-10 19:47:47',NULL,NULL,1,NULL,NULL,1,0),(121,121,3,676,NULL,1,1967.18,2399.00,'2018-05-16 14:48:01',NULL,NULL,1,NULL,NULL,1,0),(122,122,3,675,NULL,1,1967.18,2399.00,'2018-05-17 04:45:11',NULL,NULL,1,NULL,NULL,1,0),(123,123,15,832,NULL,1,1640.00,2000.00,'2018-05-17 04:49:39',NULL,NULL,1,NULL,NULL,1,0),(124,124,15,832,NULL,1,1640.00,2000.00,'2018-05-21 17:46:31',NULL,NULL,1,NULL,NULL,1,0),(125,125,1,605,NULL,1,983.18,1199.00,'2018-05-21 19:20:47',NULL,NULL,1,NULL,NULL,1,0),(126,126,15,832,NULL,1,1640.00,2000.00,'2018-05-22 00:01:21',NULL,NULL,1,NULL,NULL,1,0),(127,127,1,797,NULL,1,1376.78,1679.00,'2018-05-22 00:09:50',NULL,NULL,1,NULL,NULL,1,0),(128,128,1,797,NULL,1,1376.78,1679.00,'2018-05-22 00:18:59',NULL,NULL,1,NULL,NULL,1,0),(129,129,6,482,NULL,1,1885.18,2299.00,'2018-05-25 20:19:57',NULL,NULL,1,NULL,NULL,1,0),(130,130,4,430,NULL,1,540.38,659.00,'2018-05-31 20:53:42',NULL,NULL,1,NULL,NULL,1,0),(131,131,1,940,33,1,81.92,99.90,'2018-09-05 17:38:11',NULL,NULL,1,NULL,NULL,1,0),(132,132,1,962,NULL,1,21.03,25.65,'2018-09-05 22:05:27',NULL,NULL,1,NULL,NULL,1,0),(133,133,1,962,NULL,1,21.03,25.65,'2018-09-05 22:08:53',NULL,NULL,1,NULL,NULL,1,0),(134,134,1,962,NULL,1,21.03,25.65,'2018-09-06 16:36:34',NULL,NULL,1,NULL,NULL,1,0),(135,135,2,797,NULL,1,1376.78,1679.00,'2018-09-06 16:37:34',NULL,NULL,1,NULL,NULL,1,0),(136,136,17,852,19,1,1476.00,1800.00,'2018-09-13 01:20:29',NULL,NULL,1,NULL,NULL,1,0),(137,137,1,966,NULL,1,44.84,54.68,'2018-09-13 21:33:48',NULL,NULL,1,NULL,NULL,1,0),(138,138,1,940,33,1,81.92,99.90,'2018-09-13 21:39:21',NULL,NULL,1,NULL,NULL,1,0),(139,139,1,940,33,1,81.92,99.90,'2018-09-13 22:18:43',NULL,NULL,1,NULL,NULL,1,0),(140,140,15,978,NULL,1,39.11,47.69,'2018-09-14 00:39:21',NULL,NULL,1,NULL,NULL,1,0),(141,141,20,970,NULL,1,48.13,58.69,'2018-09-17 21:17:54',NULL,NULL,1,NULL,NULL,1,0),(142,142,1,797,NULL,1,1376.78,1679.00,'2018-09-17 21:22:01',NULL,NULL,1,NULL,NULL,1,0),(143,143,20,889,28,1,1.64,2.00,'2018-09-17 21:26:36',NULL,NULL,1,NULL,NULL,1,0),(144,144,4,804,10,1,1311.18,1599.00,'2018-09-17 21:34:35',NULL,NULL,1,NULL,NULL,1,0),(145,145,19,885,NULL,1,8.20,10.00,'2018-09-17 21:38:21',NULL,NULL,1,NULL,NULL,1,1),(146,146,1,962,NULL,1,21.03,25.65,'2018-09-21 17:07:59',NULL,NULL,1,NULL,NULL,1,0),(147,147,1,962,NULL,1,21.03,25.65,'2018-09-21 17:08:53',NULL,NULL,1,NULL,NULL,1,0),(148,148,3,976,NULL,1,39.11,47.69,'2018-10-11 00:43:38',NULL,NULL,1,NULL,NULL,1,0),(149,149,1,965,NULL,1,37.43,45.65,'2018-10-15 16:31:20',NULL,NULL,1,NULL,NULL,1,0),(150,150,15,978,NULL,1,39.11,47.69,'2018-10-15 16:41:37',NULL,NULL,1,NULL,NULL,1,0),(151,151,19,899,NULL,1,69.70,85.00,'2018-10-17 15:35:03',NULL,NULL,1,NULL,NULL,1,1),(152,152,1,965,NULL,1,37.43,45.65,'2018-10-17 17:15:49',NULL,NULL,1,NULL,NULL,1,0),(153,153,1,965,NULL,1,37.43,45.65,'2018-10-30 22:07:30',NULL,NULL,1,NULL,NULL,1,0),(154,154,1,967,NULL,1,49.49,60.35,'2018-10-30 22:12:11',NULL,NULL,1,NULL,NULL,1,0),(155,155,19,906,NULL,1,69.70,85.00,'2018-10-30 22:22:43',NULL,NULL,1,NULL,NULL,1,1),(156,156,1,797,NULL,1,1376.78,1679.00,'2018-10-30 22:26:31',NULL,NULL,1,NULL,NULL,1,0),(157,157,19,885,NULL,1,8.20,10.00,'2018-10-30 22:36:57',NULL,NULL,1,NULL,NULL,1,1),(158,158,19,885,NULL,1,8.20,10.00,'2018-10-31 17:39:20',NULL,NULL,1,NULL,NULL,1,1),(159,159,1,965,NULL,1,37.43,45.65,'2018-11-05 20:16:02',NULL,NULL,1,NULL,NULL,1,0),(160,160,19,903,NULL,1,5.74,7.00,'2018-11-05 20:37:35',NULL,NULL,1,NULL,NULL,1,1),(161,161,3,1035,NULL,1,18.86,23.00,'2018-11-07 19:52:17',NULL,NULL,1,NULL,NULL,1,0),(162,162,15,983,NULL,1,48.13,58.69,'2018-11-07 19:58:56',NULL,NULL,1,NULL,NULL,1,0),(163,163,28,1057,NULL,1,46.56,56.78,'2018-11-07 22:29:49',NULL,NULL,1,NULL,NULL,1,0),(164,164,29,1059,NULL,1,189.42,231.00,'2018-11-08 15:48:34',NULL,NULL,1,NULL,NULL,1,0),(165,165,1,1007,NULL,1,21.03,25.65,'2018-11-08 19:35:42',NULL,NULL,1,NULL,NULL,1,0),(166,166,19,885,NULL,1,8.20,10.00,'2018-11-08 19:59:35',NULL,NULL,1,NULL,NULL,1,1),(167,167,19,899,NULL,1,69.70,85.00,'2018-11-08 20:19:11',NULL,NULL,1,NULL,NULL,1,1),(168,168,1,797,NULL,1,1376.78,1679.00,'2018-11-08 20:23:17',NULL,NULL,1,NULL,NULL,1,0),(169,169,19,899,NULL,1,69.70,85.00,'2018-11-08 20:30:24',NULL,NULL,1,NULL,NULL,1,1),(170,170,1,965,NULL,1,37.43,45.65,'2018-11-08 20:46:42',NULL,NULL,1,NULL,NULL,1,0),(171,171,15,978,NULL,1,39.11,47.69,'2018-11-08 23:28:44',NULL,NULL,1,NULL,NULL,1,0),(172,172,3,976,NULL,1,39.11,47.69,'2018-11-09 15:38:40',NULL,NULL,1,NULL,NULL,1,0),(173,173,1,965,NULL,1,37.43,45.65,'2018-11-09 20:45:00',NULL,NULL,1,NULL,NULL,1,0),(174,174,1,966,NULL,1,44.84,54.68,'2018-11-09 20:48:33',NULL,NULL,1,NULL,NULL,1,0),(175,175,1,797,NULL,1,1376.78,1679.00,'2018-11-09 20:59:01',NULL,NULL,1,NULL,NULL,1,0),(176,176,1,797,NULL,1,1376.78,1679.00,'2018-11-09 21:04:27',NULL,NULL,1,NULL,NULL,1,0),(177,177,1,965,NULL,1,37.43,45.65,'2018-11-09 21:31:39',NULL,NULL,1,NULL,NULL,1,0),(178,178,1,965,NULL,1,37.43,45.65,'2018-11-09 21:41:45',NULL,NULL,1,NULL,NULL,1,0),(179,179,19,899,NULL,1,69.70,85.00,'2018-11-09 21:42:52',NULL,NULL,1,NULL,NULL,1,1),(180,180,15,980,NULL,1,57.11,69.65,'2018-11-12 14:49:40',NULL,NULL,1,NULL,NULL,1,0),(181,181,15,830,NULL,1,1640.00,2000.00,'2018-11-12 14:58:25',NULL,NULL,1,NULL,NULL,1,0),(182,182,1,965,NULL,1,37.43,45.65,'2018-11-12 15:04:35',NULL,NULL,1,NULL,NULL,1,0),(183,183,19,884,NULL,1,4.10,5.00,'2018-11-12 15:06:20',NULL,NULL,1,NULL,NULL,1,1),(184,184,19,922,NULL,1,1246.40,1520.00,'2018-11-12 15:08:22',NULL,NULL,1,NULL,NULL,1,1),(185,185,15,980,NULL,1,57.11,69.65,'2018-11-12 15:34:23',NULL,NULL,1,NULL,NULL,1,0),(186,186,3,1036,NULL,1,45.92,56.00,'2018-11-12 15:37:55',NULL,NULL,1,NULL,NULL,1,0),(187,187,19,885,NULL,1,8.20,10.00,'2018-11-12 15:43:33',NULL,NULL,1,NULL,NULL,1,1),(188,188,1,965,NULL,1,37.43,45.65,'2018-11-12 17:47:05',NULL,NULL,1,NULL,NULL,1,0),(189,189,1,965,NULL,1,37.43,45.65,'2018-11-12 17:53:27',NULL,NULL,1,NULL,NULL,1,0),(190,190,19,903,NULL,1,5.74,7.00,'2018-11-22 17:13:26',NULL,NULL,1,NULL,NULL,1,1),(191,191,15,829,NULL,1,1476.00,1800.00,'2018-12-10 20:08:51',NULL,NULL,1,NULL,NULL,1,0),(192,192,13,812,14,1,62.32,76.00,'2019-01-28 14:19:09',NULL,NULL,1,NULL,NULL,1,0),(193,193,30,800,NULL,1,212.38,259.00,'2019-01-28 14:24:02',NULL,NULL,1,NULL,NULL,1,0),(194,194,12,806,NULL,1,245.18,299.00,'2019-01-28 14:27:51',NULL,NULL,1,NULL,NULL,1,0),(195,195,30,800,NULL,1,212.38,259.00,'2019-01-28 15:07:50',NULL,NULL,1,NULL,NULL,1,0),(196,196,12,806,NULL,1,245.18,299.00,'2019-01-29 00:21:01',NULL,NULL,1,NULL,NULL,1,0),(197,197,12,806,NULL,1,245.18,299.00,'2019-01-29 00:23:23',NULL,NULL,1,NULL,NULL,1,0),(198,198,28,1057,NULL,1,46.56,56.78,'2019-02-06 16:32:12',NULL,NULL,1,NULL,NULL,1,0),(199,199,1,965,NULL,1,37.43,45.65,'2019-02-06 23:10:35',NULL,NULL,1,NULL,NULL,1,0),(200,200,28,1057,NULL,1,46.56,56.78,'2019-02-19 16:55:00',NULL,NULL,1,NULL,NULL,1,0),(201,201,34,1089,NULL,1,2460.00,3000.00,'2019-03-07 15:24:10',NULL,NULL,1,NULL,NULL,1,0),(202,202,34,1089,NULL,1,2460.00,3000.00,'2019-03-07 15:31:54',NULL,NULL,1,NULL,NULL,1,0),(203,203,33,1099,44,1,328.00,400.00,'2019-03-07 15:56:22',NULL,NULL,1,NULL,NULL,1,0),(204,204,34,1089,NULL,1,2460.00,3000.00,'2019-03-07 16:04:26',NULL,NULL,1,NULL,NULL,1,0),(205,205,34,1088,NULL,1,902.00,1100.00,'2019-03-18 22:59:47',NULL,NULL,1,NULL,NULL,1,0),(206,206,34,1089,NULL,1,2460.00,3000.00,'2019-03-19 21:46:00',NULL,NULL,1,NULL,NULL,1,0);
/*!40000 ALTER TABLE `tbl_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_status`
--

DROP TABLE IF EXISTS `tbl_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_name` varchar(50) NOT NULL,
  `weight` tinyint(1) DEFAULT NULL,
  `weight2` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_status`
--

LOCK TABLES `tbl_order_status` WRITE;
/*!40000 ALTER TABLE `tbl_order_status` DISABLE KEYS */;
INSERT INTO `tbl_order_status` VALUES (1,'Pendiente',1,1,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(2,'Procesado',2,3,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(3,'En Envío',4,0,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(4,'Cancelado',7,0,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(5,'Completado',5,0,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(6,'Programado',3,0,'2018-09-05 19:18:15',NULL,NULL,1,NULL,NULL,1),(7,'No Contactado',6,2,'2018-09-05 19:18:15',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_status_flux`
--

DROP TABLE IF EXISTS `tbl_order_status_flux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_status_flux` (
  `order_status_flux_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_origin_id` int(11) NOT NULL,
  `order_status_destination_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_status_flux_id`),
  KEY `fk_tbl_order_status_flux_tbl_order_status1_idx` (`order_status_origin_id`),
  KEY `fk_tbl_order_status_flux_tbl_order_status2_idx` (`order_status_destination_id`),
  CONSTRAINT `fk_tbl_order_status_flux_tbl_order_status1` FOREIGN KEY (`order_status_origin_id`) REFERENCES `tbl_order_status` (`order_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_order_status_flux_tbl_order_status2` FOREIGN KEY (`order_status_destination_id`) REFERENCES `tbl_order_status` (`order_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_status_flux`
--

LOCK TABLES `tbl_order_status_flux` WRITE;
/*!40000 ALTER TABLE `tbl_order_status_flux` DISABLE KEYS */;
INSERT INTO `tbl_order_status_flux` VALUES (1,1,2,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(2,2,3,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(3,2,4,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(4,3,2,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(5,3,4,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(6,3,5,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(7,2,6,'2018-09-05 19:29:25',NULL,NULL,1,NULL,NULL,1),(8,6,3,'2018-09-05 19:29:25',NULL,NULL,1,NULL,NULL,1),(9,7,4,'2018-09-05 19:29:25',NULL,NULL,1,NULL,NULL,1),(10,7,2,'2018-09-05 19:29:25',NULL,NULL,1,NULL,NULL,1),(11,1,7,'2018-09-05 21:07:48',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order_status_flux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_status_history`
--

DROP TABLE IF EXISTS `tbl_order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_status_history` (
  `order_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify_customer` tinyint(1) DEFAULT '0',
  `comment` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_status_history_id`),
  KEY `fk_tbl_order_status_history_tbl_order1_idx` (`order_id`),
  KEY `fk_tbl_order_status_history_tbl_order_status1_idx` (`order_status_id`),
  CONSTRAINT `fk_tbl_order_status_history_tbl_order1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  CONSTRAINT `fk_tbl_order_status_history_tbl_order_status1` FOREIGN KEY (`order_status_id`) REFERENCES `tbl_order_status` (`order_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_status_history`
--

LOCK TABLES `tbl_order_status_history` WRITE;
/*!40000 ALTER TABLE `tbl_order_status_history` DISABLE KEYS */;
INSERT INTO `tbl_order_status_history` VALUES (1,1,1,0,NULL,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1),(2,2,1,0,NULL,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1),(3,3,1,0,NULL,'2018-02-07 13:06:43',NULL,NULL,1,NULL,NULL,1),(4,4,1,0,NULL,'2018-02-07 13:06:44',NULL,NULL,1,NULL,NULL,1),(5,5,1,0,NULL,'2018-02-07 13:06:45',NULL,NULL,1,NULL,NULL,1),(6,6,1,0,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(7,7,1,0,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(8,8,1,0,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(9,9,1,0,NULL,'2018-02-07 13:08:36',NULL,NULL,1,NULL,NULL,1),(10,10,1,0,NULL,'2018-02-07 13:08:37',NULL,NULL,1,NULL,NULL,1),(11,11,1,0,NULL,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1),(12,12,1,0,NULL,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1),(13,13,1,0,NULL,'2018-02-07 13:10:34',NULL,NULL,1,NULL,NULL,1),(14,14,1,0,NULL,'2018-02-07 13:10:35',NULL,NULL,1,NULL,NULL,1),(15,15,1,0,NULL,'2018-02-07 13:10:36',NULL,NULL,1,NULL,NULL,1),(16,16,1,0,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(17,17,1,0,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(18,18,1,0,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(19,19,1,0,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(20,20,1,0,NULL,'2018-02-07 13:10:38',NULL,NULL,1,NULL,NULL,1),(21,21,1,0,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(22,22,1,0,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(23,23,1,0,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(24,24,1,0,NULL,'2018-02-07 13:10:41',NULL,NULL,1,NULL,NULL,1),(25,25,1,0,NULL,'2018-02-07 13:10:42',NULL,NULL,1,NULL,NULL,1),(26,26,1,0,NULL,'2018-02-07 13:10:43',NULL,NULL,1,NULL,NULL,1),(27,25,2,0,NULL,'2018-02-07 13:11:38',NULL,NULL,1,NULL,NULL,1),(28,25,3,0,NULL,'2018-02-07 13:11:42',NULL,NULL,1,NULL,NULL,1),(29,25,5,0,NULL,'2018-02-07 13:11:45',NULL,NULL,1,NULL,NULL,1),(30,19,2,0,NULL,'2018-02-07 13:11:56',NULL,NULL,1,NULL,NULL,1),(31,19,3,0,NULL,'2018-02-07 13:12:02',NULL,NULL,1,NULL,NULL,1),(32,19,5,0,NULL,'2018-02-07 13:12:07',NULL,NULL,1,NULL,NULL,1),(33,21,2,0,NULL,'2018-02-07 13:12:32',NULL,NULL,1,NULL,NULL,1),(34,13,2,0,NULL,'2018-02-07 13:12:44',NULL,NULL,1,NULL,NULL,1),(35,13,3,0,NULL,'2018-02-07 13:12:50',NULL,NULL,1,NULL,NULL,1),(36,1,2,0,NULL,'2018-02-07 13:13:03',NULL,NULL,1,NULL,NULL,1),(37,1,3,0,NULL,'2018-02-07 13:13:07',NULL,NULL,1,NULL,NULL,1),(38,1,5,0,NULL,'2018-02-07 13:13:13',NULL,NULL,1,NULL,NULL,1),(39,27,1,0,NULL,'2018-02-07 14:30:35',NULL,NULL,1,NULL,NULL,1),(40,28,1,0,NULL,'2018-02-07 19:00:11',NULL,NULL,1,NULL,NULL,1),(41,29,1,0,NULL,'2018-02-07 19:02:39',NULL,NULL,1,NULL,NULL,1),(42,30,1,0,NULL,'2018-02-07 19:04:03',NULL,NULL,1,NULL,NULL,1),(43,31,1,0,NULL,'2018-02-07 19:04:10',NULL,NULL,1,NULL,NULL,1),(44,32,1,0,NULL,'2018-02-07 19:07:45',NULL,NULL,1,NULL,NULL,1),(45,33,1,0,NULL,'2018-02-07 19:13:39',NULL,NULL,1,NULL,NULL,1),(46,34,1,0,NULL,'2018-02-07 19:18:53',NULL,NULL,1,NULL,NULL,1),(47,35,1,0,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(48,36,1,0,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(49,37,1,0,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(50,38,1,0,NULL,'2018-02-07 19:54:45',NULL,NULL,1,NULL,NULL,1),(51,39,1,0,NULL,'2018-02-07 19:54:46',NULL,NULL,1,NULL,NULL,1),(52,40,1,0,NULL,'2018-02-07 19:58:12',NULL,NULL,1,NULL,NULL,1),(53,41,1,0,NULL,'2018-02-07 19:59:03',NULL,NULL,1,NULL,NULL,1),(54,42,1,0,NULL,'2018-02-07 20:06:55',NULL,NULL,1,NULL,NULL,1),(55,43,1,0,NULL,'2018-02-07 20:25:14',NULL,NULL,1,NULL,NULL,1),(56,44,1,0,NULL,'2018-02-07 20:41:59',NULL,NULL,1,NULL,NULL,1),(57,45,1,0,NULL,'2018-02-07 20:42:00',NULL,NULL,1,NULL,NULL,1),(58,46,1,0,NULL,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1),(59,47,1,0,NULL,'2018-02-07 20:42:01',NULL,NULL,1,NULL,NULL,1),(60,48,1,0,NULL,'2018-02-07 20:42:03',NULL,NULL,1,NULL,NULL,1),(61,49,1,0,NULL,'2018-02-07 20:45:35',NULL,NULL,1,NULL,NULL,1),(62,50,1,0,NULL,'2018-02-08 00:06:06',NULL,NULL,1,NULL,NULL,1),(63,51,1,0,NULL,'2018-02-08 00:16:29',NULL,NULL,1,NULL,NULL,1),(64,52,1,0,NULL,'2018-02-08 00:40:20',NULL,NULL,1,NULL,NULL,1),(65,53,1,0,NULL,'2018-02-08 00:45:27',NULL,NULL,1,NULL,NULL,1),(66,54,1,0,NULL,'2018-02-08 00:47:23',NULL,NULL,1,NULL,NULL,1),(67,55,1,0,NULL,'2018-02-08 01:07:21',NULL,NULL,1,NULL,NULL,1),(68,56,1,0,NULL,'2018-02-08 01:29:00',NULL,NULL,1,NULL,NULL,1),(69,57,1,0,NULL,'2018-02-08 01:37:40',NULL,NULL,1,NULL,NULL,1),(70,58,1,0,NULL,'2018-02-08 01:44:59',NULL,NULL,1,NULL,NULL,1),(71,59,1,0,NULL,'2018-02-08 02:18:55',NULL,NULL,1,NULL,NULL,1),(72,60,1,0,NULL,'2018-02-08 02:19:54',NULL,NULL,1,NULL,NULL,1),(73,61,1,0,NULL,'2018-02-08 02:27:31',NULL,NULL,1,NULL,NULL,1),(74,62,1,0,NULL,'2018-02-08 02:29:40',NULL,NULL,1,NULL,NULL,1),(75,63,1,0,NULL,'2018-02-08 08:30:22',NULL,NULL,1,NULL,NULL,1),(76,64,1,0,NULL,'2018-02-08 10:03:49',NULL,NULL,1,NULL,NULL,1),(77,65,1,0,NULL,'2018-02-08 10:13:35',NULL,NULL,1,NULL,NULL,1),(78,66,1,0,NULL,'2018-02-08 10:16:01',NULL,NULL,1,NULL,NULL,1),(79,67,1,0,NULL,'2018-02-08 10:17:23',NULL,NULL,1,NULL,NULL,1),(80,68,1,0,NULL,'2018-02-08 10:18:09',NULL,NULL,1,NULL,NULL,1),(81,69,1,0,NULL,'2018-02-08 12:52:34',NULL,NULL,1,NULL,NULL,1),(82,70,1,0,NULL,'2018-02-08 12:53:30',NULL,NULL,1,NULL,NULL,1),(83,71,1,0,NULL,'2018-02-08 15:16:46',NULL,NULL,1,NULL,NULL,1),(84,72,1,0,NULL,'2018-02-08 15:17:45',NULL,NULL,1,NULL,NULL,1),(85,73,1,0,NULL,'2018-02-08 15:21:51',NULL,NULL,1,NULL,NULL,1),(86,74,1,0,NULL,'2018-02-08 15:22:41',NULL,NULL,1,NULL,NULL,1),(87,75,1,0,NULL,'2018-02-08 15:23:52',NULL,NULL,1,NULL,NULL,1),(88,76,1,0,NULL,'2018-02-08 15:26:59',NULL,NULL,1,NULL,NULL,1),(89,77,1,0,NULL,'2018-02-08 15:29:24',NULL,NULL,1,NULL,NULL,1),(90,78,1,0,NULL,'2018-02-08 15:30:47',NULL,NULL,1,NULL,NULL,1),(91,79,1,0,NULL,'2018-02-08 15:32:51',NULL,NULL,1,NULL,NULL,1),(92,80,1,0,NULL,'2018-02-08 15:35:35',NULL,NULL,1,NULL,NULL,1),(93,81,1,0,NULL,'2018-02-08 15:36:45',NULL,NULL,1,NULL,NULL,1),(94,82,1,0,NULL,'2018-02-08 15:39:52',NULL,NULL,1,NULL,NULL,1),(95,83,1,0,NULL,'2018-02-08 15:43:56',NULL,NULL,1,NULL,NULL,1),(96,84,1,0,NULL,'2018-02-08 15:45:49',NULL,NULL,1,NULL,NULL,1),(97,85,1,0,NULL,'2018-02-08 15:47:00',NULL,NULL,1,NULL,NULL,1),(98,86,1,0,NULL,'2018-02-08 15:51:07',NULL,NULL,1,NULL,NULL,1),(99,87,1,0,NULL,'2018-02-20 23:07:39',NULL,NULL,1,NULL,NULL,1),(100,88,1,0,NULL,'2018-02-20 23:12:05',NULL,NULL,1,NULL,NULL,1),(101,89,1,0,NULL,'2018-02-20 23:14:07',NULL,NULL,1,NULL,NULL,1),(102,90,1,0,NULL,'2018-02-21 03:28:17',NULL,NULL,1,NULL,NULL,1),(103,91,1,0,NULL,'2018-02-21 03:32:51',NULL,NULL,1,NULL,NULL,1),(104,92,1,0,NULL,'2018-03-19 18:16:01',NULL,NULL,1,NULL,NULL,1),(105,93,1,0,NULL,'2018-04-16 17:30:17',NULL,NULL,1,NULL,NULL,1),(106,94,1,0,NULL,'2018-04-16 19:17:35',NULL,NULL,1,NULL,NULL,1),(107,95,1,0,NULL,'2018-04-18 17:52:58',NULL,NULL,1,NULL,NULL,1),(108,96,1,0,NULL,'2018-04-18 17:56:12',NULL,NULL,1,NULL,NULL,1),(109,97,1,0,NULL,'2018-04-19 17:07:59',NULL,NULL,1,NULL,NULL,1),(110,97,2,0,NULL,'2018-04-19 17:21:50',NULL,NULL,1,NULL,NULL,1),(111,97,4,0,NULL,'2018-04-19 17:22:23',NULL,NULL,1,NULL,NULL,1),(112,98,1,0,NULL,'2018-04-19 17:30:42',NULL,NULL,1,NULL,NULL,1),(113,99,1,0,NULL,'2018-04-19 17:49:10',NULL,NULL,1,NULL,NULL,1),(114,100,1,0,NULL,'2018-04-19 17:55:03',NULL,NULL,1,NULL,NULL,1),(115,101,1,0,NULL,'2018-04-19 20:56:41',NULL,NULL,1,NULL,NULL,1),(116,101,2,1,'n','2018-04-19 20:58:13',NULL,NULL,1,NULL,NULL,1),(117,102,1,0,NULL,'2018-04-20 04:58:58',NULL,NULL,1,NULL,NULL,1),(118,103,1,0,NULL,'2018-04-23 17:02:10',NULL,NULL,1,NULL,NULL,1),(119,98,2,0,NULL,'2018-05-02 14:26:53',NULL,NULL,1,NULL,NULL,1),(120,98,3,0,NULL,'2018-05-02 14:26:57',NULL,NULL,1,NULL,NULL,1),(121,98,5,0,NULL,'2018-05-02 14:27:01',NULL,NULL,1,NULL,NULL,1),(122,100,2,0,NULL,'2018-05-02 14:27:21',NULL,NULL,1,NULL,NULL,1),(123,100,3,0,NULL,'2018-05-02 14:27:24',NULL,NULL,1,NULL,NULL,1),(124,100,5,0,NULL,'2018-05-02 14:27:27',NULL,NULL,1,NULL,NULL,1),(125,102,2,0,NULL,'2018-05-02 14:27:46',NULL,NULL,1,NULL,NULL,1),(126,102,3,0,NULL,'2018-05-02 14:27:49',NULL,NULL,1,NULL,NULL,1),(127,102,5,0,NULL,'2018-05-02 14:27:53',NULL,NULL,1,NULL,NULL,1),(128,104,1,0,NULL,'2018-05-02 21:50:06',NULL,NULL,1,NULL,NULL,1),(129,105,1,0,NULL,'2018-05-07 20:21:06',NULL,NULL,1,NULL,NULL,1),(130,106,1,0,NULL,'2018-05-07 22:38:39',NULL,NULL,1,NULL,NULL,1),(131,107,1,0,NULL,'2018-05-07 22:54:25',NULL,NULL,1,NULL,NULL,1),(132,108,1,0,NULL,'2018-05-07 23:25:53',NULL,NULL,1,NULL,NULL,1),(133,109,1,0,NULL,'2018-05-08 13:51:55',NULL,NULL,1,NULL,NULL,1),(134,109,2,0,NULL,'2018-05-08 14:23:26',NULL,NULL,1,NULL,NULL,1),(135,109,3,0,NULL,'2018-05-08 14:23:33',NULL,NULL,1,NULL,NULL,1),(136,109,5,0,NULL,'2018-05-08 14:23:38',NULL,NULL,1,NULL,NULL,1),(137,110,1,0,NULL,'2018-05-08 14:57:17',NULL,NULL,1,NULL,NULL,1),(138,111,1,0,NULL,'2018-05-09 15:02:35',NULL,NULL,1,NULL,NULL,1),(139,112,1,0,NULL,'2018-05-09 22:24:40',NULL,NULL,1,NULL,NULL,1),(140,113,1,0,NULL,'2018-05-09 22:38:01',NULL,NULL,1,NULL,NULL,1),(141,114,1,0,NULL,'2018-05-09 23:58:16',NULL,NULL,1,NULL,NULL,1),(142,115,1,0,NULL,'2018-05-10 19:18:22',NULL,NULL,1,NULL,NULL,1),(143,115,2,0,NULL,'2018-05-10 19:25:41',NULL,NULL,1,NULL,NULL,1),(144,115,3,0,NULL,'2018-05-10 19:25:46',NULL,NULL,1,NULL,NULL,1),(145,115,5,0,NULL,'2018-05-10 19:26:00',NULL,NULL,1,NULL,NULL,1),(146,116,1,0,NULL,'2018-05-10 19:27:49',NULL,NULL,1,NULL,NULL,1),(147,117,1,0,NULL,'2018-05-10 19:35:49',NULL,NULL,1,NULL,NULL,1),(148,118,1,0,NULL,'2018-05-10 19:39:34',NULL,NULL,1,NULL,NULL,1),(149,119,1,0,NULL,'2018-05-10 19:44:01',NULL,NULL,1,NULL,NULL,1),(150,120,1,0,NULL,'2018-05-10 19:47:47',NULL,NULL,1,NULL,NULL,1),(151,121,1,0,NULL,'2018-05-16 14:48:01',NULL,NULL,1,NULL,NULL,1),(152,122,1,0,NULL,'2018-05-17 04:45:11',NULL,NULL,1,NULL,NULL,1),(153,123,1,0,NULL,'2018-05-17 04:49:39',NULL,NULL,1,NULL,NULL,1),(154,124,1,0,NULL,'2018-05-21 17:46:31',NULL,NULL,1,NULL,NULL,1),(155,125,1,0,NULL,'2018-05-21 19:20:47',NULL,NULL,1,NULL,NULL,1),(156,126,1,0,NULL,'2018-05-22 00:01:21',NULL,NULL,1,NULL,NULL,1),(157,127,1,0,NULL,'2018-05-22 00:09:50',NULL,NULL,1,NULL,NULL,1),(158,128,1,0,NULL,'2018-05-22 00:18:59',NULL,NULL,1,NULL,NULL,1),(159,129,1,0,NULL,'2018-05-25 20:19:57',NULL,NULL,1,NULL,NULL,1),(160,129,2,0,NULL,'2018-05-25 21:47:24',NULL,NULL,1,NULL,NULL,1),(161,129,3,0,NULL,'2018-05-25 21:47:28',NULL,NULL,1,NULL,NULL,1),(162,129,2,0,'ok','2018-05-25 21:47:49',NULL,NULL,1,NULL,NULL,1),(163,129,3,0,'ok1','2018-05-25 21:48:02',NULL,NULL,1,NULL,NULL,1),(164,130,1,0,NULL,'2018-05-31 20:53:42',NULL,NULL,1,NULL,NULL,1),(165,130,2,0,NULL,'2018-08-23 23:35:52',NULL,NULL,1,NULL,NULL,1),(166,131,1,0,NULL,'2018-09-05 17:38:11',NULL,NULL,1,NULL,NULL,1),(167,131,2,0,NULL,'2018-09-05 17:40:17',NULL,NULL,1,NULL,NULL,1),(168,131,3,0,NULL,'2018-09-05 17:40:28',NULL,NULL,1,NULL,NULL,1),(169,131,5,0,NULL,'2018-09-05 17:40:39',NULL,NULL,1,NULL,NULL,1),(170,128,2,0,NULL,'2018-09-05 21:01:50',NULL,NULL,1,NULL,NULL,1),(171,128,6,0,NULL,'2018-09-05 21:02:00',NULL,NULL,1,NULL,NULL,1),(172,128,3,0,NULL,'2018-09-05 21:02:13',NULL,NULL,1,NULL,NULL,1),(173,128,5,0,NULL,'2018-09-05 21:02:22',NULL,NULL,1,NULL,NULL,1),(174,127,2,0,NULL,'2018-09-05 21:03:04',NULL,NULL,1,NULL,NULL,1),(175,127,6,0,NULL,'2018-09-05 21:03:12',NULL,NULL,1,NULL,NULL,1),(176,127,3,0,NULL,'2018-09-05 21:03:21',NULL,NULL,1,NULL,NULL,1),(177,127,4,0,NULL,'2018-09-05 21:03:30',NULL,NULL,1,NULL,NULL,1),(178,126,7,0,NULL,'2018-09-05 21:08:04',NULL,NULL,1,NULL,NULL,1),(179,126,4,0,NULL,'2018-09-05 21:09:55',NULL,NULL,1,NULL,NULL,1),(180,125,7,0,NULL,'2018-09-05 21:11:30',NULL,NULL,1,NULL,NULL,1),(181,125,2,0,NULL,'2018-09-05 21:14:52',NULL,NULL,1,NULL,NULL,1),(182,132,1,0,NULL,'2018-09-05 22:05:27',NULL,NULL,1,NULL,NULL,1),(183,133,1,0,NULL,'2018-09-05 22:08:53',NULL,NULL,1,NULL,NULL,1),(184,134,1,0,NULL,'2018-09-06 16:36:34',NULL,NULL,1,NULL,NULL,1),(185,135,1,0,NULL,'2018-09-06 16:37:34',NULL,NULL,1,NULL,NULL,1),(186,135,7,0,NULL,'2018-09-06 16:44:13',NULL,NULL,1,NULL,NULL,1),(187,135,4,0,NULL,'2018-09-06 16:55:53',NULL,NULL,1,NULL,NULL,1),(188,134,7,0,NULL,'2018-09-06 16:56:29',NULL,NULL,1,NULL,NULL,1),(189,134,2,0,NULL,'2018-09-06 16:56:42',NULL,NULL,1,NULL,NULL,1),(190,136,1,0,NULL,'2018-09-13 01:20:29',NULL,NULL,1,NULL,NULL,1),(191,137,1,0,NULL,'2018-09-13 21:33:48',NULL,NULL,1,NULL,NULL,1),(192,138,1,0,NULL,'2018-09-13 21:39:21',NULL,NULL,1,NULL,NULL,1),(193,139,1,0,NULL,'2018-09-13 22:18:43',NULL,NULL,1,NULL,NULL,1),(194,140,1,0,NULL,'2018-09-14 00:39:21',NULL,NULL,1,NULL,NULL,1),(195,141,1,0,NULL,'2018-09-17 21:17:54',NULL,NULL,1,NULL,NULL,1),(196,142,1,0,NULL,'2018-09-17 21:22:01',NULL,NULL,1,NULL,NULL,1),(197,143,1,0,NULL,'2018-09-17 21:26:36',NULL,NULL,1,NULL,NULL,1),(198,144,1,0,NULL,'2018-09-17 21:34:35',NULL,NULL,1,NULL,NULL,1),(199,145,1,0,NULL,'2018-09-17 21:38:21',NULL,NULL,1,NULL,NULL,1),(200,146,1,0,NULL,'2018-09-21 17:07:59',NULL,NULL,1,NULL,NULL,1),(201,147,1,0,NULL,'2018-09-21 17:08:53',NULL,NULL,1,NULL,NULL,1),(202,148,1,0,NULL,'2018-10-11 00:43:38',NULL,NULL,1,NULL,NULL,1),(203,149,1,0,NULL,'2018-10-15 16:31:20',NULL,NULL,1,NULL,NULL,1),(204,150,1,0,NULL,'2018-10-15 16:41:37',NULL,NULL,1,NULL,NULL,1),(205,151,1,0,NULL,'2018-10-17 15:35:03',NULL,NULL,1,NULL,NULL,1),(206,152,1,0,NULL,'2018-10-17 17:15:49',NULL,NULL,1,NULL,NULL,1),(207,152,2,0,NULL,'2018-10-17 20:52:26',NULL,NULL,1,NULL,NULL,1),(208,152,3,0,NULL,'2018-10-17 20:52:28',NULL,NULL,1,NULL,NULL,1),(209,153,1,0,NULL,'2018-10-30 22:07:30',NULL,NULL,1,NULL,NULL,1),(210,154,1,0,NULL,'2018-10-30 22:12:11',NULL,NULL,1,NULL,NULL,1),(211,155,1,0,NULL,'2018-10-30 22:22:43',NULL,NULL,1,NULL,NULL,1),(212,156,1,0,NULL,'2018-10-30 22:26:31',NULL,NULL,1,NULL,NULL,1),(213,157,1,0,NULL,'2018-10-30 22:36:57',NULL,NULL,1,NULL,NULL,1),(214,158,1,0,NULL,'2018-10-31 17:39:20',NULL,NULL,1,NULL,NULL,1),(215,159,1,0,NULL,'2018-11-05 20:16:02',NULL,NULL,1,NULL,NULL,1),(216,160,1,0,NULL,'2018-11-05 20:37:35',NULL,NULL,1,NULL,NULL,1),(217,161,1,0,NULL,'2018-11-07 19:52:17',NULL,NULL,1,NULL,NULL,1),(218,162,1,0,NULL,'2018-11-07 19:58:56',NULL,NULL,1,NULL,NULL,1),(219,163,1,0,NULL,'2018-11-07 22:29:49',NULL,NULL,1,NULL,NULL,1),(220,164,1,0,NULL,'2018-11-08 15:48:34',NULL,NULL,1,NULL,NULL,1),(221,165,1,0,NULL,'2018-11-08 19:35:42',NULL,NULL,1,NULL,NULL,1),(222,166,1,0,NULL,'2018-11-08 19:59:35',NULL,NULL,1,NULL,NULL,1),(223,167,1,0,NULL,'2018-11-08 20:19:11',NULL,NULL,1,NULL,NULL,1),(224,168,1,0,NULL,'2018-11-08 20:23:17',NULL,NULL,1,NULL,NULL,1),(225,169,1,0,NULL,'2018-11-08 20:30:24',NULL,NULL,1,NULL,NULL,1),(226,170,1,0,NULL,'2018-11-08 20:46:42',NULL,NULL,1,NULL,NULL,1),(227,171,1,0,NULL,'2018-11-08 23:28:44',NULL,NULL,1,NULL,NULL,1),(228,172,1,0,NULL,'2018-11-09 15:38:40',NULL,NULL,1,NULL,NULL,1),(229,173,1,0,NULL,'2018-11-09 20:45:00',NULL,NULL,1,NULL,NULL,1),(230,174,1,0,NULL,'2018-11-09 20:48:33',NULL,NULL,1,NULL,NULL,1),(231,175,1,0,NULL,'2018-11-09 20:59:01',NULL,NULL,1,NULL,NULL,1),(232,176,1,0,NULL,'2018-11-09 21:04:27',NULL,NULL,1,NULL,NULL,1),(233,177,1,0,NULL,'2018-11-09 21:31:39',NULL,NULL,1,NULL,NULL,1),(234,178,1,0,NULL,'2018-11-09 21:41:45',NULL,NULL,1,NULL,NULL,1),(235,179,1,0,NULL,'2018-11-09 21:42:52',NULL,NULL,1,NULL,NULL,1),(236,180,1,0,NULL,'2018-11-12 14:49:40',NULL,NULL,1,NULL,NULL,1),(237,181,1,0,NULL,'2018-11-12 14:58:25',NULL,NULL,1,NULL,NULL,1),(238,182,1,0,NULL,'2018-11-12 15:04:35',NULL,NULL,1,NULL,NULL,1),(239,183,1,0,NULL,'2018-11-12 15:06:20',NULL,NULL,1,NULL,NULL,1),(240,184,1,0,NULL,'2018-11-12 15:08:22',NULL,NULL,1,NULL,NULL,1),(241,185,1,0,NULL,'2018-11-12 15:34:23',NULL,NULL,1,NULL,NULL,1),(242,186,1,0,NULL,'2018-11-12 15:37:55',NULL,NULL,1,NULL,NULL,1),(243,187,1,0,NULL,'2018-11-12 15:43:33',NULL,NULL,1,NULL,NULL,1),(244,188,1,0,NULL,'2018-11-12 17:47:05',NULL,NULL,1,NULL,NULL,1),(245,189,1,0,NULL,'2018-11-12 17:53:27',NULL,NULL,1,NULL,NULL,1),(246,190,1,0,NULL,'2018-11-22 17:13:26',NULL,NULL,1,NULL,NULL,1),(247,191,1,0,NULL,'2018-12-10 20:08:51',NULL,NULL,1,NULL,NULL,1),(248,192,1,0,NULL,'2019-01-28 14:19:09',NULL,NULL,1,NULL,NULL,1),(249,193,1,0,NULL,'2019-01-28 14:24:02',NULL,NULL,1,NULL,NULL,1),(250,194,1,0,NULL,'2019-01-28 14:27:51',NULL,NULL,1,NULL,NULL,1),(251,195,1,0,NULL,'2019-01-28 15:07:50',NULL,NULL,1,NULL,NULL,1),(252,196,1,0,NULL,'2019-01-29 00:21:01',NULL,NULL,1,NULL,NULL,1),(253,197,1,0,NULL,'2019-01-29 00:23:23',NULL,NULL,1,NULL,NULL,1),(254,198,1,0,NULL,'2019-02-06 16:32:12',NULL,NULL,1,NULL,NULL,1),(255,198,2,1,'Este es un comentario agregado desde el dashboard','2019-02-06 16:49:43',NULL,NULL,1,NULL,NULL,1),(256,198,3,0,'COmentario desde dashboard \"En envío\"','2019-02-06 16:50:41',NULL,NULL,1,NULL,NULL,1),(257,198,5,0,NULL,'2019-02-06 16:57:17',NULL,NULL,1,NULL,NULL,1),(258,199,1,0,NULL,'2019-02-06 23:10:35',NULL,NULL,1,NULL,NULL,1),(259,200,1,0,NULL,'2019-02-19 16:55:00',NULL,NULL,1,NULL,NULL,1),(260,200,2,0,'se procesa la llamada','2019-03-06 15:23:38',NULL,NULL,1,NULL,NULL,1),(261,201,1,0,NULL,'2019-03-07 15:24:10',NULL,NULL,1,NULL,NULL,1),(262,202,1,0,NULL,'2019-03-07 15:31:54',NULL,NULL,1,NULL,NULL,1),(263,203,1,0,NULL,'2019-03-07 15:56:22',NULL,NULL,1,NULL,NULL,1),(264,204,1,0,NULL,'2019-03-07 16:04:26',NULL,NULL,1,NULL,NULL,1),(265,205,1,0,NULL,'2019-03-18 22:59:47',NULL,NULL,1,NULL,NULL,1),(266,206,1,0,NULL,'2019-03-19 21:46:00',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_method`
--

DROP TABLE IF EXISTS `tbl_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) NOT NULL,
  `method_icon_url` varchar(100) DEFAULT NULL,
  `method_tip` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_method`
--

LOCK TABLES `tbl_payment_method` WRITE;
/*!40000 ALTER TABLE `tbl_payment_method` DISABLE KEYS */;
INSERT INTO `tbl_payment_method` VALUES (1,'Visa','payment_icons/icon_america.png',NULL,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(2,'Mastercard','payment_icons/icon_mastercard.png',NULL,'2017-12-05 12:32:41',NULL,NULL,1,NULL,NULL,1),(3,'American Express','payment_icons/icon_visa.png',NULL,'2017-12-05 12:32:41',NULL,NULL,1,NULL,NULL,1),(4,'En efectivo',NULL,'La cancelación se realiza contra entrega','2017-12-05 12:32:41',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plan`
--

DROP TABLE IF EXISTS `tbl_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_type` enum('Prepago','Postpago') NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `plan_price` decimal(6,2) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `plan_slug` varchar(150) DEFAULT NULL,
  `plan_bono` varchar(50) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`plan_id`),
  FULLTEXT KEY `indx_srch_plan_slug` (`plan_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plan`
--

LOCK TABLES `tbl_plan` WRITE;
/*!40000 ALTER TABLE `tbl_plan` DISABLE KEYS */;
INSERT INTO `tbl_plan` VALUES (1,'Postpago','iChip 29,90',29.90,'ICHIP_29_90','ichip-29_90','Bono 2GB',1,'2017-12-05 12:32:36','2019-02-06 16:50:24',NULL,1,NULL,NULL,1),(2,'Postpago','Voz Max 29.90',29.90,'ICHIP_29_90_Voz','ichip-29_90-voz','Bono 2GB',1,'2017-12-05 12:32:36','2019-02-05 12:10:26',NULL,1,NULL,NULL,1),(3,'Postpago','iChip Voz 29.90',29.90,'ICHIP_29_90_3','ichip-29_90-3','Bono 2GB',1,'2017-12-05 12:32:36','2018-10-25 10:30:09',NULL,1,NULL,NULL,1),(4,'Postpago','iChip 49,90',49.90,'ICHIP_49_90','ichip-49_90','Bono 2GB',1,'2017-12-05 12:32:36','2018-10-25 11:39:52',NULL,1,NULL,NULL,1),(5,'Postpago','iChip 69,90',69.90,'ICHIP_69_90','ichip-69_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 12:08:39',NULL,1,NULL,NULL,1),(6,'Postpago','iChip 89,90',89.90,'ICHIP_89_90','ichip-89_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 12:04:56',NULL,1,NULL,NULL,1),(7,'Postpago','iChip 99,90',99.90,'ICHIP_99_90','ichip-99_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-31 14:37:49',NULL,1,NULL,NULL,1),(8,'Postpago','iChip 129,90',129.90,'ICHIP_129_90','ichip-129_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 12:02:23',NULL,1,NULL,NULL,1),(9,'Postpago','iChip 149,90',149.90,'ICHIP_149_90','ichip-149_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 11:59:17',NULL,1,NULL,NULL,1),(10,'Postpago','iChip 169,90',169.90,'ICHIP_169_90','ichip-169_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 11:56:30',NULL,1,NULL,NULL,1),(11,'Postpago','Giga Max 19,90',19.90,'GIGA_19_90 ','giga-max-19_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 11:45:15',NULL,1,NULL,NULL,1),(12,'Postpago','Giga Max 29,90',29.90,'GIGA_29_90 ','giga-max-29_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 11:48:17',NULL,1,NULL,NULL,1),(13,'Postpago','Giga Max 49,90',49.90,'GIGA_49_90 ','giga-max-49_90','Bono 2GB',1,'2017-12-05 12:32:37','2018-10-25 11:51:10',NULL,1,NULL,NULL,1),(14,'Prepago','B-Voz',0.00,'PRE_BVOZ15','b-voz','Bono 2GB',1,'2017-12-05 12:32:37','2017-12-05 12:32:37',NULL,1,NULL,NULL,1),(15,'Prepago','Bifri 5',0.00,'PRE_BIFRI5','bifri-5','Bono 2GB',1,'2017-12-05 12:32:37','2017-12-05 12:32:37',NULL,1,NULL,NULL,1),(16,'Postpago','Plan Prueba',87.00,'PLAN_PRUEBA','plan-prueba','Bono 2GB',1,'2018-04-19 11:41:48','2018-05-31 15:20:33',NULL,1,NULL,NULL,0),(17,'Prepago','Plan 1 sol diario',30.00,'123','plan-1-sol-diario','Bono 2GB',1,'2018-04-19 12:08:43','2018-05-31 15:21:32',NULL,1,NULL,NULL,0),(18,'Prepago','Plan prueba prepago',25.00,'PRUEBA_PRE','plan-prueba-prepago','Bono 2GB',1,'2018-04-19 17:11:21','2018-05-31 15:21:52',NULL,1,NULL,NULL,0),(19,'Postpago','Plan pruebita',205.00,'PRUEBITA','plan-pruebita','Bono 2GB',1,'2018-04-20 11:48:11','2018-05-31 15:22:24',NULL,1,NULL,NULL,0),(20,'Prepago','Precio',2.00,'g','precio','Bono 2GB',1,'2018-04-20 17:05:53','2018-05-31 15:20:41',NULL,1,NULL,NULL,0),(21,'Postpago','Plan Ciclo 2',159.00,'Ciclo_2','plan-ciclo-2','Bono 2GB',1,'2018-04-25 09:27:42','2018-05-31 15:21:27',NULL,1,NULL,NULL,0),(22,'Postpago','Prueba Ciclo 3',73.00,'CIclo_3','prueba-ciclo-3','Bono 2GB',1,'2018-04-25 17:04:19','2018-05-31 15:20:36',NULL,1,NULL,NULL,0),(23,'Postpago','Plan Prueba 4',74.90,'prueba_4','plan-prueba-4','Bono 2GB',1,'2018-04-26 09:31:40','2018-05-31 16:59:11',NULL,1,NULL,NULL,0),(24,'Postpago','pruebacles',12.00,'33334','pruebacles','Bono 2GB',1,'2018-05-03 18:15:56','2018-05-31 12:50:05',NULL,1,NULL,NULL,0),(25,'Postpago','testbitel',89.90,'1111','testbitel','Bono 2GB',1,'2018-05-08 15:00:52','2018-05-31 15:20:29',NULL,1,NULL,NULL,0),(26,'Postpago','testing A',789.00,'789','testing-a','Bono 2GB',1,'2018-05-08 16:11:51','2018-05-31 12:49:16',NULL,1,NULL,NULL,0),(27,'Postpago','tes100',1.00,'3333333','tes100','Bono 2GB',1,'2018-05-15 11:31:05','2018-05-31 15:20:26',NULL,1,NULL,NULL,0),(28,'Postpago','iPrueba+ mega 34.56',34.56,'iPrueba_plus_mega_34_56','iPrueba-plus-mega-34_56','Bono 2GB',1,'2018-09-21 17:06:39','2018-09-21 17:06:39',NULL,1,NULL,NULL,1),(29,'Postpago','Plan halloween',666.00,'product code','Plan-halloween','bono 666 GB',1,'2018-10-31 14:41:00','2018-10-31 14:42:10',NULL,1,NULL,NULL,1),(30,'Postpago','plan drag',99.00,'drag','plan-drag','66666',1,'2018-11-29 17:46:19','2018-11-29 17:46:19',NULL,1,NULL,NULL,1),(31,'Postpago','Básico 19,90',19.90,'BASICO_19_90','basico-19_90','-',1,'2019-02-05 11:54:12','2019-02-06 11:37:26',NULL,1,NULL,NULL,1),(32,'Postpago','Plan freelo 39.30',39.30,'ICHIP_39_30','Plan-freelo-39_30','Bono 100 soles',1,'2019-02-06 11:58:26','2019-02-06 12:01:56',NULL,1,NULL,NULL,1),(33,'Postpago','Plan freelo 59.59',59.59,'ICHIP_59_59','Plan-freelo-59_59','1000 chelas',1,'2019-02-06 12:05:34','2019-02-06 12:05:34',NULL,1,NULL,NULL,1),(34,'Postpago','Básico 25,90',25.90,'basico_25_90','Básico-25_90','bono 25',1,'2019-02-06 15:16:13','2019-02-06 15:16:13',NULL,1,NULL,NULL,1),(35,'Postpago','Plan Test 1000',101.50,'plantest_101.50','plan-test_1000','1000',1,'2019-02-07 10:49:38','2019-02-07 10:51:04',NULL,1,NULL,NULL,1),(36,'Postpago','test Valentin',1000.00,'valentin_1000','test_valentin','4444',1,'2019-02-14 09:41:11','2019-02-14 09:41:11',NULL,1,NULL,NULL,1),(37,'Postpago','prueba',100.00,'c0','prueba',NULL,1,'2019-03-08 12:21:19','2019-03-08 12:21:19',NULL,1,NULL,NULL,1),(38,'Postpago','Prueba02',3331.00,'c033','prueba02',NULL,1,'2019-03-08 12:22:50','2019-03-08 12:22:50',NULL,1,NULL,NULL,1),(39,'Postpago','prueba04',100.00,'pro34','prueba04','23',1,'2019-03-08 12:24:16','2019-03-08 12:24:16',NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plan_infocomercial`
--

DROP TABLE IF EXISTS `tbl_plan_infocomercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_plan_infocomercial` (
  `plan_infocomercial_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `plan_infocomercial_img_url` varchar(150) DEFAULT 'images/equipo.png',
  `plan_infocomercial_descripcion` varchar(150) DEFAULT NULL,
  `plan_infocomercial_informacion_adicional` varchar(150) DEFAULT NULL,
  `plan_infocomercial_flag_cantidad` int(11) DEFAULT NULL,
  `weight` tinyint(4) DEFAULT '0',
  `tipo` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `updated_by` datetime DEFAULT NULL,
  `deleted_by` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`plan_infocomercial_id`),
  KEY `fk_tbl_plan_infocomercial_tbl_plan1_idx` (`plan_id`),
  CONSTRAINT `fk_tbl_plan_infocomercial_tbl_plan1` FOREIGN KEY (`plan_id`) REFERENCES `tbl_plan` (`plan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plan_infocomercial`
--

LOCK TABLES `tbl_plan_infocomercial` WRITE;
/*!40000 ALTER TABLE `tbl_plan_infocomercial` DISABLE KEYS */;
INSERT INTO `tbl_plan_infocomercial` VALUES (100,1,'plan_info/app2.png','Llamadas','Ilimitadas a Bitel<br><strong>500 min a otros</strong>',70,1,2,'2018-04-19 16:39:08','2018-10-25 10:24:40',NULL,NULL,NULL,NULL,1),(101,1,'plan_info/video3.png','SMS','todo operador',50,2,2,'2018-04-19 16:39:08','2018-10-25 10:02:01',NULL,NULL,NULL,NULL,1),(102,1,'plan_info/juego1.png','Internet 1.5 GB + Internet Ilimitado (*)<br/>1.5 GB de Bono de 4G','Internet 1.5 GB + Internet Ilimitado (*)<br/>1.5 GB de Bono de 4G',1,3,4,'2018-04-19 16:39:08','2018-10-25 10:08:05',NULL,NULL,NULL,NULL,1),(103,1,'plan_info/juego2.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,6,4,'2018-04-19 16:39:08','2018-10-25 09:57:38',NULL,NULL,NULL,NULL,1),(104,1,'/plan_info/facebook.svg','Facebook Flex Gratis','Facebook Flex Gratis',1,5,1,'2018-04-19 16:39:08','2018-09-13 16:44:19',NULL,NULL,NULL,NULL,1),(105,1,'/plan_info/whatsapp.svg','WhatsApp Ilimitado','WhatsApp Ilimitado',1,4,1,'2018-04-19 16:39:08','2018-09-13 16:44:03',NULL,NULL,NULL,NULL,1),(106,2,'/plan_info/llamadas.svg','Llamadas','Ilimitadas a Bitel<br><strong>250 min a otros</strong>',200,0,2,'2018-04-19 16:39:08','2018-10-25 10:31:24',NULL,NULL,NULL,NULL,1),(107,2,'/plan_info/sms.svg','SMS','todo operador',50,0,2,'2018-04-19 16:39:08','2018-10-25 10:13:32',NULL,NULL,NULL,NULL,1),(108,2,'plan_info/app1.png','Internet 1.5 GB<br/>1.5 GB de Bono de 4G','Internet 1.5 GB<br/>1.5 GB de Bono de 4G',1,0,1,'2018-04-19 16:39:08','2018-10-25 10:13:59',NULL,NULL,NULL,NULL,1),(109,2,'plan_info/app2.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 10:14:11',NULL,NULL,NULL,NULL,1),(110,2,'plan_info/video2.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-25 10:14:30',NULL,NULL,NULL,NULL,1),(111,2,'plan_info/video1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,3,'2018-04-19 16:39:08','2018-10-25 10:14:49',NULL,NULL,NULL,NULL,1),(112,3,'/plan_info/llamadas.svg','Llamadas','Ilimitadas a Bitel<br><strong>400 min a otros</strong>',70,0,2,'2018-04-19 16:39:08','2018-10-25 10:30:09',NULL,NULL,NULL,NULL,1),(113,3,'plan_info/app1.png','SMS todo operador','SMS todo operador',50,0,1,'2018-04-19 16:39:08','2018-10-25 10:19:29',NULL,NULL,NULL,NULL,1),(114,3,'plan_info/app3.png','Internet','Ilimitado (*)<br/><strong>Bono de 4G</strong>',1,0,2,'2018-04-19 16:39:08','2018-10-25 10:20:27',NULL,NULL,NULL,NULL,1),(115,3,'plan_info/app2.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 10:19:42',NULL,NULL,NULL,NULL,1),(116,3,'plan_info/app3.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 10:19:57',NULL,NULL,NULL,NULL,1),(117,3,'plan_info/video1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,3,'2018-04-19 16:39:08','2018-10-25 10:21:09',NULL,NULL,NULL,NULL,1),(118,4,'plan_info/app3.png','WhatsApp','Ilimitado',400,0,2,'2018-04-19 16:39:08','2018-10-25 11:35:32',NULL,NULL,NULL,NULL,1),(119,4,'plan_info/app5.png','SMS','Ilimitado<br><strong>todo operador</strong>',100,0,2,'2018-04-19 16:39:08','2018-10-25 11:39:52',NULL,NULL,NULL,NULL,1),(120,4,'plan_info/video3.png','Internet 3 GB + Internet Ilimitado (*)<br/>3 GB de Bono de 4G','Internet 3 GB + Internet Ilimitado (*)<br/>3 GB de Bono de 4G',1,0,3,'2018-04-19 16:39:08','2018-10-25 11:37:45',NULL,NULL,NULL,NULL,1),(121,4,'plan_info/app4.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 11:37:03',NULL,NULL,NULL,NULL,1),(122,4,'plan_info/app5.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:38:48',NULL,NULL,NULL,NULL,1),(123,4,'plan_info/juego2.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,4,'2018-04-19 16:39:08','2018-10-25 11:38:38',NULL,NULL,NULL,NULL,1),(124,5,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:07:45',NULL,NULL,NULL,NULL,1),(125,5,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:07:59',NULL,NULL,NULL,NULL,1),(126,5,'/plan_info/internet.svg','Internet 5 GB + Internet Ilimitado (*)<br/>5 GB de Bono de 4G','Internet 5 GB + Internet Ilimitado (*)<br/>5 GB de Bono de 4G',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(127,5,'plan_info/app3.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 12:08:12',NULL,NULL,NULL,NULL,1),(128,5,'plan_info/video3.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-25 12:08:25',NULL,NULL,NULL,NULL,1),(129,5,'plan_info/juego2.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,4,'2018-04-19 16:39:08','2018-10-25 12:08:39',NULL,NULL,NULL,NULL,1),(130,6,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:03:46',NULL,NULL,NULL,NULL,1),(131,6,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:04:07',NULL,NULL,NULL,NULL,1),(132,6,'plan_info/app1.png','app1','app1',1,0,1,'2018-04-19 16:39:08','2018-10-25 12:04:28',NULL,NULL,NULL,NULL,1),(133,6,'plan_info/video1.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-25 12:04:43',NULL,NULL,NULL,NULL,1),(134,6,'plan_info/juego1.png','Facebook Gratissss','Facebook Gratissss',1,0,4,'2018-04-19 16:39:08','2018-10-25 12:04:56',NULL,NULL,NULL,NULL,1),(135,6,'/plan_info/whatsapp.svg','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(136,7,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:05:41',NULL,NULL,NULL,NULL,1),(137,7,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:05:58',NULL,NULL,NULL,NULL,1),(138,7,'/plan_info/internet.svg','Internet 10 GB + Internet Ilimitado (*)<br/>10 GB de Bono de 4G','Internet 10 GB + Internet Ilimitado (*)<br/>10 GB de Bono de 4G',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(139,7,'plan_info/app1.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 12:06:11',NULL,NULL,NULL,NULL,1),(140,7,'plan_info/donde-realizar-portabilidad.jpg','Facebook Flex Gratis','Facebook Flex Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-31 14:37:07',NULL,NULL,NULL,NULL,1),(141,7,'plan_info/juego1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,4,'2018-04-19 16:39:08','2018-10-25 12:06:42',NULL,NULL,NULL,NULL,1),(142,8,'plan_info/Icono.jpg','dfdfff','Llamadas',1,0,0,'2018-04-19 16:39:08','2018-04-27 11:54:52',NULL,NULL,NULL,NULL,1),(143,8,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 12:00:11',NULL,NULL,NULL,NULL,1),(144,8,'plan_info/if_BT_bus_renault_front_905668.png','Internet 20 GB + Internet Ilimitado (*)<br/>20 GB de Bono de 4G','Internet 20 GB + Internet Ilimitado (*)<br/>20 GB de Bono de 4G',100,0,0,'2018-04-19 16:39:08','2018-04-26 18:45:27',NULL,NULL,NULL,NULL,1),(145,8,'/plan_info/rpb.svg','Llamadas','todo Bitel Gratis',0,0,2,'2018-04-19 16:39:08','2018-10-25 12:00:37',NULL,NULL,NULL,NULL,1),(146,8,'/plan_info/facebook.svg','Facebook Flex Gratis','Facebook Flex Gratis',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(147,8,'plan_info/app2.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,1,'2018-04-19 16:39:08','2018-10-25 12:01:05',NULL,NULL,NULL,NULL,1),(148,9,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:57:54',NULL,NULL,NULL,NULL,1),(149,9,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:58:10',NULL,NULL,NULL,NULL,1),(150,9,'plan_info/juego1.png','Internet 40 GB + Internet Ilimitado (*)<br/>40 GB de Bono de 4G','Internet 40 GB + Internet Ilimitado (*)<br/>40 GB de Bono de 4G',1,0,4,'2018-04-19 16:39:08','2018-10-25 11:59:17',NULL,NULL,NULL,NULL,1),(151,9,'plan_info/app3.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 11:58:36',NULL,NULL,NULL,NULL,1),(152,9,'plan_info/app1.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:58:47',NULL,NULL,NULL,NULL,1),(153,9,'plan_info/video1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,3,'2018-04-19 16:39:08','2018-10-25 11:59:02',NULL,NULL,NULL,NULL,1),(154,10,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:52:44',NULL,NULL,NULL,NULL,1),(155,10,'/plan_info/sms.svg','SMS','Ilimitado (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:55:24',NULL,NULL,NULL,NULL,1),(156,10,'plan_info/video3.png','Internet 45 GB + Internet Ilimitado (*)<br/>45 GB de Bono de 4G','Internet 45 GB + Internet Ilimitado (*)<br/>45 GB de Bono de 4G',1,0,3,'2018-04-19 16:39:08','2018-10-25 11:56:30',NULL,NULL,NULL,NULL,1),(157,10,'plan_info/app2.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 11:55:37',NULL,NULL,NULL,NULL,1),(158,10,'plan_info/app3.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:55:49',NULL,NULL,NULL,NULL,1),(159,10,'plan_info/juego2.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,4,'2018-04-19 16:39:08','2018-10-25 11:56:15',NULL,NULL,NULL,NULL,1),(160,11,'/plan_info/llamadas.svg','Llamadas','ilimitadas (**)',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:42:15',NULL,NULL,NULL,NULL,1),(161,11,'/plan_info/sms.svg','SMS','Ilimitado (**)',20,0,2,'2018-04-19 16:39:08','2018-10-25 11:42:38',NULL,NULL,NULL,NULL,1),(162,11,'plan_info/app1.png','Internet 2 GB','Internet 2 GB',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:43:00',NULL,NULL,NULL,NULL,1),(163,11,'plan_info/app2.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',0,0,1,'2018-04-19 16:39:08','2018-10-25 11:43:12',NULL,NULL,NULL,NULL,1),(164,11,'plan_info/app3.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:43:27',NULL,NULL,NULL,NULL,1),(165,11,'plan_info/video1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,3,'2018-04-19 16:39:08','2018-10-25 11:43:56',NULL,NULL,NULL,NULL,1),(166,12,'/plan_info/llamadas.svg','Llamadas ilimitadas (**)','Llamadas ilimitadas (**)',0,0,1,'2018-04-19 16:39:08','2018-10-18 16:53:26',NULL,NULL,NULL,NULL,1),(167,12,'/plan_info/sms.svg','SMS ilimitado (**)','SMS ilimitado (**)',0,0,1,'2018-04-19 16:39:08','2018-10-18 16:53:34',NULL,NULL,NULL,NULL,1),(168,12,'/plan_info/internet.svg','Internet','5 GB',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:47:52',NULL,NULL,NULL,NULL,1),(169,12,'/plan_info/rpb.svg','Llamada','todo Bitel Gratis',1,0,2,'2018-04-19 16:39:08','2018-10-25 11:47:19',NULL,NULL,NULL,NULL,1),(170,12,'/plan_info/facebook.svg','Facebook Flex Gratis','Facebook Flex Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-18 16:53:57',NULL,NULL,NULL,NULL,1),(171,12,'/plan_info/whatsapp.svg','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,3,'2018-04-19 16:39:08','2018-10-18 16:54:05',NULL,NULL,NULL,NULL,1),(172,13,'/plan_info/llamadas.svg','Llamadas','Ilimitadas (**)',0,0,2,'2018-04-19 16:39:08','2018-10-25 11:49:38',NULL,NULL,NULL,NULL,1),(173,13,'/plan_info/sms.svg','SMS','Ilimitado (**)',0,0,2,'2018-04-19 16:39:08','2018-10-25 11:49:55',NULL,NULL,NULL,NULL,1),(174,13,'plan_info/app1.png','Internet 10 GB','Internet 10 GB',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:50:20',NULL,NULL,NULL,NULL,1),(175,13,'plan_info/app3.png','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',1,0,1,'2018-04-19 16:39:08','2018-10-25 11:50:36',NULL,NULL,NULL,NULL,1),(176,13,'plan_info/video1.png','Facebook Flex Gratis','Facebook Flex Gratis',1,0,3,'2018-04-19 16:39:08','2018-10-25 11:50:52',NULL,NULL,NULL,NULL,1),(177,13,'plan_info/juego1.png','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,4,'2018-04-19 16:39:08','2018-10-25 11:51:10',NULL,NULL,NULL,NULL,1),(178,14,'/plan_info/llamadas.svg','Llamadas ilimitadas (**)','Llamadas ilimitadas (**)',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(179,14,'/plan_info/sms.svg','SMS ilimitado (**)','SMS ilimitado (**)',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(180,14,'/plan_info/internet.svg','','',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(181,14,'/plan_info/rpb.svg','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(182,14,'/plan_info/facebook.svg','Facebook Flex Gratis','Facebook Flex Gratis',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(183,14,'/plan_info/whatsapp.svg','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(184,15,'/plan_info/llamadas.svg','Llamadas ilimitadas (**)','Llamadas ilimitadas (**)',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(185,15,'/plan_info/sms.svg','SMS ilimitado (**)','SMS ilimitado (**)',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(186,15,'/plan_info/internet.svg','','',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(187,15,'/plan_info/rpb.svg','Llamada todo Bitel Gratis','Llamada todo Bitel Gratis',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(188,15,'/plan_info/facebook.svg','Facebook Flex Gratis','Facebook Flex Gratis',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(189,15,'/plan_info/whatsapp.svg','WhatsApp Ilimitado','WhatsApp Ilimitado',1,0,0,'2018-04-19 16:39:08',NULL,NULL,NULL,NULL,NULL,1),(190,8,'plan_info/app1.png','prueba','prueba',12,0,1,'2018-04-23 14:51:44','2018-10-25 12:01:18',NULL,NULL,NULL,NULL,1),(191,21,'plan_info/Ejemplo Caso Uso.png','asdfdfd','as',1,0,0,'2018-04-25 09:29:40','2018-04-25 09:48:36',NULL,NULL,NULL,NULL,1),(192,22,'plan_info/Llamadas.jpg','ddd','ee',1,0,0,'2018-04-25 17:05:54','2018-04-25 17:09:33',NULL,NULL,NULL,NULL,1),(193,22,'plan_info/Llamadas.jpg','rrer','rer',1,0,0,'2018-04-25 17:15:26','2018-04-25 17:26:58',NULL,NULL,NULL,NULL,1),(194,22,'plan_info/Chio.png','rrerrrr','rerrrr',1,0,0,'2018-04-25 17:15:47','2018-04-25 17:27:01',NULL,NULL,NULL,NULL,0),(195,22,'plan_info/Llamadas.jpg','ruuu','rerrrr',1,0,0,'2018-04-25 17:17:25',NULL,NULL,NULL,NULL,NULL,1),(196,16,'plan_info/Chio.png','llamadas','llamadasº1',1,0,0,'2018-04-26 09:24:50',NULL,NULL,NULL,NULL,NULL,1),(197,16,'plan_info/Chio.png','llamadasr','llamadasº1',1,0,0,'2018-04-26 09:24:56',NULL,NULL,NULL,NULL,NULL,1),(198,23,'plan_info/Chio.png','Llamadas3','LLmadas nacionales',1,0,0,'2018-04-26 09:32:27','2018-04-26 09:34:11',NULL,NULL,NULL,NULL,1),(199,23,'plan_info/lalal.png','dddd','dd',1,0,0,'2018-04-26 10:23:51',NULL,NULL,NULL,NULL,NULL,1),(200,23,'plan_info/Chio.png','dddd2','dd',1,0,0,'2018-04-26 10:24:05',NULL,NULL,NULL,NULL,NULL,1),(201,8,'plan_info/juego1.png','esta es una prueba','Esta en una prueba',1,0,4,'2018-04-26 18:40:57','2018-10-25 12:02:08',NULL,NULL,NULL,NULL,1),(202,8,'plan_info/juego2.png','prueba','test',100,0,4,'2018-04-26 18:41:30','2018-10-25 12:02:23',NULL,NULL,NULL,NULL,1),(203,8,'plan_info/Chio.png','prueba1','prueasad',1,0,0,'2018-04-27 09:33:15',NULL,NULL,NULL,NULL,NULL,1),(204,8,'plan_info/video2.png','sdfsdf','sdfsd',1,0,3,'2018-04-27 09:33:46','2018-10-25 12:01:37',NULL,NULL,NULL,NULL,1),(205,8,'plan_info/video1.png','wf qwf ew','wq fwef wefe',1,0,3,'2018-04-27 13:15:37','2018-10-25 12:01:52',NULL,NULL,NULL,NULL,1),(206,25,'plan_info/1 llamadas.svg','Llamadas Ilimitadas','***',100,0,0,'2018-05-08 15:40:48','2018-05-08 15:49:50',NULL,NULL,NULL,NULL,1),(207,26,'plan_info/1 llamadas.svg','Llamadas Ilimitadas','Llamadas Ilimitadas *',1,0,0,'2018-05-08 16:13:18',NULL,NULL,NULL,NULL,NULL,1),(208,26,'plan_info/2 sms.svg','SMS Ilimitados','SMS Ilimitados *',100,0,0,'2018-05-08 16:13:43',NULL,NULL,NULL,NULL,NULL,1),(209,27,'plan_info/RESERVA.jpg','test1','test 1 Bitel',2,0,0,'2018-05-15 11:32:01',NULL,NULL,NULL,NULL,NULL,1),(210,1,'plan_info/planes_icon.png','Esta es una prueba','Esta es una prueba',0,6,3,'2018-09-13 16:50:13',NULL,NULL,NULL,NULL,NULL,1),(211,12,'plan_info/equipo.png','Juego','juegos',1,1,1,'2018-10-18 16:58:32',NULL,NULL,NULL,NULL,NULL,1),(212,1,'plan_info/video1.png','video','video',1,1,3,'2018-10-25 10:09:09',NULL,NULL,NULL,NULL,NULL,1),(213,2,'plan_info/juego2.png','Juego 1','Juego 1',1,1,4,'2018-10-25 10:15:25',NULL,NULL,NULL,NULL,NULL,1),(214,2,'plan_info/juego1.png','Juego 2','Juego 2',1,1,4,'2018-10-25 10:15:42','2019-02-05 12:10:26',NULL,NULL,NULL,NULL,0),(215,3,'plan_info/video2.png','video1','video1',1,1,3,'2018-10-25 10:21:31',NULL,NULL,NULL,NULL,NULL,1),(216,3,'plan_info/video3.png','video2','video2',1,1,3,'2018-10-25 10:21:47',NULL,NULL,NULL,NULL,NULL,1),(217,3,'plan_info/juego1.png','Juego1','Juego1',1,1,4,'2018-10-25 10:23:13',NULL,NULL,NULL,NULL,NULL,1),(218,11,'plan_info/video2.png','video1','video1',1,1,3,'2018-10-25 11:44:13',NULL,NULL,NULL,NULL,NULL,1),(219,11,'plan_info/video3.png','video2','video2',1,1,3,'2018-10-25 11:44:30',NULL,NULL,NULL,NULL,NULL,1),(220,11,'plan_info/juego2.png','Juego1','Juego2',1,1,4,'2018-10-25 11:44:48',NULL,NULL,NULL,NULL,NULL,1),(221,11,'plan_info/juego1.png','Juego2','Juego2',1,1,4,'2018-10-25 11:45:15',NULL,NULL,NULL,NULL,NULL,1),(222,12,'plan_info/juego2.png','juego1','juego1',1,1,4,'2018-10-25 11:48:17',NULL,NULL,NULL,NULL,NULL,1),(223,7,'plan_info/ico-portabilidad-1_0.png','test de juego','test de Juego',1,1,4,'2018-10-31 14:36:12',NULL,NULL,NULL,NULL,NULL,1),(224,7,'plan_info/ico-portabilidad-3 .png','test de 45','test de 45',1,1,3,'2018-10-31 14:37:49',NULL,NULL,NULL,NULL,NULL,1),(225,29,'plan_info/reglamento.jpg','prueba 1','prueba',1,1,1,'2018-10-31 14:41:28',NULL,NULL,NULL,NULL,NULL,1),(226,29,'plan_info/ico-portabilidad-2_0.png','prueba 2','prueba 2',1,1,2,'2018-10-31 14:41:48',NULL,NULL,NULL,NULL,NULL,1),(227,29,'plan_info/portabilidad-banner-principal-mobile-2.jpg','prueba 3','prueba 100',1,1,3,'2018-10-31 14:42:10',NULL,NULL,NULL,NULL,NULL,1),(228,31,'plan_info/Clash-of-Clans.png','Clash of Clans','Clash of Clans',1,1,4,'2019-02-05 11:54:43',NULL,NULL,NULL,NULL,NULL,1),(229,32,'plan_info/PERFIL (1).png','test','test',1,1,3,'2019-02-06 12:01:33',NULL,NULL,NULL,NULL,NULL,1),(230,1,'plan_info/Screenshot from 2018-10-29 19-03-03.png','Descripcion detallada','Informacion adicional de ....',1,1,4,'2019-02-06 16:50:24',NULL,NULL,NULL,NULL,NULL,1),(231,35,'plan_info/donación de juguetes.jpg','test app','test appa1000',1,1,1,'2019-02-07 10:51:04',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_plan_infocomercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL COMMENT 'Marca del dispositivo\n',
  `product_model` varchar(50) NOT NULL,
  `product_image_url` varchar(150) DEFAULT NULL,
  `product_keywords` varchar(100) DEFAULT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_description` text,
  `product_general_specifications` text,
  `product_data_sheet` varchar(200) DEFAULT NULL COMMENT 'URL del documento de especificaciones técnicas\n',
  `product_external_memory` varchar(20) DEFAULT NULL,
  `product_internal_memory` varchar(20) DEFAULT NULL,
  `product_screen_size` varchar(5) DEFAULT NULL,
  `product_camera_1` varchar(200) DEFAULT NULL,
  `product_camera_2` varchar(6) DEFAULT NULL,
  `product_camera_3` varchar(6) DEFAULT NULL,
  `product_camera_4` varchar(6) DEFAULT NULL,
  `product_processor_name` varchar(80) DEFAULT NULL,
  `product_memory_ram` varchar(10) DEFAULT NULL,
  `product_processor_power` varchar(12) DEFAULT NULL,
  `product_processor_cores` varchar(20) DEFAULT NULL,
  `product_band` varchar(10) DEFAULT NULL COMMENT '2G / 3G / 4G',
  `product_radio` varchar(50) DEFAULT NULL,
  `product_wlan` varchar(50) DEFAULT NULL,
  `product_bluetooth` varchar(50) DEFAULT NULL,
  `product_os` varchar(50) DEFAULT NULL,
  `product_gps` varchar(50) DEFAULT NULL,
  `product_battery` varchar(50) DEFAULT NULL,
  `product_slug` varchar(150) DEFAULT NULL,
  `product_tag` enum('Nuevo','Destacado','Promoción') DEFAULT NULL,
  `product_priority` int(3) DEFAULT '1',
  `product_sentinel` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `publish_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `product_description_postpaid` text,
  PRIMARY KEY (`product_id`),
  KEY `fk_tbl_product_tbl_brand1_idx` (`brand_id`),
  KEY `fk_tbl_product_tbl_category1_idx` (`category_id`),
  FULLTEXT KEY `indx_srchproduct` (`product_model`,`product_keywords`,`product_description`),
  FULLTEXT KEY `indx_srch_product_slug` (`product_slug`),
  FULLTEXT KEY `indx_srchproduct2` (`product_model`,`product_keywords`,`product_description`,`product_description_postpaid`),
  CONSTRAINT `fk_tbl_product_tbl_brand1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_product_tbl_category1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,1,1,'A3 XL','productos/ALCATEL/ALCATEL-A3-XL.jpg',NULL,449.00,NULL,NULL,'data_sheets/Ficha_tecnica_ALCATEL_A3_XL.pdf','128','8','5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','2000','a3-xl',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(2,1,2,'L640','productos/BITEL/BITEL-L640.jpg',NULL,259.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_L640.pdf','64','4','4.5','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','3000','l640',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(3,1,2,'B9501','productos/BITEL/Bitel-B9501.jpg',NULL,259.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf','32','2','4','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','4000','b9501',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(4,1,3,'Y360II','productos/HUAWEII/HUAWEI-Y360-II.jpg',NULL,259.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf','128','8','5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','2000','y360ii','Destacado',1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(5,1,3,'Y6 II Compact','productos/HUAWEII/Huawei-Y6-II-Compact.jpg',NULL,439.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf','128','4','4.5','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','3000','y6-ii-compact',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(6,1,3,'P9 Lite','productos/HUAWEII/Huawei-P9-Lite.jpg',NULL,779.00,NULL,NULL,'data_sheets/Ficha_tecnica_HUAWEI_P9_LITE.pdf','64','2','4','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','4000','p9-lite',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(7,1,3,'P9','productos/Huawei/p9.png',NULL,1679.00,'<p>Esta es una prueba de <strong><span style=\"background-color:#ff0000\">descripci&oacute;n </span></strong>de prepago Esta es una prueba de descripci&oacute;n de prepago Esta es una prueba de descripci&oacute;n de prepago</p>\n\n<ol>\n	<li><em><strong>Esta es una orueba1</strong></em></li>\n	<li>Esta es una prueba2</li>\n	<li><span style=\"color:#ff8c00\">Esta es una prueba3</span></li>\n	<li><a href=\"http://www.google.com\" target=\"_blank\">Esta es una prueba4</a></li>\n</ol>\n\n<p>Link: <a href=\"http://www.google.com.pe\" target=\"_blank\">www.google.com.pe</a></p>','data_commercial/Ficha_comercial_Huawei_p9.pdf','data_sheets/Ficha_tecnica_Huawei_p9.pdf','32','8','5','12','8','12',NULL,'AMD','50','3',NULL,'2G','Si','Si','Si','Android 6.0','Si','2000','p9',NULL,100,0,'2017-12-05 12:32:37','2018-10-17 09:25:57',NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(8,1,3,'Y5II','productos/HUAWEII/Huawei-Y5-II.jpg',NULL,299.00,NULL,NULL,'data_sheets/Ficha_tecnica_HUAWEI_Y5_II.pdf','64','4','4.5','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','3000','y5ii',NULL,1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(9,1,3,'P8 Lite','productos/HUAWEII/Huawei-P8-Lite.jpg',NULL,599.00,NULL,NULL,'data_sheets/Ficha_tecnica_HUAWEI_P8_LITE.pdf','32','2','4','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','4000','p8-lite','Destacado',1,0,'2017-12-05 12:32:37',NULL,NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(10,1,4,'Vibe b','productos/Lenovo/vibe-b.gif',NULL,259.00,NULL,NULL,'data_sheets/Ficha_tecnica_LENOVO_VIBE_B.pdf','128','8','5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','2000','vibe-b','Nuevo',1,0,'2017-12-05 12:32:37','2018-12-12 10:57:43',NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(11,1,5,'K10 2017','productos/LG/LG-K10-2017.jpg',NULL,599.00,NULL,'data_commercial/Ficha_comercial_LG_k10-2017.pdf','data_sheets/Ficha_tecnica_BITEL_9501.pdf','64','4','4.5','5','9',NULL,NULL,'AMD','5','3',NULL,'2G','Si','Si','Si','Android 6.0','Si','3000','k10-2017',NULL,1,0,'2017-12-05 12:32:37','2018-05-07 17:05:49',NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(12,1,5,'G6 New','productos/LG/LG-G6.jpg',NULL,2699.00,NULL,NULL,'data_sheets/Ficha_tecnica_LG_G6.pdf','32','2','4','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','4000','g6-new','Nuevo',100,0,'2017-12-05 12:32:37','2018-11-29 17:48:00',NULL,'2017-12-05 12:32:37',1,NULL,NULL,1,1,NULL),(13,1,5,'K4 2017','productos/LG/LG-K4-2017.jpg',NULL,399.00,NULL,NULL,'data_sheets/Ficha_tecnica_LG_K4_2017.pdf','128','8','5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','2000','k4-2017',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(14,1,5,'Stylus 3','productos/LG/LG-STYLUS-3.jpg',NULL,1799.00,NULL,NULL,'data_sheets/Ficha_tecnica_LG_STYLUS_3.pdf','64','4','4.5','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','3000','stylus-3',NULL,1,0,'2017-12-05 12:32:38','2018-04-27 16:11:53',NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(15,1,5,'X Power K220','productos/LG/LG-X-POWER-K220.jpg',NULL,599.00,NULL,NULL,'data_sheets/Ficha_tecnica_LG_X_POWER_K220.pdf','32','2','4','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','4000','x-power-k220',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(16,1,5,'X220M','productos/LG/LG-X-220m.jpg',NULL,299.00,NULL,NULL,'data_sheets/Ficha_tecnica_LG_X220M.pdf','128','8','5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','2000','x220m','Nuevo',1,0,'2017-12-05 12:32:38','2018-04-25 11:20:40',NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(17,1,6,'Galaxy J7 Prime','productos/SAMSUNG/SAMSUNG-GALAXY-J7-PRIME.jpg',NULL,999.00,NULL,NULL,'data_sheets/Ficha_tecnica_SAMSUNG_GALAXY_J7 PRIME.pdf','128','4','4.5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','3000','galaxy-j7-prime',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(18,1,6,'S7','productos/Samsung/s7.jpeg',NULL,2499.00,NULL,NULL,'data_sheets/Ficha_tecnica_SAMSUNG_S7.pdf','64','2','4','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','4000','s7',NULL,1,0,'2017-12-05 12:32:38','2018-04-27 15:27:49',NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(19,1,6,'S7 Edge','productos/SAMSUNG/SAMSUNG-S7-EDGE.jpg',NULL,2999.00,NULL,NULL,'data_sheets/Ficha_tecnica_SAMSUNG_S7_EDGE.pdf','128','8','5','16','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','2000','s7-edge',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(20,1,7,'5.0','productos/SKY/SKY-5.0-.jpg',NULL,259.00,NULL,NULL,'data_sheets/Ficha_tecnica_SKY_5.0LM.pdf','32','4','4.5','12','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No','No','No','iOS 11','No','3000','5.0',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(21,1,2,'Chip Bifri 5',NULL,NULL,5.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf','128','2','4','14','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si','Android 6.0','Si','4000','chip-bifri-5',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(22,2,5,'Headset 1','productos/accesorios.jpg',NULL,449.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si',NULL,'Si',NULL,'headset-1',NULL,1,0,'2017-12-05 12:32:38','2018-01-29 21:37:23',NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(23,2,5,'Headset 2','productos/accesorios.jpg',NULL,249.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-2',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(24,2,5,'Headset 3','productos/accesorios.jpg',NULL,149.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-3',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(25,2,5,'Headset 4','productos/accesorios.jpg',NULL,349.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-4',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(26,2,5,'Headset 5','productos/accesorios.jpg',NULL,649.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-5',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(27,2,6,'Headset 6','productos/accesorios.jpg',NULL,549.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-6',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(28,2,6,'Headset 7','productos/accesorios.jpg',NULL,849.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-7',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(29,2,6,'Headset 8','productos/accesorios.jpg',NULL,749.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-8',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(30,2,6,'Headset 9','productos/accesorios.jpg',NULL,1049.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-9',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(31,2,6,'Headset 10','productos/accesorios.jpg',NULL,1449.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-10',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(32,2,5,'Headset 11','productos/accesorios.jpg',NULL,449.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-11','Nuevo',1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(33,2,5,'Headset 12','productos/accesorios.jpg',NULL,249.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-12',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(34,2,5,'Headset 13','productos/accesorios.jpg',NULL,149.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-13',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(35,2,5,'Headset 14','productos/accesorios.jpg',NULL,349.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-14',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(36,2,5,'Headset 15','productos/accesorios.jpg',NULL,649.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-15','Nuevo',1,0,'2017-12-05 12:32:38','2018-01-29 12:01:07',NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(37,2,6,'Headset 16','productos/accesorios.jpg',NULL,549.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-16',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(38,2,6,'Headset 17','productos/accesorios.jpg',NULL,849.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-17',NULL,1,0,'2017-12-05 12:32:38',NULL,NULL,'2017-12-05 12:32:38',1,NULL,NULL,1,1,NULL),(39,2,6,'Headset 18','productos/accesorios.jpg',NULL,749.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-18',NULL,1,0,'2017-12-05 12:32:39',NULL,NULL,'2017-12-05 12:32:39',1,NULL,NULL,1,1,NULL),(40,2,6,'Headset 19','productos/accesorios.jpg',NULL,1049.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-19',NULL,1,0,'2017-12-05 12:32:39',NULL,NULL,'2017-12-05 12:32:39',1,NULL,NULL,1,1,NULL),(41,2,6,'Headset 20','productos/accesorios.jpg',NULL,1449.00,NULL,NULL,'data_sheets/Ficha_tecnica_BITEL_9501.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'headset-20',NULL,1,0,'2017-12-05 12:32:39',NULL,NULL,'2017-12-05 12:32:39',1,NULL,NULL,1,1,NULL),(42,1,1,'T2','productos/Alcatel/t2.png',NULL,759.00,'Alcatel super nuevo',NULL,NULL,'32','32','7','12','0',NULL,NULL,'1.2',NULL,'23',NULL,'4G LTE','Si','Si','Si','Android','Si','12','t2','Nuevo',1,0,'2018-01-26 15:44:25','2018-02-28 14:25:59',NULL,'2018-02-28 14:25:59',1,NULL,NULL,NULL,1,NULL),(43,1,2,'asdasd','productos/Bitel/asdasd.jpeg',NULL,1212.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asdasd','Nuevo',1,0,'2018-02-05 01:38:26','2018-12-14 11:51:18',NULL,'2018-12-14 11:51:18',1,NULL,NULL,NULL,1,NULL),(44,1,1,'iytf','productos/Alcatel/iytf.jpeg',NULL,500.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'iytf','Nuevo',1,0,'2018-02-05 16:29:44','2018-12-14 11:51:16',NULL,'2018-12-14 11:51:16',1,NULL,NULL,NULL,1,NULL),(45,1,3,'S43','productos/Huawei/s43.png',NULL,23.00,'Producto de prueba',NULL,NULL,'8','8','23','12','23',NULL,NULL,'12',NULL,'12',NULL,'4G LTE','Si','Si','Si','Android','Si','12','s43',NULL,23,0,'2018-03-17 04:50:47','2018-12-14 11:51:13',NULL,'2018-12-14 11:51:13',1,NULL,NULL,NULL,1,NULL),(47,1,3,'P20 Pro','productos/Huawei/p20-pro.jpeg',NULL,2800.00,'<p><strong><span style=\"background-color:#ffff00\">El &uacute;ltimo celular de Huawei.</span></strong></p>\r\n\r\n<p>Esta es una prueba desde el editor de texto, esta es una prueba desde el editor de texto. Esta es una prueba desde el editor de texto.</p>\r\n\r\n<ol>\r\n	<li>Esta es una prueba1</li>\r\n	<li>Esta es una prueba2</li>\r\n	<li>Esta es una prueba3</li>\r\n</ol>',NULL,'data_sheets/Ficha_tecnica_Huawei_p20-pro.pdf','2048','64','6.0','20','15','12',NULL,'Kirin 2500','8','3.5',NULL,'5G','Si','Si','Si','Android Oreo 8.0','Si','4000','p20-pro','Nuevo',1,0,'2018-04-12 15:46:40','2018-09-21 12:38:15',NULL,'2018-04-12 10:53:18',1,NULL,NULL,NULL,1,NULL),(49,1,7,'Robin','productos/Sky/robin.png',NULL,2000.00,'Concebido como el primer Cloud Phone, Robin es producto del trabajo de la startup Nextbit','data_commercial/Ficha_comercial_Sky_robin.pdf','data_sheets/Ficha_tecnica_Sky_robin.pdf','128','16','5','5','13',NULL,NULL,'3','150','2.5',NULL,'4G LTE','Si','Si','Si','Android 6.0','Si','2.680','robin','Destacado',1,0,'2018-04-19 21:19:40','2018-05-04 15:11:40',NULL,'2018-04-19 16:39:44',1,NULL,NULL,NULL,1,NULL),(50,4,8,'iChip','productos/Bitel/chip-bitel.png',NULL,10.00,'<p>Test de descripcion de producto para prepagopara verificar que no salga en HTML.</p>\n\n<p>&nbsp;</p>\n\n<p>Estamos probando el hiperlink <a href=\"http://www.google.com\">aqui.</a></p>\n\n<p>&nbsp;</p>\n\n<p>Nueva descripcion de para prepago, que estamos testeando para validarlo.</p>','data_commercial/Ficha_comercial_Bitel_chip-bitel.pdf','data_sheets/Ficha_tecnica_Bitel_chip-bitel.pdf','128','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Si','Si','Si',NULL,'Si',NULL,'chip-bitel','Nuevo',1,0,'2018-04-04 15:08:01','2019-03-01 17:38:08',NULL,'2018-04-04 15:08:01',1,NULL,NULL,1,1,'<p>Test de descripcion de producto para postpago&nbsp;para verificar que no salga en HTML.</p>\n\n<p>&nbsp;</p>\n\n<p>Testetar el hiperlink en ........ <a href=\"http://www.bitel.com.pe\">Web de Bitel</a></p>\n\n<p>&nbsp;</p>\n\n<p>Estamos probando el hiperlink <a href=\"http://www.google.com\">aqui.</a></p>\n\n<p>&nbsp;</p>\n\n<p>Nueva descripcion de para prepago, que estamos testeando para validarlo.</p>'),(51,1,3,'P22','productos/Huawei/p22.jpeg',NULL,5000.00,'<p><a href=\"http://bitel.com.pe\"><span style=\"color:#a52a2a\">sdfdsdsdsd</span></a></p>','data_commercial/Ficha_comercial_Huawei_p22.pdf','data_sheets/Ficha_tecnica_Huawei_p22.pdf','2','1','8','20','25','35',NULL,'Kirin 5000 esta es una prueba','200','4.5',NULL,'5G','Si','Si','Si','Android 9 Snickers','Si','6000','p22','Nuevo',1,0,'2018-04-25 16:25:16','2018-10-31 14:51:40',NULL,'2018-04-25 11:29:02',1,NULL,NULL,NULL,1,NULL),(52,1,10,'M6 Note','productos/Meizu/m6-note.jpeg',NULL,749.00,NULL,'data_commercial/Ficha_comercial_Meizu_m6-note.pdf','data_sheets/Ficha_tecnica_Meizu_m6-note.pdf','2','2','2','2','2',NULL,NULL,'2','2','2',NULL,'2G','Si','Si','Si','2','Si','2','m6-note','Destacado',1,0,'2018-05-25 20:46:18','2018-12-14 11:50:28',NULL,'2018-05-25 16:42:55',1,NULL,NULL,NULL,1,NULL),(53,1,10,'M6 Prueba','productos/Meizu/m6-prueba.jpeg',NULL,799.00,'2','data_commercial/Ficha_comercial_Meizu_m6-prueba.pdf','data_sheets/Ficha_tecnica_Meizu_m6-prueba.pdf','2','2','2','2','2',NULL,NULL,'2','2','2',NULL,'2G','No','Si','Si','2','Si','2','m6-prueba','Nuevo',1,0,'2018-05-25 21:49:00','2018-09-05 12:36:10',NULL,'2018-05-25 16:50:28',1,NULL,NULL,NULL,1,NULL),(54,1,2,'X20','productos/Bitel/x20.png',NULL,800.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'x20','Nuevo',1,0,'2018-08-20 21:43:05','2018-09-05 12:41:34',NULL,'2018-09-05 12:41:34',1,NULL,NULL,NULL,1,NULL),(55,2,2,'ewew','productos/Bitel/ewew.png',NULL,32.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ewew','Nuevo',32,0,'2018-08-20 21:50:39','2018-09-05 12:41:29',NULL,'2018-09-05 12:41:29',1,NULL,NULL,NULL,1,NULL),(56,1,2,'Test Sentinel','productos/Bitel/test-sentinel-sentinel.jpeg',NULL,700.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test-sentinel-sentinel','Promoción',1,1,'2018-09-12 20:25:01','2018-09-13 19:51:40',NULL,'2018-09-12 15:26:58',1,NULL,NULL,NULL,1,NULL),(57,1,1,'Test','productos/Alcatel/test-sentinel.jpeg',NULL,1500.00,'<p>Testeo de la seccion de descripcion &gt;&gt; <a href=\"http://www.bitel.com.pe\">Bitel.com.pe</a></p>',NULL,NULL,'8','4','5','56','100','12',NULL,'sswewewewe','56',NULL,NULL,'3G','Si','Si','Si','wewewewew','Si','12','test-sentinel','Nuevo',26,1,'2018-09-26 15:50:55','2018-12-14 11:50:24',NULL,'2018-12-14 11:50:24',1,NULL,NULL,NULL,1,NULL),(58,1,10,'M50','productos/Stay On/m50-sentinel.jpeg',NULL,999.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m50-sentinel','Nuevo',999,1,'2018-10-29 20:23:09','2018-12-14 11:50:53',NULL,'2018-12-14 11:50:53',1,NULL,NULL,NULL,1,NULL),(59,2,1,'45','productos/Alcatel/45-sentinel.jpeg',NULL,1200.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45-sentinel','Promoción',1,1,'2018-11-07 16:45:11','2018-12-14 11:50:50',NULL,'2018-12-14 11:50:50',1,NULL,NULL,NULL,1,NULL),(60,1,12,'escarabajo','productos/Pluton/escarabajo-sentinel.jpeg',NULL,1200.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escarabajo-sentinel','Nuevo',56,1,'2018-11-07 16:45:47','2018-11-07 12:31:37',NULL,'2018-11-07 11:53:01',1,NULL,NULL,NULL,1,NULL),(61,1,12,'dinosaurio','productos/Pluton/dinosaurio-sentinel.jpeg',NULL,3452.00,'<p>Esta es una prueba de DInosaurio</p>',NULL,NULL,'1','2','4','16 pixeles','10','20',NULL,'Intel Core i7 5000 3.6 Mhz con 14 nucleos','100',NULL,NULL,'3G','Si','Si','Si','Android 6.0','Si','2000','dinosaurio-sentinel','Destacado',32,1,'2018-11-07 17:02:13','2018-11-07 16:40:31',NULL,'2018-11-07 15:48:41',1,NULL,NULL,NULL,1,NULL),(62,1,13,'LUNA','productos/Venus1/luna-sentinel.jpeg',NULL,635.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'luna-sentinel',NULL,100,1,'2018-11-07 21:54:58','2018-11-07 17:03:36',NULL,'2018-11-07 16:57:34',1,NULL,NULL,NULL,1,NULL),(63,1,13,'SOL','productos/Venus1/sol.jpeg',NULL,23.45,'<p>Esta es <strong>una</strong> prueba de correccion de marcas y no uso de sentiinel</p>',NULL,NULL,'1','2','5','16 pixeles','10','20',NULL,'Intel Core i7 5000 3.6 Mhz con 15 nucleos','100',NULL,NULL,'2G','Si','Si','Si','Android 9 Snickers','Si','2000','sol','Nuevo',32,0,'2018-11-07 22:21:30','2019-03-01 11:36:08',NULL,'2018-11-07 17:23:09',1,NULL,NULL,NULL,1,NULL),(64,1,13,'Dinosaur','productos/Venus1/dinosaur.jpeg',NULL,5656.00,'<p>PRUEBA DE DESCRIPCION PARA UNA VENTA DE EQUIPOS Y AURICULARES ESTA ES LA WEB A visitar : <a href=\"http://www.google.com.pe\">www.google.com.pe</a></p>',NULL,NULL,'128','8','232','232','323','323',NULL,'sdsdsd','323',NULL,NULL,'3G','Si','Si','Si','dsdsds','Si','23','dinosaur','Nuevo',5,0,'2018-11-08 15:38:15','2018-11-08 10:43:36',NULL,'2018-11-08 10:41:48',1,NULL,NULL,NULL,1,NULL),(65,1,1,'ABCD','productos/Alcatel/abcd.png',NULL,500.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'abcd','Promoción',1,0,'2019-02-06 21:44:04',NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL),(66,1,5,'GFD','productos/LG/gfd.png',NULL,343.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gfd','Nuevo',1,0,'2019-02-07 22:56:37',NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL),(67,1,1,'MDES','productos/Alcatel/mdes.png',NULL,444.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mdes','Nuevo',1,0,'2019-02-07 22:59:37',NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL),(68,1,6,'S10 Plus','productos/Samsung/s10-plus.jpeg',NULL,2000.00,'<p><strong><span style=\"font-family:Georgia,serif\"><span style=\"font-size:28px\">Test descripcion prepago</span></span></strong>&nbsp;<a href=\"http://www.google.com.pe\">testing de url</a>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>',NULL,NULL,'8','16','25','56','85','84',NULL,'34 procesador Intel','5',NULL,NULL,'3G','Si','Si','Si','Windowns responsive','Si','3000','s10-plus','Nuevo',5,0,'2019-02-22 21:54:50','2019-02-26 18:42:45',NULL,'2019-02-22 17:20:44',1,NULL,NULL,NULL,1,'<p><em><u><strong><span style=\"color:#000000\"><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:22px\">Descripcion de producto en postpago</span></span></span></strong></u></em>&nbsp;the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a t<a href=\"http://bitel.com.pe\">ype specimen b</a>ook. It has survived not only five centuries, but also the leap into electronic&nbsp;</p>'),(69,1,6,'s13','productos/Samsung/s13.png',NULL,2000.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'s13','Nuevo',777,0,'2019-02-27 22:28:51','2019-03-26 13:47:38',NULL,'2019-02-27 17:30:32',1,NULL,NULL,NULL,1,NULL),(70,1,6,'S20','productos/Samsung/s20.png',NULL,1000.00,'<p>Descripcion <strong>Prepago</strong></p>\n\n<div alt=\"0\" id=\"SL_balloon_obj\" style=\"display: block;\">\n<div class=\"SL_ImTranslatorLogo\" id=\"SL_button\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/imtranslator-s.png&quot;); display: none; opacity: 1;\">&nbsp;</div>\n\n<div id=\"SL_shadow_translation_result2\" style=\"display: none;\">&nbsp;</div>\n\n<div id=\"SL_shadow_translator\" style=\"left: -10000px; top: -10000px; display: none;\">\n<div id=\"SL_planshet\">\n<div id=\"SL_arrow_up\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/up.png&quot;);\">&nbsp;</div>\n\n<div id=\"SL_Bproviders\">\n<div class=\"SL_BL_LABLE_ON\" id=\"SL_P0\" title=\"Google\">G</div>\n\n<div class=\"SL_BL_LABLE_ON\" id=\"SL_P1\" title=\"Microsoft\">M</div>\n\n<div class=\"SL_BL_LABLE_ON\" id=\"SL_P2\" title=\"Translator\">T</div>\n\n<div class=\"SL_BL_LABLE_ON\" id=\"SL_P3\" title=\"Yandex\">Y</div>\n</div>\n\n<div id=\"SL_alert_bbl\" style=\"display: none;\">\n<div id=\"SLHKclose\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/delete.png&quot;);\">&nbsp;</div>\n\n<div id=\"SL_alert_cont\">&nbsp;</div>\n</div>\n\n<div id=\"SL_TB\">\n<table cellspacing=\"1\" id=\"SL_tables\">\n	<tr>\n		<td align=\"right\" class=\"SL_td\" width=\"10%\"><input id=\"SL_locer\" title=\"Lock-in language\" type=\"checkbox\" /></td>\n		<td align=\"left\" class=\"SL_td\" width=\"20%\"><select id=\"SL_lng_from\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/select.png&quot;) 100% 0px no-repeat rgb(255, 255, 255);\"><option value=\"auto\">Detect language</option><option value=\"af\">Afrikaans</option><option value=\"sq\">Albanian</option><option value=\"am\">Amharic</option><option value=\"ar\">Arabic</option><option value=\"hy\">Armenian</option><option value=\"az\">Azerbaijani</option><option value=\"eu\">Basque</option><option value=\"be\">Belarusian</option><option value=\"bn\">Bengali</option><option value=\"bs\">Bosnian</option><option value=\"bg\">Bulgarian</option><option value=\"ca\">Catalan</option><option value=\"ceb\">Cebuano</option><option value=\"ny\">Chichewa</option><option value=\"zh-CN\">Chinese (Simplified)</option><option value=\"zh-TW\">Chinese (Traditional)</option><option value=\"co\">Corsican</option><option value=\"hr\">Croatian</option><option value=\"cs\">Czech</option><option value=\"da\">Danish</option><option value=\"nl\">Dutch</option><option value=\"en\">English</option><option value=\"eo\">Esperanto</option><option value=\"et\">Estonian</option><option value=\"tl\">Filipino</option><option value=\"fi\">Finnish</option><option value=\"fr\">French</option><option value=\"fy\">Frisian</option><option value=\"gl\">Galician</option><option value=\"ka\">Georgian</option><option value=\"de\">German</option><option value=\"el\">Greek</option><option value=\"gu\">Gujarati</option><option value=\"ht\">Haitian Creole</option><option value=\"ha\">Hausa</option><option value=\"haw\">Hawaiian</option><option value=\"iw\">Hebrew</option><option value=\"hi\">Hindi</option><option value=\"hmn\">Hmong</option><option value=\"hu\">Hungarian</option><option value=\"is\">Icelandic</option><option value=\"ig\">Igbo</option><option value=\"id\">Indonesian</option><option value=\"ga\">Irish</option><option value=\"it\">Italian</option><option value=\"ja\">Japanese</option><option value=\"jw\">Javanese</option><option value=\"kn\">Kannada</option><option value=\"kk\">Kazakh</option><option value=\"km\">Khmer</option><option value=\"ko\">Korean</option><option value=\"ku\">Kurdish</option><option value=\"ky\">Kyrgyz</option><option value=\"lo\">Lao</option><option value=\"la\">Latin</option><option value=\"lv\">Latvian</option><option value=\"lt\">Lithuanian</option><option value=\"lb\">Luxembourgish</option><option value=\"mk\">Macedonian</option><option value=\"mg\">Malagasy</option><option value=\"ms\">Malay</option><option value=\"ml\">Malayalam</option><option value=\"mt\">Maltese</option><option value=\"mi\">Maori</option><option value=\"mr\">Marathi</option><option value=\"mn\">Mongolian</option><option value=\"my\">Myanmar (Burmese)</option><option value=\"ne\">Nepali</option><option value=\"no\">Norwegian</option><option value=\"ps\">Pashto</option><option value=\"fa\">Persian</option><option value=\"pl\">Polish</option><option value=\"pt\">Portuguese</option><option value=\"pa\">Punjabi</option><option value=\"ro\">Romanian</option><option value=\"ru\">Russian</option><option value=\"sm\">Samoan</option><option value=\"gd\">Scots Gaelic</option><option value=\"sr\">Serbian</option><option value=\"st\">Sesotho</option><option value=\"sn\">Shona</option><option value=\"sd\">Sindhi</option><option value=\"si\">Sinhala</option><option value=\"sk\">Slovak</option><option value=\"sl\">Slovenian</option><option value=\"so\">Somali</option><option value=\"es\">Spanish</option><option value=\"su\">Sundanese</option><option value=\"sw\">Swahili</option><option value=\"sv\">Swedish</option><option value=\"tg\">Tajik</option><option value=\"ta\">Tamil</option><option value=\"te\">Telugu</option><option value=\"th\">Thai</option><option value=\"tr\">Turkish</option><option value=\"uk\">Ukrainian</option><option value=\"ur\">Urdu</option><option value=\"uz\">Uzbek</option><option value=\"vi\">Vietnamese</option><option value=\"cy\">Welsh</option><option value=\"xh\">Xhosa</option><option value=\"yi\">Yiddish</option><option value=\"yo\">Yoruba</option><option value=\"zu\">Zulu</option></select></td>\n		<td align=\"center\" class=\"SL_td\" width=\"3\">\n		<div id=\"SL_switch_b\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/switchb.png&quot;);\" title=\"Switch languages\">&nbsp;</div>\n		</td>\n		<td align=\"left\" class=\"SL_td\" width=\"20%\"><select id=\"SL_lng_to\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/select.png&quot;) 100% 0px no-repeat rgb(255, 255, 255);\"><option value=\"af\">Afrikaans</option><option value=\"sq\">Albanian</option><option value=\"am\">Amharic</option><option value=\"ar\">Arabic</option><option value=\"hy\">Armenian</option><option value=\"az\">Azerbaijani</option><option value=\"eu\">Basque</option><option value=\"be\">Belarusian</option><option value=\"bn\">Bengali</option><option value=\"bs\">Bosnian</option><option value=\"bg\">Bulgarian</option><option value=\"ca\">Catalan</option><option value=\"ceb\">Cebuano</option><option value=\"ny\">Chichewa</option><option value=\"zh-CN\">Chinese (Simplified)</option><option value=\"zh-TW\">Chinese (Traditional)</option><option value=\"co\">Corsican</option><option value=\"hr\">Croatian</option><option value=\"cs\">Czech</option><option value=\"da\">Danish</option><option value=\"nl\">Dutch</option><option selected=\"selected\" value=\"en\">English</option><option value=\"eo\">Esperanto</option><option value=\"et\">Estonian</option><option value=\"tl\">Filipino</option><option value=\"fi\">Finnish</option><option value=\"fr\">French</option><option value=\"fy\">Frisian</option><option value=\"gl\">Galician</option><option value=\"ka\">Georgian</option><option value=\"de\">German</option><option value=\"el\">Greek</option><option value=\"gu\">Gujarati</option><option value=\"ht\">Haitian Creole</option><option value=\"ha\">Hausa</option><option value=\"haw\">Hawaiian</option><option value=\"iw\">Hebrew</option><option value=\"hi\">Hindi</option><option value=\"hmn\">Hmong</option><option value=\"hu\">Hungarian</option><option value=\"is\">Icelandic</option><option value=\"ig\">Igbo</option><option value=\"id\">Indonesian</option><option value=\"ga\">Irish</option><option value=\"it\">Italian</option><option value=\"ja\">Japanese</option><option value=\"jw\">Javanese</option><option value=\"kn\">Kannada</option><option value=\"kk\">Kazakh</option><option value=\"km\">Khmer</option><option value=\"ko\">Korean</option><option value=\"ku\">Kurdish</option><option value=\"ky\">Kyrgyz</option><option value=\"lo\">Lao</option><option value=\"la\">Latin</option><option value=\"lv\">Latvian</option><option value=\"lt\">Lithuanian</option><option value=\"lb\">Luxembourgish</option><option value=\"mk\">Macedonian</option><option value=\"mg\">Malagasy</option><option value=\"ms\">Malay</option><option value=\"ml\">Malayalam</option><option value=\"mt\">Maltese</option><option value=\"mi\">Maori</option><option value=\"mr\">Marathi</option><option value=\"mn\">Mongolian</option><option value=\"my\">Myanmar (Burmese)</option><option value=\"ne\">Nepali</option><option value=\"no\">Norwegian</option><option value=\"ps\">Pashto</option><option value=\"fa\">Persian</option><option value=\"pl\">Polish</option><option value=\"pt\">Portuguese</option><option value=\"pa\">Punjabi</option><option value=\"ro\">Romanian</option><option value=\"ru\">Russian</option><option value=\"sm\">Samoan</option><option value=\"gd\">Scots Gaelic</option><option value=\"sr\">Serbian</option><option value=\"st\">Sesotho</option><option value=\"sn\">Shona</option><option value=\"sd\">Sindhi</option><option value=\"si\">Sinhala</option><option value=\"sk\">Slovak</option><option value=\"sl\">Slovenian</option><option value=\"so\">Somali</option><option value=\"es\">Spanish</option><option value=\"su\">Sundanese</option><option value=\"sw\">Swahili</option><option value=\"sv\">Swedish</option><option value=\"tg\">Tajik</option><option value=\"ta\">Tamil</option><option value=\"te\">Telugu</option><option value=\"th\">Thai</option><option value=\"tr\">Turkish</option><option value=\"uk\">Ukrainian</option><option value=\"ur\">Urdu</option><option value=\"uz\">Uzbek</option><option value=\"vi\">Vietnamese</option><option value=\"cy\">Welsh</option><option value=\"xh\">Xhosa</option><option value=\"yi\">Yiddish</option><option value=\"yo\">Yoruba</option><option value=\"zu\">Zulu</option></select></td>\n		<td align=\"center\" class=\"SL_td\" width=\"5%\">&nbsp;</td>\n		<td align=\"center\" class=\"SL_td\" width=\"8%\">\n		<div id=\"SL_TTS_voice\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/ttsvoice.png&quot;);\" title=\"undefined\">&nbsp;</div>\n		</td>\n		<td align=\"center\" class=\"SL_td\" width=\"8%\">\n		<div class=\"SL_copy\" id=\"SL_copy\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/copy.png&quot;);\" title=\"Copy translation\">&nbsp;</div>\n		</td>\n		<td align=\"center\" class=\"SL_td\" width=\"8%\">\n		<div id=\"SL_bbl_font_patch\">&nbsp;</div>\n\n		<div class=\"SL_bbl_font\" id=\"SL_bbl_font\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/font.png&quot;);\" title=\"Font size\">&nbsp;</div>\n		</td>\n		<td align=\"center\" class=\"SL_td\" width=\"8%\">\n		<div id=\"SL_bbl_help\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/bhelp.png&quot;);\" title=\"Help\">&nbsp;</div>\n		</td>\n		<td align=\"right\" class=\"SL_td\" width=\"15%\">\n		<div class=\"SL_pin_off\" id=\"SL_pin\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/pin-on.png&quot;);\" title=\"Pin pop-up bubble\">&nbsp;</div>\n		</td>\n	</tr>\n</table>\n</div>\n</div>\n\n<div id=\"SL_shadow_translation_result\" style=\"visibility: visible;\">&nbsp;</div>\n\n<div class=\"SL_loading\" id=\"SL_loading\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/loading.gif&quot;);\">&nbsp;</div>\n\n<div id=\"SL_player2\">&nbsp;</div>\n\n<div id=\"SL_alert100\">Text-to-speech function is limited to 200 characters</div>\n\n<div id=\"SL_Balloon_options\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/bg3.png&quot;) rgb(255, 255, 255);\">\n<div id=\"SL_arrow_down\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/down.png&quot;);\">&nbsp;</div>\n\n<table id=\"SL_tbl_opt\" style=\"width:100%\">\n	<tr>\n		<td align=\"center\" class=\"SL_td\" width=\"5%\"><input checked=\"1\" id=\"SL_BBL_locer\" title=\"Show Translator\'s button 3 second(s)\" type=\"checkbox\" /></td>\n		<td align=\"left\" class=\"SL_td\" width=\"5%\">\n		<div id=\"SL_BBL_IMG\" style=\"background: url(&quot;chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/img/util/bbl-logo.png&quot;);\" title=\"Show Translator\'s button 3 second(s)\">&nbsp;</div>\n		</td>\n		<td align=\"center\" class=\"SL_td\" width=\"70%\"><a class=\"SL_options\" href=\"chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/html/options/options.html?bbl\" target=\"_blank\" title=\"Show options\">Options</a> : <a class=\"SL_options\" href=\"chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/html/options/options.html?hist\" target=\"_blank\" title=\"Translation History\">History</a> : <a class=\"SL_options\" href=\"chrome-extension://noaijdpnepcgjemiklgfkcfbkokogabh/content/html/options/options.html?feed\" target=\"_blank\" title=\"ImTranslator Feedback\">Feedback</a> : <a class=\"SL_options\" href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=GD9D8CPW8HFA2\" target=\"_blank\" title=\"Make a small contribution\">Donate</a></td>\n		<td align=\"right\" class=\"SL_td\" width=\"15%\"><span class=\"SL_options\" id=\"SL_Balloon_Close\" title=\"Close\">Close</span></td>\n	</tr>\n</table>\n</div>\n</div>\n</div>',NULL,NULL,'2','1','12','20','15','12',NULL,'122','334',NULL,NULL,'2G','Si','Si','Si','Windows 233','Si','12','s20','Nuevo',999,0,'2019-03-01 14:21:49','2019-03-01 11:12:54',NULL,'2019-03-01 09:24:19',1,NULL,NULL,NULL,1,'<p>Descripcion <strong>Postpago</strong></p>');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_image`
--

DROP TABLE IF EXISTS `tbl_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_model_id` int(11) NOT NULL,
  `product_image_url` varchar(150) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_image_id`),
  KEY `fk_tbl_product_image_tbl_stock_model1_idx` (`stock_model_id`),
  CONSTRAINT `fk_tbl_product_image_tbl_stock_model1` FOREIGN KEY (`stock_model_id`) REFERENCES `tbl_stock_model` (`stock_model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_image`
--

LOCK TABLES `tbl_product_image` WRITE;
/*!40000 ALTER TABLE `tbl_product_image` DISABLE KEYS */;
INSERT INTO `tbl_product_image` VALUES (1,1,'productos/HUAWEII/Huawei-P9.jpg',1,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(2,2,'productos/HUAWEII/Huawei-P9.jpg',1,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(3,3,'productos/LG/LG-G6.jpg',1,'2017-12-05 12:32:40','2018-11-13 12:30:09',NULL,1,NULL,NULL,1),(4,4,'productos/LG/LG-STYLUS-3.jpg',1,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(5,5,'productos/LG/LG-STYLUS-3.jpg',1,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(6,6,'productos/SAMSUNG/SAMSUNG-S7.jpg',1,'2017-12-05 12:32:40','2018-02-02 10:38:59',NULL,1,NULL,NULL,1),(7,7,'productos/SAMSUNG/SAMSUNG-S7-EDGE.jpg',1,'2017-12-05 12:32:40',NULL,NULL,1,NULL,NULL,1),(8,11,'productos/LG/11-headset-15-1.jpeg',1,'2018-01-29 12:00:53','2018-01-29 12:01:07',NULL,1,NULL,NULL,1),(9,12,'productos/LG/12-x220m-1.jpeg',1,'2018-01-29 12:02:51','2018-01-31 16:34:50',NULL,1,NULL,NULL,1),(10,13,'productos/Bitel/13-asdasd-1.jpeg',1,'2018-02-05 01:38:39',NULL,NULL,1,NULL,NULL,1),(11,17,'productos/Sky/17-robin-1.png',1,'2018-04-19 21:29:25',NULL,NULL,1,NULL,NULL,1),(12,21,'productos/Meizu/21-m6-note-1.jpeg',1,'2018-05-25 20:47:10','2018-05-25 16:20:35','2018-05-25 16:20:35',1,NULL,1,0),(13,21,'productos/Meizu/21-m6-note-2.jpeg',1,'2018-05-25 20:47:10','2018-05-25 16:20:37','2018-05-25 16:20:37',1,NULL,1,0),(14,21,'productos/Meizu/21-m6-note-3.jpeg',1,'2018-05-25 21:22:41',NULL,NULL,1,NULL,NULL,1),(15,21,'productos/Meizu/21-m6-note-4.jpeg',1,'2018-05-25 21:22:41',NULL,NULL,1,NULL,NULL,1),(16,23,'productos/Bitel/23-test-sentinel-sentinel-1.jpeg',1,'2018-09-12 20:25:18',NULL,NULL,1,NULL,NULL,1),(17,20,'productos/Huawei/20-p22-1.jpeg',1,'2018-10-30 23:07:51',NULL,NULL,1,NULL,NULL,1),(18,20,'productos/Huawei/20-p22-2.jpeg',1,'2018-10-30 23:07:51',NULL,NULL,1,NULL,NULL,1),(19,20,'productos/Huawei/20-p22-3.jpeg',1,'2018-10-30 23:07:51',NULL,NULL,1,NULL,NULL,1),(20,20,'productos/Huawei/20-p22-4.jpeg',1,'2018-10-30 23:07:51',NULL,NULL,1,NULL,NULL,1),(21,20,'productos/Huawei/20-p22-5.jpeg',1,'2018-10-30 23:07:51',NULL,NULL,1,NULL,NULL,1),(22,27,'productos/Venus1/27-luna-sentinel-1.jpeg',1,'2018-11-07 22:03:36',NULL,NULL,1,NULL,NULL,1),(23,27,'productos/Venus1/27-luna-sentinel-2.jpeg',1,'2018-11-07 22:03:36',NULL,NULL,1,NULL,NULL,1),(24,27,'productos/Venus1/27-luna-sentinel-3.jpeg',1,'2018-11-07 22:03:36',NULL,NULL,1,NULL,NULL,1),(25,28,'productos/Venus1/28-sol-1.jpeg',1,'2018-11-07 22:24:06',NULL,NULL,1,NULL,NULL,1),(26,28,'productos/Venus1/28-sol-2.jpeg',1,'2018-11-07 22:24:06',NULL,NULL,1,NULL,NULL,1),(27,28,'productos/Venus1/28-sol-3.jpeg',1,'2018-11-07 22:24:06',NULL,NULL,1,NULL,NULL,1),(28,32,'productos/Samsung/32-s10-plus-1.jpeg',1,'2019-02-22 22:06:06',NULL,NULL,1,NULL,NULL,1),(29,33,'productos/Samsung/33-s13-2.png',1,'2019-03-26 18:37:59','2019-03-26 13:40:37','2019-03-26 13:40:37',1,NULL,1,0),(30,33,'productos/Samsung/33-s13-2.png',1,'2019-03-26 18:41:01','2019-03-26 13:41:48',NULL,1,NULL,NULL,1),(31,33,'productos/Samsung/33-s13-3.png',1,'2019-03-26 18:41:48','2019-03-26 13:42:03','2019-03-26 13:42:03',1,NULL,1,0),(32,33,'productos/Samsung/33-s13-4.png',1,'2019-03-26 18:41:48',NULL,NULL,1,NULL,NULL,1),(33,35,'productos/Samsung/35-s13-1.jpeg',1,'2019-03-26 18:47:38',NULL,NULL,1,NULL,NULL,1),(34,35,'productos/Samsung/35-s13-2.png',1,'2019-03-26 18:47:38',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_variation`
--

DROP TABLE IF EXISTS `tbl_product_variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product_variation` (
  `product_variation_id` int(11) NOT NULL AUTO_INCREMENT,
  `variation_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `affiliation_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `product_variation_price` decimal(6,2) NOT NULL,
  `reason_code` varchar(8) DEFAULT NULL,
  `product_package` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `best_plan` tinyint(1) DEFAULT '0',
  `best_variation` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`product_variation_id`),
  KEY `fk_tbl_product_variation_tbl_variation_type1_idx` (`variation_type_id`),
  KEY `fk_tbl_product_variation_tbl_product1_idx` (`product_id`),
  KEY `fk_tbl_product_variation_tbl_affiliation1_idx` (`affiliation_id`),
  KEY `fk_tbl_product_variation_tbl_plan1_idx` (`plan_id`),
  KEY `fk_tbl_product_variation_tbl_contract1_idx` (`contract_id`),
  CONSTRAINT `fk_tbl_product_variation_tbl_affiliation1` FOREIGN KEY (`affiliation_id`) REFERENCES `tbl_affiliation` (`affiliation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_product_variation_tbl_contract1` FOREIGN KEY (`contract_id`) REFERENCES `tbl_contract` (`contract_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_product_variation_tbl_plan1` FOREIGN KEY (`plan_id`) REFERENCES `tbl_plan` (`plan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_product_variation_tbl_product1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_product_variation_tbl_variation_type1` FOREIGN KEY (`variation_type_id`) REFERENCES `tbl_variation_type` (`variation_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_variation`
--

LOCK TABLES `tbl_product_variation` WRITE;
/*!40000 ALTER TABLE `tbl_product_variation` DISABLE KEYS */;
INSERT INTO `tbl_product_variation` VALUES (1,2,1,1,2,1,359.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(2,2,1,2,2,1,359.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(3,2,1,3,2,1,359.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(4,2,1,4,2,1,359.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(5,2,1,5,2,1,299.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(6,2,1,6,2,1,299.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(7,2,1,7,2,1,299.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(8,2,1,8,2,1,299.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(9,2,1,9,2,1,199.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(10,2,1,10,2,1,199.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(11,2,1,11,2,1,409.00,NULL,NULL,'2017-12-05 12:32:42',NULL,NULL,1,NULL,NULL,1,0,0),(12,2,1,12,2,1,359.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(13,2,1,13,2,1,359.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(14,2,2,1,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(15,2,2,2,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(16,2,2,3,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(17,2,2,4,2,1,99.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(18,2,2,5,2,1,59.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(19,2,2,6,2,1,19.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(20,2,2,7,2,1,19.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(21,2,2,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(22,2,2,9,2,1,19.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(23,2,2,10,2,1,19.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(24,2,2,11,2,1,219.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(25,2,2,12,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(26,2,2,13,2,1,99.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(27,2,3,1,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(28,2,3,2,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(29,2,3,3,2,1,199.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(30,2,3,4,2,1,59.00,NULL,NULL,'2017-12-05 12:32:43',NULL,NULL,1,NULL,NULL,1,0,0),(31,2,3,5,2,1,59.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(32,2,3,6,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(33,2,3,7,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(34,2,3,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(35,2,3,9,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(36,2,3,10,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(37,2,3,11,2,1,219.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(38,2,3,12,2,1,199.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(39,2,3,13,2,1,59.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(40,2,4,1,2,1,199.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(41,2,4,2,2,1,199.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(42,2,4,3,2,1,199.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(43,2,4,4,2,1,99.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(44,2,4,5,2,1,59.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(45,2,4,6,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(46,2,4,7,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(47,2,4,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(48,2,4,9,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(49,2,4,10,2,1,19.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(50,2,4,11,2,1,219.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(51,2,4,12,2,1,199.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(52,2,4,13,2,1,99.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(53,2,5,1,2,1,329.00,NULL,NULL,'2017-12-05 12:32:44',NULL,NULL,1,NULL,NULL,1,0,0),(54,2,5,2,2,1,329.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(55,2,5,3,2,1,329.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(56,2,5,4,2,1,249.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(57,2,5,5,2,1,249.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(58,2,5,6,2,1,249.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(59,2,5,7,2,1,119.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(60,2,5,8,2,1,59.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(61,2,5,9,2,1,59.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(62,2,5,10,2,1,59.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(63,2,5,11,2,1,359.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(64,2,5,12,2,1,329.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(65,2,5,13,2,1,249.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(66,2,6,1,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(67,2,6,2,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(68,2,6,3,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(69,2,6,4,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(70,2,6,5,2,1,629.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(71,2,6,6,2,1,629.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(72,2,6,7,2,1,629.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(73,2,6,8,2,1,599.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(74,2,6,9,2,1,499.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(75,2,6,10,2,1,499.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(76,2,6,11,2,1,709.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(77,2,6,12,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(78,2,6,13,2,1,669.00,NULL,NULL,'2017-12-05 12:32:45',NULL,NULL,1,NULL,NULL,1,0,0),(79,2,7,1,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:45','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(80,2,7,2,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:45','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(81,2,7,3,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:45','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(82,2,7,4,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:45','2018-05-15 11:38:27',NULL,1,1,NULL,1,0,0),(83,2,7,5,2,1,1499.00,'90541',NULL,'2017-12-05 12:32:45','2018-05-15 11:38:27',NULL,1,1,NULL,1,0,0),(84,2,7,6,2,1,1299.00,'90542',NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,1,0,0),(85,2,7,7,2,1,1299.00,'90543',NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(86,2,7,8,2,1,1099.00,'90544',NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(87,2,7,9,2,1,999.00,NULL,NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(88,2,7,10,2,1,999.00,NULL,NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(89,2,7,11,2,1,1549.00,NULL,NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(90,2,7,12,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(91,2,7,13,2,1,1499.00,NULL,NULL,'2017-12-05 12:32:46','2018-05-15 11:38:27',NULL,1,1,NULL,0,0,0),(92,2,8,1,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(93,2,8,2,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(94,2,8,3,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(95,2,8,4,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(96,2,8,5,2,1,219.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(97,2,8,6,2,1,199.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(98,2,8,7,2,1,199.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(99,2,8,8,2,1,149.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(100,2,8,9,2,1,119.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(101,2,8,10,2,1,119.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(102,2,8,11,2,1,259.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(103,2,8,12,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(104,2,8,13,2,1,239.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(105,2,9,1,2,1,499.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(106,2,9,2,2,1,499.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(107,2,9,3,2,1,499.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(108,2,9,4,2,1,459.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(109,2,9,5,2,1,459.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(110,2,9,6,2,1,459.00,NULL,NULL,'2017-12-05 12:32:46',NULL,NULL,1,NULL,NULL,1,0,0),(111,2,9,7,2,1,399.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(112,2,9,8,2,1,399.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(113,2,9,9,2,1,299.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(114,2,9,10,2,1,299.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(115,2,9,11,2,1,539.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(116,2,9,12,2,1,499.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(117,2,9,13,2,1,459.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(118,2,10,1,2,1,199.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(119,2,10,2,2,1,199.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(120,2,10,3,2,1,199.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(121,2,10,4,2,1,99.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(122,2,10,5,2,1,59.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(123,2,10,6,2,1,19.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(124,2,10,7,2,1,19.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(125,2,10,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(126,2,10,9,2,1,9.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(127,2,10,10,2,1,9.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(128,2,10,11,2,1,219.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(129,2,10,12,2,1,199.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(130,2,10,13,2,1,99.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(131,2,11,1,2,1,599.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(132,2,11,2,2,1,599.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(133,2,11,3,2,1,599.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(134,2,11,4,2,1,499.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(135,2,11,5,2,1,499.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(136,2,11,6,2,1,459.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(137,2,11,7,2,1,459.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(138,2,11,8,2,1,259.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(139,2,11,9,2,1,159.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(140,2,11,10,2,1,159.00,NULL,NULL,'2017-12-05 12:32:47',NULL,NULL,1,NULL,NULL,1,0,0),(141,2,11,11,2,1,599.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(142,2,11,12,2,1,599.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(143,2,11,13,2,1,499.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(144,2,12,1,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(145,2,12,2,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,1,1),(146,2,12,3,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(147,2,12,4,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(148,2,12,5,2,1,2399.00,'90541',NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(149,2,12,6,2,1,1999.00,'90542',NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(150,2,12,7,2,1,1999.00,'90543',NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(151,2,12,8,2,1,1999.00,'90544',NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(152,2,12,9,2,1,1599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(153,2,12,10,2,1,1599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(154,2,12,11,2,1,2639.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(155,2,12,12,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(156,2,12,13,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:48','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(157,2,13,1,2,1,299.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(158,2,13,2,2,1,299.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(159,2,13,3,2,1,299.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(160,2,13,4,2,1,259.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(161,2,13,5,2,1,79.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(162,2,13,6,2,1,59.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(163,2,13,7,2,1,59.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(164,2,13,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(165,2,13,9,2,1,9.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(166,2,13,10,2,1,9.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(167,2,13,11,2,1,339.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(168,2,13,12,2,1,299.00,NULL,NULL,'2017-12-05 12:32:48',NULL,NULL,1,NULL,NULL,1,0,0),(169,2,13,13,2,1,259.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(170,2,14,1,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(171,2,14,2,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,1,1),(172,2,14,3,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(173,2,14,4,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(174,2,14,5,2,1,659.00,'90541',NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(175,2,14,6,2,1,629.00,'90542',NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(176,2,14,7,2,1,629.00,'90543',NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(177,2,14,8,2,1,599.00,'90544',NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(178,2,14,9,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(179,2,14,10,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(180,2,14,11,2,1,739.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(181,2,14,12,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(182,2,14,13,2,1,699.00,NULL,NULL,'2017-12-05 12:32:49','2018-04-24 18:42:50',NULL,1,1,NULL,1,0,0),(183,2,15,1,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(184,2,15,2,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(185,2,15,3,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(186,2,15,4,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(187,2,15,5,2,1,479.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(188,2,15,6,2,1,459.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(189,2,15,7,2,1,459.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(190,2,15,8,2,1,199.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(191,2,15,9,2,1,159.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(192,2,15,10,2,1,159.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(193,2,15,11,2,1,539.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(194,2,15,12,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(195,2,15,13,2,1,499.00,NULL,NULL,'2017-12-05 12:32:49',NULL,NULL,1,NULL,NULL,1,0,0),(196,2,16,1,2,1,239.00,NULL,NULL,'2017-12-05 12:32:49','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(197,2,16,2,2,1,239.00,NULL,NULL,'2017-12-05 12:32:49','2018-01-31 16:37:10',NULL,1,1,NULL,1,0,0),(198,2,16,3,2,1,239.00,NULL,NULL,'2017-12-05 12:32:49','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(199,2,16,4,2,1,239.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(200,2,16,5,2,1,219.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-31 16:37:10',NULL,1,1,NULL,0,0,0),(201,2,16,6,2,1,199.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(202,2,16,7,2,1,199.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(203,2,16,8,2,1,259.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(204,2,16,9,2,1,159.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(205,2,16,10,2,1,159.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(206,2,16,11,2,1,259.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(207,2,16,12,2,1,239.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-31 16:37:10',NULL,1,1,NULL,1,0,0),(208,2,16,13,2,1,239.00,NULL,NULL,'2017-12-05 12:32:50','2018-01-29 21:07:46',NULL,1,1,NULL,0,0,0),(209,2,17,1,2,1,899.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(210,2,17,2,2,1,899.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(211,2,17,3,2,1,899.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(212,2,17,4,2,1,799.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(213,2,17,5,2,1,699.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(214,2,17,6,2,1,399.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(215,2,17,7,2,1,399.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(216,2,17,8,2,1,299.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(217,2,17,9,2,1,199.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(218,2,17,10,2,1,199.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(219,2,17,11,2,1,939.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(220,2,17,12,2,1,899.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(221,2,17,13,2,1,799.00,NULL,NULL,'2017-12-05 12:32:50',NULL,NULL,1,NULL,NULL,1,0,0),(222,2,18,1,2,1,2399.00,NULL,NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,1,1),(223,2,18,2,2,1,2399.00,NULL,NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(224,2,18,3,2,1,2399.00,NULL,NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(225,2,18,4,2,1,2299.00,NULL,NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(226,2,18,5,2,1,2299.00,'90541',NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(227,2,18,6,2,1,2199.00,'90542',NULL,'2017-12-05 12:32:50','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(228,2,18,7,2,1,2199.00,'90543',NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(229,2,18,8,2,1,1999.00,'90544',NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(230,2,18,9,2,1,1999.00,NULL,NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(231,2,18,10,2,1,1999.00,NULL,NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(232,2,18,11,2,1,2439.00,NULL,NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(233,2,18,12,2,1,2399.00,NULL,NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(234,2,18,13,2,1,2299.00,NULL,NULL,'2017-12-05 12:32:51','2018-04-24 18:49:07',NULL,1,1,NULL,1,0,0),(235,2,19,1,2,1,2899.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(236,2,19,2,2,1,2899.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(237,2,19,3,2,1,2899.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(238,2,19,4,2,1,2799.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(239,2,19,5,2,1,2799.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(240,2,19,6,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(241,2,19,7,2,1,2599.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(242,2,19,8,2,1,2399.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(243,2,19,9,2,1,2199.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(244,2,19,10,2,1,2199.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(245,2,19,11,2,1,2939.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(246,2,19,12,2,1,2899.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(247,2,19,13,2,1,2799.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(248,2,20,1,2,1,199.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(249,2,20,2,2,1,199.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(250,2,20,3,2,1,199.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(251,2,20,4,2,1,99.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(252,2,20,5,2,1,59.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(253,2,20,6,2,1,19.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(254,2,20,7,2,1,19.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(255,2,20,8,2,1,19.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(256,2,20,9,2,1,9.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(257,2,20,10,2,1,9.00,NULL,NULL,'2017-12-05 12:32:51',NULL,NULL,1,NULL,NULL,1,0,0),(258,2,20,11,2,1,219.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(259,2,20,12,2,1,199.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(260,2,20,13,2,1,99.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(261,2,1,1,1,1,299.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(262,2,1,2,1,1,299.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(263,2,1,3,1,1,299.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(264,2,1,4,1,1,229.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(265,2,1,5,1,1,199.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(266,2,1,6,1,1,99.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(267,2,1,7,1,1,99.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(268,2,1,8,1,1,59.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(269,2,1,9,1,1,59.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(270,2,1,10,1,1,59.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(271,2,1,11,1,1,409.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(272,2,1,12,1,1,299.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(273,2,1,13,1,1,229.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(274,2,2,1,1,1,179.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(275,2,2,2,1,1,179.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(276,2,2,3,1,1,179.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(277,2,2,4,1,1,59.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(278,2,2,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(279,2,2,6,1,1,19.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(280,2,2,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:52',NULL,NULL,1,NULL,NULL,1,0,0),(281,2,2,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(282,2,2,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(283,2,2,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(284,2,2,11,1,1,219.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(285,2,2,12,1,1,170.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(286,2,2,13,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(287,2,3,1,1,1,179.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(288,2,3,2,1,1,179.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(289,2,3,3,1,1,179.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(290,2,3,4,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(291,2,3,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(292,2,3,6,1,1,19.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(293,2,3,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(294,2,3,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(295,2,3,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(296,2,3,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(297,2,3,11,1,1,219.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(298,2,3,12,1,1,170.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(299,2,3,13,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(300,2,4,1,1,1,179.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(301,2,4,2,1,1,199.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(302,2,4,3,1,1,199.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(303,2,4,4,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(304,2,4,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(305,2,4,6,1,1,19.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(306,2,4,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(307,2,4,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(308,2,4,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(309,2,4,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(310,2,4,11,1,1,219.00,NULL,NULL,'2017-12-05 12:32:53',NULL,NULL,1,NULL,NULL,1,0,0),(311,2,4,12,1,1,170.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(312,2,4,13,1,1,59.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(313,2,5,1,1,1,299.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(314,2,5,2,1,1,299.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(315,2,5,3,1,1,299.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(316,2,5,4,1,1,229.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(317,2,5,5,1,1,199.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(318,2,5,6,1,1,99.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(319,2,5,7,1,1,99.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(320,2,5,8,1,1,59.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(321,2,5,9,1,1,59.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(322,2,5,10,1,1,59.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(323,2,5,11,1,1,359.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(324,2,5,12,1,1,299.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(325,2,5,13,1,1,229.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(326,2,6,1,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(327,2,6,2,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(328,2,6,3,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(329,2,6,4,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(330,2,6,5,1,1,629.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(331,2,6,6,1,1,629.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(332,2,6,7,1,1,499.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(333,2,6,8,1,1,199.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(334,2,6,9,1,1,199.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(335,2,6,10,1,1,199.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(336,2,6,11,1,1,709.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(337,2,6,12,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(338,2,6,13,1,1,669.00,NULL,NULL,'2017-12-05 12:32:54',NULL,NULL,1,NULL,NULL,1,0,0),(339,2,7,1,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:54','2018-05-15 11:35:13',NULL,1,1,NULL,1,0,0),(340,2,7,2,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,1,0,0),(341,2,7,3,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(342,2,7,4,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(343,2,7,5,1,1,1299.00,'90584',NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(344,2,7,6,1,1,1199.00,'90585',NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(345,2,7,7,1,1,1199.00,'90586',NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(346,2,7,8,1,1,999.00,'90587',NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(347,2,7,9,1,1,999.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(348,2,7,10,1,1,999.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(349,2,7,11,1,1,1549.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(350,2,7,12,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(351,2,7,13,1,1,1399.00,NULL,NULL,'2017-12-05 12:32:55','2018-05-15 11:35:13',NULL,1,1,NULL,0,0,0),(352,2,8,1,1,1,199.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(353,2,8,2,1,1,199.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(354,2,8,3,1,1,199.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(355,2,8,4,1,1,129.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(356,2,8,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(357,2,8,6,1,1,9.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(358,2,8,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(359,2,8,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(360,2,8,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(361,2,8,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(362,2,8,11,1,1,259.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(363,2,8,12,1,1,199.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(364,2,8,13,1,1,129.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(365,2,9,1,1,1,399.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(366,2,9,2,1,1,399.00,NULL,NULL,'2017-12-05 12:32:55',NULL,NULL,1,NULL,NULL,1,0,0),(367,2,9,3,1,1,399.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(368,2,9,4,1,1,259.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(369,2,9,5,1,1,199.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(370,2,9,6,1,1,99.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(371,2,9,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(372,2,9,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(373,2,9,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(374,2,9,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(375,2,9,11,1,1,539.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(376,2,9,12,1,1,399.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(377,2,9,13,1,1,259.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(378,2,10,1,1,1,179.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(379,2,10,2,1,1,199.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(380,2,10,3,1,1,199.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(381,2,10,4,1,1,59.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(382,2,10,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(383,2,10,6,1,1,19.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(384,2,10,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(385,2,10,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(386,2,10,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(387,2,10,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(388,2,10,11,1,1,219.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(389,2,10,12,1,1,179.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(390,2,10,13,1,1,59.00,NULL,NULL,'2017-12-05 12:32:56',NULL,NULL,1,NULL,NULL,1,0,0),(391,2,11,1,1,1,559.00,NULL,NULL,'2017-12-05 12:32:56','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(392,2,11,2,1,1,559.00,NULL,NULL,'2017-12-05 12:32:56','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(393,2,11,3,1,1,559.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(394,2,11,4,1,1,499.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(395,2,11,5,1,1,499.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(396,2,11,6,1,1,459.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(397,2,11,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(398,2,11,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(399,2,11,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(400,2,11,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,0,0,0),(401,2,11,11,1,1,599.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,1,1),(402,2,11,12,1,1,559.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,0,0,0),(403,2,11,13,1,1,499.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-07 17:05:49',NULL,1,1,NULL,1,0,0),(404,2,12,1,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(405,2,12,2,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(406,2,12,3,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(407,2,12,4,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(408,2,12,5,1,1,2299.00,'90584',NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(409,2,12,6,1,1,2099.00,'90585',NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(410,2,12,7,1,1,1999.00,'90586',NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(411,2,12,8,1,1,1599.00,'90587',NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(412,2,12,9,1,1,799.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(413,2,12,10,1,1,499.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(414,2,12,11,1,1,2639.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(415,2,12,12,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(416,2,12,13,1,1,2399.00,NULL,NULL,'2017-12-05 12:32:57','2018-05-08 17:50:47',NULL,1,1,NULL,0,0,0),(417,2,13,1,1,1,219.00,NULL,NULL,'2017-12-05 12:32:57',NULL,NULL,1,NULL,NULL,1,0,0),(418,2,13,2,1,1,219.00,NULL,NULL,'2017-12-05 12:32:57',NULL,NULL,1,NULL,NULL,1,0,0),(419,2,13,3,1,1,219.00,NULL,NULL,'2017-12-05 12:32:57',NULL,NULL,1,NULL,NULL,1,0,0),(420,2,13,4,1,1,1.00,NULL,NULL,'2017-12-05 12:32:57',NULL,NULL,1,NULL,NULL,1,0,0),(421,2,13,5,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(422,2,13,6,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(423,2,13,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(424,2,13,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(425,2,13,9,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(426,2,13,10,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(427,2,13,11,1,1,339.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(428,2,13,12,1,1,219.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(429,2,13,13,1,1,1.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(430,2,14,1,1,1,659.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,1,0),(431,2,14,2,1,1,659.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(432,2,14,3,1,1,659.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(433,2,14,4,1,1,599.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(434,2,14,5,1,1,599.00,'90584',NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(435,2,14,6,1,1,329.00,'90585',NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(436,2,14,7,1,1,199.00,'90586',NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(437,2,14,8,1,1,9.00,'90587',NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(438,2,14,9,1,1,499.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(439,2,14,10,1,1,499.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(440,2,14,11,1,1,739.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(441,2,14,12,1,1,659.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(442,2,14,13,1,1,599.00,NULL,NULL,'2017-12-05 12:32:58','2018-04-24 18:42:32',NULL,1,1,NULL,1,0,0),(443,2,15,1,1,1,399.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(444,2,15,2,1,1,399.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(445,2,15,3,1,1,399.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(446,2,15,4,1,1,259.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(447,2,15,5,1,1,199.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(448,2,15,6,1,1,99.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(449,2,15,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:58',NULL,NULL,1,NULL,NULL,1,0,0),(450,2,15,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(451,2,15,9,1,1,159.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(452,2,15,10,1,1,159.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(453,2,15,11,1,1,539.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(454,2,15,12,1,1,399.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(455,2,15,13,1,1,259.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(456,2,16,1,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(457,2,16,2,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,1,0),(458,2,16,3,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(459,2,16,4,1,1,129.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(460,2,16,5,1,1,59.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(461,2,16,6,1,1,9.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(462,2,16,7,1,1,9.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(463,2,16,8,1,1,9.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(464,2,16,9,1,1,159.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(465,2,16,10,1,1,159.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,0,0,0),(466,2,16,11,1,1,259.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(467,2,16,12,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(468,2,16,13,1,1,129.00,NULL,NULL,'2017-12-05 12:32:59','2018-04-25 11:20:40',NULL,1,1,NULL,1,0,0),(469,2,17,1,1,1,799.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(470,2,17,2,1,1,799.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(471,2,17,3,1,1,799.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(472,2,17,4,1,1,659.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(473,2,17,5,1,1,679.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(474,2,17,6,1,1,399.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(475,2,17,7,1,1,299.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(476,2,17,8,1,1,99.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(477,2,17,9,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(478,2,17,10,1,1,199.00,NULL,NULL,'2017-12-05 12:32:59',NULL,NULL,1,NULL,NULL,1,0,0),(479,2,17,11,1,1,939.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(480,2,17,12,1,1,799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(481,2,17,13,1,1,659.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(482,2,18,1,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,1,1,0),(483,2,18,2,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(484,2,18,3,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(485,2,18,4,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(486,2,18,5,1,1,2199.00,'90584',NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(487,2,18,6,1,1,2199.00,'90585',NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(488,2,18,7,1,1,1999.00,'90586',NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,1,0,0),(489,2,18,8,1,1,1699.00,'90587',NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(490,2,18,9,1,1,1999.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(491,2,18,10,1,1,1999.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(492,2,18,11,1,1,2439.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(493,2,18,12,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(494,2,18,13,1,1,2299.00,NULL,NULL,'2017-12-05 12:33:00','2018-04-25 10:13:58',NULL,1,1,NULL,0,0,0),(495,2,19,1,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(496,2,19,2,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(497,2,19,3,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(498,2,19,4,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(499,2,19,5,1,1,2599.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(500,2,19,6,1,1,2599.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(501,2,19,7,1,1,2499.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(502,2,19,8,1,1,2099.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(503,2,19,9,1,1,2199.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(504,2,19,10,1,1,2199.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(505,2,19,11,1,1,2939.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(506,2,19,12,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(507,2,19,13,1,1,2799.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(508,2,20,1,1,1,179.00,NULL,NULL,'2017-12-05 12:33:00',NULL,NULL,1,NULL,NULL,1,0,0),(509,2,20,2,1,1,199.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(510,2,20,3,1,1,199.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(511,2,20,4,1,1,59.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(512,2,20,5,1,1,59.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(513,2,20,6,1,1,19.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(514,2,20,7,1,1,9.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(515,2,20,8,1,1,9.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(516,2,20,9,1,1,9.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(517,2,20,10,1,1,9.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(518,2,20,11,1,1,219.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(519,2,20,12,1,1,179.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(520,2,20,13,1,1,59.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(521,2,1,1,3,1,299.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(522,2,1,2,3,1,299.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(523,2,1,3,3,1,299.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(524,2,1,4,3,1,229.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(525,2,1,5,3,1,199.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(526,2,1,6,3,1,99.00,NULL,NULL,'2017-12-05 12:33:01',NULL,NULL,1,NULL,NULL,1,0,0),(527,2,1,7,3,1,99.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(528,2,1,8,3,1,59.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(529,2,1,9,3,1,59.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(530,2,1,10,3,1,59.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(531,2,1,11,3,1,409.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(532,2,1,12,3,1,299.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(533,2,1,13,3,1,229.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(534,2,2,1,3,1,179.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(535,2,2,2,3,1,179.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(536,2,2,3,3,1,179.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(537,2,2,4,3,1,59.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(538,2,2,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(539,2,2,6,3,1,19.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(540,2,2,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(541,2,2,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(542,2,2,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:02',NULL,NULL,1,NULL,NULL,1,0,0),(543,2,2,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(544,2,2,11,3,1,219.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(545,2,2,12,3,1,170.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(546,2,2,13,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(547,2,3,1,3,1,179.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(548,2,3,2,3,1,179.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(549,2,3,3,3,1,179.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(550,2,3,4,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(551,2,3,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(552,2,3,6,3,1,19.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(553,2,3,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(554,2,3,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(555,2,3,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(556,2,3,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(557,2,3,11,3,1,219.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(558,2,3,12,3,1,170.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(559,2,3,13,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(560,2,4,1,3,1,179.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(561,2,4,2,3,1,199.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(562,2,4,3,3,1,199.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(563,2,4,4,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(564,2,4,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(565,2,4,6,3,1,19.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(566,2,4,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:03',NULL,NULL,1,NULL,NULL,1,0,0),(567,2,4,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(568,2,4,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(569,2,4,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(570,2,4,11,3,1,219.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(571,2,4,12,3,1,170.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(572,2,4,13,3,1,59.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(573,2,5,1,3,1,299.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(574,2,5,2,3,1,299.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(575,2,5,3,3,1,299.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(576,2,5,4,3,1,229.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(577,2,5,5,3,1,199.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(578,2,5,6,3,1,99.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(579,2,5,7,3,1,99.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(580,2,5,8,3,1,59.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(581,2,5,9,3,1,59.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(582,2,5,10,3,1,59.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(583,2,5,11,3,1,359.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(584,2,5,12,3,1,299.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(585,2,5,13,3,1,229.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(586,2,6,1,3,1,669.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(587,2,6,2,3,1,669.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(588,2,6,3,3,1,669.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(589,2,6,4,3,1,669.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(590,2,6,5,3,1,629.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(591,2,6,6,3,1,629.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(592,2,6,7,3,1,499.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(593,2,6,8,3,1,199.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(594,2,6,9,3,1,199.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(595,2,6,10,3,1,199.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(596,2,6,11,3,1,709.00,NULL,NULL,'2017-12-05 12:33:04',NULL,NULL,1,NULL,NULL,1,0,0),(597,2,6,12,3,1,669.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(598,2,6,13,3,1,669.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(599,2,7,1,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(600,2,7,2,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(601,2,7,3,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(602,2,7,4,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(603,2,7,5,3,1,1299.00,'90584',NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(604,2,7,6,3,1,1199.00,'90585',NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(605,2,7,7,3,1,1199.00,'90586',NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,1,0,0),(606,2,7,8,3,1,999.00,'90587',NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(607,2,7,9,3,1,999.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(608,2,7,10,3,1,999.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(609,2,7,11,3,1,1549.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 11:42:46',NULL,1,1,NULL,0,0,0),(610,2,7,12,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 16:31:33',NULL,1,1,NULL,0,0,0),(611,2,7,13,3,1,1399.00,NULL,NULL,'2017-12-05 12:33:05','2018-01-31 16:31:33',NULL,1,1,NULL,0,0,0),(612,2,8,1,3,1,199.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(613,2,8,2,3,1,199.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(614,2,8,3,3,1,199.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(615,2,8,4,3,1,129.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(616,2,8,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(617,2,8,6,3,1,9.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(618,2,8,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(619,2,8,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(620,2,8,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(621,2,8,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(622,2,8,11,3,1,259.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(623,2,8,12,3,1,199.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(624,2,8,13,3,1,129.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(625,2,9,1,3,1,399.00,NULL,NULL,'2017-12-05 12:33:05',NULL,NULL,1,NULL,NULL,1,0,0),(626,2,9,2,3,1,399.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(627,2,9,3,3,1,399.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(628,2,9,4,3,1,259.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(629,2,9,5,3,1,199.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(630,2,9,6,3,1,99.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(631,2,9,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(632,2,9,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(633,2,9,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(634,2,9,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(635,2,9,11,3,1,539.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(636,2,9,12,3,1,399.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(637,2,9,13,3,1,259.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(638,2,10,1,3,1,179.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(639,2,10,2,3,1,199.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(640,2,10,3,3,1,199.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(641,2,10,4,3,1,59.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(642,2,10,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(643,2,10,6,3,1,19.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(644,2,10,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(645,2,10,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(646,2,10,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(647,2,10,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(648,2,10,11,3,1,219.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(649,2,10,12,3,1,179.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(650,2,10,13,3,1,59.00,NULL,NULL,'2017-12-05 12:33:06',NULL,NULL,1,NULL,NULL,1,0,0),(651,2,11,1,3,1,559.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(652,2,11,2,3,1,559.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(653,2,11,3,3,1,559.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(654,2,11,4,3,1,499.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(655,2,11,5,3,1,499.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(656,2,11,6,3,1,459.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(657,2,11,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(658,2,11,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(659,2,11,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(660,2,11,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(661,2,11,11,3,1,599.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(662,2,11,12,3,1,559.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(663,2,11,13,3,1,499.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(664,2,12,1,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(665,2,12,2,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(666,2,12,3,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,1,0),(667,2,12,4,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(668,2,12,5,3,1,2299.00,'90584',NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(669,2,12,6,3,1,2099.00,'90585',NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(670,2,12,7,3,1,1999.00,'90586',NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(671,2,12,8,3,1,1599.00,'90587',NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(672,2,12,9,3,1,799.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(673,2,12,10,3,1,499.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(674,2,12,11,3,1,2639.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(675,2,12,12,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(676,2,12,13,3,1,2399.00,NULL,NULL,'2017-12-05 12:33:07','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(677,2,13,1,3,1,219.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(678,2,13,2,3,1,219.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(679,2,13,3,3,1,219.00,NULL,NULL,'2017-12-05 12:33:07',NULL,NULL,1,NULL,NULL,1,0,0),(680,2,13,4,3,1,1.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(681,2,13,5,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(682,2,13,6,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(683,2,13,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(684,2,13,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(685,2,13,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(686,2,13,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(687,2,13,11,3,1,339.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(688,2,13,12,3,1,219.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(689,2,13,13,3,1,1.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(690,2,14,1,3,1,659.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(691,2,14,2,3,1,659.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(692,2,14,3,3,1,659.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,1,0),(693,2,14,4,3,1,599.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(694,2,14,5,3,1,599.00,'90584',NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(695,2,14,6,3,1,329.00,'90585',NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(696,2,14,7,3,1,199.00,'90586',NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(697,2,14,8,3,1,9.00,'90587',NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(698,2,14,9,3,1,499.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(699,2,14,10,3,1,499.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(700,2,14,11,3,1,739.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(701,2,14,12,3,1,659.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(702,2,14,13,3,1,599.00,NULL,NULL,'2017-12-05 12:33:08','2018-04-24 18:43:06',NULL,1,1,NULL,1,0,0),(703,2,15,1,3,1,399.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(704,2,15,2,3,1,399.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(705,2,15,3,3,1,399.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(706,2,15,4,3,1,259.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(707,2,15,5,3,1,199.00,NULL,NULL,'2017-12-05 12:33:08',NULL,NULL,1,NULL,NULL,1,0,0),(708,2,15,6,3,1,99.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(709,2,15,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(710,2,15,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(711,2,15,9,3,1,159.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(712,2,15,10,3,1,159.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(713,2,15,11,3,1,539.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(714,2,15,12,3,1,399.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(715,2,15,13,3,1,259.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(716,2,16,1,3,1,199.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(717,2,16,2,3,1,199.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(718,2,16,3,3,1,199.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(719,2,16,4,3,1,129.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(720,2,16,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(721,2,16,6,3,1,9.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(722,2,16,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(723,2,16,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-31 16:37:51',NULL,1,1,NULL,0,0,0),(724,2,16,9,3,1,159.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(725,2,16,10,3,1,159.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(726,2,16,11,3,1,259.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-31 16:37:51',NULL,1,1,NULL,1,0,0),(727,2,16,12,3,1,199.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(728,2,16,13,3,1,129.00,NULL,NULL,'2017-12-05 12:33:09','2018-01-29 21:08:15',NULL,1,1,NULL,0,0,0),(729,2,17,1,3,1,799.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(730,2,17,2,3,1,799.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(731,2,17,3,3,1,799.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(732,2,17,4,3,1,659.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(733,2,17,5,3,1,679.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(734,2,17,6,3,1,399.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(735,2,17,7,3,1,299.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(736,2,17,8,3,1,99.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(737,2,17,9,3,1,199.00,NULL,NULL,'2017-12-05 12:33:09',NULL,NULL,1,NULL,NULL,1,0,0),(738,2,17,10,3,1,199.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(739,2,17,11,3,1,939.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(740,2,17,12,3,1,799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(741,2,17,13,3,1,659.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(742,2,18,1,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(743,2,18,2,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,1,0),(744,2,18,3,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(745,2,18,4,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(746,2,18,5,3,1,2199.00,'90584',NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(747,2,18,6,3,1,2199.00,'90585',NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(748,2,18,7,3,1,1999.00,'90586',NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(749,2,18,8,3,1,1699.00,'90587',NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(750,2,18,9,3,1,1999.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(751,2,18,10,3,1,1999.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(752,2,18,11,3,1,2439.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(753,2,18,12,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(754,2,18,13,3,1,2299.00,NULL,NULL,'2017-12-05 12:33:10','2018-04-24 18:49:21',NULL,1,1,NULL,1,0,0),(755,2,19,1,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(756,2,19,2,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(757,2,19,3,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(758,2,19,4,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(759,2,19,5,3,1,2599.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(760,2,19,6,3,1,2599.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(761,2,19,7,3,1,2499.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(762,2,19,8,3,1,2099.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(763,2,19,9,3,1,2199.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(764,2,19,10,3,1,2199.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(765,2,19,11,3,1,2939.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(766,2,19,12,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:10',NULL,NULL,1,NULL,NULL,1,0,0),(767,2,19,13,3,1,2799.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(768,2,20,1,3,1,179.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(769,2,20,2,3,1,199.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(770,2,20,3,3,1,199.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(771,2,20,4,3,1,59.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(772,2,20,5,3,1,59.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(773,2,20,6,3,1,19.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(774,2,20,7,3,1,9.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(775,2,20,8,3,1,9.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(776,2,20,9,3,1,9.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(777,2,20,10,3,1,9.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(778,2,20,11,3,1,219.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(779,2,20,12,3,1,179.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(780,2,20,13,3,1,59.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(791,1,1,15,NULL,NULL,449.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(792,1,2,15,NULL,NULL,259.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(793,1,3,15,NULL,NULL,259.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(794,1,4,15,NULL,NULL,259.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(795,1,5,15,NULL,NULL,439.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(796,1,6,15,NULL,NULL,779.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(797,1,7,15,NULL,NULL,1679.00,NULL,NULL,'2017-12-05 12:33:11','2018-05-15 11:36:47',NULL,1,1,NULL,1,0,0),(798,1,8,15,NULL,NULL,299.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(799,1,9,15,NULL,NULL,599.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(800,1,10,15,NULL,NULL,259.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(801,1,11,15,NULL,NULL,599.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(802,1,12,15,NULL,NULL,2699.00,NULL,NULL,'2017-12-05 12:33:11','2018-04-19 17:14:46',NULL,1,1,NULL,0,0,0),(803,1,13,15,NULL,NULL,399.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(804,1,14,15,NULL,NULL,1799.00,NULL,NULL,'2017-12-05 12:33:11','2018-04-27 16:11:53',NULL,1,1,NULL,1,0,0),(805,1,15,15,NULL,NULL,599.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(806,1,16,15,NULL,NULL,299.00,NULL,NULL,'2017-12-05 12:33:11',NULL,NULL,1,NULL,NULL,1,0,0),(807,1,17,15,NULL,NULL,999.00,NULL,NULL,'2017-12-05 12:33:12',NULL,NULL,1,NULL,NULL,1,0,0),(808,1,18,15,NULL,NULL,2499.00,NULL,NULL,'2017-12-05 12:33:12','2018-04-24 18:49:37',NULL,1,1,NULL,1,1,0),(809,1,19,15,NULL,NULL,2999.00,NULL,NULL,'2017-12-05 12:33:12',NULL,NULL,1,NULL,NULL,1,0,0),(810,1,20,15,NULL,NULL,259.00,NULL,NULL,'2017-12-05 12:33:12',NULL,NULL,1,NULL,NULL,1,0,0),(812,1,43,15,NULL,NULL,1212.00,NULL,NULL,'2018-02-05 01:38:43','2018-02-05 16:28:53',NULL,1,1,NULL,1,0,0),(813,2,43,1,1,1,29.90,NULL,NULL,'2018-02-05 01:39:04','2018-02-05 01:39:04',NULL,1,NULL,NULL,1,0,0),(814,2,43,2,1,1,29.90,NULL,NULL,'2018-02-05 01:39:04','2018-02-05 01:39:04',NULL,1,NULL,NULL,1,0,0),(815,2,43,3,1,1,29.90,NULL,NULL,'2018-02-05 01:39:04','2018-02-05 01:39:04',NULL,1,NULL,NULL,1,0,0),(816,1,14,14,NULL,NULL,1799.00,NULL,NULL,'2018-02-28 14:45:30','2018-04-27 16:11:53',NULL,1,1,NULL,1,1,0),(817,2,45,1,2,1,23.00,'234','2342','2018-03-16 23:53:06','2018-03-16 23:53:06',NULL,1,NULL,NULL,1,0,0),(825,1,47,14,NULL,NULL,2800.00,'123','123','2018-04-12 10:49:16','2018-04-24 18:42:11',NULL,1,1,NULL,1,1,1),(826,1,47,15,NULL,NULL,2800.00,'123','123','2018-04-12 10:49:25','2018-04-24 18:42:11',NULL,1,1,NULL,1,0,0),(827,2,47,8,1,1,2000.00,NULL,NULL,'2018-04-12 10:50:01','2018-04-24 18:41:28',NULL,1,1,NULL,1,0,0),(828,2,47,9,1,1,1800.00,NULL,NULL,'2018-04-12 10:50:01','2018-04-24 18:41:28',NULL,1,1,NULL,1,1,0),(829,2,47,8,2,1,1800.00,NULL,NULL,'2018-04-12 10:50:23','2018-04-24 18:41:44',NULL,1,1,NULL,1,1,0),(830,2,47,9,2,1,2000.00,NULL,NULL,'2018-04-12 10:50:23','2018-04-24 18:41:44',NULL,1,1,NULL,1,0,0),(831,2,47,8,3,1,1800.00,NULL,NULL,'2018-04-12 10:51:27','2018-04-24 18:41:57',NULL,1,1,NULL,1,0,0),(832,2,47,9,3,1,2000.00,NULL,NULL,'2018-04-12 10:51:27','2018-04-24 18:41:57',NULL,1,1,NULL,1,1,0),(841,1,49,15,NULL,NULL,2000.00,NULL,NULL,'2018-04-19 16:48:13','2018-04-27 16:12:29',NULL,1,1,NULL,1,1,1),(846,2,47,16,1,1,554.00,NULL,NULL,'2018-04-19 17:06:12','2018-04-24 18:41:28',NULL,1,1,NULL,1,0,0),(847,1,12,17,NULL,NULL,2699.00,NULL,NULL,'2018-04-19 17:14:31','2018-04-19 17:14:46',NULL,1,1,NULL,1,0,0),(848,1,12,18,NULL,NULL,2699.00,NULL,NULL,'2018-04-19 17:14:31','2018-04-19 17:14:31',NULL,1,NULL,NULL,1,0,0),(849,1,49,18,NULL,NULL,2000.00,NULL,NULL,'2018-04-19 17:16:23','2018-04-27 16:12:29',NULL,1,1,NULL,0,0,0),(850,1,49,17,NULL,NULL,2000.00,NULL,NULL,'2018-04-19 17:16:55','2018-04-27 16:12:29',NULL,1,1,NULL,1,0,0),(851,1,49,14,NULL,NULL,2000.00,NULL,NULL,'2018-04-19 17:22:39','2018-04-27 16:12:29',NULL,1,1,NULL,1,0,0),(852,2,49,9,1,1,2000.00,NULL,NULL,'2018-04-19 17:28:53','2018-04-27 14:53:07',NULL,1,1,NULL,1,1,0),(853,2,49,10,1,1,1500.00,NULL,NULL,'2018-04-19 17:28:53','2018-04-27 14:53:07',NULL,1,1,NULL,0,0,0),(854,2,49,7,2,1,2500.00,NULL,NULL,'2018-04-19 17:30:53','2018-04-25 11:25:09',NULL,1,1,NULL,0,0,0),(855,2,49,8,2,1,1800.00,NULL,NULL,'2018-04-19 17:30:53','2018-04-25 11:25:09',NULL,1,1,NULL,1,0,0),(856,2,49,9,2,1,1850.00,NULL,NULL,'2018-04-19 17:30:53','2018-04-25 11:25:09',NULL,1,1,NULL,1,0,0),(857,2,49,13,3,1,1500.00,NULL,NULL,'2018-04-19 17:31:51','2018-04-27 09:31:52',NULL,1,1,NULL,0,0,0),(858,2,49,16,3,1,1000.00,NULL,NULL,'2018-04-19 17:31:51','2018-04-27 09:31:52',NULL,1,1,NULL,0,0,0),(872,2,49,16,1,1,123.00,NULL,NULL,'2018-04-20 11:19:45','2018-04-27 14:53:07',NULL,1,1,NULL,0,0,0),(873,2,49,7,1,1,150.00,NULL,NULL,'2018-04-20 14:47:15','2018-04-27 14:53:07',NULL,1,1,NULL,1,0,0),(874,2,49,1,1,1,22.00,NULL,NULL,'2018-04-20 14:53:09','2018-04-27 14:53:07',NULL,1,1,NULL,1,0,0),(877,2,49,4,1,1,333.00,NULL,NULL,'2018-04-20 15:25:25','2018-04-27 14:53:07',NULL,1,1,NULL,0,0,0),(880,2,49,10,3,1,3490.00,NULL,NULL,'2018-04-24 17:55:59','2018-04-27 09:31:52',NULL,1,1,NULL,0,0,0),(881,2,49,6,3,1,2500.00,NULL,NULL,'2018-04-24 17:58:08','2018-04-27 09:31:52',NULL,1,1,NULL,0,0,0),(882,2,49,4,2,1,8000.00,NULL,NULL,'2018-04-24 17:59:11','2018-04-25 11:25:09',NULL,1,1,NULL,0,0,0),(883,2,49,13,2,1,5545.00,NULL,NULL,'2018-04-24 18:09:08','2018-04-25 11:25:09',NULL,1,1,NULL,1,0,0),(884,2,50,7,1,1,5.00,NULL,NULL,'2018-04-24 18:18:31','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(885,1,50,15,NULL,NULL,10.00,NULL,NULL,'2018-04-24 18:19:08','2018-06-17 23:36:13',NULL,1,1,NULL,1,1,1),(886,2,50,4,1,1,159.00,NULL,NULL,'2018-04-25 10:34:46','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(887,2,16,21,1,1,552.00,NULL,NULL,'2018-04-25 11:20:40','2018-04-25 11:20:40',NULL,1,NULL,NULL,1,0,0),(888,2,49,16,2,1,43.00,NULL,NULL,'2018-04-25 11:25:02','2018-04-25 11:25:02',NULL,1,NULL,NULL,1,0,0),(889,1,51,15,NULL,NULL,5000.00,NULL,NULL,'2018-04-25 11:27:31','2018-05-08 17:57:46',NULL,1,1,NULL,1,1,1),(890,2,51,1,1,1,156.00,NULL,NULL,'2018-04-25 11:28:32','2018-10-31 14:51:40',NULL,1,1,NULL,1,0,0),(891,2,51,2,1,1,8.00,NULL,NULL,'2018-04-25 11:28:32','2018-10-31 14:51:40',NULL,1,1,NULL,1,0,0),(892,2,51,3,1,1,8.00,NULL,NULL,'2018-04-25 11:28:32','2018-10-31 14:51:40',NULL,1,1,NULL,0,0,0),(893,2,51,19,1,1,500.00,NULL,NULL,'2018-04-25 11:28:32','2018-05-08 17:57:01',NULL,1,1,NULL,0,0,0),(894,2,51,21,1,1,300.00,NULL,NULL,'2018-04-25 11:28:32','2018-05-08 17:57:01',NULL,1,1,NULL,0,0,0),(895,2,51,1,3,1,123.00,NULL,NULL,'2018-04-25 12:17:29','2018-04-26 09:54:55',NULL,1,1,NULL,0,0,0),(899,2,50,5,1,1,85.00,NULL,NULL,'2018-04-25 16:08:16','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(900,2,50,6,1,1,8.00,NULL,NULL,'2018-04-25 16:08:43','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(901,2,50,8,1,1,888.00,NULL,NULL,'2018-04-25 16:10:08','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(902,2,50,9,1,1,52.00,NULL,NULL,'2018-04-25 16:11:33','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(903,2,50,3,1,1,7.00,NULL,NULL,'2018-04-25 16:14:25','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(904,2,51,22,1,1,589.00,NULL,NULL,'2018-04-25 17:13:56','2018-05-08 17:57:01',NULL,1,1,NULL,0,0,0),(905,2,51,12,1,1,444.00,NULL,NULL,'2018-04-25 17:33:04','2018-10-31 14:51:40',NULL,1,1,NULL,0,0,0),(906,2,50,1,1,1,85.00,NULL,NULL,'2018-04-25 17:47:54','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(907,2,50,1,3,1,12.00,NULL,NULL,'2018-04-25 17:52:19','2018-05-08 18:00:40',NULL,1,1,NULL,0,0,0),(908,2,50,12,2,1,123.00,NULL,NULL,'2018-04-25 17:52:46','2018-05-08 17:59:30',NULL,1,1,NULL,1,0,0),(909,2,50,2,1,1,1.00,NULL,NULL,'2018-04-25 17:53:17','2018-10-31 14:46:50',NULL,1,1,NULL,1,0,0),(910,2,49,2,1,1,123.00,NULL,NULL,'2018-04-25 18:01:10','2018-04-27 14:53:07',NULL,1,1,NULL,1,0,0),(911,2,51,5,1,1,555.00,NULL,NULL,'2018-04-25 18:13:11','2018-10-31 14:51:40',NULL,1,1,NULL,1,0,0),(912,2,51,6,1,1,124.00,NULL,NULL,'2018-04-25 18:15:39','2018-10-31 14:51:40',NULL,1,1,NULL,0,0,0),(913,2,51,5,2,1,85.00,NULL,NULL,'2018-04-25 18:17:08','2018-05-02 16:49:53',NULL,1,1,NULL,0,1,0),(914,2,51,23,1,1,677.00,NULL,NULL,'2018-04-26 09:41:02','2018-05-08 17:57:01',NULL,1,1,NULL,1,0,0),(915,2,51,7,2,1,855.00,NULL,NULL,'2018-04-26 09:54:06','2018-05-02 16:49:53',NULL,1,1,NULL,1,0,0),(916,2,51,22,3,1,1526.00,NULL,NULL,'2018-04-26 09:54:27','2018-04-26 09:54:55',NULL,1,1,NULL,0,0,0),(917,2,50,22,1,1,455.00,NULL,NULL,'2018-04-26 10:18:54','2018-05-08 17:01:48',NULL,1,1,NULL,1,0,0),(918,2,50,23,1,1,44.00,NULL,NULL,'2018-04-26 10:19:14','2018-05-08 17:01:48',NULL,1,1,NULL,1,0,0),(919,2,49,3,1,1,555.00,NULL,NULL,'2018-04-27 09:30:15','2018-04-27 14:53:07',NULL,1,1,NULL,1,0,0),(920,2,49,5,1,1,874.00,NULL,NULL,'2018-04-27 09:30:15','2018-04-27 14:53:07',NULL,1,1,NULL,0,0,0),(921,2,49,22,3,1,854.00,NULL,NULL,'2018-04-27 09:31:52','2018-04-27 09:31:52',NULL,1,NULL,NULL,1,0,0),(922,2,50,1,2,1,1520.00,NULL,NULL,'2018-04-27 09:40:16','2018-05-08 17:59:30',NULL,1,1,NULL,1,0,0),(923,2,50,3,3,1,1800.00,NULL,NULL,'2018-04-27 09:40:31','2018-05-08 18:00:40',NULL,1,1,NULL,1,0,0),(924,1,51,14,NULL,NULL,5000.00,NULL,NULL,'2018-04-27 16:39:28','2018-05-08 17:57:46',NULL,1,1,NULL,1,0,0),(925,2,50,4,3,1,123.00,NULL,NULL,'2018-05-02 09:55:56','2018-05-08 18:00:40',NULL,1,1,NULL,1,0,0),(926,2,50,5,3,1,123.00,NULL,NULL,'2018-05-02 09:55:56','2018-05-08 18:00:40',NULL,1,1,NULL,1,0,0),(927,1,50,17,NULL,NULL,10.00,NULL,NULL,'2018-05-02 10:29:00','2018-05-02 14:39:36',NULL,1,1,NULL,1,0,0),(928,1,50,18,NULL,NULL,10.00,NULL,NULL,'2018-05-02 10:29:00','2018-05-02 14:39:36',NULL,1,1,NULL,1,0,0),(929,2,51,1,2,1,12.00,NULL,NULL,'2018-05-02 16:49:53','2018-05-02 16:49:53',NULL,1,NULL,NULL,1,0,0),(930,2,11,21,1,1,545.00,NULL,NULL,'2018-05-07 11:13:47','2018-05-07 17:05:49',NULL,1,1,NULL,0,0,0),(931,2,7,25,1,1,99.00,NULL,NULL,'2018-05-08 16:04:43','2018-05-15 11:35:13',NULL,1,1,NULL,1,0,0),(932,2,12,26,1,1,789.00,NULL,NULL,'2018-05-08 16:16:13','2018-05-08 17:50:47',NULL,1,1,NULL,1,1,0),(933,2,12,26,2,1,789.00,NULL,NULL,'2018-05-08 16:18:43','2018-05-08 16:34:57',NULL,1,1,NULL,1,0,0),(934,2,12,26,3,1,789.00,NULL,NULL,'2018-05-08 16:18:53','2018-05-08 16:18:57',NULL,1,1,NULL,1,0,0),(935,2,50,26,1,1,789.00,NULL,NULL,'2018-05-08 16:37:15','2018-05-08 17:01:48',NULL,1,1,NULL,1,1,0),(936,2,50,26,3,1,789.00,NULL,NULL,'2018-05-08 17:04:08','2018-05-08 18:00:40',NULL,1,1,NULL,1,1,0),(937,2,50,26,2,1,789.00,NULL,NULL,'2018-05-08 17:04:36','2018-05-08 17:59:30',NULL,1,1,NULL,1,1,0),(938,2,51,26,1,1,789.00,NULL,NULL,'2018-05-08 17:56:58','2018-05-08 17:57:01',NULL,1,1,NULL,1,1,0),(939,1,7,17,NULL,NULL,1679.00,NULL,NULL,'2018-05-08 18:26:52','2018-05-15 11:36:47',NULL,1,1,NULL,1,0,0),(940,2,7,27,1,1,100.00,NULL,NULL,'2018-05-15 11:32:51','2018-05-15 11:35:13',NULL,1,1,NULL,1,1,1),(941,1,52,15,NULL,NULL,749.00,NULL,NULL,'2018-05-25 16:32:41','2018-05-25 16:33:24',NULL,1,1,NULL,1,0,0),(942,2,52,7,1,1,599.00,NULL,NULL,'2018-05-25 16:40:27','2018-05-25 16:40:39',NULL,1,1,NULL,1,0,0),(943,2,52,8,1,1,499.00,NULL,NULL,'2018-05-25 16:40:27','2018-05-25 16:40:39',NULL,1,1,NULL,1,1,1),(944,2,52,9,1,1,499.00,NULL,NULL,'2018-05-25 16:40:27','2018-05-25 16:40:39',NULL,1,1,NULL,1,0,0),(945,2,52,7,2,1,599.00,NULL,NULL,'2018-05-25 16:41:05','2018-05-25 16:41:15',NULL,1,1,NULL,1,0,0),(946,2,52,8,2,1,499.00,NULL,NULL,'2018-05-25 16:41:05','2018-05-25 16:41:15',NULL,1,1,NULL,1,1,0),(947,2,52,9,2,1,499.00,NULL,NULL,'2018-05-25 16:41:05','2018-05-25 16:41:15',NULL,1,1,NULL,1,0,0),(948,2,52,7,3,1,599.00,NULL,NULL,'2018-05-25 16:41:36','2018-05-25 16:41:59',NULL,1,1,NULL,1,0,0),(949,2,52,8,3,1,599.00,NULL,NULL,'2018-05-25 16:41:36','2018-05-25 16:41:59',NULL,1,1,NULL,1,1,0),(950,2,52,9,3,1,499.00,NULL,NULL,'2018-05-25 16:41:36','2018-05-25 16:41:59',NULL,1,1,NULL,1,0,0),(951,1,53,15,NULL,NULL,799.00,NULL,NULL,'2018-05-25 16:49:35','2018-05-25 16:49:35',NULL,1,NULL,NULL,1,0,0),(952,2,53,7,1,1,599.00,NULL,NULL,'2018-05-25 16:50:09','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(953,2,53,8,1,1,499.00,NULL,NULL,'2018-05-25 16:50:09','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(954,2,53,9,1,1,499.00,NULL,NULL,'2018-05-25 16:50:09','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(955,2,53,3,1,1,19.00,NULL,NULL,'2018-06-04 10:23:33','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(956,2,53,4,1,1,29.00,NULL,NULL,'2018-06-04 10:23:33','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(957,2,53,5,1,1,39.00,NULL,NULL,'2018-06-04 10:23:33','2018-09-05 12:36:10',NULL,1,1,NULL,1,0,0),(958,2,53,1,1,1,19.00,NULL,NULL,'2018-06-04 10:23:53','2018-09-05 12:36:10',NULL,1,1,NULL,1,1,1),(959,2,53,1,3,1,19.00,NULL,NULL,'2018-06-04 10:24:16','2018-06-04 10:24:47',NULL,1,1,NULL,1,1,0),(960,2,53,1,2,1,19.00,NULL,NULL,'2018-06-04 10:24:22','2018-06-04 10:24:26',NULL,1,1,NULL,1,1,0),(961,2,53,2,1,1,25.65,NULL,NULL,'2018-09-05 12:36:10','2018-09-05 12:36:10',NULL,1,NULL,NULL,1,0,0),(962,2,7,1,1,2,25.65,NULL,NULL,'2018-09-05 14:47:37','2018-10-17 09:25:57',NULL,1,1,NULL,1,0,0),(963,2,7,2,1,2,30.25,NULL,NULL,'2018-09-05 14:47:37','2018-10-17 09:25:57',NULL,1,1,NULL,1,0,0),(964,2,7,3,1,2,56.25,NULL,NULL,'2018-09-05 14:47:37','2018-10-17 09:25:57',NULL,1,1,NULL,1,0,0),(965,2,7,4,1,2,45.65,NULL,NULL,'2018-09-05 14:47:37','2018-10-17 09:25:57',NULL,1,1,NULL,1,1,0),(966,2,7,1,2,2,54.68,NULL,NULL,'2018-09-05 14:49:55','2018-09-05 14:49:55',NULL,1,NULL,NULL,1,0,0),(967,2,7,2,2,2,60.35,NULL,NULL,'2018-09-05 14:49:55','2018-09-05 14:49:55',NULL,1,NULL,NULL,1,0,0),(968,2,7,3,2,2,78.69,NULL,NULL,'2018-09-05 14:49:55','2018-09-05 14:49:55',NULL,1,NULL,NULL,1,0,0),(969,2,51,1,1,2,54.69,NULL,NULL,'2018-09-05 14:50:39','2018-09-05 14:50:46',NULL,1,1,NULL,1,0,0),(970,2,51,2,1,2,58.69,NULL,NULL,'2018-09-05 14:50:39','2018-09-05 14:50:46',NULL,1,1,NULL,1,1,0),(971,2,51,3,1,2,98.12,NULL,NULL,'2018-09-05 14:50:39','2018-09-05 14:50:46',NULL,1,1,NULL,1,0,0),(972,2,51,1,2,2,78.69,NULL,NULL,'2018-09-05 14:51:27','2018-09-05 14:51:27',NULL,1,NULL,NULL,1,0,0),(973,2,51,2,2,2,74.36,NULL,NULL,'2018-09-05 14:51:27','2018-09-05 14:51:27',NULL,1,NULL,NULL,1,0,0),(974,2,51,3,2,2,58.65,NULL,NULL,'2018-09-05 14:51:27','2018-09-05 14:51:27',NULL,1,NULL,NULL,1,0,0),(975,2,12,1,1,2,58.61,NULL,NULL,'2018-09-05 14:52:05','2018-09-05 14:52:11',NULL,1,1,NULL,1,0,0),(976,2,12,2,1,2,47.69,NULL,NULL,'2018-09-05 14:52:05','2018-09-05 14:52:11',NULL,1,1,NULL,1,1,0),(977,2,12,3,1,2,54.65,NULL,NULL,'2018-09-05 14:52:05','2018-09-05 14:52:11',NULL,1,1,NULL,1,0,0),(978,2,47,1,1,2,47.69,NULL,NULL,'2018-09-05 14:53:13','2018-09-05 14:53:19',NULL,1,1,NULL,1,1,0),(979,2,47,2,1,2,58.69,NULL,NULL,'2018-09-05 14:53:13','2018-09-05 14:53:19',NULL,1,1,NULL,1,0,0),(980,2,47,3,1,2,69.65,NULL,NULL,'2018-09-05 14:53:13','2018-09-05 14:53:19',NULL,1,1,NULL,1,0,0),(981,2,47,1,2,2,45.68,NULL,NULL,'2018-09-05 14:53:39','2018-09-05 14:53:39',NULL,1,NULL,NULL,1,0,0),(982,2,47,2,2,2,85.69,NULL,NULL,'2018-09-05 14:53:39','2018-09-05 14:53:39',NULL,1,NULL,NULL,1,0,0),(983,2,47,3,2,2,58.69,NULL,NULL,'2018-09-05 14:53:39','2018-09-05 14:53:39',NULL,1,NULL,NULL,1,0,0),(984,2,47,1,3,2,58.54,NULL,NULL,'2018-09-05 14:54:04','2018-09-05 14:54:04',NULL,1,NULL,NULL,1,0,0),(985,2,47,2,3,2,63.98,NULL,NULL,'2018-09-05 14:54:04','2018-09-05 14:54:04',NULL,1,NULL,NULL,1,0,0),(986,2,47,3,3,2,14.69,NULL,NULL,'2018-09-05 14:54:04','2018-09-05 14:54:04',NULL,1,NULL,NULL,1,0,0),(987,2,56,6,1,2,800.00,NULL,NULL,'2018-09-12 15:25:37','2018-09-13 18:49:51',NULL,1,1,NULL,1,1,1),(988,2,56,6,1,1,800.00,NULL,NULL,'2018-09-12 15:26:21','2018-09-12 15:26:25',NULL,1,1,NULL,1,1,0),(991,1,57,15,NULL,NULL,1500.00,NULL,NULL,'2018-09-26 10:55:12','2018-09-26 10:55:17',NULL,1,1,NULL,1,0,0),(992,2,57,1,1,2,1000.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(993,2,57,3,1,2,1200.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(994,2,57,4,1,2,1300.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,1,1),(995,2,57,5,1,2,1400.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(996,2,57,6,1,2,1500.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(997,2,57,7,1,2,1500.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(998,2,57,8,1,2,1500.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(999,2,57,9,1,2,1500.00,NULL,NULL,'2018-09-26 10:56:15','2018-09-26 10:56:21',NULL,1,1,NULL,1,0,0),(1004,2,7,1,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1005,2,7,2,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1006,2,7,3,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1007,2,7,4,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1008,2,7,11,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1009,2,7,13,1,3,25.65,NULL,NULL,'2018-10-17 09:23:32','2018-10-17 09:23:32',NULL,1,NULL,NULL,1,0,0),(1010,2,7,1,1,4,25.65,NULL,NULL,'2018-10-17 09:24:07','2018-10-17 09:25:07',NULL,1,1,NULL,1,0,0),(1011,2,7,2,1,4,25.65,NULL,NULL,'2018-10-17 09:24:07','2018-10-17 09:25:07',NULL,1,1,NULL,1,1,0),(1012,2,7,3,1,4,25.65,NULL,NULL,'2018-10-17 09:24:07','2018-10-17 09:25:07',NULL,1,1,NULL,1,0,0),(1013,2,7,4,1,4,25.65,NULL,NULL,'2018-10-17 09:24:07','2018-10-17 09:25:07',NULL,1,1,NULL,1,0,0),(1014,2,7,5,1,4,25.65,NULL,NULL,'2018-10-17 09:24:07','2018-10-17 09:25:07',NULL,1,1,NULL,1,0,0),(1015,2,50,1,1,2,25.65,NULL,NULL,'2018-10-17 10:02:24','2019-02-11 10:20:04',NULL,1,1,NULL,1,0,0),(1016,2,50,2,1,2,10.00,NULL,NULL,'2018-10-17 10:02:24','2019-02-11 10:20:04',NULL,1,1,NULL,1,0,0),(1017,2,50,1,2,2,78.69,NULL,NULL,'2018-10-17 10:03:13','2018-10-17 10:03:13',NULL,1,NULL,NULL,1,0,0),(1018,2,50,1,3,2,10.00,NULL,NULL,'2018-10-17 10:03:26','2018-10-17 10:03:26',NULL,1,NULL,NULL,1,0,0),(1019,2,50,29,1,4,999.00,NULL,NULL,'2018-10-31 14:42:48','2019-02-07 10:52:51',NULL,1,1,NULL,1,0,0),(1020,2,50,29,1,1,5555.00,NULL,NULL,'2018-10-31 14:46:50','2018-10-31 14:46:50',NULL,1,NULL,NULL,1,0,0),(1021,2,51,29,1,1,5353.00,NULL,NULL,'2018-10-31 14:51:34','2018-10-31 14:51:40',NULL,1,1,NULL,1,0,0),(1022,2,60,1,1,4,234.00,NULL,NULL,'2018-11-07 11:48:00','2018-11-07 12:31:37',NULL,1,1,NULL,1,1,1),(1023,2,60,2,1,4,23.00,NULL,NULL,'2018-11-07 11:49:24','2018-11-07 12:31:37',NULL,1,1,NULL,1,0,0),(1024,2,60,3,1,4,34.00,NULL,NULL,'2018-11-07 11:49:24','2018-11-07 12:31:37',NULL,1,1,NULL,1,0,0),(1025,2,60,4,1,4,54.00,NULL,NULL,'2018-11-07 11:49:24','2018-11-07 12:31:37',NULL,1,1,NULL,1,0,0),(1028,2,60,1,1,1,12.00,NULL,NULL,'2018-11-07 12:01:37','2018-11-07 12:01:37',NULL,1,NULL,NULL,1,0,0),(1029,2,60,2,1,1,23.00,NULL,NULL,'2018-11-07 12:01:37','2018-11-07 12:01:37',NULL,1,NULL,NULL,1,0,0),(1030,2,60,6,1,1,234.00,NULL,NULL,'2018-11-07 12:01:37','2018-11-07 12:01:37',NULL,1,NULL,NULL,1,0,0),(1031,2,60,29,1,4,6363.00,NULL,NULL,'2018-11-07 12:31:37','2018-11-07 12:31:37',NULL,1,NULL,NULL,1,0,0),(1032,2,12,29,1,4,6363.00,NULL,NULL,'2018-11-07 12:32:47','2018-11-29 17:48:00',NULL,1,1,NULL,1,0,0),(1033,2,12,2,1,4,44.00,NULL,NULL,'2018-11-07 12:34:11','2018-11-29 17:48:00',NULL,1,1,NULL,1,0,0),(1034,2,12,5,1,4,53.00,NULL,NULL,'2018-11-07 12:34:11','2018-11-29 17:48:00',NULL,1,1,NULL,1,0,0),(1035,2,12,7,1,4,23.00,NULL,NULL,'2018-11-07 12:34:11','2018-11-29 17:48:00',NULL,1,1,NULL,1,0,0),(1036,2,12,1,2,4,56.00,NULL,NULL,'2018-11-07 12:35:35','2018-11-07 12:35:35',NULL,1,NULL,NULL,1,0,0),(1037,2,12,4,2,4,67.00,NULL,NULL,'2018-11-07 12:35:35','2018-11-07 12:35:35',NULL,1,NULL,NULL,1,0,0),(1038,2,12,6,2,4,90.00,NULL,NULL,'2018-11-07 12:35:35','2018-11-07 12:35:35',NULL,1,NULL,NULL,1,0,0),(1039,2,12,29,2,4,88.00,NULL,NULL,'2018-11-07 12:35:35','2018-11-07 12:35:35',NULL,1,NULL,NULL,1,0,0),(1040,2,61,1,1,1,50.00,NULL,NULL,'2018-11-07 15:17:53','2018-11-07 15:17:53',NULL,1,NULL,NULL,1,0,0),(1041,2,61,2,1,1,50.25,NULL,NULL,'2018-11-07 15:17:53','2018-11-07 15:17:53',NULL,1,NULL,NULL,1,0,0),(1042,2,61,1,1,2,45.68,NULL,NULL,'2018-11-07 15:18:19','2018-11-07 15:19:06',NULL,1,1,NULL,1,0,0),(1043,2,61,2,1,2,98.65,NULL,NULL,'2018-11-07 15:18:19','2018-11-07 15:19:06',NULL,1,1,NULL,1,1,1),(1044,2,61,1,2,2,14.25,NULL,NULL,'2018-11-07 15:18:39','2018-11-07 15:18:39',NULL,1,NULL,NULL,1,0,0),(1045,2,61,2,2,2,87.65,NULL,NULL,'2018-11-07 15:18:39','2018-11-07 15:18:39',NULL,1,NULL,NULL,1,0,0),(1046,2,61,1,3,2,41.25,NULL,NULL,'2018-11-07 15:18:54','2018-11-07 15:18:54',NULL,1,NULL,NULL,1,0,0),(1047,2,61,2,3,2,96.32,NULL,NULL,'2018-11-07 15:18:54','2018-11-07 15:18:54',NULL,1,NULL,NULL,1,0,0),(1048,2,61,1,2,1,12.65,NULL,NULL,'2018-11-07 15:21:00','2018-11-07 15:21:00',NULL,1,NULL,NULL,1,0,0),(1049,2,61,2,2,1,63.65,NULL,NULL,'2018-11-07 15:21:00','2018-11-07 15:21:00',NULL,1,NULL,NULL,1,0,0),(1050,2,62,1,1,1,65.54,NULL,NULL,'2018-11-07 16:55:34','2018-11-07 16:55:45',NULL,1,1,NULL,1,1,1),(1051,2,62,2,1,1,85.65,NULL,NULL,'2018-11-07 16:55:34','2018-11-07 16:55:45',NULL,1,1,NULL,1,0,0),(1052,2,62,1,1,2,86.25,NULL,NULL,'2018-11-07 16:56:00','2018-11-07 16:57:03',NULL,1,1,NULL,1,1,0),(1053,2,62,2,1,2,47.56,NULL,NULL,'2018-11-07 16:56:00','2018-11-07 16:57:03',NULL,1,1,NULL,1,0,0),(1054,2,63,1,1,1,34.56,NULL,NULL,'2018-11-07 17:21:54','2019-02-05 12:04:29',NULL,1,1,NULL,1,0,0),(1055,2,63,2,1,1,34.67,NULL,NULL,'2018-11-07 17:21:54','2019-02-05 12:04:29',NULL,1,1,NULL,1,0,0),(1056,2,63,1,1,2,23.56,NULL,NULL,'2018-11-07 17:22:25','2018-11-07 17:22:31',NULL,1,1,NULL,1,0,0),(1057,2,63,2,1,2,56.78,NULL,NULL,'2018-11-07 17:22:25','2018-11-07 17:22:31',NULL,1,1,NULL,1,1,1),(1058,2,64,1,1,4,232.00,NULL,NULL,'2018-11-08 10:40:59','2018-11-08 10:43:36',NULL,1,1,NULL,1,0,0),(1059,2,64,9,1,4,231.00,NULL,NULL,'2018-11-08 10:40:59','2018-11-08 10:43:36',NULL,1,1,NULL,1,1,1),(1060,2,64,11,1,4,325.00,NULL,NULL,'2018-11-08 10:40:59','2018-11-08 10:43:36',NULL,1,1,NULL,1,0,0),(1061,2,64,28,1,4,222.00,NULL,NULL,'2018-11-08 10:40:59','2018-11-08 10:43:36',NULL,1,1,NULL,1,0,0),(1062,1,64,15,NULL,NULL,5656.00,NULL,NULL,'2018-11-08 10:43:13','2018-11-08 10:43:23',NULL,1,1,NULL,1,0,0),(1063,2,12,30,1,4,1.00,NULL,NULL,'2018-11-29 17:48:00','2018-11-29 17:48:00',NULL,1,NULL,NULL,1,0,0),(1064,2,10,30,1,4,1.00,NULL,NULL,'2018-11-29 18:00:53','2018-11-29 18:03:39',NULL,1,1,NULL,1,1,1),(1065,2,63,31,1,1,1.00,NULL,NULL,'2019-02-05 12:02:31','2019-02-05 12:04:29',NULL,1,1,NULL,1,1,0),(1066,2,50,31,1,4,166.00,NULL,NULL,'2019-02-05 12:21:36','2019-02-07 10:52:51',NULL,1,1,NULL,1,1,0),(1067,2,50,32,1,4,39.90,NULL,NULL,'2019-02-06 12:03:19','2019-02-07 10:52:51',NULL,1,1,NULL,1,0,0),(1068,2,50,35,1,4,169.90,NULL,NULL,'2019-02-07 10:52:51','2019-02-07 10:52:51',NULL,1,NULL,NULL,1,0,0),(1069,2,50,35,2,4,107.90,NULL,NULL,'2019-02-07 10:53:16','2019-02-07 10:53:16',NULL,1,NULL,NULL,1,0,0),(1070,2,50,35,1,2,169.00,NULL,NULL,'2019-02-11 10:20:04','2019-02-11 10:20:04',NULL,1,NULL,NULL,1,0,0),(1071,2,63,1,1,4,2333.00,'dddd','ddsdssd','2019-02-11 14:12:06','2019-02-11 14:12:42',NULL,1,1,NULL,1,1,0),(1072,2,68,8,1,1,5336.00,NULL,NULL,'2019-02-22 17:16:43','2019-02-22 17:17:03',NULL,1,1,NULL,1,1,0),(1073,2,68,36,1,2,5333.00,NULL,NULL,'2019-02-22 17:22:03','2019-02-26 17:16:18',NULL,1,1,NULL,1,0,0),(1074,1,68,15,NULL,NULL,2000.00,NULL,NULL,'2019-02-22 17:22:56','2019-02-22 17:23:06',NULL,1,1,NULL,1,0,0),(1075,1,68,15,NULL,NULL,2000.00,NULL,NULL,'2019-02-22 17:45:11','2019-02-22 17:45:11',NULL,1,NULL,NULL,1,0,0),(1076,2,68,31,1,2,888.00,NULL,NULL,'2019-02-22 18:13:25','2019-02-26 17:16:18',NULL,1,1,NULL,1,0,0),(1077,2,68,34,1,2,569.00,NULL,NULL,'2019-02-22 18:13:25','2019-02-26 17:16:18',NULL,1,1,NULL,1,0,0),(1078,2,68,35,1,2,895.00,NULL,NULL,'2019-02-22 18:13:25','2019-02-26 17:16:18',NULL,1,1,NULL,1,0,0),(1079,2,68,3,1,3,666.00,NULL,NULL,'2019-02-22 18:20:42','2019-02-26 18:42:45',NULL,1,1,NULL,1,0,0),(1080,2,68,5,1,3,333.00,NULL,NULL,'2019-02-22 18:20:42','2019-02-26 18:42:45',NULL,1,1,NULL,1,0,0),(1081,2,68,7,1,3,2222.00,NULL,NULL,'2019-02-22 18:20:42','2019-02-26 18:42:45',NULL,1,1,NULL,1,0,0),(1082,2,68,9,1,3,1111.00,NULL,NULL,'2019-02-22 18:20:42','2019-02-26 18:42:45',NULL,1,1,NULL,1,0,0),(1083,2,68,2,1,2,789.00,NULL,NULL,'2019-02-26 17:16:18','2019-02-26 17:16:18',NULL,1,NULL,NULL,1,0,0),(1084,2,68,1,1,3,111.00,NULL,NULL,'2019-02-26 17:19:28','2019-02-26 18:42:45',NULL,1,1,NULL,1,1,1),(1085,2,69,1,1,1,5200.00,'R001','P002','2019-02-27 17:30:08','2019-03-26 13:35:23',NULL,1,1,NULL,1,0,1),(1086,1,70,14,NULL,NULL,1000.00,'100','pack1','2019-03-01 09:23:03','2019-03-01 09:23:35',NULL,1,1,NULL,1,0,0),(1087,1,70,15,NULL,NULL,1000.00,'200','pack2','2019-03-01 09:23:35','2019-03-01 09:23:35',NULL,1,NULL,NULL,1,0,0),(1088,2,70,1,1,1,1100.00,'r01','pa1','2019-03-01 09:30:30','2019-03-01 11:12:54',NULL,1,1,NULL,1,0,0),(1089,2,70,2,1,1,3000.00,'1200','pack2','2019-03-01 09:35:49','2019-03-01 11:12:54',NULL,1,1,NULL,1,1,1),(1090,2,70,1,1,3,2000.00,'R0','pack1','2019-03-01 09:38:25','2019-03-01 09:39:23',NULL,1,1,NULL,1,0,0),(1091,2,69,4,2,1,6900.00,NULL,NULL,'2019-03-01 16:26:22','2019-03-04 17:03:05',NULL,1,1,NULL,1,0,0),(1092,2,69,6,1,2,3600.00,NULL,NULL,'2019-03-01 17:23:22','2019-03-04 16:59:45',NULL,1,1,NULL,1,0,0),(1093,2,69,7,2,2,6900.00,NULL,NULL,'2019-03-01 17:23:37','2019-03-01 17:23:37',NULL,1,NULL,NULL,1,0,0),(1094,2,69,8,3,2,3601.00,NULL,NULL,'2019-03-01 17:25:03','2019-03-01 17:25:03',NULL,1,NULL,NULL,1,0,0),(1095,2,69,30,1,1,9600.00,NULL,NULL,'2019-03-01 17:44:59','2019-03-26 13:35:23',NULL,1,1,NULL,1,0,0),(1096,2,69,5,1,1,111.00,NULL,NULL,'2019-03-01 17:47:32','2019-03-26 13:35:23',NULL,1,1,NULL,1,1,0),(1097,2,69,5,2,1,7900.00,NULL,NULL,'2019-03-01 18:15:41','2019-03-04 17:03:05',NULL,1,1,NULL,1,0,0),(1098,2,69,6,2,1,9600.00,NULL,NULL,'2019-03-01 18:15:41','2019-03-04 17:03:05',NULL,1,1,NULL,1,0,0),(1099,2,69,7,1,2,590.00,NULL,NULL,'2019-03-04 16:58:47','2019-03-04 16:59:45',NULL,1,1,NULL,1,0,0),(1100,2,69,5,1,2,700.00,NULL,NULL,'2019-03-04 16:59:36','2019-03-04 16:59:45',NULL,1,1,NULL,1,0,0);
/*!40000 ALTER TABLE `tbl_product_variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promo`
--

DROP TABLE IF EXISTS `tbl_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promo` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_variation_id` int(11) DEFAULT NULL,
  `add_product_id` int(11) DEFAULT NULL,
  `promo_price` decimal(6,2) DEFAULT NULL,
  `promo_discount` decimal(6,6) DEFAULT NULL,
  `promo_add_product_price` decimal(6,2) DEFAULT NULL,
  `promo_add_product_discount` decimal(6,2) DEFAULT NULL,
  `promo_title` varchar(50) DEFAULT NULL,
  `promo_description` varchar(500) DEFAULT NULL,
  `promo_start_date` datetime NOT NULL,
  `promo_expiration_date` datetime NOT NULL,
  `allow_all_variations` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_variation_type_id` int(11) DEFAULT NULL COMMENT '2: postpago\n1: prepago\nnull: todos',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `publish_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`promo_id`),
  KEY `fk_tbl_promo_tbl_product1_idx` (`product_id`),
  KEY `fk_tbl_promo_tbl_product_variation1_idx` (`product_variation_id`),
  KEY `fk_tbl_promo_tbl_product2_idx` (`add_product_id`),
  KEY `fk_tbl_promo_tbl_variation_type1_idx` (`allowed_variation_type_id`),
  CONSTRAINT `fk_tbl_promo_tbl_product1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_promo_tbl_product2` FOREIGN KEY (`add_product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_promo_tbl_product_variation1` FOREIGN KEY (`product_variation_id`) REFERENCES `tbl_product_variation` (`product_variation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_promo_tbl_variation_type1` FOREIGN KEY (`allowed_variation_type_id`) REFERENCES `tbl_variation_type` (`variation_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Tabla que define tipo postpago o prepago';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promo`
--

LOCK TABLES `tbl_promo` WRITE;
/*!40000 ALTER TABLE `tbl_promo` DISABLE KEYS */;
INSERT INTO `tbl_promo` VALUES (1,7,NULL,NULL,499.00,NULL,NULL,NULL,NULL,NULL,'2017-11-26 00:00:00','2018-01-28 00:00:00',1,1,'2017-12-05 12:32:40','2017-12-07 15:15:17',NULL,'2017-12-05 12:32:40',1,NULL,NULL,1,0),(2,12,NULL,NULL,NULL,0.200000,NULL,NULL,NULL,NULL,'2017-11-26 00:00:00','2018-01-28 00:00:00',1,1,'2017-12-05 12:32:40','2017-12-07 15:15:32',NULL,'2017-12-05 12:32:40',1,NULL,NULL,1,0),(3,12,NULL,NULL,NULL,0.200000,NULL,NULL,NULL,NULL,'2017-11-26 00:00:00','2018-01-28 00:00:00',1,2,'2017-12-05 12:32:40','2017-12-07 15:15:32',NULL,'2017-12-05 12:32:40',1,NULL,NULL,1,0),(4,19,NULL,NULL,2100.00,NULL,NULL,NULL,NULL,NULL,'2017-11-26 00:00:00','2018-01-28 00:00:00',1,1,'2017-12-05 12:32:40','2017-12-07 17:57:33',NULL,'2017-12-05 12:32:40',1,NULL,NULL,1,0),(5,19,NULL,NULL,1800.00,NULL,NULL,NULL,NULL,NULL,'2017-11-26 00:00:00','2018-01-28 00:00:00',1,2,'2017-12-05 12:32:40','2017-12-07 17:57:33',NULL,'2017-12-05 12:32:40',1,NULL,NULL,1,0),(6,18,488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-07 17:56:13','2018-01-28 00:00:00',0,NULL,'2017-12-07 17:56:13','2018-04-25 10:13:58',NULL,'2017-12-07 18:09:34',1,1,NULL,1,0),(7,18,808,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-07 17:56:13','2018-01-28 00:00:00',0,NULL,'2017-12-07 17:56:13','2018-04-24 18:49:37',NULL,'2017-12-07 18:09:34',1,1,NULL,1,0),(8,14,436,NULL,NULL,0.000000,NULL,NULL,NULL,NULL,'2018-01-10 00:00:00','2018-01-30 00:00:00',0,NULL,'2017-12-05 12:32:40','2018-04-24 18:42:32',NULL,'2017-12-05 12:32:40',1,1,NULL,1,0),(9,14,438,NULL,NULL,0.000000,NULL,NULL,NULL,NULL,'2018-01-10 00:00:00','2018-01-30 00:00:00',0,NULL,'2017-12-05 12:32:40','2018-04-24 18:42:32',NULL,'2017-12-05 12:32:40',1,1,NULL,1,0),(10,14,804,NULL,1599.00,0.110000,NULL,NULL,NULL,NULL,'2018-01-10 00:00:00','2018-01-30 00:00:00',0,NULL,'2017-12-05 12:32:40','2018-04-27 16:11:53',NULL,'2017-12-05 12:32:40',1,1,NULL,1,1),(11,14,430,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-02 10:36:45','2018-02-02 10:36:45',0,NULL,'2018-02-02 10:36:45','2018-04-24 18:42:32',NULL,'2018-02-02 10:36:45',1,1,NULL,1,0),(12,14,431,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-02 10:38:03','2018-02-02 10:38:03',0,NULL,'2018-02-02 10:38:03','2018-04-24 18:42:32',NULL,'2018-02-02 10:38:03',1,1,NULL,1,0),(13,18,489,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-02 10:39:46','2018-02-02 10:39:46',0,NULL,'2018-02-02 10:39:46','2018-04-25 10:13:58',NULL,'2018-02-02 10:39:46',1,1,NULL,1,0),(14,43,812,NULL,76.00,0.937300,NULL,NULL,NULL,NULL,'2018-02-05 16:28:53','2018-02-05 16:28:53',0,NULL,'2018-02-05 16:28:53',NULL,NULL,'2018-02-05 16:28:53',1,NULL,NULL,1,1),(18,47,846,NULL,443.20,0.200000,NULL,NULL,NULL,NULL,'2018-04-19 17:06:12','2018-04-19 17:06:12',0,NULL,'2018-04-19 22:06:12','2018-04-24 18:41:28',NULL,'2018-04-19 17:06:12',1,1,NULL,1,1),(19,49,852,NULL,1800.00,0.100000,NULL,NULL,NULL,NULL,'2018-04-19 17:28:53','2018-04-19 17:28:53',0,NULL,'2018-04-19 22:28:53','2018-04-27 14:53:07',NULL,'2018-04-19 17:28:53',1,1,NULL,1,1),(20,49,854,NULL,2250.00,0.100000,NULL,NULL,NULL,NULL,'2018-04-19 17:30:53','2018-04-19 17:30:53',0,NULL,'2018-04-19 22:30:53','2018-04-25 11:25:09',NULL,'2018-04-19 17:30:53',1,1,NULL,1,1),(21,49,856,NULL,1757.50,0.050000,NULL,NULL,NULL,NULL,'2018-04-19 17:30:53','2018-04-19 17:30:53',0,NULL,'2018-04-19 22:30:53','2018-04-25 11:25:09',NULL,'2018-04-19 17:30:53',1,1,NULL,1,1),(22,49,874,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 17:56:04','2018-04-20 17:56:04',0,NULL,'2018-04-20 22:56:04','2018-04-27 14:53:07',NULL,'2018-04-20 17:56:04',1,1,NULL,1,0),(23,49,881,NULL,2175.00,0.130000,NULL,NULL,NULL,NULL,'2018-04-24 17:58:08','2018-04-24 17:58:08',0,NULL,'2018-04-24 22:58:08','2018-04-27 09:31:52',NULL,'2018-04-24 17:58:08',1,1,NULL,1,1),(24,49,882,NULL,1600.00,0.800000,NULL,NULL,NULL,NULL,'2018-04-24 17:59:11','2018-04-24 17:59:11',0,NULL,'2018-04-24 22:59:11','2018-04-25 11:25:09',NULL,'2018-04-24 17:59:11',1,1,NULL,1,1),(25,49,883,NULL,5267.75,0.050000,NULL,NULL,NULL,NULL,'2018-04-24 18:09:08','2018-04-24 18:09:08',0,NULL,'2018-04-24 23:09:08','2018-04-25 11:25:09',NULL,'2018-04-24 18:09:08',1,1,NULL,1,1),(26,51,914,NULL,622.84,0.080000,NULL,NULL,NULL,NULL,'2018-04-26 09:41:02','2018-04-26 09:41:02',0,NULL,'2018-04-26 14:41:02','2018-05-08 17:57:01',NULL,'2018-04-26 09:41:02',1,1,NULL,1,1),(27,51,924,NULL,1.00,0.999800,NULL,NULL,NULL,NULL,'2018-04-27 16:39:47','2018-04-27 16:39:47',0,NULL,'2018-04-27 21:39:47','2018-05-08 17:57:46',NULL,'2018-04-27 16:39:47',1,1,NULL,1,1),(28,51,889,NULL,2.00,0.999600,NULL,NULL,NULL,NULL,'2018-04-27 16:39:47','2018-04-27 16:39:47',0,NULL,'2018-04-27 21:39:47','2018-05-08 17:57:46',NULL,'2018-04-27 16:39:47',1,1,NULL,1,1),(29,7,797,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-08 18:27:01','2018-05-08 18:27:01',0,NULL,'2018-05-08 23:27:01','2018-05-15 11:36:47',NULL,'2018-05-08 18:27:01',1,1,NULL,1,0),(30,7,939,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-08 18:27:01','2018-05-08 18:27:01',0,NULL,'2018-05-08 23:27:01','2018-05-15 11:36:47',NULL,'2018-05-08 18:27:01',1,1,NULL,1,0),(31,7,340,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-15 10:31:19','2018-05-15 10:31:19',0,NULL,'2018-05-15 15:31:19','2018-05-15 11:35:13',NULL,'2018-05-15 10:31:19',1,1,NULL,1,0),(32,7,339,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-15 10:33:17','2018-05-15 10:33:17',0,NULL,'2018-05-15 15:33:17','2018-05-15 11:35:13',NULL,'2018-05-15 10:33:17',1,1,NULL,1,0),(33,7,940,NULL,99.90,0.001000,NULL,NULL,NULL,NULL,'2018-05-15 11:34:24','2018-05-15 11:34:24',0,NULL,'2018-05-15 16:34:24','2018-05-15 11:35:13',NULL,'2018-05-15 11:34:24',1,1,NULL,1,1),(34,7,82,NULL,1000.00,0.332900,NULL,NULL,NULL,NULL,'2018-05-15 11:38:27','2018-05-15 11:38:27',0,NULL,'2018-05-15 16:38:27',NULL,NULL,'2018-05-15 11:38:27',1,NULL,NULL,1,1),(35,57,991,NULL,1000.00,0.333300,NULL,NULL,NULL,NULL,'2018-09-26 10:55:17','2018-09-26 10:55:17',0,NULL,'2018-09-26 15:55:17',NULL,NULL,'2018-09-26 10:55:17',1,NULL,NULL,1,1),(36,64,1062,NULL,4343.00,0.232100,NULL,NULL,NULL,NULL,'2018-11-08 10:43:23','2018-11-08 10:43:23',0,NULL,'2018-11-08 15:43:23',NULL,NULL,'2018-11-08 10:43:23',1,NULL,NULL,1,1),(37,63,1071,NULL,2099.70,0.100000,NULL,NULL,NULL,NULL,'2019-02-11 14:12:06','2019-02-11 14:12:06',0,NULL,'2019-02-11 19:12:06','2019-02-11 14:12:42',NULL,'2019-02-11 14:12:06',1,1,NULL,1,1),(38,68,1074,NULL,966.00,0.517000,NULL,NULL,NULL,NULL,'2019-02-22 17:23:06','2019-02-22 17:23:06',0,NULL,'2019-02-22 22:23:06',NULL,NULL,'2019-02-22 17:23:06',1,NULL,NULL,1,1),(39,69,1085,NULL,3000.00,0.423100,NULL,NULL,NULL,NULL,'2019-02-27 17:33:02','2019-02-27 17:33:02',0,NULL,'2019-02-27 22:33:02','2019-03-26 13:35:23',NULL,'2019-02-27 17:33:02',1,1,NULL,1,1),(40,70,1088,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-01 09:33:55','2019-03-01 09:33:55',0,NULL,'2019-03-01 14:33:55','2019-03-01 11:12:54',NULL,'2019-03-01 09:33:55',1,1,NULL,1,0),(41,70,1089,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-01 11:10:32','2019-03-01 11:10:32',0,NULL,'2019-03-01 16:10:32','2019-03-01 11:12:54',NULL,'2019-03-01 11:10:32',1,1,NULL,1,0),(42,69,1091,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-01 16:26:52','2019-03-01 16:26:52',0,NULL,'2019-03-01 21:26:52','2019-03-04 17:03:05',NULL,'2019-03-01 16:26:52',1,1,NULL,1,0),(43,69,1097,NULL,5000.00,0.367100,NULL,NULL,NULL,NULL,'2019-03-01 18:17:54','2019-03-01 18:17:54',0,NULL,'2019-03-01 23:17:54','2019-03-04 17:03:05',NULL,'2019-03-01 18:17:54',1,1,NULL,1,1),(44,69,1099,NULL,400.00,0.322000,NULL,NULL,NULL,NULL,'2019-03-04 16:59:45','2019-03-04 16:59:45',0,NULL,'2019-03-04 21:59:45',NULL,NULL,'2019-03-04 16:59:45',1,NULL,NULL,1,1),(45,69,1098,NULL,1000.00,0.895800,NULL,NULL,NULL,NULL,'2019-03-04 17:03:05','2019-03-04 17:03:05',0,NULL,'2019-03-04 22:03:05',NULL,NULL,'2019-03-04 17:03:05',1,NULL,NULL,1,1);
/*!40000 ALTER TABLE `tbl_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_province`
--

DROP TABLE IF EXISTS `tbl_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `departament_id` int(11) NOT NULL,
  `province_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`province_id`),
  KEY `fk_tbl_province_tbl_department1_idx` (`departament_id`),
  CONSTRAINT `fk_tbl_province_tbl_department1` FOREIGN KEY (`departament_id`) REFERENCES `tbl_department` (`departament_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_province`
--

LOCK TABLES `tbl_province` WRITE;
/*!40000 ALTER TABLE `tbl_province` DISABLE KEYS */;
INSERT INTO `tbl_province` VALUES (1,1,'CHACHAPOYAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(2,1,'BAGUA',NULL,NULL,NULL,NULL,NULL,NULL,1),(3,1,'BONGARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(4,1,'CONDORCANQUI',NULL,NULL,NULL,NULL,NULL,NULL,1),(5,1,'LUYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(6,1,'RODRIGUEZ DE MENDOZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(7,1,'UTCUBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(8,2,'HUARAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(9,2,'AIJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(10,2,'ANTONIO RAYMONDI',NULL,NULL,NULL,NULL,NULL,NULL,1),(11,2,'ASUNCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(12,2,'BOLOGNESI',NULL,NULL,NULL,NULL,NULL,NULL,1),(13,2,'CARHUAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(14,2,'CARLOS F. FITZCARRALD',NULL,NULL,NULL,NULL,NULL,NULL,1),(15,2,'CASMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(16,2,'CORONGO',NULL,NULL,NULL,NULL,NULL,NULL,1),(17,2,'HUARI',NULL,NULL,NULL,NULL,NULL,NULL,1),(18,2,'HUARMEY',NULL,NULL,NULL,NULL,NULL,NULL,1),(19,2,'HUAYLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(20,2,'MARISCAL LUZURIAGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(21,2,'OCROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(22,2,'PALLASCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(23,2,'POMABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(24,2,'RECUAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(25,2,'SANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(26,2,'SIHUAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(27,2,'YUNGAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(28,3,'ABANCAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(29,3,'ANDAHUAYLAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(30,3,'ANTABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(31,3,'AYMARAES',NULL,NULL,NULL,NULL,NULL,NULL,1),(32,3,'COTABAMBAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(33,3,'CHINCHEROS',NULL,NULL,NULL,NULL,NULL,NULL,1),(34,3,'GRAU',NULL,NULL,NULL,NULL,NULL,NULL,1),(35,4,'AREQUIPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(36,4,'CAMANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(37,4,'CARAVELI',NULL,NULL,NULL,NULL,NULL,NULL,1),(38,4,'CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(39,4,'CAYLLOMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(40,4,'CONDESUYOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(41,4,'ISLAY',NULL,NULL,NULL,NULL,NULL,NULL,1),(42,4,'LA UNION',NULL,NULL,NULL,NULL,NULL,NULL,1),(43,5,'HUAMANGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(44,5,'CANGALLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(45,5,'HUANCA SANCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(46,5,'HUANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(47,5,'LA MAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(48,5,'LUCANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(49,5,'PARINACOCHAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(50,5,'PAUCAR DEL SARA SARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(51,5,'SUCRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(52,5,'VICTOR FAJARDO',NULL,NULL,NULL,NULL,NULL,NULL,1),(53,5,'VILCAS HUAMAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(54,6,'CAJAMARCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(55,6,'CAJABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(56,6,'CELENDIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(57,6,'CHOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(58,6,'CONTUMAZA',NULL,NULL,NULL,NULL,NULL,NULL,1),(59,6,'CUTERVO',NULL,NULL,NULL,NULL,NULL,NULL,1),(60,6,'HUALGAYOC',NULL,NULL,NULL,NULL,NULL,NULL,1),(61,6,'JAEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(62,6,'SAN IGNACIO',NULL,NULL,NULL,NULL,NULL,NULL,1),(63,6,'SAN MARCOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(64,6,'SAN MIGUEL',NULL,NULL,NULL,NULL,NULL,NULL,1),(65,6,'SAN PABLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(66,6,'SANTA CRUZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(67,7,'CALLAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(68,8,'CUSCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(69,8,'ACOMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(70,8,'ANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(71,8,'CALCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(72,8,'CANAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(73,8,'CANCHIS',NULL,NULL,NULL,NULL,NULL,NULL,1),(74,8,'CHUMBIVILCAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(75,8,'ESPINAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(76,8,'LA CONVENCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(77,8,'PARURO',NULL,NULL,NULL,NULL,NULL,NULL,1),(78,8,'PAUCARTAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(79,8,'QUISPICANCHI',NULL,NULL,NULL,NULL,NULL,NULL,1),(80,8,'URUBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(81,9,'HUANCAVELICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(82,9,'ACOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(83,9,'ANGARAES',NULL,NULL,NULL,NULL,NULL,NULL,1),(84,9,'CASTROVIRREYNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(85,9,'CHURCAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(86,9,'HUAYTARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(87,9,'TAYACAJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(88,10,'HUANUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(89,10,'AMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(90,10,'DOS DE MAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(91,10,'HUACAYBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(92,10,'HUAMALIES',NULL,NULL,NULL,NULL,NULL,NULL,1),(93,10,'LEONCIO PRADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(94,10,'MARAÑON',NULL,NULL,NULL,NULL,NULL,NULL,1),(95,10,'PACHITEA',NULL,NULL,NULL,NULL,NULL,NULL,1),(96,10,'PUERTO INCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(97,10,'LAURICOCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(98,10,'YAROWILCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(99,11,'ICA',NULL,NULL,NULL,NULL,NULL,NULL,1),(100,11,'CHINCHA',NULL,NULL,NULL,NULL,NULL,NULL,1),(101,11,'NAZCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(102,11,'PALPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(103,11,'PISCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(104,12,'HUANCAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(105,12,'CONCEPCION',NULL,NULL,NULL,NULL,NULL,NULL,1),(106,12,'CHANCHAMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(107,12,'JAUJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(108,12,'JUNIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(109,12,'SATIPO',NULL,NULL,NULL,NULL,NULL,NULL,1),(110,12,'TARMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(111,12,'YAULI',NULL,NULL,NULL,NULL,NULL,NULL,1),(112,12,'CHUPACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(113,13,'TRUJILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(114,13,'ASCOPE',NULL,NULL,NULL,NULL,NULL,NULL,1),(115,13,'BOLIVAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(116,13,'CHEPEN',NULL,NULL,NULL,NULL,NULL,NULL,1),(117,13,'JULCAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(118,13,'OTUZCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(119,13,'PACASMAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(120,13,'PATAZ',NULL,NULL,NULL,NULL,NULL,NULL,1),(121,13,'SANCHEZ CARRION',NULL,NULL,NULL,NULL,NULL,NULL,1),(122,13,'SANTIAGO DE CHUCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(123,13,'GRAN CHIMU',NULL,NULL,NULL,NULL,NULL,NULL,1),(124,13,'VIRU',NULL,NULL,NULL,NULL,NULL,NULL,1),(125,14,'CHICLAYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(126,14,'FERREÑAFE',NULL,NULL,NULL,NULL,NULL,NULL,1),(127,14,'LAMBAYEQUE',NULL,NULL,NULL,NULL,NULL,NULL,1),(128,15,'LIMA',NULL,NULL,NULL,NULL,NULL,NULL,1),(129,15,'BARRANCA',NULL,NULL,NULL,NULL,NULL,NULL,1),(130,15,'CAJATAMBO',NULL,NULL,NULL,NULL,NULL,NULL,1),(131,15,'CANTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(132,15,'CAÑETE',NULL,NULL,NULL,NULL,NULL,NULL,1),(133,15,'HUARAL',NULL,NULL,NULL,NULL,NULL,NULL,1),(134,15,'HUAROCHIRI',NULL,NULL,NULL,NULL,NULL,NULL,1),(135,15,'HUAURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(136,15,'OYON',NULL,NULL,NULL,NULL,NULL,NULL,1),(137,15,'YAUYOS',NULL,NULL,NULL,NULL,NULL,NULL,1),(138,16,'MAYNAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(139,16,'ALTO AMAZONAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(140,16,'LORETO',NULL,NULL,NULL,NULL,NULL,NULL,1),(141,16,'MARISCAL RAMON CASTILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(142,16,'REQUENA',NULL,NULL,NULL,NULL,NULL,NULL,1),(143,16,'UCAYALI',NULL,NULL,NULL,NULL,NULL,NULL,1),(144,16,'DATEM DEL MARAÑON',NULL,NULL,NULL,NULL,NULL,NULL,1),(145,17,'TAMBOPATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(146,17,'MANU',NULL,NULL,NULL,NULL,NULL,NULL,1),(147,17,'TAHUAMANU',NULL,NULL,NULL,NULL,NULL,NULL,1),(148,18,'MARISCAL NIETO',NULL,NULL,NULL,NULL,NULL,NULL,1),(149,18,'GENERAL SANCHEZ CERRO',NULL,NULL,NULL,NULL,NULL,NULL,1),(150,18,'ILO',NULL,NULL,NULL,NULL,NULL,NULL,1),(151,19,'PASCO',NULL,NULL,NULL,NULL,NULL,NULL,1),(152,19,'DANIEL ALCIDES CARRION',NULL,NULL,NULL,NULL,NULL,NULL,1),(153,19,'OXAPAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(154,20,'PIURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(155,20,'AYABACA',NULL,NULL,NULL,NULL,NULL,NULL,1),(156,20,'HUANCABAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(157,20,'MORROPON',NULL,NULL,NULL,NULL,NULL,NULL,1),(158,20,'PAITA',NULL,NULL,NULL,NULL,NULL,NULL,1),(159,20,'SULLANA',NULL,NULL,NULL,NULL,NULL,NULL,1),(160,20,'TALARA',NULL,NULL,NULL,NULL,NULL,NULL,1),(161,20,'SECHURA',NULL,NULL,NULL,NULL,NULL,NULL,1),(162,21,'PUNO',NULL,NULL,NULL,NULL,NULL,NULL,1),(163,21,'AZANGARO',NULL,NULL,NULL,NULL,NULL,NULL,1),(164,21,'CARABAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(165,21,'CHUCUITO',NULL,NULL,NULL,NULL,NULL,NULL,1),(166,21,'EL COLLAO',NULL,NULL,NULL,NULL,NULL,NULL,1),(167,21,'HUANCANE',NULL,NULL,NULL,NULL,NULL,NULL,1),(168,21,'LAMPA',NULL,NULL,NULL,NULL,NULL,NULL,1),(169,21,'MELGAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(170,21,'MOHO',NULL,NULL,NULL,NULL,NULL,NULL,1),(171,21,'SAN ANTONIO DE PUTINA',NULL,NULL,NULL,NULL,NULL,NULL,1),(172,21,'SAN ROMAN',NULL,NULL,NULL,NULL,NULL,NULL,1),(173,21,'SANDIA',NULL,NULL,NULL,NULL,NULL,NULL,1),(174,21,'YUNGUYO',NULL,NULL,NULL,NULL,NULL,NULL,1),(175,22,'MOYOBAMBA',NULL,NULL,NULL,NULL,NULL,NULL,1),(176,22,'BELLAVISTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(177,22,'EL DORADO',NULL,NULL,NULL,NULL,NULL,NULL,1),(178,22,'HUALLAGA',NULL,NULL,NULL,NULL,NULL,NULL,1),(179,22,'LAMAS',NULL,NULL,NULL,NULL,NULL,NULL,1),(180,22,'MARISCAL CACERES',NULL,NULL,NULL,NULL,NULL,NULL,1),(181,22,'PICOTA',NULL,NULL,NULL,NULL,NULL,NULL,1),(182,22,'RIOJA',NULL,NULL,NULL,NULL,NULL,NULL,1),(183,22,'SAN MARTIN',NULL,NULL,NULL,NULL,NULL,NULL,1),(184,22,'TOCACHE',NULL,NULL,NULL,NULL,NULL,NULL,1),(185,23,'TACNA',NULL,NULL,NULL,NULL,NULL,NULL,1),(186,23,'CANDARAVE',NULL,NULL,NULL,NULL,NULL,NULL,1),(187,23,'JORGE BASADRE',NULL,NULL,NULL,NULL,NULL,NULL,1),(188,23,'TARATA',NULL,NULL,NULL,NULL,NULL,NULL,1),(189,24,'TUMBES',NULL,NULL,NULL,NULL,NULL,NULL,1),(190,24,'CONTRALMIRANTE VILLAR',NULL,NULL,NULL,NULL,NULL,NULL,1),(191,24,'ZARUMILLA',NULL,NULL,NULL,NULL,NULL,NULL,1),(192,25,'CORONEL PORTILLO',NULL,NULL,NULL,NULL,NULL,NULL,1),(193,25,'ATALAYA',NULL,NULL,NULL,NULL,NULL,NULL,1),(194,25,'PADRE ABAD',NULL,NULL,NULL,NULL,NULL,NULL,1),(195,25,'PURUS',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_schedule`
--

DROP TABLE IF EXISTS `tbl_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_schedule` (
  `idschedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `idschedule_name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idschedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schedule`
--

LOCK TABLES `tbl_schedule` WRITE;
/*!40000 ALTER TABLE `tbl_schedule` DISABLE KEYS */;
INSERT INTO `tbl_schedule` VALUES (1,'Mañana (08:00-12:00)','2018-10-11 00:16:06',NULL,NULL,1,NULL,NULL,1),(2,'Tarde (12:00-18:00)','2018-10-11 00:16:06',NULL,NULL,1,NULL,NULL,1),(3,'Noche (18:00-22:00)','2018-10-11 00:16:06',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sentinel_check`
--

DROP TABLE IF EXISTS `tbl_sentinel_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sentinel_check` (
  `sentinel_check_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`sentinel_check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sentinel_check`
--

LOCK TABLES `tbl_sentinel_check` WRITE;
/*!40000 ALTER TABLE `tbl_sentinel_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sentinel_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock_model`
--

DROP TABLE IF EXISTS `tbl_stock_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock_model` (
  `stock_model_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `stock_model_code` varchar(8) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`stock_model_id`),
  KEY `fk_tbl_stock_model_tbl_product1_idx` (`product_id`),
  KEY `fk_tbl_stock_model_tbl_color1_idx` (`color_id`),
  CONSTRAINT `fk_tbl_stock_model_tbl_color1` FOREIGN KEY (`color_id`) REFERENCES `tbl_color` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_stock_model_tbl_product1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock_model`
--

LOCK TABLES `tbl_stock_model` WRITE;
/*!40000 ALTER TABLE `tbl_stock_model` DISABLE KEYS */;
INSERT INTO `tbl_stock_model` VALUES (1,7,2,'053039','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(2,7,3,'053040','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(3,12,2,'00000','2017-12-05 12:32:39','2018-11-13 12:30:09',NULL,1,NULL,NULL,0),(4,14,4,'053069','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(5,14,5,'053068','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(6,18,1,'053032','2017-12-05 12:32:39','2018-02-02 10:38:59',NULL,1,NULL,NULL,1),(7,19,1,'053033','2017-12-05 12:32:39',NULL,NULL,1,NULL,NULL,1),(8,22,4,'053070','2017-12-05 12:32:40','2018-01-29 21:37:19',NULL,1,NULL,NULL,1),(9,42,1,'12345098','2018-01-26 15:50:27',NULL,NULL,1,NULL,NULL,1),(10,22,2,'12312312','2018-01-29 11:56:40','2018-01-29 21:37:23',NULL,1,NULL,NULL,1),(11,36,2,'123123','2018-01-29 12:00:53','2018-01-29 12:01:07',NULL,1,NULL,NULL,0),(12,16,2,'123','2018-01-29 12:02:51','2018-01-31 16:34:50',NULL,1,NULL,NULL,1),(13,43,3,'1212312','2018-02-05 01:38:39',NULL,NULL,1,NULL,NULL,1),(15,47,1,'123','2018-04-12 15:49:04',NULL,NULL,1,NULL,NULL,1),(17,49,1,'51518','2018-04-19 21:29:25',NULL,NULL,1,NULL,NULL,1),(18,49,6,'159','2018-04-24 22:51:24',NULL,NULL,1,NULL,NULL,1),(19,50,NULL,'053039','2018-04-24 23:22:08',NULL,NULL,1,NULL,NULL,1),(20,51,2,'12322','2018-04-25 16:27:22','2018-10-30 18:07:51',NULL,1,NULL,NULL,1),(21,52,1,'BITMEI01','2018-05-25 20:47:10','2018-05-25 16:22:41',NULL,1,NULL,NULL,1),(22,53,1,'0000AA00','2018-05-25 21:49:27',NULL,NULL,1,NULL,NULL,1),(23,56,1,'123123','2018-09-12 20:25:18',NULL,NULL,1,NULL,NULL,1),(24,57,2,'10000','2018-09-26 15:53:38',NULL,NULL,1,NULL,NULL,1),(25,60,1,'333333','2018-11-07 16:51:06',NULL,NULL,1,NULL,NULL,1),(26,61,3,'34545','2018-11-07 20:24:34',NULL,NULL,1,NULL,NULL,1),(27,62,3,'34545','2018-11-07 22:03:36',NULL,NULL,1,NULL,NULL,1),(28,63,2,'5664','2018-11-07 22:24:06',NULL,NULL,1,NULL,NULL,1),(29,64,1,'565656','2018-11-08 15:38:26',NULL,NULL,1,NULL,NULL,1),(30,10,1,'546445','2018-11-08 20:38:37',NULL,NULL,1,NULL,NULL,1),(31,12,3,'000','2018-11-13 17:29:04','2018-11-22 12:08:19',NULL,1,NULL,NULL,0),(32,68,2,'00025555','2019-02-22 22:06:06',NULL,NULL,1,NULL,NULL,1),(33,69,1,'100','2019-02-27 22:31:52','2019-03-26 13:41:48',NULL,1,NULL,NULL,1),(34,70,1,'100','2019-03-01 14:22:06',NULL,NULL,1,NULL,NULL,1),(35,69,2,'200','2019-03-26 18:47:38',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_stock_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store`
--

DROP TABLE IF EXISTS `tbl_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL DEFAULT '1',
  `branch_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_slug` varchar(12) DEFAULT NULL,
  `store_ubigeo` varchar(10) DEFAULT NULL,
  `store_address` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`store_id`),
  KEY `fk_tbl_store_tbl_branch` (`branch_id`),
  KEY `fk_tbl_store_tbl_district` (`district_id`),
  CONSTRAINT `fk_tbl_store_tbl_branch` FOREIGN KEY (`branch_id`) REFERENCES `tbl_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_store_tbl_district` FOREIGN KEY (`district_id`) REFERENCES `tbl_district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store`
--

LOCK TABLES `tbl_store` WRITE;
/*!40000 ALTER TABLE `tbl_store` DISABLE KEYS */;
INSERT INTO `tbl_store` VALUES (1,1265,1,'San Pablo','BR_LIM-01','456464','Av Naranjal 365','2018-10-15 11:16:55','2018-10-25 11:29:45',NULL,1,NULL,NULL,1),(2,1258,1,'Don Pepe','BR_LIM-02','435345','Av Tupac Amaru 234','2018-10-15 11:18:49','2018-10-25 11:31:22',NULL,1,NULL,NULL,1),(3,1265,1,'Pinky','BR_LIM-03','343534','Av Universitaria 354','2018-10-15 11:21:14','2018-10-25 11:31:36',NULL,1,NULL,NULL,1),(4,1276,1,'Don Pedrito','BR_LIM-04','788678','Av. San Juan 746','2018-10-15 11:21:54','2018-10-25 11:31:45',NULL,1,NULL,NULL,1),(5,1270,3,'MIster CHIP','BR_LIM-05','685645','Av Javier Prado 563','2018-10-15 11:33:03','2018-10-25 11:31:12',NULL,1,NULL,NULL,1),(6,1281,3,'RadioSHAP','BR_LIM-06','345345','Av Javier Prado 890','2018-10-15 11:33:40','2018-10-25 11:30:59',NULL,1,NULL,NULL,1),(7,682,4,'Noelia','BR_LIM-07','557567','Av La Perla 474','2018-10-15 11:44:25','2018-10-25 11:30:46',NULL,1,NULL,NULL,1),(8,679,4,'Juan Carlos','BR_LIM-08','956756','Av Miguel Grau 474','2018-10-15 11:44:50','2018-10-25 11:30:27',NULL,1,NULL,NULL,1),(9,468,10,'Ayacucho mercado','BR_LIM-09','786787','calle mercado ayacucho','2018-10-17 11:10:49','2018-10-25 11:30:12',NULL,1,NULL,NULL,1),(10,681,11,'enriquitito','Enri190','125063','calle los princesos 101','2018-11-07 14:45:46',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_dni` char(10) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_rol` enum('1','2','3') NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,NULL,'Agente Prueba','agente.prueba@bitel.pe','1','$2y$10$uxajRLmSd08NUSzIqJslw.17vHKahezEKRshOefldRoqnJEmS34sO',NULL,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(2,NULL,'Admin 1','admin1@prueba.pe','1','$2y$10$SWJ4D0graYnmMJs4Yfnd/ub5XcK22D0wekZecPKsrbl2pG5Hx4nxm',NULL,'2018-01-30 15:24:33',NULL,NULL,1,NULL,NULL,1),(3,NULL,'Editor 1','editor1@prueba.pe','2','$2y$10$PkguKN39jmoICXhPgZXqZO/nO/wHjROBla5VZkoouxwHLGmyw6Woe',NULL,'2018-01-30 15:24:33',NULL,NULL,1,NULL,NULL,1),(4,NULL,'Operador 1','operador1@prueba.pe','3','$2y$10$nbXbilm1oaoftlZ6OzxiduGC62yQgba6vXUkNRbMeiHy6Zc0cMSRW',NULL,'2018-01-30 15:24:33',NULL,NULL,1,NULL,NULL,1),(5,'10379052','Carlos Luis Euribe Solorzano','carlos.euribe@yahoo.com','1','$2y$10$jWK6.B/jdJn910j9vUeLCO9SAiwGMFp5rfq8lSWhx2yEno/lnTRmi',NULL,'2018-09-21 12:10:53','2018-09-21 12:12:10',NULL,1,NULL,NULL,1),(6,'10379056','Carlos FOX','prueba@yahoo.com','3','$2y$10$k2GfpB.h9wm7gYKh5aqJl.uUtz.gEjyjM1sgkVIKpqXZ9TAAL/PDC',NULL,'2018-09-21 12:14:29',NULL,NULL,1,NULL,NULL,1),(7,'54875555','Luis 1','luis1@gmail.com','2','$2y$10$H4fdRJCpkhAeeCuldeh9U.7k/X7a57C8MsIZJylpAWH7MphXegauS',NULL,'2018-09-21 12:17:28',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_variation_type`
--

DROP TABLE IF EXISTS `tbl_variation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_variation_type` (
  `variation_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `variation_type_name` varchar(20) NOT NULL,
  `variation_type_slug` varchar(150) DEFAULT NULL,
  `allow_plan` tinyint(1) NOT NULL DEFAULT '1',
  `allow_affiliation` tinyint(1) NOT NULL DEFAULT '1',
  `allow_contract` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`variation_type_id`),
  FULLTEXT KEY `indx_srch_variation_type_slug` (`variation_type_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_variation_type`
--

LOCK TABLES `tbl_variation_type` WRITE;
/*!40000 ALTER TABLE `tbl_variation_type` DISABLE KEYS */;
INSERT INTO `tbl_variation_type` VALUES (1,'Prepago','prepago',1,0,0,1,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1),(2,'Postpago','postpago',1,1,1,1,'2017-12-05 12:32:35',NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_variation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_order_report`
--

DROP TABLE IF EXISTS `vw_order_report`;
/*!50001 DROP VIEW IF EXISTS `vw_order_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_order_report` AS SELECT 
 1 AS `Nº Pedido`,
 1 AS `Sucursal`,
 1 AS `Distrito de Envio`,
 1 AS `Fecha Creacion`,
 1 AS `Nombre Cliente`,
 1 AS `Numero Documento`,
 1 AS `Tipo Linea`,
 1 AS `Porting Status`,
 1 AS `Servicio`,
 1 AS `Plan`,
 1 AS `Equipo`,
 1 AS `Modelo`,
 1 AS `Estado`,
 1 AS `Fecha Estado`,
 1 AS `Total`,
 1 AS `Evaluacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bitel_ecommerce'
--

--
-- Dumping routines for database 'bitel_ecommerce'
--
/*!50003 DROP PROCEDURE IF EXISTS `PA_affiliationList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_affiliationList`()
BEGIN

    SELECT affiliation_id,affiliation_name,affiliation_slug
        FROM tbl_affiliation
        ORDER BY weight, affiliation_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_affiliationSlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_affiliationSlug`(
  IN affiliation_id INT
)
BEGIN

  SELECT AFF.`affiliation_slug`
  FROM tbl_affiliation as AFF
  WHERE AFF.`active` = 1 AND AFF.`affiliation_id` = affiliation_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_branchByDistrict` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_branchByDistrict`(
  IN _district_id INT
)
BEGIN

  SELECT BR.`branch_id`
  FROM tbl_branch as BR
  INNER JOIN tbl_district as DS ON BR.`branch_id`=DS.`branch_id`
  WHERE DS.`district_id` = _district_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_brandList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_brandList`()
BEGIN

    SELECT brand_id,brand_name
        FROM tbl_brand
        ORDER BY weight, brand_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_cargarChips` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_cargarChips`()
BEGIN
DECLARE _category_id INT(11);
DECLARE _brand_id INT(11);
DECLARE _product_id INT(11);


INSERT INTO tbl_category (category_name, category_slug, allow_variation, weight, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES ('Chips', 'chips', 1, 1, NOW(), NULL, NULL, 1, NULL, NULL, 1);


INSERT INTO tbl_brand (brand_name, brand_slug, weight, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES('Bitel','Bitel',1,NOW(),NULL,NULL,1,NULL,NULL,1);

SELECT MAX(category_id) INTO _category_id FROM tbl_category;
SELECT MAX(brand_id) INTO _brand_id FROM tbl_brand;


INSERT INTO tbl_product (category_id, brand_id, product_model, product_image_url, product_keywords, product_price, product_description, product_general_specifications, product_data_sheet, product_external_memory, product_internal_memory, product_screen_size, product_camera_1, product_camera_2, product_camera_3, product_camera_4, product_processor_name, product_processor_power, product_processor_cores, product_band, product_radio, product_wlan, product_bluetooth, product_os, product_gps, product_battery, product_slug, product_tag, product_priority, created_at, updated_at, deleted_at, publish_at, created_by, updated_by, deleted_by, publish_by, active)
VALUES (_category_id, _brand_id, 'iChip','productos/chipbitel.jpg',NULL,1.00,NULL,NULL,'data_sheets/Ficha_tecnica_SAMSUNG_GALAXY_J7 PRIME.pdf',128,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chip-bitel',NULL,1,NOW(),NULL,NULL,NOW(),1,NULL,NULL,1,1);








SELECT MAX(product_id) INTO _product_id FROM tbl_product;


INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,1,1,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,4,1,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,5,1,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,8,1,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,1,2,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (2,_product_id,1,3,1,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);


INSERT INTO tbl_stock_model (product_id, color_id, stock_model_code, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (_product_id,NULL,'053039',NOW(),NULL,NULL,1,NULL,NULL,1);


INSERT INTO tbl_product_variation (variation_type_id, product_id, plan_id, affiliation_id, contract_id, product_variation_price, reason_code, product_package, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, active)
VALUES (1,_product_id,14,NULL,NULL,1.00,NULL,NULL,NOW(),NULL,NULL,1,NULL,NULL,1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_contractSlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_contractSlug`(
  IN contract_id INT
)
BEGIN

  SELECT CTR.`contract_slug`
  FROM tbl_contract as CTR
  WHERE CTR.`active` = 1 AND CTR.`contract_id` = contract_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_deptprovdistbrachList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_deptprovdistbrachList`()
BEGIN

    SELECT C.departament_id , C.departament_name,  A.province_id, B.province_name, A.district_id, A.district_name, A.branch_id, D.branch_name
FROM tbl_district A
INNER JOIN tbl_province B ON A.province_id = B.province_id
INNER JOIN tbl_department C ON C.departament_id = B.departament_id
INNER JOIN tbl_branch D ON D.branch_id = A.branch_id
WHERE A.branch_id IS NOT NULL AND
      C.active = 1 AND
      B.active = 1 AND
      A.active = 1 AND
      D.active = 1
ORDER BY C.departament_id DESC, A.district_name ASC ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_districtList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_districtList`(
)
BEGIN

  SELECT DS.`district_id`, DS.`province_id`, DS.`branch_id`, DS.`district_name`
  FROM tbl_branch as BR
  INNER JOIN tbl_district as DS ON BR.`branch_id`=DS.`branch_id`
  WHERE DS.`active`=1 AND BR.`active`=1
  ORDER BY DS.`district_name` ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_INS_storeOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_INS_storeOrder`(
  IN order_id INT,
  IN idtype_id INT,
  IN payment_method_id INT,
  IN branch_id INT,
  IN tracking_code VARCHAR(50),
  IN first_name VARCHAR(150),
  IN last_name VARCHAR(100),
  IN id_number VARCHAR(20),
  IN billing_district INT,
  IN billing_phone VARCHAR(20),
  IN source_operator VARCHAR(45),
  IN porting_phone VARCHAR(45),
  IN delivery_address VARCHAR(150),
  IN delivery_district INT,
  IN contact_email VARCHAR(150),
  IN contact_phone VARCHAR(20),
  IN service_type VARCHAR(150),
  IN affiliation_type VARCHAR(150),
  IN type_number_carry VARCHAR(8),
  IN porting_request_id VARCHAR(20),
  IN credit_status VARCHAR(100),
  IN total DECIMAL(6,2),
  IN total_igv DECIMAL(6,2),
  IN terminos_condiciones TINYINT(1),
  IN idschedule_id INT(11)
)
BEGIN
  DECLARE stored_query TEXT;
  SET last_name = IFNULL(last_name, '');
  SET billing_district = IFNULL(billing_district, 0);
  SET billing_phone = IFNULL(billing_phone, '');
  SET source_operator = IFNULL(source_operator, '');
  SET porting_phone = IFNULL(porting_phone, '');
  SET affiliation_type = IFNULL(affiliation_type, '');
  SET service_type = IFNULL(service_type, '');
  SET porting_request_id = IFNULL(porting_request_id, '');
  SET stored_query = CONCAT("
      INSERT INTO tbl_order
      (
        order_id,
        idtype_id,
        payment_method_id,
        branch_id,
        tracking_code,
        first_name,
        last_name,
        id_number,
        billing_district,
        billing_phone,
        source_operator,
        porting_phone,
        delivery_address,
        delivery_district,
        contact_email,
        contact_phone,
        service_type,
        affiliation_type,
        type_number_carry,
        porting_request_id,
        credit_status,
        total,
        total_igv,
        terminos_condiciones,
        idschedule_id
      ) values
      ( ",
        order_id, " , " ,
        idtype_id, " , " ,
        payment_method_id, " , " ,
        branch_id, " , " ,
        "'", tracking_code, "' , " ,
        "'", first_name, "' , " ,
        "'", last_name, "' , " ,
        "'", id_number, "' , " ,
        billing_district, " , " ,
        "'", billing_phone, "' , " ,
        "'", source_operator, "' , " ,
        "'", porting_phone, "' , " ,
        "'", delivery_address, "' , " ,
        delivery_district, " , " ,
        "'", contact_email, "' , " ,
        "'", contact_phone, "' , " ,
        "'", service_type, "' , " ,
        "'", affiliation_type, "' , " ,
        "'", type_number_carry, "' , " ,
        "'", porting_request_id, "' , " ,
        "'", credit_status, "' , " ,
        total, " , " ,
        total_igv, " , " ,
        terminos_condiciones, " , " ,
        idschedule_id, " ) ");

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderBackNext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderBackNext`(IN _order_id INT(11))
BEGIN

DECLARE _order_next INT(11);
DECLARE _order_back INT(11);

SELECT IFNULL(MIN(order_id),0) INTO _order_back FROM tbl_order_status_history WHERE order_id > _order_id ORDER BY created_at DESC LIMIT 1;
SELECT IFNULL(MAX(order_id),0) INTO _order_next FROM tbl_order_status_history WHERE order_id < _order_id ORDER BY created_at DESC LIMIT 1;

SELECT _order_back AS 'order_back', _order_next AS 'order_next';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderCompletedReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderCompletedReport`(IN start_date DATE, IN end_date DATE)
BEGIN

    DECLARE nombre_estado VARCHAR(50);

    SELECT order_status_name INTO nombre_estado FROM tbl_order_status WHERE order_status_id = 5;

    SELECT `Nº Pedido`, `Sucursal`, `Distrito de Envio`, `Fecha Creacion`, `Nombre Cliente`, `Numero Documento`, `Tipo Linea`,
    `Servicio`, `Plan`, CASE `Equipo` WHEN 1 THEN 'SIN EQUIPO, SOLO PLAN' ELSE `Modelo` END AS 'Equipo', `Estado`, `Fecha Estado` AS `Fecha Completado`, `Total`
    FROM vw_order_report WHERE Estado = nombre_estado AND `Fecha Creacion` BETWEEN start_date AND end_date
    ORDER BY `Fecha Estado` DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderDetail`(
  IN order_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  SET order_id = IFNULL(order_id, 0);
  SET select_query = 'SELECT
    ORD.*, OST.*, IDT.`idtype_name`, SIDT.idschedule_name,
    PMT.`method_name`, BCH.`branch_name`,
    BD.`district_name` as billing_district,
    DD.`district_name` as delivery_district,
    ORD.`created_at` as order_date,
    OSH.`created_at` as status_date';
  SET from_query = '
    FROM tbl_order as ORD
    LEFT JOIN tbl_order_status_history as OSH
      ON ORD.`order_id` = OSH.`order_id`
    LEFT JOIN tbl_order_status as OST
      ON OSH.`order_status_id` = OST.`order_status_id`
    LEFT JOIN tbl_idtype as IDT
      ON ORD.`idtype_id` = IDT.`idtype_id`
    LEFT JOIN tbl_schedule as SIDT
      ON ORD.`idschedule_id` = SIDT.`idschedule_id`
    LEFT JOIN tbl_payment_method as PMT
      ON ORD.`payment_method_id` = PMT.`payment_method_id`
    LEFT JOIN tbl_branch as BCH
      ON ORD.`branch_id` = BCH.`branch_id`
    LEFT JOIN tbl_district as BD
      ON ORD.`billing_district` = BD.`district_id`
    LEFT JOIN tbl_district as DD
      ON ORD.`delivery_district` = DD.`district_id`';
  SET where_query = CONCAT('
    WHERE ORD.`order_id` = ', order_id, '
    ORDER BY OSH.`created_at` DESC
    LIMIT 1'
  );
  SET stored_query = CONCAT(select_query, from_query, where_query);

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderItems`(
  IN order_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;

  SET order_id = IFNULL(order_id, 0);

  SET select_query = 'SELECT
    OIT.*, PRM.*, PRD.*,
    STM.`stock_model_id`, STM.`stock_model_code`,
    PRD_VAR.`variation_type_id`,
    PRD_VAR.`product_variation_id`,
    IFNULL(PRD_VAR.`product_variation_price`, PRD.`product_price`) as product_price,
    PRD_VAR.`reason_code`, PRD_VAR.`product_package`,
    BRN.`brand_name`, BRN.`brand_slug`,
    PLN.`plan_name`, PLN.`plan_slug`,
    PLN.`plan_price`, PLN.`product_code`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`,
    CLR.`color_id`, CLR.`color_name`, CLR.`color_slug`,
    ROUND(
      IF(
        PRD_VAR.`product_variation_id` IS NOT NULL,
        IF(
          PRM.promo_discount IS NOT NULL,
          IFNULL(PRM.promo_price, ((1-PRM.promo_discount) * PRD_VAR.`product_variation_price`)),
          IFNULL(PRM.promo_price, PRD_VAR.`product_variation_price`)
        ),
        IF(
          PRM.promo_discount IS NOT NULL,
          IFNULL(PRM.promo_price, ((1-PRM.promo_discount) * PRD.`product_price`)),
          IFNULL(PRM.promo_price, PRD.`product_price`)
        )
      )
    ,2) as promo_price';

  SET from_query = CONCAT('
    FROM tbl_order_item as OIT
    INNER JOIN tbl_stock_model as STM
      ON OIT.`stock_model_id` = STM.`stock_model_id`
    INNER JOIN tbl_product as PRD
      ON STM.`product_id` = PRD.`product_id`
    INNER JOIN tbl_brand as BRN
      ON BRN.`brand_id` = PRD.`brand_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD_VAR.`product_variation_id` = OIT.`product_variation_id`
    LEFT JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    LEFT JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    LEFT JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`
    LEFT JOIN tbl_promo as PRM
      ON PRM.promo_id = OIT.promo_id
  ');

  SET where_query = CONCAT('
    WHERE OIT.`order_id` = ',
    order_id
  );

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderReport`(IN start_date DATE, IN end_date DATE)
BEGIN

    SELECT `Nº Pedido`, `Sucursal`, `Distrito de Envio`, `Fecha Creacion`, `Nombre Cliente`, `Numero Documento`, `Tipo Linea`,
    `Porting Status`, `Servicio`, `Plan`, CASE `Equipo` WHEN 1 THEN 'SIN EQUIPO, SOLO PLAN' ELSE `Modelo` END AS 'Equipo', `Estado`, `Total`, `Evaluacion`
    FROM vw_order_report WHERE  `Fecha Creacion` BETWEEN start_date AND end_date
    ORDER BY `Fecha Creacion` DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderSearch`(
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5),
  IN start_date DATE,
  IN finish_date DATE
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  DECLARE extras_query TEXT;
  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  SET pag_total_by_page = IFNULL(pag_total_by_page, 0);
  SET pag_actual = IFNULL(pag_actual, 0);

  SET sort_by = IFNULL(sort_by, '');
  SET sort_direction = IFNULL(sort_direction, '');
  SET select_query = 'SELECT
    ORD.*, OIT.*,
    OSH.`order_status_history_id`,
    OST.`order_status_name`,
    IDT.`idtype_name`,
    BCH.`branch_name`,
    ORD.`created_at`,
    IFNULL(ORD.`updated_at`, ORD.`created_at`) as updated_date';
  SET from_query = '
    FROM tbl_order as ORD
    INNER JOIN (
      SELECT OSH.*
      FROM tbl_order_status_history as OSH
      INNER JOIN (
        SELECT MAX(OSH.`order_status_history_id`) as `order_status_history_id`
        FROM tbl_order_status_history as OSH
        GROUP BY OSH.`order_id`
      ) sOSH ON OSH.`order_status_history_id` = sOSH.`order_status_history_id`
    ) OSH ON ORD.`order_id` = OSH.`order_id`
    INNER JOIN tbl_order_status as OST
      ON OSH.`order_status_id` = OST.`order_status_id`
    INNER JOIN (
      SELECT
        OIT.*,
        VAR.`variation_type_name`,
        PLN.`plan_name`,
        AFF.`affiliation_name`,
        PRO.`product_model`
      FROM tbl_order_item as OIT
      LEFT JOIN tbl_product_variation as PRD_VAR
        ON OIT.`product_variation_id` = PRD_VAR.`product_variation_id`
      LEFT JOIN tbl_variation_type as VAR
        ON PRD_VAR.`variation_type_id` = VAR.`variation_type_id`
      LEFT JOIN tbl_plan as PLN
        ON PRD_VAR.`plan_id` = PLN.`plan_id`
      LEFT JOIN tbl_affiliation as AFF
        ON PRD_VAR.`affiliation_id` = AFF.`affiliation_id`
      LEFT JOIN tbl_product as PRO
        ON OIT.`product_variation_id` = PRD_VAR.`product_variation_id` AND
           PRD_VAR.`product_id` = PRO.`product_id`
      ORDER BY ISNULL(PRD_VAR.`product_variation_id`)
    ) OIT ON ORD.`order_id` = OIT.`order_id`
    LEFT JOIN tbl_idtype as IDT
      ON ORD.`idtype_id` = IDT.`idtype_id`
    LEFT JOIN tbl_branch as BCH
      ON ORD.`branch_id` = BCH.`branch_id`';
  SET where_query = CONCAT('
  WHERE ORD.created_at BETWEEN \'', start_date, '\' AND \'', finish_date, '\'
  ');
  SET extras_query = 'ORDER BY ORD.`created_at` DESC';

  IF (sort_by <> '') THEN
    SET extras_query = CONCAT(extras_query, ', ORD.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET extras_query = CONCAT(extras_query, " ", sort_direction);
    END IF;
  END IF;

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET extras_query = CONCAT(extras_query, ' LIMIT ', pag_ini, ',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET extras_query = CONCAT(extras_query, ' LIMIT ', pag_total_by_page);
    END IF;
  END IF;
  SET stored_query = CONCAT(select_query, from_query, where_query, extras_query);

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_orderStatusHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_orderStatusHistory`(
  IN order_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  SET order_id = IFNULL(order_id, 0);
  SET select_query = 'SELECT
    OSH.*, OST.`order_status_name`, OST.`weight`, OST.`weight2`';
  SET from_query = '
    FROM tbl_order_status_history as OSH
    LEFT JOIN tbl_order_status as OST
      ON OSH.`order_status_id` = OST.`order_status_id`';
  SET where_query = CONCAT('
    WHERE OSH.`order_id` = ', order_id, '
    ORDER BY OSH.`created_at` DESC'
  );
  SET stored_query = CONCAT(select_query, from_query, where_query);

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_planList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_planList`(
  _plan_type INT
)
BEGIN

  SET _plan_type = IFNULL(_plan_type, -1);

  SELECT *
    FROM tbl_plan
  WHERE IF(_plan_type > 0, plan_type = _plan_type, 1)
  ORDER BY weight, plan_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_planSlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_planSlug`(
  IN plan_id INT
)
BEGIN

  SELECT PLN.`plan_slug`
  FROM tbl_plan as PLN
  WHERE PLN.`active` = 1 AND PLN.`plan_id` = plan_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_procesarInfoComercial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_procesarInfoComercial`()
BEGIN
	DECLARE done INT DEFAULT 0;
	DECLARE _plan_id INT(11);
	DECLARE _plan_data_cap VARCHAR(255);
	DECLARE _plan_unlimited_calls INT(11);
	DECLARE _plan_unlimited_rpb TINYINT(1);
	DECLARE _plan_unlimited_sms INT(11);
	DECLARE _plan_unlimited_whatsapp TINYINT(1);
	DECLARE _plan_free_facebook TINYINT(1);

	DECLARE _descripcion_calls VARCHAR(150);
	DECLARE _descripcion_sms VARCHAR(150);
	DECLARE _descripcion_internet VARCHAR(150);
	DECLARE _descripcion_bitel VARCHAR(150);
	DECLARE _descripcion_facebook VARCHAR(150);
	DECLARE _descripcion_whatsapp VARCHAR(150);

	DECLARE _img_plan_data_cap VARCHAR(150);
	DECLARE _img_plan_unlimited_calls VARCHAR(150);
	DECLARE _img_plan_unlimited_rpb VARCHAR(150);
	DECLARE _img_plan_unlimited_sms VARCHAR(150);
	DECLARE _img_plan_unlimited_whatsapp VARCHAR(150);
	DECLARE _img_plan_free_facebook VARCHAR(150);

	DECLARE cur1 CURSOR FOR SELECT plan_id, plan_data_cap, plan_unlimited_calls, plan_unlimited_rpb, plan_unlimited_sms, plan_unlimited_whatsapp, plan_free_facebook
		FROM tbl_plan;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	OPEN cur1;
	read_loop: LOOP
	FETCH cur1 INTO _plan_id, _plan_data_cap, _plan_unlimited_calls, _plan_unlimited_rpb, _plan_unlimited_sms, _plan_unlimited_whatsapp, _plan_free_facebook;
		IF done = 1 THEN
	            LEAVE read_loop;
	        END IF;


		SET _img_plan_unlimited_calls = '/plan_info/llamadas.svg';
		IF (_plan_unlimited_calls = 1) THEN
			SET _descripcion_calls = 'Llamadas ilimitadas (**)';
		ELSE
			IF (_plan_unlimited_calls > 1) THEN
				SET _descripcion_calls = 'min de Llamadas';
			END IF;
		END IF;


		SET _img_plan_unlimited_sms = '/plan_info/sms.svg';
		IF (_plan_unlimited_sms = 1) THEN
			SET _descripcion_sms = 'SMS ilimitado (**)';
		ELSE
			IF (_plan_unlimited_sms > 1) THEN
				SET _descripcion_sms = 'SMS todo operador';
			END IF;
		END IF;


		SET _img_plan_data_cap = '/plan_info/internet.svg';
		IF (_plan_data_cap != "") THEN
			SET _descripcion_internet = _plan_data_cap;
		ELSE
			SET _descripcion_internet = '';
		END IF;


		SET _img_plan_unlimited_rpb = '/plan_info/rpb.svg';
		IF (_plan_unlimited_rpb = 1) THEN
			SET _descripcion_bitel = 'Llamada todo Bitel Gratis';
		ELSE
			SET _descripcion_bitel = 'Llamada todo Bitel Gratis';
		END IF;


		SET _img_plan_free_facebook = '/plan_info/facebook.svg';
		IF (_plan_free_facebook = 1) THEN
			SET _descripcion_facebook = 'Facebook Flex Gratis';
		ELSE
			SET _descripcion_facebook = 'Facebook Flex Gratis';
		END IF;


		SET _img_plan_unlimited_whatsapp = '/plan_info/whatsapp.svg';
		IF (_plan_unlimited_whatsapp = 1) THEN
			SET _descripcion_whatsapp = 'WhatsApp Ilimitado';
		ELSE
			SET _descripcion_whatsapp = 'WhatsApp Ilimitado';
		END IF;


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_unlimited_calls, _descripcion_calls, _descripcion_calls, _plan_unlimited_calls, NOW(), 1);


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_unlimited_sms, _descripcion_sms, _descripcion_sms, _plan_unlimited_sms, NOW(), 1);


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_data_cap, _descripcion_internet, _descripcion_internet, 1, NOW(), 1);


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_unlimited_rpb, _descripcion_bitel, _descripcion_bitel, _plan_unlimited_rpb, NOW(), 1);


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_free_facebook, _descripcion_facebook, _descripcion_facebook, _plan_free_facebook, NOW(), 1);


		INSERT INTO tbl_plan_infocomercial (plan_id, plan_infocomercial_img_url, plan_infocomercial_descripcion, plan_infocomercial_informacion_adicional, plan_infocomercial_flag_cantidad, created_at, active)
		VALUES(_plan_id, _img_plan_unlimited_whatsapp, _descripcion_whatsapp, _descripcion_whatsapp, _plan_unlimited_whatsapp, NOW(), 1);

	END LOOP;
	CLOSE cur1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productBestSellers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productBestSellers`(IN start_date DATE, IN end_date DATE)
BEGIN

	SELECT * FROM (
	SELECT
		cat.category_name AS 'Categoria',
		brn.brand_name AS 'Marca',
		prd.product_model AS 'Modelo',
		ord.affiliation_type AS 'Tipo Linea',
		mdl.stock_model_code AS 'Stock Model',
		pln.plan_name AS 'Plan',
		COUNT(mdl.stock_model_code) AS 'Cantidad'
	FROM tbl_order ord
		JOIN tbl_branch bch ON ord.branch_id = bch.branch_id
		JOIN tbl_district dst ON ord.delivery_district = dst.district_id
		JOIN (tbl_order_item itm
				LEFT JOIN (tbl_product_variation var JOIN tbl_plan pln ON var.plan_id = pln.plan_id) ON itm.product_variation_id = var.product_variation_id
				JOIN (tbl_stock_model mdl JOIN (tbl_product prd
				JOIN tbl_category cat ON prd.category_id = cat.category_id
				JOIN tbl_brand brn ON prd.brand_id = brn.brand_id) ON mdl.product_id = prd.product_id)  ON itm.stock_model_id = mdl.stock_model_id)
			ON ord.order_id = itm.order_id
	WHERE ord.created_at BETWEEN start_date AND end_date
	GROUP BY stock_model_code, ord.affiliation_type, pln.plan_name) res
	ORDER BY res.Cantidad DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productBySlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productBySlug`(
  IN brand_slug VARCHAR(150),
  IN product_slug VARCHAR(150),
  IN color_slug VARCHAR(150)
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;

  SET brand_slug = IFNULL(brand_slug, '');
  SET product_slug = IFNULL(product_slug, '');
  SET color_slug = IFNULL(color_slug, '');


  SET select_idpromo_segment = '
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ';

  SET select_query = 'SELECT
    DISTINCT(PRD.product_id),
    BRN.`brand_id`, BRN.`brand_name`,BRN.`brand_slug`';

  SET from_query = '
    FROM tbl_product as PRD
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`';

  SET where_query = CONCAT('
    WHERE PRD.`active` = 1
      AND BRN.`brand_slug` = "', brand_slug, '"
      AND PRD.`product_slug` = "', product_slug, '"'
  );

  IF (color_slug <> '') THEN
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      INNER JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
    SET where_query = CONCAT(where_query, '
      AND CLR.color_slug = "', color_slug, '"');
  ELSE
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      LEFT JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
  END IF;

  SET select_query = CONCAT(select_query, ',
    PRM.*, PRD.*,
    ROUND(IFNULL(PRM.promo_price,0),2) as promo_price');
  SET from_query = CONCAT(from_query, '
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  SET where_query = CONCAT(where_query, ' LIMIT 1');

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productByStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productByStock`(
  IN stock_model_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;

  SET stock_model_id = IFNULL(stock_model_id, 0);


  SET select_idpromo_segment = '
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ';

  SET select_query = 'SELECT
    DISTINCT(PRD.product_id), PRM.*, PRD.*,
    STM.`stock_model_id`, STM.`stock_model_code`,
    BRN.`brand_name`, BRN.`brand_slug`,
    CLR.`color_name`, CLR.`color_slug`,
    ROUND(IFNULL(PRM.promo_price,0),2) as promo_price';

  SET from_query = CONCAT('
    FROM tbl_stock_model as STM
    INNER JOIN tbl_product as PRD
      ON STM.`product_id` = PRD.`product_id`
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  SET where_query = CONCAT('
    WHERE STM.`stock_model_id` = ', stock_model_id
  );

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productCount`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN product_ignore_ids VARCHAR(50)
)
BEGIN

  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;

  SET cad_condition = "";

  SET product_categories = IFNULL(product_categories, '');
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_string_search = IFNULL(product_string_search,'');
  SET product_ignore_ids = IFNULL(product_ignore_ids,'');


  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;


  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) <= ',product_price_end);
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;


  SET select_idpromo_segment = '
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ';

  SET select_segment = 'SELECT COUNT(PRD.`product_id`)';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');


  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')  )
    ');
  ELSE

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1');
  END IF;

  SET cad_condition = CONCAT(cad_condition, '
    GROUP BY PRD.product_id ');


  SET stored_query = CONCAT('SELECT COUNT(*) as total_products FROM (', stored_query, cad_condition,') as t');



  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productCountPostpago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productCountPostpago`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN affiliation_id INT,
  IN plan_id INT,
  IN contract_id INT,
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN product_tag VARCHAR(255),
  IN product_ignore_ids VARCHAR(50)
)
BEGIN

  DECLARE variation_type_id INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;


  SET variation_type_id = 2;
  SET cad_condition = "";

  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_categories = IFNULL(product_categories, '');
  SET plan_id = IFNULL(plan_id, 7);
  SET affiliation_id = IFNULL(affiliation_id, 1);
  SET contract_id = IFNULL(contract_id, 1);
  SET product_string_search = IFNULL(product_string_search, '');
  SET product_tag = IFNULL(product_tag, '');
  SET product_ignore_ids = IFNULL(product_ignore_ids, '');

  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands, ')');
  END IF;

  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (plan_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.plan_id = ', plan_id);
  ELSE
	IF (plan_id = 0) THEN
		SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.best_plan = 1');
	END IF;
  END IF;

  IF (affiliation_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.affiliation_id = ', affiliation_id);
  END IF;

  IF (contract_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.contract_id = ', contract_id);
  END IF;

  IF (product_tag <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_tag IN (', product_tag, ')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRD_VAR.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_segment = 'SELECT COUNT(PRD.product_id) as total_products';
  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    -- Filter by affiliation
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    -- Filter by plan
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    -- Filter by contract
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');
  ELSE

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND PRD_VAR.`best_variation` = 1
        ');
  END IF;

  SET cad_condition = CONCAT(cad_condition, '
    AND PRD_VAR.`variation_type_id` = ',variation_type_id,'
    ');
  SET cad_condition = CONCAT(cad_condition, '
    GROUP BY PRD.product_id ');

  SET stored_query = CONCAT('select count(*) as total_products from (',stored_query, cad_condition, ') as t');

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productCountPrepago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productCountPrepago`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN plan_id INT,
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN product_tag VARCHAR(255),
  IN product_ignore_ids VARCHAR(50)
)
BEGIN

  DECLARE variation_type_id INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE select_segment TEXT;
  DECLARE join_segment TEXT;

  SET variation_type_id = 1;
  SET cad_condition = "";

  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET plan_id = IFNULL(plan_id, 14);
  SET product_categories = IFNULL(product_categories, '');
  SET product_string_search = IFNULL(product_string_search,'');
  SET product_tag = IFNULL(product_tag, '');
  SET product_ignore_ids = IFNULL(product_ignore_ids,'');

  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;

  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (plan_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PLN.plan_id = ', plan_id);
  ELSE

	IF (plan_id = 0) THEN
		SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.best_plan = 1');
	END IF;
  END IF;

  IF (product_tag <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_tag IN (', product_tag, ')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_segment = 'SELECT COUNT(PRD.product_id) as total_products';
  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    -- Filter by plan
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');
  ELSE

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1');
  END IF;
  SET cad_condition = CONCAT(cad_condition, '
    AND PRD_VAR.`variation_type_id` = ',variation_type_id);
  SET cad_condition = CONCAT(cad_condition, '
    GROUP BY PRD.product_id ');

  SET stored_query = CONCAT('select count(*) as total_products from (',stored_query, cad_condition, ') as t');

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productCountPromo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productCountPromo`(
  IN variation_type_id INT,
  IN plan_pre_id INT,
  IN plan_post_id INT,
  IN affiliation_id INT,
  IN contract_id INT,
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255)
)
BEGIN

  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE cond_variations TEXT;

  SET cad_condition = "";

  SET variation_type_id = IFNULL(variation_type_id, -1);
  SET plan_pre_id = IFNULL(plan_pre_id, -1);
  SET plan_post_id = IFNULL(plan_post_id, -1);
  SET affiliation_id = IFNULL(affiliation_id, -1);
  SET contract_id = IFNULL(contract_id, -1);
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_string_search = IFNULL(product_string_search, '');


  IF (variation_type_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` IS NOT NULL');
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` = ', variation_type_id);
  END IF;


  IF (product_price_ini > 0 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;

  IF (plan_pre_id > 0 AND plan_post_id > 0 AND affiliation_id > 0 AND contract_id > 0) THEN
    SET cond_variations = CONCAT('
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
      )
    ');
  ELSE
    SET cond_variations = '
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
        )
      )
    ';
  END IF;


  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          ', cond_variations, '
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');

  SET select_segment = 'SELECT COUNT(PRM.promo_id) as total_promos';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN tbl_stock_model as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');


  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');
  ELSE

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1');
  END IF;

  IF (plan_pre_id > 0 AND plan_post_id > 0 AND affiliation_id > 0 AND contract_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, '
      AND STM.`stock_model_id` IS NOT NULL
      AND PRM.`promo_id` IS NOT NULL
      AND PRM.`publish_at` IS NOT NULL

      GROUP BY PRM.`promo_id`');
  ELSE
    SET cad_condition = CONCAT(cad_condition, '
      AND STM.`stock_model_id` IS NOT NULL
      AND PRM.`promo_id` IS NOT NULL
      AND PRM.`publish_at` IS NOT NULL

      GROUP BY PRM.`promo_id`');
  END IF;


  SET stored_query = CONCAT('select count(*) as total_promos from (',stored_query, cad_condition, ') as t');


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productDetail`(
  IN product_id INT
)
BEGIN
  DECLARE select_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE where_segment TEXT;
  DECLARE stored_query TEXT;

  SET select_segment = 'SELECT
    PRD.*,
    PRD.`product_image_url` as picture_url,
    BRN.`brand_name`, BRN.`brand_slug`,
    CAT.`category_name`, CAT.`category_id`,
    STM.`stock_model_id`, STM.`stock_model_code`,
    CLR.`color_id`, CLR.`color_name`';

  SET join_segment = '
    FROM tbl_product as PRD
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    INNER JOIN tbl_category as CAT
      ON PRD.`category_id` = CAT.`category_id`
    LEFT JOIN tbl_stock_model as STM
      ON PRD.`product_id` = STM.`product_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`';

  SET where_segment = CONCAT('
    WHERE PRD.`product_id` = ',
    product_id, '
  ');

  SET stored_query = CONCAT(select_segment, join_segment, where_segment);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productImagesByStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productImagesByStock`(
  IN stock_model_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;

  SET stock_model_id = IFNULL(stock_model_id, 0);

  SET select_query = 'SELECT
    stock_model_id,
    product_image_url ';

  SET from_query = 'FROM `tbl_product_image`';

  SET where_query = CONCAT('
    WHERE active = 1
      AND stock_model_id = ', stock_model_id, '
    ORDER BY weight ASC, product_image_id ASC'
  );

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productPostpagoBySlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productPostpagoBySlug`(
  IN brand_slug VARCHAR(150),
  IN product_slug VARCHAR(150),
  IN affiliation_slug VARCHAR(150),
  IN plan_slug VARCHAR(150),
  IN contract_slug VARCHAR(150),
  IN color_slug VARCHAR(150)
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  DECLARE variation_type_id INT;
  SET brand_slug = IFNULL(brand_slug, '');
  SET product_slug = IFNULL(product_slug, '');
  SET affiliation_slug = IFNULL(affiliation_slug, '');
  SET plan_slug = IFNULL(plan_slug, '');
  SET contract_slug = IFNULL(contract_slug, '');
  SET color_slug = IFNULL(color_slug, '');
  SET variation_type_id = 2;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_query = 'SELECT
    DISTINCT(PRD.product_id),
    PRM.*,
    PRD.*,
    PRD_VAR.`variation_type_id`,
    PRD_VAR.`product_variation_id`,
    PRD_VAR.`product_variation_price` as product_price,
    SUBSTRING(`product_variation_price`, 1, (POSITION("." IN `product_variation_price`) - 1)) AS product_price_integer,
    SUBSTRING(`product_variation_price`, (POSITION("." IN `product_variation_price`) + 1), 2) AS product_price_decimal,
    BRN.`brand_id`, BRN.`brand_name`, BRN.`brand_slug`,
    AFF.`affiliation_id`, AFF.`affiliation_name`, AFF.`affiliation_slug`,
    PLN.`plan_id`, PLN.`plan_name`, PLN.`plan_slug`, PLN.`plan_price`,
    SUBSTRING(`plan_price`, 1, (POSITION("." IN `plan_price`) - 1)) AS plan_price_integer,
    SUBSTRING(`plan_price`, (POSITION("." IN `plan_price`) + 1), 2) AS plan_price_decimal,
    REVERSE(SUBSTRING(REVERSE(`plan_name`), POSITION(" " IN REVERSE(`plan_name`)) + 1, LENGTH(`plan_name`))) AS plan_name_name,
    CTR.`contract_id`, CTR.`contract_name`, CTR.`contract_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,
    SUBSTRING(ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2), 1, (POSITION("." IN ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2)) - 1)) AS promo_price_integer,
    SUBSTRING(ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2), (POSITION("." IN ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2)) + 1), 2) AS promo_price_decimal';
  SET from_query = '
    FROM tbl_product as PRD
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`';
  SET where_query = CONCAT('
    WHERE PRD.`active` = 1
      AND PRD_VAR.`active` = 1
      AND BRN.`brand_slug` = "', brand_slug, '"
      AND PRD.`product_slug` = "', product_slug, '"
      AND AFF.`affiliation_slug` = "', affiliation_slug, '"
      AND PLN.`plan_slug` = "', plan_slug, '"
      AND CTR.`contract_slug` = "', contract_slug, '"'
  );
  IF (color_slug <> '') THEN
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      INNER JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
    SET where_query = CONCAT(where_query, '
      AND CLR.color_slug = "', color_slug, '"');
  ELSE
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      LEFT JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
  END IF;
  SET from_query = CONCAT(from_query, '
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');
  SET where_query = CONCAT(where_query, '
    AND PRD_VAR.`variation_type_id` = 2');
  SET where_query = CONCAT(where_query, ' LIMIT 1');
  SET stored_query = CONCAT(select_query, from_query, where_query);

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productPostpagoByStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productPostpagoByStock`(
  IN stock_model_id INT,
  IN product_variation_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  DECLARE variation_type_id INT;

  SET stock_model_id = IFNULL(stock_model_id, 0);
  SET product_variation_id = IFNULL(product_variation_id, 0);
  SET variation_type_id = 2;


  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');

  SET select_query = 'SELECT
    DISTINCT(PRD.product_id), PRM.*, PRD.*,
    STM.`stock_model_id`, STM.`stock_model_code`,
    PRD_VAR.`variation_type_id`,
    PRD_VAR.`product_variation_id`,
    PRD_VAR.`product_variation_price` as product_price,
    PRD_VAR.`reason_code`, PRD_VAR.`product_package`,
    BRN.`brand_name`, BRN.`brand_slug`,
    PLN.`plan_name`, PLN.`plan_slug`,
    PLN.`plan_price`, PLN.`product_code`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`,
    CLR.`color_name`, CLR.`color_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price';

  SET from_query = CONCAT('
    FROM tbl_stock_model as STM
    INNER JOIN tbl_product as PRD
      ON STM.`product_id` = PRD.`product_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  SET where_query = CONCAT('
    WHERE STM.`stock_model_id` = ', stock_model_id, '
      AND PRD_VAR.`product_variation_id` = ', product_variation_id
  );

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productPrepagoBySlug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productPrepagoBySlug`(
  IN brand_slug VARCHAR(150),
  IN product_slug VARCHAR(150),
  IN plan_slug VARCHAR(150),
  IN color_slug VARCHAR(150)
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  DECLARE variation_type_id INT;
  SET brand_slug = IFNULL(brand_slug, '');
  SET product_slug = IFNULL(product_slug, '');
  SET plan_slug = IFNULL(plan_slug, '');
  SET color_slug = IFNULL(color_slug, '');
  SET variation_type_id = 1;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_query = 'SELECT
    DISTINCT(PRD.product_id),
    PRM.*, PRD.*, PRD_VAR.`product_variation_id`,
    PRD_VAR.`product_variation_price` as product_price,
    SUBSTRING(`product_variation_price`, 1, (POSITION("." IN `product_variation_price`) - 1)) AS product_price_integer,
    SUBSTRING(`product_variation_price`, (POSITION("." IN `product_variation_price`) + 1), 2) AS product_price_decimal,
    BRN.`brand_id`, BRN.`brand_name`, BRN.`brand_slug`,
    PLN.`plan_id`, PLN.`plan_name`, PLN.`plan_slug`,
    SUBSTRING(`plan_price`, 1, (POSITION("." IN `plan_price`) - 1)) AS plan_price_integer,
    SUBSTRING(`plan_price`, (POSITION("." IN `plan_price`) + 1), 2) AS plan_price_decimal,
    REVERSE(SUBSTRING(REVERSE(`plan_name`), POSITION(" " IN REVERSE(`plan_name`)) + 1, LENGTH(`plan_name`))) AS plan_name_name,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,
    SUBSTRING(ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2), 1, (POSITION("." IN ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2)) - 1)) AS promo_price_integer,
    SUBSTRING(ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2), (POSITION("." IN ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2)) + 1), 2) AS promo_price_decimal';
  SET from_query = '
    FROM tbl_product as PRD
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`';
  SET where_query = CONCAT('
    WHERE PRD.`active` = 1
      AND PRD_VAR.`active` = 1
      AND BRN.`brand_slug` = "', brand_slug, '"
      AND PRD.`product_slug` = "', product_slug, '"
      AND PLN.`plan_slug` = "', plan_slug, '"'
  );
  IF (color_slug <> '') THEN
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      INNER JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
    SET where_query = CONCAT(where_query, '
      AND CLR.color_slug = "', color_slug, '"');
  ELSE
    SET select_query = CONCAT(select_query, ',
      STM.`stock_model_id`, STM.`stock_model_code`,
      CLR.`color_id`, CLR.`color_name`');
    SET from_query = CONCAT(from_query, '
      LEFT JOIN tbl_stock_model as STM
        ON (PRD.`product_id` = STM.`product_id` AND STM.`active` = 1)
      LEFT JOIN tbl_color as CLR
        ON STM.`color_id` = CLR.`color_id`');
  END IF;
  SET from_query = CONCAT(from_query, '
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');
  SET where_query = CONCAT(where_query, '
    AND PRD_VAR.`variation_type_id` = 1');
  SET where_query = CONCAT(where_query, ' LIMIT 1');
  SET stored_query = CONCAT(select_query, from_query, where_query);

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productPrepagoByStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productPrepagoByStock`(
  IN stock_model_id INT,
  IN product_variation_id INT
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;
  DECLARE variation_type_id INT;

  SET stock_model_id = IFNULL(stock_model_id, 0);
  SET product_variation_id = IFNULL(product_variation_id, 0);
  SET variation_type_id = 1;


  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');

  SET select_query = 'SELECT
    DISTINCT(PRD.product_id), PRM.*, PRD.*,
    STM.`stock_model_id`, STM.`stock_model_code`,
    PRD_VAR.`variation_type_id`,
    PRD_VAR.`product_variation_id`,
    PRD_VAR.`product_variation_price` as product_price,
    PRD_VAR.`reason_code`, PRD_VAR.`product_package`,
    BRN.`brand_name`, BRN.`brand_slug`,
    PLN.`plan_name`, PLN.`plan_slug`,
    PLN.`plan_price`, PLN.`product_code`,
    CLR.`color_name`, CLR.`color_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price';

  SET from_query = CONCAT('
    FROM tbl_stock_model as STM
    INNER JOIN tbl_product as PRD
      ON STM.`product_id` = PRD.`product_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  SET where_query = CONCAT('
    WHERE STM.`stock_model_id` = ', stock_model_id, '
      AND PRD_VAR.`product_variation_id` = ', product_variation_id
  );

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productSearch`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5),
  IN product_ignore_ids VARCHAR(50)
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;

  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET product_categories = IFNULL(product_categories, '');
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 8);
  SET product_string_search = IFNULL(product_string_search,'');
  SET sort_by = IFNULL(sort_by,'');
  SET sort_direction = IFNULL(sort_direction,'');
  SET product_ignore_ids = IFNULL(product_ignore_ids,'');


  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)) <= ',product_price_end);
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;


  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;


  SET select_idpromo_segment = '
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
    ';

  SET select_segment = 'SELECT
    DISTINCT(PRD.`product_id`),
    PRM.*, PRD.*, STM.`stock_model_id`,
    PRD.`product_image_url` AS picture_url,
    BRN.`brand_name`, BRN.`brand_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD.product_price)), IFNULL(PRM.promo_price,PRD.product_price)),2) as promo_price,';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');


  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR PRD.product_model like ''%',product_string_search,'%''
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%'' )
    ');

    SET cad_order = ' ORDER BY (mscore + pscore) DESC';
    SET cad_order_comma = ', ';
  ELSE

    SET stored_query = CONCAT(select_segment, '
      1 as pscore, 1 as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1');

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;

  SET cad_order = CONCAT(cad_order, cad_order_comma, '
    ISNULL(STM.`stock_model_id`),
    PRD.`product_priority` DESC,
    ISNULL(PRM.`publish_at`),
    PRM.`publish_at` DESC,
    ISNULL(PRD.`product_tag`),
    PRD.`publish_at` DESC');

  SET cad_condition = CONCAT(cad_condition, '
    GROUP BY PRD.product_id ');


  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ', PRD.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  ELSE
    SET cad_order = '';
  END IF;


  SET stored_query = CONCAT(stored_query, cad_condition, cad_order);


  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_ini,',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_total_by_page);
    END IF;
  END IF;

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productSearchPostpago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productSearchPostpago`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN affiliation_id INT,
  IN plan_id INT,
  IN contract_id INT,
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5),
  IN product_tag VARCHAR(255),
  IN product_ignore_ids VARCHAR(50),
  IN only_best_variation INT
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE variation_type_id INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;

  SET variation_type_id = 2;
  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_categories = IFNULL(product_categories, '');
  SET plan_id = IFNULL(plan_id, 7);
  SET affiliation_id = IFNULL(affiliation_id, 1);
  SET contract_id = IFNULL(contract_id, 1);
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 8);
  SET product_string_search = IFNULL(product_string_search, '');
  SET sort_by = IFNULL(sort_by, '');
  SET sort_direction = IFNULL(sort_direction, '');
  SET product_tag = IFNULL(product_tag, '');
  SET product_ignore_ids = IFNULL(product_ignore_ids, '');

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;

  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (plan_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.plan_id = ', plan_id);
  END IF;

  IF (affiliation_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.affiliation_id = ', affiliation_id);
  END IF;

  IF (contract_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.contract_id = ', contract_id);
  END IF;

  IF (product_tag <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_tag IN (', product_tag, ')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
                                      variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_segment = 'SELECT
    DISTINCT(PRD.`product_id`), PRD.*, PRD.`product_image_url` AS picture_url, PRD_VAR.`product_variation_id`, PRD_VAR.`product_variation_price` as product_price,
    PRM.promo_id, PRM.promo_price, PRM.promo_discount, PRM.promo_add_product_price, PRM.promo_add_product_discount, PRM.promo_title, PRM.promo_description, PRM.`publish_at`,
    STM.`stock_model_id`,
    PLN.`plan_id`, PLN.`plan_name`,
    PLN.`plan_price`, PLN.`plan_slug`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`, CTR.`contract_id`,
    BRN.`brand_name`, BRN.`brand_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,';
  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    -- Filter by affiliation
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    -- Filter by plan
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    -- Filter by contract
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`, PRD.`product_description_postpaid`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
                              join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND PLN.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`, PRD.`product_description_postpaid`) AGAINST(''',product_string_search,''')
        OR PRD.product_model like ''%',product_string_search,'%''
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');

    SET cad_order = ' ORDER BY (mscore + pscore) DESC';
    SET cad_order_comma = ', ';
  ELSE

    SET stored_query = CONCAT(select_segment, '
      1 as pscore, 1 as mscore',
                              join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
	AND PLN.`active` = 1
        AND PRD_VAR.`active` = 1');

    IF only_best_variation > 0 THEN
      SET stored_query = CONCAT(stored_query, ' AND PRD_VAR.`best_variation` = 1');
    END IF;

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;

  SET cad_order = CONCAT(cad_order, cad_order_comma, '
  ISNULL(STM.`stock_model_id`),
  PRD.`product_priority` DESC,
  PRD_VAR.`product_variation_price` ASC,
  ISNULL(PRM.`publish_at`),
  PRM.`publish_at` DESC,
  ISNULL(PRD.`product_tag`),
  PRD.`publish_at` DESC');

  SET cad_condition = CONCAT(cad_condition, '
    AND PRD_VAR.`variation_type_id` = ',variation_type_id,'
    GROUP BY PRD.product_id
    ');

  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ', PRD.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  ELSE
    SET cad_order = '';
  END IF;

  SET stored_query = CONCAT(stored_query, cad_condition, cad_order);

  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_ini,',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_total_by_page);
    END IF;
  END IF;

  SET @consulta = stored_query;
   PREPARE exec_strquery FROM @consulta;
   EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productSearchPrepago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productSearchPrepago`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN plan_id INT,
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5),
  IN product_tag VARCHAR(255),
  IN product_ignore_ids VARCHAR(50)
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE variation_type_id INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE join_segment TEXT;

  SET variation_type_id = 1;
  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET plan_id = IFNULL(plan_id, 0);
  SET product_categories = IFNULL(product_categories, '');
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 8);
  SET product_string_search = IFNULL(product_string_search,'');
  SET sort_by = IFNULL(sort_by,'');
  SET sort_direction = IFNULL(sort_direction,'');
  SET product_tag = IFNULL(product_tag, '');
  SET product_ignore_ids = IFNULL(product_ignore_ids,'');

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  IF (product_price_ini > 0 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN

    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;

  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (plan_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PLN.plan_id = ', plan_id);
  ELSE

	IF (plan_id = 0) THEN
		SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.best_plan = 1');
	END IF;
  END IF;

  IF (product_tag <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_tag IN (', product_tag, ')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
              variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  SET select_segment = 'SELECT
    DISTINCT(PRD.`product_id`),
    PRM.*, PRD.*, STM.`stock_model_id`,
    PRD.`product_image_url` AS picture_url,
    PRD_VAR.`product_variation_id`,
    PRD_VAR.`product_variation_price` as product_price,
    PLN.`plan_id`, PLN.`plan_name`, PLN.`plan_price`, PLN.`plan_slug`,
    BRN.`brand_name`, BRN.`brand_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,';
  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    -- Filter by plan
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR PRD.product_model like ''%',product_string_search,'%''
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');

    SET cad_order = ' ORDER BY (mscore + pscore) DESC';
    SET cad_order_comma = ', ';
  ELSE

    SET stored_query = CONCAT(select_segment, '
      1 as pscore, 1 as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1');

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;
  IF (plan_id > 0) THEN
  SET cad_order = CONCAT(cad_order, cad_order_comma, '
    ISNULL(STM.`stock_model_id`),
    PRD.`product_priority` DESC,
    ISNULL(PRM.`publish_at`),
    PRM.`publish_at` DESC,
    ISNULL(PRD.`product_tag`),
    PRD.`publish_at` DESC');
  END IF;
  IF (plan_id = 0) THEN
  SET cad_order = CONCAT(cad_order, cad_order_comma, '
    ISNULL(STM.`stock_model_id`),
    PRD.`product_priority` DESC,
    PRD_VAR.`product_variation_price` ASC,
    ISNULL(PRM.`publish_at`),
    PRM.`publish_at` DESC,
    ISNULL(PRD.`product_tag`),
    PRD.`publish_at` DESC');
  END IF;
  SET cad_condition = CONCAT(cad_condition, '
    AND PRD_VAR.`variation_type_id` = ', variation_type_id);

  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ', PRD.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  ELSE
    SET cad_order = '';
  END IF;
  SET cad_condition = CONCAT(cad_condition, '
    GROUP BY PRD.product_id ');

  SET stored_query = CONCAT(stored_query, cad_condition, cad_order);

  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_ini,',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_total_by_page);
    END IF;
  END IF;

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productSearchPromo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productSearchPromo`(
  IN variation_type_id INT,
  IN plan_pre_id INT,
  IN plan_post_id INT,
  IN affiliation_id INT,
  IN contract_id INT,
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5)
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE cond_variations TEXT;

  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET variation_type_id = IFNULL(variation_type_id, -1);
  SET plan_pre_id = IFNULL(plan_pre_id, -1);
  SET plan_post_id = IFNULL(plan_post_id, -1);
  SET affiliation_id = IFNULL(affiliation_id, -1);
  SET contract_id = IFNULL(contract_id, -1);
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 12);
  SET product_string_search = IFNULL(product_string_search, '');
  SET sort_by = IFNULL(sort_by, '');
  SET sort_direction = IFNULL(sort_direction, '');


  IF (variation_type_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` IS NOT NULL');
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` = ', variation_type_id);
  END IF;

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  IF (product_price_ini > 0 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;


  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

  IF (plan_pre_id > 0 AND plan_post_id > 0 AND affiliation_id > 0 AND contract_id > 0) THEN
    SET cond_variations = CONCAT('
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
      )
    ');
  ELSE
    SET cond_variations = '
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
        )
      )
    ';
  END IF;


  SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          ', cond_variations, '
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');

  SET select_segment = 'SELECT
    PRM.*, PRD.*, PRD_VAR.*,
    PRD.`product_image_url` AS picture_url,
    STM.`stock_model_id`,
    PLN.`plan_id`, PLN.`plan_name`,
    PLN.`plan_price`, PLN.`plan_slug`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`,
    BRN.`brand_name`, BRN.`brand_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    LEFT JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    LEFT JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN tbl_stock_model as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');


  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR PRD.product_model like ''%',product_string_search,'%''
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');

    SET cad_order = ' ORDER BY (mscore + pscore) DESC';
    SET cad_order_comma = ', ';
  ELSE

    SET stored_query = CONCAT(select_segment, '
      1 as pscore, 1 as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1');

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;

  SET cad_order = CONCAT(cad_order, cad_order_comma, '
    PRD.`product_priority` DESC,
    PRM.`publish_at` DESC,
    ISNULL(PRD.`product_tag`),
    PRD.`publish_at` DESC');

  SET cad_condition = CONCAT(cad_condition, '
    AND STM.`stock_model_id` IS NOT NULL
    AND PRM.`promo_id` IS NOT NULL
    AND PRM.`publish_at` IS NOT NULL
    GROUP BY PRM.`promo_id`');


  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ',', 'PRM.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  END IF;


  SET stored_query = CONCAT(stored_query, cad_condition, cad_order);


  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_ini,',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_total_by_page);
    END IF;
  END IF;

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productStockModels` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productStockModels`(
    IN product_id INT,
    IN color_required BOOLEAN
)
BEGIN
  DECLARE stored_query TEXT;
  DECLARE select_query TEXT;
  DECLARE from_query TEXT;
  DECLARE where_query TEXT;

  SET product_id = IFNULL(product_id, 0);
  SET color_required = IFNULL(color_required, 0);

  SET select_query = 'SELECT
    STM.`stock_model_id`,
    STM.`stock_model_code`,
    CLR.`color_id`,
    CLR.`color_name`,
    CLR.`color_hexcode`,
    CLR.`color_slug` ';

  SET from_query = '
    FROM tbl_stock_model as STM
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`';

  SET where_query = CONCAT('
    WHERE STM.`active` = 1
      AND STM.`product_id` = ', product_id);

  IF (color_required > 0) THEN
    SET where_query = CONCAT(where_query, '
      AND CLR.`color_id` IS NOT NULL'
    );
  END IF;

  SET stored_query = CONCAT(select_query, from_query, where_query);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_productVariationDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_productVariationDetail`(
  IN product_variation_id INT
)
BEGIN
  DECLARE select_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE where_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE stored_query TEXT;

  SET select_segment = 'SELECT
    PRD.*, PRM.`promo_id`,
    PRD.`product_image_url` as picture_url,
    BRN.`brand_name`, BRN.`brand_slug`,
    CAT.`category_name`, CAT.`category_id`,
    STM.`stock_model_id`, STM.`stock_model_code`,
    CLR.`color_id`, CLR.`color_name`,
    PRD_VAR.`product_variation_price` as product_price,
    PLN.`plan_id`, PLN.`plan_name`,
    PLN.`plan_price`, PLN.`plan_slug`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price';

  SET select_idpromo_segment = '
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = PRD_VAR.`variation_type_id`
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    INNER JOIN tbl_category as CAT
      ON PRD.`category_id` = CAT.`category_id`
    LEFT JOIN tbl_stock_model as STM
      ON PRD.`product_id` = STM.`product_id`
    LEFT JOIN tbl_color as CLR
      ON STM.`color_id` = CLR.`color_id`
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    LEFT JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    LEFT JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    LEFT JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
        AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )
  ');

  SET where_segment = CONCAT('
    WHERE PRD_VAR.`product_variation_id` = ',
    product_variation_id, '
  ');

  SET stored_query = CONCAT(select_segment, join_segment, where_segment);


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_scheduleList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_scheduleList`()
BEGIN
		SELECT idschedule_id, idschedule_name
		FROM tbl_schedule
		ORDER BY idschedule_id ASC;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_storeOrderMaxID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_storeOrderMaxID`()
BEGIN

  DECLARE stored_query TEXT;

  SET stored_query = "SELECT CASE WHEN MAX(order_id) is null then 1 else MAX(order_id)+1  end as order_id FROM tbl_order";


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_storesByBranch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_storesByBranch`(IN _branch_id INT(11))
BEGIN
		SELECT store_id, store_name FROM tbl_store WHERE branch_id = _branch_id AND active = 1 ORDER BY store_id ASC;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_variationTypeList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PA_variationTypeList`()
BEGIN

    SELECT *
        FROM tbl_variation_type
        ORDER BY weight ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_order_report`
--

/*!50001 DROP VIEW IF EXISTS `vw_order_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_order_report` AS select `ord`.`order_id` AS `Nº Pedido`,`bch`.`branch_name` AS `Sucursal`,`dst`.`district_name` AS `Distrito de Envio`,`ord`.`created_at` AS `Fecha Creacion`,concat(`ord`.`first_name`,' ',`ord`.`last_name`) AS `Nombre Cliente`,`ord`.`id_number` AS `Numero Documento`,`ord`.`affiliation_type` AS `Tipo Linea`,`ord`.`porting_status_desc` AS `Porting Status`,`ord`.`service_type` AS `Servicio`,`pln`.`plan_name` AS `Plan`,`itm`.`equipo_plan` AS `Equipo`,`pro`.`product_model` AS `Modelo`,(select `ors`.`order_status_name` from (`tbl_order_status_history` `osh` join `tbl_order_status` `ors` on((`osh`.`order_status_id` = `ors`.`order_status_id`))) where (`osh`.`order_id` = `ord`.`order_id`) order by `osh`.`created_at` desc limit 1) AS `Estado`,(select `osh`.`created_at` from (`tbl_order_status_history` `osh` join `tbl_order_status` `ors` on((`osh`.`order_status_id` = `ors`.`order_status_id`))) where (`osh`.`order_id` = `ord`.`order_id`) order by `osh`.`created_at` desc limit 1) AS `Fecha Estado`,`ord`.`total_igv` AS `Total`,`ord`.`credit_status` AS `Evaluacion` from (((`tbl_order` `ord` join `tbl_branch` `bch` on((`ord`.`branch_id` = `bch`.`branch_id`))) join `tbl_district` `dst` on((`ord`.`delivery_district` = `dst`.`district_id`))) join (`tbl_order_item` `itm` left join ((`tbl_product_variation` `var` join `tbl_plan` `pln` on((`var`.`plan_id` = `pln`.`plan_id`))) join `tbl_product` `pro` on((`var`.`product_id` = `pro`.`product_id`))) on((`itm`.`product_variation_id` = `var`.`product_variation_id`))) on((`ord`.`order_id` = `itm`.`order_id`))) where ((`ord`.`service_type` = 'Accesorios') or ((`ord`.`service_type` <> 'Accesorios') and (`pln`.`plan_name` is not null))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-26 13:20:18