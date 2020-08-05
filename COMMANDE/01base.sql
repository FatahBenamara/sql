
--LISTER UNE BDD : 
SHOW DATABASES;

--CREER UNE BDD: 
CREATE DATABASE nomDatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

--IMPORTER TABLE DANS UNE BDD : 
mysql -u root -p nomDatabase < c:\sql\tableDatabase --ATTENTION: sans le point virgule (;)//uniquement quand on est sur mariaDB

--SE PLACER SUR UNE TABLE: 
USE nomDatabase;

--LISTER LES TABLES DE BDD : 
SHOW TABLES;

--DECRIR UNE TABLE DE LA BDD
DESC tableDatabase;


























--SUPPRIMER UNE TABLE : 
DROP TABLE tableDatabase;


--VIDER UNE TABLE : 
TRUNCATE TABLE tableDatabase;

--SUPPRIMER UNE BDD : 
DROP DATABASE nomDatabase;

