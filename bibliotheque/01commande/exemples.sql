desc
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


--####################    2 TABLES  #####################"

--quel est le prenom des abonnes ayant emprunte le livre dont id est 100
select prenom from abonne where id_abonne in(select id_abonne from emprunt where id_livre=100);

--quels sont les livres non rendu
select * from emprunt where date_rendu is null;

--quel est le titre des livres non rendu
select titre from livre where id_livre in (select id_livre from emprunt where date_rendu is null);

--quel est le prenom des abonnes n'ayant pas encore rendu leurs livre
select prenom from abonne where id_abonne in (select  id_abonne from emprunt where date_rendu is null);

--quel est l'id des livres emprunté par chloé
--          id livre                    prenom
--          emprunt                     abonne
--                      id abonne
select id_livre from emprunt where id_abonne = (select id_abonne from abonne where prenom = "chloé");

--afficher le prenom des abonnes ayant emprunt un livre le 19/12/2014
--            prenom                                    date sortie
--             abonne                                   emprunt
--                                  id abonne
select prenom from abonne where id_abonne in (select id_abonne from emprunt where  date_sortie= "2014/12/19");

--combien de livres a emprunter guillaume?
--      id livre                   prenom
--      emprunt                    abonne
--                 id abonne
SELECT COUNT(id_livre) from emprunt where id_abonne = (select id_abonne from abonne where prenom like "guillaume");

--####################    3 TABLES  #####################"

--afficher le prenom des abonnes ayant deja emprunte un livre d'alphonse
--              prenom                                      auteur   
--              abonne                                      livre   
--                             emprunt        
--                      id abonne       id livre
select prenom from abonne where id_abonne in(select id_abonne from emprunt where id_livre in (select id_livre from livre where auteur like "%ph%" ));

--connaitre le titre des livre emprunte par chloe
--              titre                       prenom
--              livre                       abonne
--                          emprunt
--                id livre          id abonne
select titre from  livre where id_livre in(select id_livre from emprunt where id_abonne in(select id_abonne from abonne where prenom like"chl%")and date_rendu is null);

--connaitre le titre des livre non-emprunte par chloe
select titre from  livre where id_livre not in(select id_livre from emprunt where id_abonne in(select id_abonne from abonne where prenom like"chl%"));

-- quels les titre livre emprunte par chloe ne sont pas encore rendu?
--              titre                       prenom      date sorti
--              livre                       abonne      emprunt
--                          emprunt
--                id livre          id abonne
select titre from  livre where id_livre in(select id_livre from emprunt where id_abonne in(select id_abonne from abonne where prenom like"chl%")and date_rendu is null);

-- qui a emprunté le plus de livre
--prenom            count(*)
select prenom from abonne where id_abonne=(select id_abonne from emprunt group by id_abonne order by count(*)desc limit 1);








