uneBDD: entreprise
uneTable: employes
filed de laTable: nom, prenom,sexe, services (pour ce tous ce qui suit, services sans s)

--SELECTIONNER LES ELEMENT D'UNE TABLE

--methode 01
SELECT nom, prenom FROM employes;

--methode 02 sans les doublans
SELECT DISTINCT sexe, prenom FROM employes;

--####################  filtres colonnes    #######################################

--SELECTIONNER VERTICALE TOUTES LES (COLONNES) D UNE TABLE
SELECT * FROM employes;
--SELECTIONNER HORIZONTAL TOUTES LES (COLONNES) D UNE TABLE
SELECT prenom, nom FROM employes WHERE services='commercial';
SELECT * FROM employes WHERE sexe='f';
SELECT * FROM employes WHERE salaire>= 2500;
SELECT * FROM employes WHERE salaire>= 2500 AND sexe='f'; --and: et
SELECT * FROM employes WHERE services= 'direction' OR services='commercial'; --or: ou

SELECT * FROM employes WHERE date_embauche >= '2010-01-04' AND date_embauche <='2015-12-31';
SELECT * FROM employes WHERE date_embauche BETWEEN '2010-01-04' AND '2015-12-31';

SELECT * FROM employes WHERE (date_embauche BETWEEN '2010-01-04' AND '2015-12-31') AND services='informatique' ;

--################################  filtres detaillé    ################################################
--selectionner les prenom avec (ie) à la fin => ce champs commence par n importe quel valeur mais qu il se termine par la valeur (ie)
SELECT * FROM employes WHERE prenom LIKE '%ie';
SELECT * FROM employes WHERE prenom LIKE 'th%';
SELECT * FROM employes WHERE prenom LIKE '%__l%';

-- trier alph/num/...
SELECT * FROM employes ORDER BY services ASC,salaire DESC;
SELECT * FROM employes WHERE services='commercial' ORDER BY salaire DESC;
--top 5 (systeme de pagination)
SELECT * FROM employes ORDER BY salaire DESC LIMIT 3,5; --lecture: apres le 3eme, voir top 5
--salarié le moin payé
SELECT * FROM employes ORDER BY salaire LIMIT 0,1;

--#########################     calcule     ########################
SELECT nom, prenom, salaire, salaire*12 as 'salaire annuel' FROM employes;
SELECT SUM(salaire*12) as 'masse salariale' FROM employes;
SELECT AVG(salaire) as 'salaire moyen' FROM employes;
SELECT ROUND(AVG(salaire)) as 'salaire moyen arrondi' FROM employes;
SELECT ROUND(AVG(salaire),2) as 'salaire moyen arrondi' FROM employes; --nombre dicimal de 2
SELECT ROUND(AVG(salaire),2) as 'salaire moyen arrondi' FROM employes WHERE services='commercial';
SELECT COUNT(*) as 'nb de femmes' FROM employes WHERE sexe='f'; -- combien y a de femmes
SELECT MIN(salaire) as 'salaire minimum' FROM employes; --la petite des valeurs
SELECT MAX(date_embauche) as 'la date la plus recente' FROM employes; --lderniere date d embauche

--############################### DRY  IN #################################################

-- SELECT * FROM employes WHERE services= 'direction' OR services='commercial' OR services='informatique';
SELECT * FROM employes WHERE services IN ('direction','commercial','informatique');
SELECT * FROM employes WHERE services NOT IN ('direction','commercial','informatique');-- les employé qui ne sont pas dans cette liste


--###############################    GROUPEMENT   ############################################













