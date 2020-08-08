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


;

--######################

SELECT * 
FROM employes 
WHERE prenom 
LIKE '%th%';




;
--afficher les femmes
-- qui ne sont pas du service 'comptabilité' ni 'informatique'
-- trié par service

SELECT * FROM employes WHERE sexe = 'f' AND service NOT IN ('comptabilite','informatique') ORDER BY  service ASC;















