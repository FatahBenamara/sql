SELECT * 
-- SELECT DISTINC 'prenom' 
FROM employes 
WHERE services='informatique'
--WHERE services IN ('direction','commercial','informatique')
--WHERE services NOT IN ('direction','commercial','informatique')
AND (date_embauche 
BETWEEN '2010-01-04' AND '2015-12-31')
ORDER BY salaire DESC, services ASC
--
LIMIT 10,5
--
GROUP BY sexe
HAVING COUNT(*) > 1; -- sans WHERE

;

--######################

SELECT * 
FROM employes 
WHERE prenom 
LIKE '%th%';
;

--##########################

INSERT INTO employes (nom,prenom) 
VALUES ("benamara","fatah");

--##########################
DELETE FROM employes 
WHERE id_employes = 992;
--##########################
UPDATE employes 
SET salaire = salaire+100 
WHERE id_employes = 699;











