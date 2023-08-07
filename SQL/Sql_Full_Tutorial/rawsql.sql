--create database rawsql

use rawsql

-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table  dbo.Countries 
--

DROP TABLE IF EXISTS  dbo.Countries ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Countries  (
   COUNTRY_ID  varchar(2) DEFAULT NULL,
   COUNTRY_NAME  varchar(24) DEFAULT NULL,
   REGION_ID  decimal(2,1) DEFAULT NULL
) 

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Countries 
--

--LOCK TABLES  dbo.Countries  WRITE;
/*!40000 ALTER TABLE  dbo.Countries  DISABLE KEYS */;
INSERT INTO  dbo.Countries  VALUES ('AR','Argentina',2.0),('AU','Australia',3.0),('BE','Belgium',1.0),('BR','Brazil',2.0),('CA','Canada',2.0),('CH','Switzerland',1.0),('CN','China',3.0),('DE','Germany',1.0),('DK','Denmark',1.0),('EG','Egypt',4.0),('FR','France',1.0),('HK','HongKong',3.0),('IL','Israel',4.0),('IN','India',3.0),('IT','Italy',1.0),('JP','Japan',3.0),('KW','Kuwait',4.0),('MX','Mexico',2.0),('NG','Nigeria',4.0),('NL','Netherlands',1.0),('SG','Singapore',3.0),('UK','United Kingdom',1.0),('US','United States of America',2.0),('ZM','Zambia',4.0),('ZW','Zimbabwe',4.0);
/*!40000 ALTER TABLE  dbo.Countries  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Departments 
--

DROP TABLE IF EXISTS  dbo.Departments ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Departments  (
   DEPARTMENT_ID  decimal(4,1) DEFAULT NULL,
   DEPARTMENT_NAME  varchar(20) DEFAULT NULL,
   MANAGER_ID  varchar(5) DEFAULT NULL,
   LOCATION_ID  decimal(5,1) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Departments 
--

--LOCK TABLES  dbo.Departments  WRITE;
/*!40000 ALTER TABLE  dbo.Departments  DISABLE KEYS */;
INSERT INTO  dbo.Departments  VALUES (10.0,'Administration','200.0',1700.0),(12.0,'DATA ANALYSIS','112.0',1000.0),(20.0,'Marketing','201.0',1800.0),(30.0,'Purchasing','114.0',1700.0),(40.0,'Human Resources','203.0',2400.0),(50.0,'Shipping','121.0',1500.0),(60.0,'IT','103.0',1400.0),(70.0,'Public Relations','204.0',2700.0),(71.0,'HIIT','176.0',1400.0),(80.0,'Sales','145.0',2500.0),(90.0,'Executive','100.0',1700.0),(100.0,'Finance','108.0',1700.0),(110.0,'Accounting','205.0',1700.0),(120.0,'Treasury','',1700.0),(130.0,'Corporate Tax','',1700.0),(140.0,'Control And Credit','',1700.0),(150.0,'Shareholder Services','',1700.0),(160.0,'Benefits','',1700.0),(170.0,'Manufacturing','',1700.0),(180.0,'Construction','',1700.0),(190.0,'Contracting','',1700.0),(200.0,'Operations','',1700.0),(210.0,'IT Support','',1700.0),(220.0,'NOC','',1700.0),(230.0,'IT Helpdesk','',1700.0),(240.0,'Government Sales','',1700.0),(250.0,'Retail Sales','',1700.0),(260.0,'Recruiting','',1700.0),(270.0,'Payroll','',1700.0),(280.0,'Data Analysis','',1700.0);
/*!40000 ALTER TABLE  dbo.Departments  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.EMP 
--

DROP TABLE IF EXISTS  dbo.EMP ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.EMP  (
   LAST_NAME  varchar(11) DEFAULT NULL,
   DEPARTMENT_NAME  varchar(16) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.EMP 
--

--LOCK TABLES  dbo.EMP  WRITE;
/*!40000 ALTER TABLE  dbo.EMP  DISABLE KEYS */;
INSERT INTO  dbo.EMP  VALUES ('King','Executive'),('Kochhar','Executive'),('De Haan','Executive'),('Hunold','IT'),('Ernst','IT'),('Austin','IT'),('Pataballa','IT'),('Lorentz','IT'),('Greenberg','Finance'),('Faviet','Finance'),('Chen','Finance'),('Sciarra','Finance'),('Urman','Finance'),('Popp','Finance'),('Raphaely','Purchasing'),('Khoo','Purchasing'),('Baida','Purchasing'),('Tobias','Purchasing'),('Himuro','Purchasing'),('Colmenares','Purchasing'),('Weiss','Shipping'),('Fripp','Shipping'),('Kaufling','Shipping'),('Vollman','Shipping'),('Mourgos','Shipping'),('Nayer','Shipping'),('Mikkilineni','Shipping'),('Landry','Shipping'),('Markle','Shipping'),('Bissot','Shipping'),('Atkinson','Shipping'),('Marlow','Shipping'),('Olson','Shipping'),('Mallin','Shipping'),('Rogers','Shipping'),('Gee','Shipping'),('Philtanker','Shipping'),('Ladwig','Shipping'),('Stiles','Shipping'),('Seo','Shipping'),('Patel','Shipping'),('Rajs','Shipping'),('Davies','Shipping'),('Matos','Shipping'),('Vargas','Shipping'),('Russell','Sales'),('Partners','Sales'),('Errazuriz','Sales'),('Cambrault','Sales'),('Zlotkey','Sales'),('Tucker','Sales'),('Bernstein','Sales'),('Hall','Sales'),('Olsen','Sales'),('Cambrault','Sales'),('Tuvault','Sales'),('King','Sales'),('Sully','Sales'),('McEwen','Sales'),('Smith','Sales'),('Doran','Sales'),('Sewall','Sales'),('Vishney','Sales'),('Greene','Sales'),('Marvins','Sales'),('Lee','Sales'),('Ande','Sales'),('Banda','Sales'),('Ozer','Sales'),('Bloom','Sales'),('Fox','Sales'),('Smith','Sales'),('Bates','Sales'),('Kumar','Sales'),('Abel','Sales'),('Hutton','Sales'),('Taylor','Sales'),('Livingston','Sales'),('Johnson','Sales'),('Taylor','Shipping'),('Fleaur','Shipping'),('Sullivan','Shipping'),('Geoni','Shipping'),('Sarchand','Shipping'),('Bull','Shipping'),('Dellinger','Shipping'),('Cabrio','Shipping'),('Chung','Shipping'),('Dilly','Shipping'),('Gates','Shipping'),('Perkins','Shipping'),('Bell','Shipping'),('Everett','Shipping'),('McCain','Shipping'),('Jones','Shipping'),('Walsh','Shipping'),('Feeney','Shipping'),('OConnell','Shipping'),('Grant','Shipping'),('Whalen','Administration');
/*!40000 ALTER TABLE  dbo.EMP  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.EMPLOY 
--

DROP TABLE IF EXISTS  dbo.EMPLOY ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.EMPLOY  (
   EMPLOYEE_ID  decimal(5,1) DEFAULT NULL,
   FIRST_NAME  varchar(11) DEFAULT NULL,
   LAST_NAME  varchar(11) DEFAULT NULL,
   EMAIL  varchar(8) DEFAULT NULL,
   PHONE_NUMBER  varchar(18) DEFAULT NULL,
   HIRE_DATE  varchar(19) DEFAULT NULL,
   JOB_ID  varchar(10) DEFAULT NULL,
   SALARY  decimal(6,1) DEFAULT NULL,
   COMMISSION_PCT  varchar(10) DEFAULT NULL,
   MANAGER_ID  varchar(5) DEFAULT NULL,
   DEPARTMENT_ID  decimal(3,1) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.EMPLOY 
--

--LOCK TABLES  dbo.EMPLOY  WRITE;
/*!40000 ALTER TABLE  dbo.EMPLOY  DISABLE KEYS */;
INSERT INTO  dbo.EMPLOY  VALUES (153.0,'Christopher','Olsen','COLSEN','011.44.1344.498718','30-MAR-98','SA_REP',50000.0,'','145.0',90.0),(154.0,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','09-DEC-98','SA_REP',50000.0,'','145.0',90.0),(155.0,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','23-NOV-99','SA_REP',50000.0,'','145.0',90.0),(156.0,'Janette','King','JKING','011.44.1345.429268','30-JAN-96','SA_REP',50000.0,'','146.0',90.0),(157.0,'Patrick','Sully','PSULLY','011.44.1345.929268','04-MAR-96','SA_REP',50000.0,'','146.0',90.0),(158.0,'Allan','McEwen','AMCEWEN','011.44.1345.829268','01-AUG-96','SA_REP',50000.0,'','146.0',90.0),(159.0,'Lindsey','Smith','LSMITH','011.44.1345.729268','10-MAR-97','SA_REP',50000.0,'','146.0',90.0),(160.0,'Louise','Doran','LDORAN','011.44.1345.629268','15-DEC-97','SA_REP',50000.0,'','146.0',90.0),(161.0,'Sarath','Sewall','SSEWALL','011.44.1345.529268','03-NOV-98','SA_REP',50000.0,'','146.0',90.0),(162.0,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11-NOV-97','SA_REP',50000.0,'','147.0',90.0),(163.0,'Danielle','Greene','DGREENE','011.44.1346.229268','19-MAR-99','SA_REP',50000.0,'','147.0',90.0),(164.0,'Mattea','Marvins','MMARVINS','011.44.1346.329268','24-JAN-00','SA_REP',50000.0,'','147.0',90.0),(165.0,'David','Lee','DLEE','011.44.1346.529268','23-FEB-00','SA_REP',50000.0,'','147.0',90.0),(166.0,'Sundar','Ande','SANDE','011.44.1346.629268','24-MAR-00','SA_REP',50000.0,'','147.0',90.0),(167.0,'Amit','Banda','ABANDA','011.44.1346.729268','21-APR-00','SA_REP',50000.0,'','147.0',90.0),(168.0,'Lisa','Ozer','LOZER','011.44.1343.929268','11-MAR-97','SA_REP',50000.0,'','148.0',90.0),(169.0,'Harrison','Bloom','HBLOOM','011.44.1343.829268','23-MAR-98','SA_REP',50000.0,'','148.0',90.0),(170.0,'Tayler','Fox','TFOX','011.44.1343.729268','24-JAN-98','SA_REP',50000.0,'','148.0',90.0),(171.0,'William','Smith','WSMITH','011.44.1343.629268','23-FEB-99','SA_REP',50000.0,'','148.0',90.0),(172.0,'Elizabeth','Bates','EBATES','011.44.1343.529268','24-MAR-99','SA_REP',50000.0,'','148.0',90.0),(173.0,'Sundita','Kumar','SKUMAR','011.44.1343.329268','21-APR-00','SA_REP',50000.0,'','148.0',90.0),(174.0,'Ellen','Abel','EABEL','011.44.1644.429267','11-MAY-96','SA_REP',50000.0,'','149.0',90.0),(175.0,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','19-MAR-97','SA_REP',50000.0,'','149.0',90.0),(176.0,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','24-MAR-98','SA_REP',50000.0,'','149.0',90.0),(177.0,'Jack','Livingston','JLIVINGS','011.44.1644.429264','23-APR-98','SA_REP',50000.0,'','149.0',90.0),(178.0,'Kimberely','Grant','KGRANT','011.44.1644.429263','24-MAY-99','SA_REP',50000.0,'','149.0',90.0),(179.0,'Charles','Johnson','CJOHNSON','011.44.1644.429262','04-JAN-00','SA_REP',50000.0,'','149.0',90.0),(180.0,'Winston','Taylor','WTAYLOR','650.507.9876','24-JAN-98','SH_CLERK',50000.0,'','120.0',90.0),(181.0,'Jean','Fleaur','JFLEAUR','650.507.9877','23-FEB-98','SH_CLERK',50000.0,'','120.0',90.0),(182.0,'Martha','Sullivan','MSULLIVA','650.507.9878','21-JUN-99','SH_CLERK',50000.0,'','120.0',90.0),(183.0,'Girard','Geoni','GGEONI','650.507.9879','03-FEB-00','SH_CLERK',50000.0,'','120.0',90.0),(184.0,'Nandita','Sarchand','NSARCHAN','650.509.1876','27-JAN-96','SH_CLERK',50000.0,'','121.0',90.0),(185.0,'Alexis','Bull','ABULL','650.509.2876','20-FEB-97','SH_CLERK',50000.0,'','121.0',90.0),(186.0,'Julia','Dellinger','JDELLING','650.509.3876','24-JUN-98','SH_CLERK',50000.0,'','121.0',90.0),(187.0,'Anthony','Cabrio','ACABRIO','650.509.4876','07-FEB-99','SH_CLERK',50000.0,'','121.0',90.0),(188.0,'Kelly','Chung','KCHUNG','650.505.1876','14-JUN-97','SH_CLERK',50000.0,'','122.0',90.0),(189.0,'Jennifer','Dilly','JDILLY','650.505.2876','13-AUG-97','SH_CLERK',50000.0,'','122.0',90.0),(190.0,'Timothy','Gates','TGATES','650.505.3876','11-JUL-98','SH_CLERK',50000.0,'','122.0',90.0),(191.0,'Randall','Perkins','RPERKINS','650.505.4876','19-DEC-99','SH_CLERK',50000.0,'','122.0',90.0),(192.0,'Sarah','Bell','SBELL','650.501.1876','04-FEB-96','SH_CLERK',50000.0,'','123.0',90.0),(193.0,'Britney','Everett','BEVERETT','650.501.2876','03-MAR-97','SH_CLERK',50000.0,'','123.0',90.0),(194.0,'Samuel','McCain','SMCCAIN','650.501.3876','01-JUL-98','SH_CLERK',50000.0,'','123.0',90.0),(195.0,'Vance','Jones','VJONES','650.501.4876','17-MAR-99','SH_CLERK',50000.0,'','123.0',90.0),(196.0,'Alana','Walsh','AWALSH','650.507.9811','24-APR-98','SH_CLERK',50000.0,'','124.0',90.0),(197.0,'Kevin','Feeney','KFEENEY','650.507.9822','23-MAY-98','SH_CLERK',50000.0,'','124.0',90.0),(198.0,'Donald','OConnell','DOCONNEL','650.507.9833','21-JUN-99','SH_CLERK',50000.0,'','124.0',90.0),(199.0,'Douglas','Grant','DGRANT','650.507.9844','13-JAN-00','SH_CLERK',50000.0,'','124.0',90.0),(200.0,'Jennifer','Whalen','JWHALEN','515.123.4444','17-SEP-87','AD_ASST',50000.0,'','101.0',90.0),(201.0,'Michael','Hartstein','MHARTSTE','515.123.5555','17-FEB-96','MK_MAN',50000.0,'','100.0',90.0),(202.0,'Pat','Fay','PFAY','603.123.6666','17-AUG-97','MK_REP',50000.0,'','201.0',90.0),(203.0,'Susan','Mavris','SMAVRIS','515.123.7777','07-JUN-94','HR_REP',50000.0,'','101.0',90.0),(204.0,'Hermann','Baer','HBAER','515.123.8888','07-JUN-94','PR_REP',50000.0,'','101.0',90.0),(100.0,'Steven','King','SKING','515.123.4567','17-JUN-87','AD_PRES',50000.0,'','',90.0),(101.0,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-89','AD_VP',50000.0,'','100.0',90.0),(102.0,'Lex','De Haan','LDEHAAN','515.123.4569','13-JAN-93','AD_VP',50000.0,'','100.0',90.0),(103.0,'Alexander','Hunold','AHUNOLD','590.423.4567','03-JAN-90','IT_PROG',50000.0,'','102.0',90.0),(104.0,'Bruce','Ernst','BERNST','590.423.4568','21-MAY-91','IT_PROG',50000.0,'','103.0',90.0),(105.0,'David','Austin','DAUSTIN','590.423.4569','25-JUN-97','IT_PROG',50000.0,'','103.0',90.0),(106.0,'Valli','Pataballa','VPATABAL','590.423.4560','05-FEB-98','IT_PROG',50000.0,'','103.0',90.0),(107.0,'Diana','Lorentz','DLORENTZ','590.423.5567','07-FEB-99','IT_PROG',50000.0,'','103.0',90.0),(108.0,'Nancy','Greenberg','NGREENBE','515.124.4569','17-AUG-94','FI_MGR',50000.0,'','101.0',90.0),(109.0,'Daniel','Faviet','DFAVIET','515.124.4169','16-AUG-94','FI_ACCOUNT',50000.0,'','108.0',90.0),(110.0,'John','Chen','JCHEN','515.124.4269','28-SEP-97','FI_ACCOUNT',50000.0,'','108.0',90.0),(111.0,'Ismael','Sciarra','ISCIARRA','515.124.4369','30-SEP-97','FI_ACCOUNT',50000.0,'','108.0',90.0),(112.0,'Jose Manuel','Urman','JMURMAN','515.124.4469','07-MAR-98','FI_ACCOUNT',50000.0,'','108.0',90.0),(113.0,'Luis','Popp','LPOPP','515.124.4567','07-DEC-99','FI_ACCOUNT',50000.0,'','108.0',90.0),(114.0,'Den','Raphaely','DRAPHEAL','515.127.4561','07-DEC-94','PU_MAN',50000.0,'','100.0',90.0),(115.0,'Alexander','Khoo','AKHOO','515.127.4562','18-MAY-95','PU_CLERK',50000.0,'','114.0',90.0),(116.0,'Shelli','Baida','SBAIDA','515.127.4563','24-DEC-97','PU_CLERK',50000.0,'','114.0',90.0),(117.0,'Sigal','Tobias','STOBIAS','515.127.4564','24-JUL-97','PU_CLERK',50000.0,'','114.0',90.0),(118.0,'Guy','Himuro','GHIMURO','515.127.4565','15-NOV-98','PU_CLERK',50000.0,'','114.0',90.0),(119.0,'Karen','Colmenares','KCOLMENA','515.127.4566','10-AUG-99','PU_CLERK',50000.0,'','114.0',90.0),(120.0,'Matthew','Weiss','MWEISS','650.123.1234','18-JUL-96','ST_MAN',50000.0,'','100.0',90.0),(121.0,'Adam','Fripp','AFRIPP','650.123.2234','10-APR-97','ST_MAN',50000.0,'','100.0',90.0),(122.0,'Payam','Kaufling','PKAUFLIN','650.123.3234','01-MAY-95','ST_MAN',50000.0,'','100.0',90.0),(123.0,'Shanta','Vollman','SVOLLMAN','650.123.4234','10-OCT-97','ST_MAN',50000.0,'','100.0',90.0),(124.0,'Kevin','Mourgos','KMOURGOS','650.123.5234','16-NOV-99','ST_MAN',50000.0,'','100.0',90.0),(125.0,'Julia','Nayer','JNAYER','650.124.1214','16-JUL-97','ST_CLERK',50000.0,'','120.0',90.0),(126.0,'Irene','Mikkilineni','IMIKKILI','650.124.1224','28-SEP-98','ST_CLERK',50000.0,'','120.0',90.0),(127.0,'James','Landry','JLANDRY','650.124.1334','14-JAN-99','ST_CLERK',50000.0,'','120.0',90.0),(128.0,'Steven','Markle','SMARKLE','650.124.1434','08-MAR-00','ST_CLERK',50000.0,'','120.0',90.0),(129.0,'Laura','Bissot','LBISSOT','650.124.5234','20-AUG-97','ST_CLERK',50000.0,'','121.0',90.0),(130.0,'Mozhe','Atkinson','MATKINSO','650.124.6234','30-OCT-97','ST_CLERK',50000.0,'','121.0',90.0),(131.0,'James','Marlow','JAMRLOW','650.124.7234','16-FEB-97','ST_CLERK',50000.0,'','121.0',90.0),(132.0,'TJ','Olson','TJOLSON','650.124.8234','10-APR-99','ST_CLERK',50000.0,'','121.0',90.0),(133.0,'Jason','Mallin','JMALLIN','650.127.1934','14-JUN-96','ST_CLERK',50000.0,'','122.0',90.0),(134.0,'Michael','Rogers','MROGERS','650.127.1834','26-AUG-98','ST_CLERK',50000.0,'','122.0',90.0),(135.0,'Ki','Gee','KGEE','650.127.1734','12-DEC-99','ST_CLERK',50000.0,'','122.0',90.0),(136.0,'Hazel','Philtanker','HPHILTAN','650.127.1634','06-FEB-00','ST_CLERK',50000.0,'','122.0',90.0),(137.0,'Renske','Ladwig','RLADWIG','650.121.1234','14-JUL-95','ST_CLERK',50000.0,'','123.0',90.0),(138.0,'Stephen','Stiles','SSTILES','650.121.2034','26-OCT-97','ST_CLERK',50000.0,'','123.0',90.0),(139.0,'John','Seo','JSEO','650.121.2019','12-FEB-98','ST_CLERK',50000.0,'','123.0',90.0),(140.0,'Joshua','Patel','JPATEL','650.121.1834','06-APR-98','ST_CLERK',50000.0,'','123.0',90.0),(141.0,'Trenna','Rajs','TRAJS','650.121.8009','17-OCT-95','ST_CLERK',50000.0,'','124.0',90.0),(142.0,'Curtis','Davies','CDAVIES','650.121.2994','29-JAN-97','ST_CLERK',50000.0,'','124.0',90.0),(143.0,'Randall','Matos','RMATOS','650.121.2874','15-MAR-98','ST_CLERK',50000.0,'','124.0',90.0),(144.0,'Peter','Vargas','PVARGAS','650.121.2004','09-JUL-98','ST_CLERK',50000.0,'','124.0',90.0),(145.0,'John','Russell','JRUSSEL','011.44.1344.429268','01-OCT-96','SA_MAN',50000.0,'','100.0',90.0),(146.0,'Karen','Partners','KPARTNER','011.44.1344.467268','05-JAN-97','SA_MAN',50000.0,'','100.0',90.0),(147.0,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','10-MAR-97','SA_MAN',50000.0,'','100.0',90.0);
/*!40000 ALTER TABLE  dbo.EMPLOY  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.EMPLOYS 
--

DROP TABLE IF EXISTS  dbo.EMPLOYS ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.EMPLOYS  (
   EMPLOYEE_ID  varchar(255) DEFAULT NULL,
   LAST_NAME  varchar(255) DEFAULT NULL,
   SALARY  varchar(255) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.EMPLOYS 
--

--LOCK TABLES  dbo.EMPLOYS  WRITE;
/*!40000 ALTER TABLE  dbo.EMPLOYS  DISABLE KEYS */;
/*!40000 ALTER TABLE  dbo.EMPLOYS  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.EMPS 
--

DROP TABLE IF EXISTS  dbo.EMPS ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.EMPS  (
   EMPLOYEE_ID  decimal(5,1) DEFAULT NULL,
   FIRST_NAME  varchar(11) DEFAULT NULL,
   LAST_NAME  varchar(11) DEFAULT NULL,
   EMAIL  varchar(8) DEFAULT NULL,
   PHONE_NUMBER  varchar(18) DEFAULT NULL,
   HIRE_DATE  varchar(19) DEFAULT NULL,
   JOB_ID  varchar(10) DEFAULT NULL,
   SALARY  decimal(6,1) DEFAULT NULL,
   COMMISSION_PCT  varchar(10) DEFAULT NULL,
   MANAGER_ID  varchar(5) DEFAULT NULL,
   DEPARTMENT_ID  varchar(5) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.EMPS 
--

--LOCK TABLES  dbo.EMPS  WRITE;
/*!40000 ALTER TABLE  dbo.EMPS  DISABLE KEYS */;
INSERT INTO  dbo.EMPS  VALUES (100.0,'Steven','King','SKING','515.123.4567','17-JUN-87','AD_PRES',24000.0,'','','90.0'),(101.0,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-89','AD_VP',17000.0,'','100.0','90.0'),(102.0,'Lex','De Haan','LDEHAAN','515.123.4569','13-JAN-93','AD_VP',17000.0,'','100.0','90.0'),(103.0,'Alexander','Hunold','AHUNOLD','590.423.4567','03-JAN-90','IT_PROG',9000.0,'','102.0','60.0'),(104.0,'Bruce','Ernst','BERNST','590.423.4568','21-MAY-91','IT_PROG',6000.0,'','103.0','60.0'),(105.0,'David','Austin','DAUSTIN','590.423.4569','25-JUN-97','IT_PROG',4800.0,'','103.0','60.0'),(106.0,'Valli','Pataballa','VPATABAL','590.423.4560','05-FEB-98','IT_PROG',4800.0,'','103.0','60.0'),(107.0,'Diana','Lorentz','DLORENTZ','590.423.5567','07-FEB-99','IT_PROG',4200.0,'','103.0','60.0'),(108.0,'Nancy','Greenberg','NGREENBE','515.124.4569','17-AUG-94','FI_MGR',12000.0,'','101.0','100.0'),(109.0,'Daniel','Faviet','DFAVIET','515.124.4169','16-AUG-94','FI_ACCOUNT',9000.0,'','108.0','100.0'),(110.0,'John','Chen','JCHEN','515.124.4269','28-SEP-97','FI_ACCOUNT',8200.0,'','108.0','100.0'),(111.0,'Ismael','Sciarra','ISCIARRA','515.124.4369','30-SEP-97','FI_ACCOUNT',7700.0,'','108.0','100.0'),(112.0,'Jose Manuel','Urman','JMURMAN','515.124.4469','07-MAR-98','FI_ACCOUNT',7800.0,'','108.0','100.0'),(113.0,'Luis','Popp','LPOPP','515.124.4567','07-DEC-99','FI_ACCOUNT',6900.0,'','108.0','100.0'),(114.0,'Den','Raphaely','DRAPHEAL','515.127.4561','07-DEC-94','PU_MAN',11000.0,'','100.0','30.0'),(115.0,'Alexander','Khoo','AKHOO','515.127.4562','18-MAY-95','PU_CLERK',3100.0,'','114.0','30.0'),(116.0,'Shelli','Baida','SBAIDA','515.127.4563','24-DEC-97','PU_CLERK',2900.0,'','114.0','30.0'),(117.0,'Sigal','Tobias','STOBIAS','515.127.4564','24-JUL-97','PU_CLERK',2800.0,'','114.0','30.0'),(118.0,'Guy','Himuro','GHIMURO','515.127.4565','15-NOV-98','PU_CLERK',2600.0,'','114.0','30.0'),(119.0,'Karen','Colmenares','KCOLMENA','515.127.4566','10-AUG-99','PU_CLERK',2500.0,'','114.0','30.0'),(120.0,'Matthew','Weiss','MWEISS','650.123.1234','18-JUL-96','ST_MAN',8000.0,'','100.0','50.0'),(121.0,'Adam','Fripp','AFRIPP','650.123.2234','10-APR-97','ST_MAN',8200.0,'','100.0','50.0'),(122.0,'Payam','Kaufling','PKAUFLIN','650.123.3234','01-MAY-95','ST_MAN',7900.0,'','100.0','50.0'),(123.0,'Shanta','Vollman','SVOLLMAN','650.123.4234','10-OCT-97','ST_MAN',6500.0,'','100.0','50.0'),(124.0,'Kevin','Mourgos','KMOURGOS','650.123.5234','16-NOV-99','ST_MAN',5800.0,'','100.0','50.0'),(125.0,'Julia','Nayer','JNAYER','650.124.1214','16-JUL-97','ST_CLERK',3200.0,'','120.0','50.0'),(126.0,'Irene','Mikkilineni','IMIKKILI','650.124.1224','28-SEP-98','ST_CLERK',2700.0,'','120.0','50.0'),(127.0,'James','Landry','JLANDRY','650.124.1334','14-JAN-99','ST_CLERK',2400.0,'','120.0','50.0'),(128.0,'Steven','Markle','SMARKLE','650.124.1434','08-MAR-00','ST_CLERK',2200.0,'','120.0','50.0'),(129.0,'Laura','Bissot','LBISSOT','650.124.5234','20-AUG-97','ST_CLERK',3300.0,'','121.0','50.0'),(130.0,'Mozhe','Atkinson','MATKINSO','650.124.6234','30-OCT-97','ST_CLERK',2800.0,'','121.0','50.0'),(131.0,'James','Marlow','JAMRLOW','650.124.7234','16-FEB-97','ST_CLERK',2500.0,'','121.0','50.0'),(132.0,'TJ','Olson','TJOLSON','650.124.8234','10-APR-99','ST_CLERK',2100.0,'','121.0','50.0'),(133.0,'Jason','Mallin','JMALLIN','650.127.1934','14-JUN-96','ST_CLERK',3300.0,'','122.0','50.0'),(134.0,'Michael','Rogers','MROGERS','650.127.1834','26-AUG-98','ST_CLERK',2900.0,'','122.0','50.0'),(135.0,'Ki','Gee','KGEE','650.127.1734','12-DEC-99','ST_CLERK',2400.0,'','122.0','50.0'),(136.0,'Hazel','Philtanker','HPHILTAN','650.127.1634','06-FEB-00','ST_CLERK',2200.0,'','122.0','50.0'),(137.0,'Renske','Ladwig','RLADWIG','650.121.1234','14-JUL-95','ST_CLERK',3600.0,'','123.0','50.0'),(138.0,'Stephen','Stiles','SSTILES','650.121.2034','26-OCT-97','ST_CLERK',3200.0,'','123.0','50.0'),(139.0,'John','Seo','JSEO','650.121.2019','12-FEB-98','ST_CLERK',2700.0,'','123.0','50.0'),(140.0,'Joshua','Patel','JPATEL','650.121.1834','06-APR-98','ST_CLERK',2500.0,'','123.0','50.0'),(141.0,'Trenna','Rajs','TRAJS','650.121.8009','17-OCT-95','ST_CLERK',3500.0,'','124.0','50.0'),(142.0,'Curtis','Davies','CDAVIES','650.121.2994','29-JAN-97','ST_CLERK',3100.0,'','124.0','50.0'),(143.0,'Randall','Matos','RMATOS','650.121.2874','15-MAR-98','ST_CLERK',2600.0,'','124.0','50.0'),(144.0,'Peter','Vargas','PVARGAS','650.121.2004','09-JUL-98','ST_CLERK',2500.0,'','124.0','50.0'),(145.0,'John','Russell','JRUSSEL','011.44.1344.429268','01-OCT-96','SA_MAN',14000.0,'','100.0','80.0'),(146.0,'Karen','Partners','KPARTNER','011.44.1344.467268','05-JAN-97','SA_MAN',13500.0,'','100.0','80.0'),(147.0,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','10-MAR-97','SA_MAN',12000.0,'','100.0','80.0'),(148.0,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','15-OCT-99','SA_MAN',11000.0,'','100.0','80.0'),(149.0,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','29-JAN-00','SA_MAN',10500.0,'','100.0','80.0'),(150.0,'Peter','Tucker','PTUCKER','011.44.1344.129268','30-JAN-97','SA_REP',10000.0,'','145.0','80.0'),(151.0,'David','Bernstein','DBERNSTE','011.44.1344.345268','24-MAR-97','SA_REP',9500.0,'','145.0','80.0'),(152.0,'Peter','Hall','PHALL','011.44.1344.478968','20-AUG-97','SA_REP',9000.0,'','145.0','80.0'),(153.0,'Christopher','Olsen','COLSEN','011.44.1344.498718','30-MAR-98','SA_REP',8000.0,'','145.0','80.0'),(154.0,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','09-DEC-98','SA_REP',7500.0,'','145.0','80.0'),(155.0,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','23-NOV-99','SA_REP',7000.0,'','145.0','80.0'),(156.0,'Janette','King','JKING','011.44.1345.429268','30-JAN-96','SA_REP',10000.0,'','146.0','80.0'),(157.0,'Patrick','Sully','PSULLY','011.44.1345.929268','04-MAR-96','SA_REP',9500.0,'','146.0','80.0'),(158.0,'Allan','McEwen','AMCEWEN','011.44.1345.829268','01-AUG-96','SA_REP',9000.0,'','146.0','80.0'),(159.0,'Lindsey','Smith','LSMITH','011.44.1345.729268','10-MAR-97','SA_REP',8000.0,'','146.0','80.0'),(160.0,'Louise','Doran','LDORAN','011.44.1345.629268','15-DEC-97','SA_REP',7500.0,'','146.0','80.0'),(161.0,'Sarath','Sewall','SSEWALL','011.44.1345.529268','03-NOV-98','SA_REP',7000.0,'','146.0','80.0'),(162.0,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11-NOV-97','SA_REP',10500.0,'','147.0','80.0'),(163.0,'Danielle','Greene','DGREENE','011.44.1346.229268','19-MAR-99','SA_REP',9500.0,'','147.0','80.0'),(164.0,'Mattea','Marvins','MMARVINS','011.44.1346.329268','24-JAN-00','SA_REP',7200.0,'','147.0','80.0'),(165.0,'David','Lee','DLEE','011.44.1346.529268','23-FEB-00','SA_REP',6800.0,'','147.0','80.0'),(166.0,'Sundar','Ande','SANDE','011.44.1346.629268','24-MAR-00','SA_REP',6400.0,'','147.0','80.0'),(167.0,'Amit','Banda','ABANDA','011.44.1346.729268','21-APR-00','SA_REP',6200.0,'','147.0','80.0'),(168.0,'Lisa','Ozer','LOZER','011.44.1343.929268','11-MAR-97','SA_REP',11500.0,'','148.0','80.0'),(169.0,'Harrison','Bloom','HBLOOM','011.44.1343.829268','23-MAR-98','SA_REP',10000.0,'','148.0','80.0'),(170.0,'Tayler','Fox','TFOX','011.44.1343.729268','24-JAN-98','SA_REP',9600.0,'','148.0','80.0'),(171.0,'William','Smith','WSMITH','011.44.1343.629268','23-FEB-99','SA_REP',7400.0,'','148.0','80.0'),(172.0,'Elizabeth','Bates','EBATES','011.44.1343.529268','24-MAR-99','SA_REP',7300.0,'','148.0','80.0'),(173.0,'Sundita','Kumar','SKUMAR','011.44.1343.329268','21-APR-00','SA_REP',6100.0,'','148.0','80.0'),(174.0,'Ellen','Abel','EABEL','011.44.1644.429267','11-MAY-96','SA_REP',11000.0,'','149.0','80.0'),(175.0,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','19-MAR-97','SA_REP',8800.0,'','149.0','80.0'),(176.0,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','24-MAR-98','SA_REP',8600.0,'','149.0','80.0'),(177.0,'Jack','Livingston','JLIVINGS','011.44.1644.429264','23-APR-98','SA_REP',8400.0,'','149.0','80.0'),(178.0,'Kimberely','Grant','KGRANT','011.44.1644.429263','24-MAY-99','SA_REP',7000.0,'','149.0',''),(179.0,'Charles','Johnson','CJOHNSON','011.44.1644.429262','04-JAN-00','SA_REP',6200.0,'','149.0','80.0'),(180.0,'Winston','Taylor','WTAYLOR','650.507.9876','24-JAN-98','SH_CLERK',3200.0,'','120.0','50.0'),(181.0,'Jean','Fleaur','JFLEAUR','650.507.9877','23-FEB-98','SH_CLERK',3100.0,'','120.0','50.0'),(182.0,'Martha','Sullivan','MSULLIVA','650.507.9878','21-JUN-99','SH_CLERK',2500.0,'','120.0','50.0'),(183.0,'Girard','Geoni','GGEONI','650.507.9879','03-FEB-00','SH_CLERK',2800.0,'','120.0','50.0'),(184.0,'Nandita','Sarchand','NSARCHAN','650.509.1876','27-JAN-96','SH_CLERK',4200.0,'','121.0','50.0'),(185.0,'Alexis','Bull','ABULL','650.509.2876','20-FEB-97','SH_CLERK',4100.0,'','121.0','50.0'),(186.0,'Julia','Dellinger','JDELLING','650.509.3876','24-JUN-98','SH_CLERK',3400.0,'','121.0','50.0'),(187.0,'Anthony','Cabrio','ACABRIO','650.509.4876','07-FEB-99','SH_CLERK',3000.0,'','121.0','50.0'),(188.0,'Kelly','Chung','KCHUNG','650.505.1876','14-JUN-97','SH_CLERK',3800.0,'','122.0','50.0'),(189.0,'Jennifer','Dilly','JDILLY','650.505.2876','13-AUG-97','SH_CLERK',3600.0,'','122.0','50.0'),(190.0,'Timothy','Gates','TGATES','650.505.3876','11-JUL-98','SH_CLERK',2900.0,'','122.0','50.0'),(191.0,'Randall','Perkins','RPERKINS','650.505.4876','19-DEC-99','SH_CLERK',2500.0,'','122.0','50.0'),(192.0,'Sarah','Bell','SBELL','650.501.1876','04-FEB-96','SH_CLERK',4000.0,'','123.0','50.0'),(193.0,'Britney','Everett','BEVERETT','650.501.2876','03-MAR-97','SH_CLERK',3900.0,'','123.0','50.0'),(194.0,'Samuel','McCain','SMCCAIN','650.501.3876','01-JUL-98','SH_CLERK',3200.0,'','123.0','50.0'),(195.0,'Vance','Jones','VJONES','650.501.4876','17-MAR-99','SH_CLERK',2800.0,'','123.0','50.0'),(196.0,'Alana','Walsh','AWALSH','650.507.9811','24-APR-98','SH_CLERK',3100.0,'','124.0','50.0'),(197.0,'Kevin','Feeney','KFEENEY','650.507.9822','23-MAY-98','SH_CLERK',3000.0,'','124.0','50.0'),(198.0,'Donald','OConnell','DOCONNEL','650.507.9833','21-JUN-99','SH_CLERK',2600.0,'','124.0','50.0'),(199.0,'Douglas','Grant','DGRANT','650.507.9844','13-JAN-00','SH_CLERK',2600.0,'','124.0','50.0');
/*!40000 ALTER TABLE  dbo.EMPS  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Employees 
--

DROP TABLE IF EXISTS  dbo.Employees ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Employees  (
   EMPLOYEE_ID  integer DEFAULT NULL,
   FIRST_NAME  varchar(11) DEFAULT NULL,
   LAST_NAME  varchar(11) DEFAULT NULL,
   EMAIL  varchar(8) DEFAULT NULL,
   PHONE_NUMBER  varchar(18) DEFAULT NULL,
   HIRE_DATE  varchar(19) DEFAULT NULL,
   JOB_ID  varchar(10) DEFAULT NULL,
   SALARY  decimal(6,1) DEFAULT NULL,
   COMMISSION_PCT  varchar(10) DEFAULT NULL,
   MANAGER_ID  varchar(5) DEFAULT NULL,
   DEPARTMENT_ID  varchar(5) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Employees 
--

--LOCK TABLES  dbo.Employees  WRITE;
/*!40000 ALTER TABLE  dbo.Employees  DISABLE KEYS */;
INSERT INTO  dbo.Employees  VALUES (100.0,'Steven','King','SKING','515.123.4567','17-JUN-87','AD_PRES',24000.0,'','','90.0'),(101.0,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-89','AD_VP',17000.0,'','100.0','90.0'),(102.0,'Lex','De Haan','LDEHAAN','515.123.4569','13-JAN-93','AD_VP',17000.0,'','100.0','90.0'),(103.0,'Alexander','Hunold','AHUNOLD','590.423.4567','03-JAN-90','IT_PROG',9000.0,'','102.0','60.0'),(104.0,'Bruce','Ernst','BERNST','590.423.4568','21-MAY-91','IT_PROG',6000.0,'','103.0','60.0'),(105.0,'David','Austin','DAUSTIN','590.423.4569','25-JUN-97','IT_PROG',4800.0,'','103.0','60.0'),(106.0,'Valli','Pataballa','VPATABAL','590.423.4560','05-FEB-98','IT_PROG',4800.0,'','103.0','60.0'),(107.0,'Diana','Lorentz','DLORENTZ','590.423.5567','07-FEB-99','IT_PROG',4200.0,'','103.0','60.0'),(108.0,'Nancy','Greenberg','NGREENBE','515.124.4569','17-AUG-94','FI_MGR',12000.0,'','101.0','100.0'),(109.0,'Daniel','Faviet','DFAVIET','515.124.4169','16-AUG-94','FI_ACCOUNT',9000.0,'','108.0','100.0'),(110.0,'John','Chen','JCHEN','515.124.4269','28-SEP-97','FI_ACCOUNT',8200.0,'','108.0','100.0'),(111.0,'Ismael','Sciarra','ISCIARRA','515.124.4369','30-SEP-97','FI_ACCOUNT',7700.0,'','108.0','100.0'),(112.0,'Jose Manuel','Urman','JMURMAN','515.124.4469','07-MAR-98','FI_ACCOUNT',7800.0,'','108.0','100.0'),(113.0,'Luis','Popp','LPOPP','515.124.4567','07-DEC-99','AC_MGR',12000.0,'','108.0','100.0'),(114.0,'Den','Raphaely','DRAPHEAL','515.127.4561','07-DEC-94','PU_MAN',11000.0,'','100.0','30.0'),(115.0,'Alexander','Khoo','AKHOO','515.127.4562','18-MAY-95','PU_CLERK',3100.0,'','114.0','30.0'),(116.0,'Shelli','Baida','SBAIDA','515.127.4563','24-DEC-97','PU_CLERK',2900.0,'','114.0','30.0'),(117.0,'Sigal','Tobias','STOBIAS','515.127.4564','24-JUL-97','PU_CLERK',2800.0,'','114.0','30.0'),(118.0,'Guy','Himuro','GHIMURO','515.127.4565','15-NOV-98','PU_CLERK',2600.0,'','114.0','30.0'),(119.0,'Karen','Colmenares','KCOLMENA','515.127.4566','10-AUG-99','PU_CLERK',2500.0,'','114.0','30.0'),(120.0,'Matthew','Weiss','MWEISS','650.123.1234','18-JUL-96','ST_MAN',8000.0,'','100.0','50.0'),(121.0,'Adam','Fripp','AFRIPP','650.123.2234','10-APR-97','ST_MAN',8200.0,'','100.0','50.0'),(122.0,'Payam','Kaufling','PKAUFLIN','650.123.3234','01-MAY-95','ST_MAN',7900.0,'','100.0','50.0'),(123.0,'Shanta','Vollman','SVOLLMAN','650.123.4234','10-OCT-97','ST_MAN',6500.0,'','100.0','50.0'),(124.0,'Kevin','Mourgos','KMOURGOS','650.123.5234','16-NOV-99','ST_MAN',5800.0,'','100.0','50.0'),(125.0,'Julia','Nayer','JNAYER','650.124.1214','16-JUL-97','ST_CLERK',3200.0,'','120.0','50.0'),(126.0,'Irene','Mikkilineni','IMIKKILI','650.124.1224','28-SEP-98','ST_CLERK',2700.0,'','120.0','50.0'),(127.0,'James','Landry','JLANDRY','650.124.1334','14-JAN-99','ST_CLERK',2400.0,'','120.0','50.0'),(128.0,'Steven','Markle','SMARKLE','650.124.1434','08-MAR-00','ST_CLERK',2200.0,'','120.0','50.0'),(129.0,'Laura','Bissot','LBISSOT','650.124.5234','20-AUG-97','ST_CLERK',3300.0,'','121.0','50.0'),(130.0,'Mozhe','Atkinson','MATKINSO','650.124.6234','30-OCT-97','ST_CLERK',2800.0,'','121.0','50.0'),(131.0,'James','Marlow','JAMRLOW','650.124.7234','16-FEB-97','ST_CLERK',2500.0,'','121.0','50.0'),(132.0,'TJ','Olson','TJOLSON','650.124.8234','10-APR-99','ST_CLERK',2100.0,'','121.0','50.0'),(133.0,'Jason','Mallin','JMALLIN','650.127.1934','14-JUN-96','ST_CLERK',3300.0,'','122.0','50.0'),(134.0,'Michael','Rogers','MROGERS','650.127.1834','26-AUG-98','ST_CLERK',2900.0,'','122.0','50.0'),(135.0,'Ki','Gee','KGEE','650.127.1734','12-DEC-99','ST_CLERK',2400.0,'','122.0','50.0'),(136.0,'Hazel','Philtanker','HPHILTAN','650.127.1634','06-FEB-00','ST_CLERK',2200.0,'','122.0','50.0'),(137.0,'Renske','Ladwig','RLADWIG','650.121.1234','14-JUL-95','ST_CLERK',3600.0,'','123.0','50.0'),(138.0,'Stephen','Stiles','SSTILES','650.121.2034','26-OCT-97','ST_CLERK',3200.0,'','123.0','50.0'),(139.0,'John','Seo','JSEO','650.121.2019','12-FEB-98','ST_CLERK',2700.0,'','123.0','50.0'),(140.0,'Joshua','Patel','JPATEL','650.121.1834','06-APR-98','ST_CLERK',2500.0,'','123.0','50.0'),(141.0,'Trenna','Rajs','TRAJS','650.121.8009','17-OCT-95','ST_CLERK',3500.0,'','124.0','50.0'),(142.0,'Curtis','Davies','CDAVIES','650.121.2994','29-JAN-97','ST_CLERK',3100.0,'','124.0','50.0'),(143.0,'Randall','Matos','RMATOS','650.121.2874','15-MAR-98','ST_CLERK',2600.0,'','124.0','50.0'),(144.0,'Peter','Vargas','PVARGAS','650.121.2004','09-JUL-98','ST_CLERK',2500.0,'','124.0','50.0'),(145.0,'John','Russell','JRUSSEL','011.44.1344.429268','01-OCT-96','SA_MAN',14000.0,'','100.0','80.0'),(146.0,'Karen','Partners','KPARTNER','011.44.1344.467268','05-JAN-97','SA_MAN',13500.0,'','100.0','80.0'),(147.0,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','10-MAR-97','SA_MAN',12000.0,'','100.0','80.0'),(148.0,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','15-OCT-99','SA_MAN',11000.0,'','100.0','80.0'),(149.0,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','29-JAN-00','SA_MAN',10500.0,'','100.0','80.0'),(150.0,'Peter','Tucker','PTUCKER','011.44.1344.129268','30-JAN-97','SA_REP',10000.0,'','145.0','80.0'),(151.0,'David','Bernstein','DBERNSTE','011.44.1344.345268','24-MAR-97','SA_REP',9500.0,'','145.0','80.0'),(152.0,'Peter','Hall','PHALL','011.44.1344.478968','20-AUG-97','SA_REP',9000.0,'','145.0','80.0'),(153.0,'Christopher','Olsen','COLSEN','011.44.1344.498718','30-MAR-98','SA_REP',8000.0,'','145.0','80.0'),(154.0,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','09-DEC-98','SA_REP',7500.0,'','145.0','80.0'),(155.0,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','23-NOV-99','SA_REP',7000.0,'','145.0','80.0'),(156.0,'Janette','King','JKING','011.44.1345.429268','30-JAN-96','SA_REP',10000.0,'','146.0','80.0'),(157.0,'Patrick','Sully','PSULLY','011.44.1345.929268','04-MAR-96','SA_REP',9500.0,'','146.0','80.0'),(158.0,'Allan','McEwen','AMCEWEN','011.44.1345.829268','01-AUG-96','SA_REP',9000.0,'','146.0','80.0'),(159.0,'Lindsey','Smith','LSMITH','011.44.1345.729268','10-MAR-97','SA_REP',8000.0,'','146.0','80.0'),(160.0,'Louise','Doran','LDORAN','011.44.1345.629268','15-DEC-97','SA_REP',7500.0,'','146.0','80.0'),(161.0,'Sarath','Sewall','SSEWALL','011.44.1345.529268','03-NOV-98','SA_REP',7000.0,'','146.0','80.0'),(162.0,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11-NOV-97','SA_REP',10500.0,'','147.0','80.0'),(163.0,'Danielle','Greene','DGREENE','011.44.1346.229268','19-MAR-99','SA_REP',9500.0,'','147.0','80.0'),(164.0,'Mattea','Marvins','MMARVINS','011.44.1346.329268','24-JAN-00','SA_REP',7200.0,'','147.0','80.0'),(165.0,'David','Lee','DLEE','011.44.1346.529268','23-FEB-00','SA_REP',6800.0,'','147.0','80.0'),(166.0,'Sundar','Ande','SANDE','011.44.1346.629268','24-MAR-00','SA_REP',6400.0,'','147.0','80.0'),(167.0,'Amit','Banda','ABANDA','011.44.1346.729268','21-APR-00','SA_REP',6200.0,'','147.0','80.0'),(168.0,'Lisa','Ozer','LOZER','011.44.1343.929268','11-MAR-97','SA_REP',11500.0,'','148.0','80.0'),(169.0,'Harrison','Bloom','HBLOOM','011.44.1343.829268','23-MAR-98','SA_REP',10000.0,'','148.0','80.0'),(170.0,'Tayler','Fox','TFOX','011.44.1343.729268','24-JAN-98','SA_REP',9600.0,'','148.0','80.0'),(171.0,'William','Smith','WSMITH','011.44.1343.629268','23-FEB-99','SA_REP',7400.0,'','148.0','80.0'),(172.0,'Elizabeth','Bates','EBATES','011.44.1343.529268','24-MAR-99','SA_REP',7300.0,'','148.0','80.0'),(173.0,'Sundita','Kumar','SKUMAR','011.44.1343.329268','21-APR-00','SA_REP',6100.0,'','148.0','80.0'),(174.0,'Ellen','Abel','EABEL','011.44.1644.429267','11-MAY-96','SA_REP',11000.0,'','149.0','80.0'),(175.0,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','19-MAR-97','SA_REP',8800.0,'','149.0','80.0'),(176.0,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','24-MAR-98','SA_REP',8600.0,'','149.0','80.0'),(177.0,'Jack','Livingston','JLIVINGS','011.44.1644.429264','23-APR-98','SA_REP',8400.0,'','149.0','80.0'),(178.0,'Kimberely','Grant','KGRANT','011.44.1644.429263','24-MAY-99','SA_REP',7000.0,'','149.0',''),(179.0,'Charles','Johnson','CJOHNSON','011.44.1644.429262','04-JAN-00','SA_REP',6200.0,'','149.0','80.0'),(180.0,'Winston','Taylor','WTAYLOR','650.507.9876','24-JAN-98','SH_CLERK',3200.0,'','120.0','50.0'),(181.0,'Jean','Fleaur','JFLEAUR','650.507.9877','23-FEB-98','SH_CLERK',3100.0,'','120.0','50.0'),(182.0,'Martha','Sullivan','MSULLIVA','650.507.9878','21-JUN-99','SH_CLERK',2500.0,'','120.0','50.0'),(183.0,'Girard','Geoni','GGEONI','650.507.9879','03-FEB-00','SH_CLERK',2800.0,'','120.0','50.0'),(184.0,'Nandita','Sarchand','NSARCHAN','650.509.1876','27-JAN-96','SH_CLERK',4200.0,'','121.0','50.0'),(185.0,'Alexis','Bull','ABULL','650.509.2876','20-FEB-97','SH_CLERK',4100.0,'','121.0','50.0'),(186.0,'Julia','Dellinger','JDELLING','650.509.3876','24-JUN-98','SH_CLERK',3400.0,'','121.0','50.0'),(187.0,'Anthony','Cabrio','ACABRIO','650.509.4876','07-FEB-99','SH_CLERK',3000.0,'','121.0','50.0'),(188.0,'Kelly','Chung','KCHUNG','650.505.1876','14-JUN-97','SH_CLERK',3800.0,'','122.0','50.0'),(189.0,'Jennifer','Dilly','JDILLY','650.505.2876','13-AUG-97','SH_CLERK',3600.0,'','122.0','50.0'),(190.0,'Timothy','Gates','TGATES','650.505.3876','11-JUL-98','SH_CLERK',2900.0,'','122.0','50.0'),(191.0,'Randall','Perkins','RPERKINS','650.505.4876','19-DEC-99','SH_CLERK',2500.0,'','122.0','50.0'),(192.0,'Sarah','Bell','SBELL','650.501.1876','04-FEB-96','SH_CLERK',4000.0,'','123.0','50.0'),(193.0,'Britney','Everett','BEVERETT','650.501.2876','03-MAR-97','SH_CLERK',3900.0,'','123.0','50.0'),(194.0,'Samuel','McCain','SMCCAIN','650.501.3876','01-JUL-98','SH_CLERK',3200.0,'','123.0','50.0'),(195.0,'Vance','Jones','VJONES','650.501.4876','17-MAR-99','SH_CLERK',2800.0,'','123.0','50.0'),(196.0,'Alana','Walsh','AWALSH','650.507.9811','24-APR-98','SH_CLERK',3100.0,'','124.0','50.0'),(197.0,'Kevin','Feeney','KFEENEY','650.507.9822','23-MAY-98','SH_CLERK',3000.0,'','124.0','50.0'),(198.0,'Donald','OConnell','DOCONNEL','650.507.9833','21-JUN-99','SH_CLERK',2600.0,'','124.0','50.0'),(199.0,'Douglas','Grant','DGRANT','650.507.9844','13-JAN-00','SH_CLERK',2600.0,'','124.0','50.0');
/*!40000 ALTER TABLE  dbo.Employees  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Job_History 
--

DROP TABLE IF EXISTS  dbo.Job_History ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Job_History  (
   EMPLOYEE_ID  decimal(4,1) DEFAULT NULL,
   START_DATE  varchar(9) DEFAULT NULL,
   END_DATE  varchar(9) DEFAULT NULL,
   JOB_ID  varchar(10) DEFAULT NULL,
   DEPARTMENT_ID  decimal(4,1) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Job_History 
--

--LOCK TABLES  dbo.Job_History  WRITE;
/*!40000 ALTER TABLE  dbo.Job_History  DISABLE KEYS */;
INSERT INTO  dbo.Job_History  VALUES (102.0,'13-JAN-93','24-JUL-98','IT_PROG',60.0),(101.0,'21-SEP-89','27-OCT-93','AC_ACCOUNT',110.0),(101.0,'28-OCT-93','15-MAR-97','AC_MGR',110.0),(201.0,'17-FEB-96','19-DEC-99','MK_REP',20.0),(114.0,'24-MAR-98','31-DEC-99','ST_CLERK',50.0),(122.0,'01-JAN-99','31-DEC-99','ST_CLERK',50.0),(200.0,'17-SEP-87','17-JUN-93','AD_ASST',90.0),(176.0,'24-MAR-98','31-DEC-98','SA_REP',80.0),(176.0,'01-JAN-99','31-DEC-99','SA_MAN',80.0),(200.0,'01-JUL-94','31-DEC-98','AC_ACCOUNT',90.0);
/*!40000 ALTER TABLE  dbo.Job_History  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Jobs 
--

DROP TABLE IF EXISTS  dbo.Jobs ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Jobs  (
   JOB_ID  varchar(10) DEFAULT NULL,
   JOB_TITLE  varchar(31) DEFAULT NULL,
   MIN_SALARY  decimal(6,1) DEFAULT NULL,
   MAX_SALARY  decimal(6,1) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Jobs 
--

--LOCK TABLES  dbo.Jobs  WRITE;
/*!40000 ALTER TABLE  dbo.Jobs  DISABLE KEYS */;
INSERT INTO  dbo.Jobs  VALUES ('AC_ACCOUNT','Public Accountant',4200.0,9000.0),('AC_MGR','Accounting Manager',8200.0,16000.0),('AD_ASST','Administration Assistant',3000.0,6000.0),('AD_PRES','President',20000.0,40000.0),('AD_VP','Administration Vice President',15000.0,30000.0),('FI_ACCOUNT','Accountant',4200.0,9000.0),('FI_MGR','Finance Manager',8200.0,16000.0),('HR_REP','Human Resources Representative',4000.0,9000.0),('IT_PROG','Programmer',4000.0,10000.0),('MK_MAN','Marketing Manager',9000.0,15000.0),('MK_REP','Marketing Representative',4000.0,9000.0),('PR_REP','Public Relations Representative',4500.0,10500.0),('PU_CLERK','Purchasing Clerk',2500.0,5500.0),('PU_MAN','Purchasing Manager',8000.0,15000.0),('SA_MAN','Sales Manager',10000.0,20000.0),('SA_REP','Sales Representative',6000.0,12000.0),('SH_CLERK','Shipping Clerk',2500.0,5500.0),('ST_CLERK','Stock Clerk',2000.0,5000.0),('ST_MAN','Stock Manager',5500.0,8500.0);
/*!40000 ALTER TABLE  dbo.Jobs  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Locations 
--

DROP TABLE IF EXISTS  dbo.Locations ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Locations  (
   LOCATION_ID  decimal(5,1) DEFAULT NULL,
   STREET_ADDRESS  varchar(40) DEFAULT NULL,
   POSTAL_CODE  varchar(11) DEFAULT NULL,
   CITY  varchar(19) DEFAULT NULL,
   STATE_PROVINCE  varchar(17) DEFAULT NULL,
   COUNTRY_ID  varchar(2) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Locations 
--

--LOCK TABLES  dbo.Locations  WRITE;
/*!40000 ALTER TABLE  dbo.Locations  DISABLE KEYS */;
INSERT INTO  dbo.Locations  VALUES (1000.0,'1297 Via Cola di Rie','00989','Roma','','IT'),(1100.0,'93091 Calle della Testa','10934','Venice','','IT'),(1200.0,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300.0,'9450 Kamiya-cho','6823','Hiroshima','','JP'),(1400.0,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500.0,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600.0,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),(1700.0,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800.0,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900.0,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000.0,'40-5-12 Laogianggen','190518','Beijing','','CN'),(2100.0,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200.0,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300.0,'198 Clementi North','540198','Singapore','','SG'),(2400.0,'8204 Arthur St','','London','','UK'),(2500.0,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),(2600.0,'9702 Chester Road','09629850293','Stretford','Manchester','UK'),(2700.0,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800.0,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR'),(2900.0,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000.0,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100.0,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200.0,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
/*!40000 ALTER TABLE  dbo.Locations  ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table  dbo.Regions 
--

DROP TABLE IF EXISTS  dbo.Regions ;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE  dbo.Regions  (
   REGION_ID  decimal(2,1) DEFAULT NULL,
   REGION_NAME  varchar(22) DEFAULT NULL
) 
--ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table  dbo.Regions 
--

--LOCK TABLES  dbo.Regions  WRITE;
/*!40000 ALTER TABLE  dbo.Regions  DISABLE KEYS */;
INSERT INTO  dbo.Regions  VALUES (1.0,'Europe'),(2.0,'Americas'),(3.0,'Asia'),(4.0,'Middle East and Africa');
/*!40000 ALTER TABLE  dbo.Regions  ENABLE KEYS */;
--UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:28

