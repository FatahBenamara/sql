+-----------+
| abonne     |
+-----------+
| id_abonne |
| prenom    |
+-----------+

+-------------+
| emprunt      |
+-------------+
| id_emprunt  |
| id_livre    |
| id_abonne   |
| date_sortie |
| date_rendu  |
+-------------+

+----------+-
| livre   |
+----------+-
| id_livre |
| auteur   |
| titre    |
+----------+-

--######################    interne implicite   ########################
--avoir les dates de passage de gauillaume en affichant le prenom
select prenom, date_sortie, date_rendu 
from abonne, emprunt 
where abonne.id_abonne = emprunt.id_abonne 
and prenom= "guillaume";

-- qui a emprunte quoi et quand?
-- prenom          titre        date sorti  
-- abonne          livre        emprunt
--      id abonne       id livre
select a.prenom, l.titre, e.date_sortie 
from abonne as a, livre as l, emprunt as e 
where a.id_abonne = e.id_abonne 
and l.id_livre = e.id_livre;

 
--qui a emprunté une vie en 2014
-- prenom          titre        date sorti  
-- abonne          livre        emprunt
--      id abonne       id livre
--             emprunt
select a.prenom 
from abonne as a, livre as l, emprunt as e 
where a.id_abonne = e.id_abonne 
and l.id_livre = e.id_livre 
and l.titre = "une vie" 
and e.date_sortie like "2014%";

--######################    interne explicite   ########################

-- qui a emprunte quoi et quand et combien?
-- prenom          titre        date sorti  
-- abonne          livre        emprunt
--      id abonne       id livre
select a.prenom, l.titre, e.date_sortie
from abonne a 
inner join emprunt e on e.id_abonne=a.id_abonne
inner join livre l on e.id_livre=l.id_livre


--######################    jointure externe   ########################

--insertion d'une nouvelle personne dans abonne qui n 'apparait pas dans emprunt(absent dans une jointure interne)
INSERT INTO abonne 
VALUES (null,"fatah");
--voir les choses en commun et non en commun
--jointure exterme gauche
select a.prenom, e.date_sortie
from abonne a 
--inner join emprunt e on e.id_abonne=a.id_abonne;
left join emprunt e on e.id_abonne=a.id_abonne;

--afficher tout auteur et titre livres jamais emprunté
--ils sont dans livre et pas dans abonné
select l.auteur, l.titre, e.date_sortie
from livre l
left join emprunt e on e.id_livre = l.id_livre;

































