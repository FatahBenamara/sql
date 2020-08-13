--connaitre le dernier ID inserer
 select last_insert_id();

 --connaitre la date/heur/ date et heur courante
 select curdate();
 select curtime();
 select now()
 select date_add("2020-08-13", interval 15 day);

select date_format(now(), "%d/%m/%y - %H:%i:%s");
select dayname ("1987-10-14");
select dayofyear(curdate());
select replace ("www.doranco.com","com","fr");
select substring("bonjour",4)
select substring("bonjour",4,2)

--##########################declaration d'une fonction #############
delimiter $
create function calcul_tva(nb int) returns text
contains sql 
BEGIN
    return concat ("le resultat est",nb*1.2, "euro");
end $
delimiter ; --espace puis ;

--*****
select calcul_tva (100);
show function status; --voir les fonctions declaré
drop function calcul_tva; --supprimer une fonction

--****************************************************
--exemple2
delimiter $
create function salaire_annuel(id int) returns int
reads sql data 
BEGIN
    declare resultat INT;
    (select salaire*12 from employes where id_employes = id) into resultat; --inclus dans la variable resultat
    return resultat;
end $
delimiter ;

--#######################  consultation de la vue ###########################################
--creer une vue liste_emprunts
create view liste_emprunts AS
select e.id_emprunt, a.prenom, l.titre, e.date_sortie, e.date_rendu
from emprunt e
inner join abonne a on a.id_abonne = e.id_abonne
inner join livre l on l.id_livre = e.id_livre;

--solution
select * from liste_emprunts;











