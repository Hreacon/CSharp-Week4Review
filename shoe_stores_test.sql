USE [master]
GO
/****** Object:  Database [shoe_stores_test]    Script Date: 3/10/2016 13:22:20 ******/
CREATE DATABASE [shoe_stores_test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shoe_stores_test', FILENAME = N'C:\Users\Roarke\shoe_stores_test.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shoe_stores_test_log', FILENAME = N'C:\Users\Roarke\shoe_stores_test_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shoe_stores_test] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shoe_stores_test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shoe_stores_test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shoe_stores_test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shoe_stores_test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shoe_stores_test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shoe_stores_test] SET ARITHABORT OFF 
GO
ALTER DATABASE [shoe_stores_test] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [shoe_stores_test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shoe_stores_test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shoe_stores_test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shoe_stores_test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shoe_stores_test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shoe_stores_test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shoe_stores_test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shoe_stores_test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shoe_stores_test] SET  ENABLE_BROKER 
GO
ALTER DATABASE [shoe_stores_test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shoe_stores_test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shoe_stores_test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shoe_stores_test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shoe_stores_test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shoe_stores_test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shoe_stores_test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shoe_stores_test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shoe_stores_test] SET  MULTI_USER 
GO
ALTER DATABASE [shoe_stores_test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shoe_stores_test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shoe_stores_test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shoe_stores_test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [shoe_stores_test] SET DELAYED_DURABILITY = DISABLED 
GO
USE [shoe_stores_test]
GO
/****** Object:  Table [dbo].[brand_store]    Script Date: 3/10/2016 13:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand_store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NULL,
	[brand_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/10/2016 13:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stores]    Script Date: 3/10/2016 13:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[brand_store] ON 

INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (1, 1151, 755)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (2, 1157, 761)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (3, 1163, 767)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (4, 1169, 773)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (5, 1175, 779)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (6, 1181, 785)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (7, 1187, 791)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (8, 1193, 797)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (9, 1199, 803)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (10, 1205, 809)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (11, 1211, 815)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (12, 1217, 821)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (13, 1223, 827)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (14, 1229, 833)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (15, 1235, 839)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (16, 1241, 845)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (17, 1247, 851)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (18, 1253, 857)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (19, 1259, 863)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (20, 1265, 869)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (21, 1271, 875)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (22, 1277, 881)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (23, 1283, 887)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (24, 1289, 893)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (25, 1295, 899)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (26, 1301, 905)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (27, 0, 907)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (28, 1307, 912)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (29, 0, 914)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (30, 1313, 919)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (31, 0, 921)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (32, 1319, 926)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (33, 0, 928)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (34, 1325, 933)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (35, 0, 935)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (36, 1331, 940)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (37, 0, 942)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (38, 1337, 947)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (39, 0, 949)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (40, 1343, 954)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (41, 0, 956)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (42, 1349, 961)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (43, 0, 963)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (44, 1355, 968)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (45, 0, 970)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (46, 1361, 975)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (47, 0, 977)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (48, 1367, 982)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (49, 0, 984)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (50, 1373, 989)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (51, 0, 991)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (52, 1379, 996)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (53, 0, 998)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (54, 1385, 1003)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (55, 0, 1005)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (56, 1391, 1010)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (57, 0, 1012)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (58, 1397, 1017)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (59, 1400, 1019)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (60, 1404, 1024)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (61, 1407, 1026)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (62, 1411, 1031)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (63, 1414, 1033)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (64, 1418, 1038)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (65, 1421, 1040)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (66, 1425, 1045)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (67, 1428, 1047)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (68, 1432, 1052)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (69, 1435, 1054)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (70, 1439, 1059)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (71, 1442, 1061)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (72, 1446, 1066)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (73, 1449, 1068)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (74, 1453, 1073)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (75, 1456, 1075)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (76, 1460, 1080)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (77, 1463, 1082)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (78, 1467, 1087)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (79, 1470, 1089)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (80, 1474, 1094)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (81, 1477, 1096)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (82, 1481, 1101)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (83, 1484, 1103)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (84, 1488, 1108)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (85, 1491, 1110)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (87, 1496, 1116)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (88, 1499, 1118)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (90, 1504, 1124)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (91, 1507, 1126)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (93, 1512, 1132)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (94, 1515, 1134)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (96, 1520, 1140)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (97, 1523, 1142)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (99, 1528, 1148)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (100, 1531, 1150)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (102, 1536, 1156)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (103, 1539, 1158)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (105, 1544, 1164)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (106, 1547, 1166)
GO
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (108, 1552, 1172)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (109, 1555, 1174)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (111, 1560, 1180)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (112, 1563, 1182)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (114, 1568, 1188)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (115, 1571, 1190)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (117, 1576, 1196)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (118, 1579, 1198)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (120, 1584, 1204)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (121, 1587, 1206)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (123, 1592, 1212)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (124, 1595, 1214)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (126, 1600, 1220)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (127, 1603, 1222)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (129, 1608, 1228)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (130, 1611, 1230)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (132, 1616, 1236)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (133, 1619, 1238)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (135, 1624, 1244)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (136, 1627, 1246)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (138, 1632, 1252)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (139, 1635, 1254)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (141, 1640, 1260)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (142, 1643, 1262)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (144, 1648, 1268)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (145, 1651, 1270)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (147, 1656, 1276)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (148, 1659, 1278)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (150, 1664, 1284)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (151, 1667, 1286)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (153, 1672, 1292)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (154, 1675, 1294)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (156, 1680, 1300)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (157, 1683, 1302)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (159, 1688, 1308)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (160, 1691, 1310)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (162, 1696, 1316)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (163, 1699, 1318)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (165, 1704, 1324)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (166, 1707, 1326)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (168, 1712, 1332)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (169, 1715, 1334)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (171, 1720, 1340)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (172, 1723, 1342)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (174, 1728, 1348)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (175, 1731, 1350)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (177, 1736, 1356)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (178, 1739, 1358)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (180, 1744, 1364)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (181, 1747, 1366)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (183, 1752, 1372)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (184, 1755, 1374)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (186, 1760, 1380)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (187, 1763, 1382)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (189, 1768, 1388)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (190, 1771, 1390)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (192, 1776, 1396)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (193, 1779, 1398)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (195, 1785, 1405)
INSERT [dbo].[brand_store] ([id], [store_id], [brand_id]) VALUES (196, 1788, 1407)
SET IDENTITY_INSERT [dbo].[brand_store] OFF
USE [master]
GO
ALTER DATABASE [shoe_stores_test] SET  READ_WRITE 
GO
