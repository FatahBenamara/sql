SELECT * 
FROM employes 
WHERE (date_embauche 
BETWEEN '2010-01-04' AND '2015-12-31')
 AND services='informatique'
ORDER BY salaire DESC
LIMIT 10,5


;

--######################

SELECT * 
FROM employes 
WHERE prenom 
LIKE '%th%';




;

--#######################
SELECT * 
FROM employes 
ORDER BY services ASC, salaire DESC
LIMIT 2

 

;