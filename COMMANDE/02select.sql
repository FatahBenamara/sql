uneBDD: entreprise
uneTable: employes
filed de laTable: nom, prenom,sexe, services

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
SELECT * FROM employes WHERE salaire>= 2500 AND sexe='f'; 
SELECT * FROM employes WHERE services= 'direction' OR services='commercial'; 

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














