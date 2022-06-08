--
-- File generated with SQLiteStudio v3.3.3 on jeu. juin 2 16:00:44 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: categorie
CREATE TABLE categorie (
    id_categorie INT          PRIMARY KEY,
    libelle      VARCHAR (50) 
);

INSERT INTO categorie (id_categorie, libelle) VALUES (1, 'Bread Country Roll');
INSERT INTO categorie (id_categorie, libelle) VALUES (2, 'Vinegar - Balsamic, White');
INSERT INTO categorie (id_categorie, libelle) VALUES (3, 'Beef Striploin Aaa');
INSERT INTO categorie (id_categorie, libelle) VALUES (4, 'Crab - Claws, Snow 16 - 24');
INSERT INTO categorie (id_categorie, libelle) VALUES (5, 'Alize Sunset');
INSERT INTO categorie (id_categorie, libelle) VALUES (6, 'Napkin White - Starched');
INSERT INTO categorie (id_categorie, libelle) VALUES (7, 'Ham - Black Forest');
INSERT INTO categorie (id_categorie, libelle) VALUES (8, 'Ice Cream Bar - Rolo Cone');
INSERT INTO categorie (id_categorie, libelle) VALUES (9, 'Truffle Cups - White Paper');
INSERT INTO categorie (id_categorie, libelle) VALUES (10, 'Halibut - Steaks');

-- Table: client
CREATE TABLE client (
    id_client INT     PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    adress    VARCHAR NOT NULL,
    phone     VARCHAR NOT NULL
);

INSERT INTO client (id_client, full_name, adress, phone) VALUES (1, 'Hamnet Giorio', '2 Cascade Junction', '+234 (716) 915-8231');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (2, 'Andy McWard', '198 Sullivan Point', '+63 (127) 712-4170');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (3, 'Alla Zarb', '46065 Reinke Circle', '+66 (689) 708-3359');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (4, 'Darsie Darrigone', '84 Walton Alley', '+46 (244) 811-3862');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (5, 'Irv Powelee', '465 Utah Avenue', '+994 (389) 148-7114');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (6, 'Wrennie Tomas', '96 Starling Avenue', '+48 (729) 666-3029');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (7, 'Hanna Lages', '2969 Oneill Center', '+1 (875) 281-4268');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (8, 'Adan Honnicott', '40 Farmco Drive', '+86 (653) 393-7743');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (9, 'Yoshi McBeath', '7880 Morningstar Alley', '+255 (279) 682-6745');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (10, 'Fey Burnand', '6 Homewood Crossing', '+225 (812) 763-5539');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (11, 'Saleem Ker', '5 Summerview Hill', '+226 (822) 901-9902');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (12, 'Duffie Flatman', '00 Scoville Plaza', '+86 (567) 123-3729');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (13, 'Constancy Topley', '788 Lotheville Center', '+86 (504) 918-4316');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (14, 'Bobina Stopp', '3 Stephen Park', '+86 (809) 327-9169');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (15, 'Konstantin Dogerty', '43308 Kedzie Point', '+852 (896) 886-4952');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (16, 'Chev Bothe', '47233 Lindbergh Junction', '+265 (655) 444-3338');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (17, 'Ailee Brydson', '5 Dakota Place', '+351 (291) 196-9726');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (18, 'Andie Ioselevich', '42541 Redwing Hill', '+86 (736) 516-0875');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (19, 'Kerby Rebanks', '251 Sloan Road', '+86 (578) 965-6497');
INSERT INTO client (id_client, full_name, adress, phone) VALUES (20, 'Tammy Roast', '31 Prentice Court', '+86 (889) 420-0339');

-- Table: commande
CREATE TABLE commande (
    id_commande INT    PRIMARY KEY
                       NOT NULL,
    date        DATE   NOT NULL,
    quantite    DOUBLE NOT NULL,
    montant     DOUBLE NOT NULL,
    id_client   INT    REFERENCES client (id_client) ON DELETE CASCADE
                       NOT NULL,
    id_produit  INT    REFERENCES produit (id_produit) ON DELETE CASCADE
                       NOT NULL
);


-- Table: entree_stock
CREATE TABLE entree_stock (
    id_entree  INT    PRIMARY KEY,
    date       DATE   NOT NULL,
    quantité   DOUBLE NOT NULL,
    id_produit INT    NOT NULL
                      REFERENCES produit (id_produit) ON DELETE CASCADE
);

INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (1, '2021/07/04', 74.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (2, '2021/08/10', 91.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (3, '2022/02/01', 67.0, 7);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (4, '2022/04/16', 93.0, 7);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (5, '2022/06/01', 73.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (6, '2022/01/05', 62.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (7, '2021/07/31', 81.0, 17);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (8, '2021/08/24', 62.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (9, '2021/08/26', 56.0, 12);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (10, '2021/11/30', 50.0, 2);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (11, '2021/11/15', 58.0, 8);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (12, '2022/01/08', 77.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (13, '2021/06/17', 69.0, 4);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (14, '2021/07/20', 60.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (15, '2022/05/06', 92.0, 15);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (16, '2021/11/27', 94.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (17, '2022/06/01', 57.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (18, '2022/02/20', 69.0, 4);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (19, '2021/10/06', 50.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (20, '2022/02/17', 66.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (21, '2022/01/23', 77.0, 19);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (22, '2022/05/22', 93.0, 16);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (23, '2021/12/09', 72.0, 8);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (24, '2021/10/04', 72.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (25, '2022/04/14', 72.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (26, '2021/09/13', 95.0, 5);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (27, '2021/08/22', 90.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (28, '2021/07/24', 74.0, 5);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (29, '2022/02/21', 98.0, 12);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (30, '2021/11/01', 69.0, 5);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (31, '2021/09/03', 63.0, 3);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (32, '2022/02/20', 59.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (33, '2021/07/30', 56.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (34, '2021/10/30', 57.0, 11);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (35, '2021/08/29', 97.0, 19);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (36, '2022/01/05', 89.0, 8);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (37, '2021/07/07', 52.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (38, '2021/06/28', 66.0, 16);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (39, '2021/08/23', 56.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (40, '2021/07/15', 100.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (41, '2022/02/15', 61.0, 8);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (42, '2022/01/22', 82.0, 19);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (43, '2021/11/21', 82.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (44, '2022/05/27', 50.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (45, '2021/10/12', 50.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (46, '2021/12/27', 58.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (47, '2021/08/15', 74.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (48, '2021/11/27', 63.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (49, '2022/03/04', 51.0, 13);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (50, '2022/03/20', 67.0, 15);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (51, '2021/06/08', 73.0, 11);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (52, '2021/11/06', 63.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (53, '2021/07/24', 85.0, 12);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (54, '2021/07/30', 60.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (55, '2022/02/24', 97.0, 1);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (56, '2022/05/30', 66.0, 12);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (57, '2022/02/11', 96.0, 17);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (58, '2021/11/08', 62.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (59, '2021/10/22', 58.0, 5);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (60, '2021/10/13', 86.0, 2);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (61, '2021/09/14', 54.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (62, '2021/08/10', 96.0, 13);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (63, '2021/08/03', 81.0, 5);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (64, '2021/12/28', 75.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (65, '2022/01/28', 85.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (66, '2021/09/30', 76.0, 19);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (67, '2022/01/03', 60.0, 15);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (68, '2021/07/14', 65.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (69, '2022/03/06', 63.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (70, '2021/10/21', 55.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (71, '2022/05/08', 73.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (72, '2021/10/02', 85.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (73, '2021/10/30', 64.0, 11);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (74, '2021/10/22', 73.0, 15);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (75, '2021/08/17', 61.0, 12);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (76, '2021/06/26', 61.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (77, '2021/06/26', 77.0, 4);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (78, '2021/06/05', 99.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (79, '2022/05/14', 78.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (80, '2022/01/17', 95.0, 19);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (81, '2022/01/29', 67.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (82, '2022/05/17', 50.0, 18);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (83, '2022/03/07', 97.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (84, '2022/03/27', 93.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (85, '2021/09/29', 90.0, 4);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (86, '2022/02/09', 94.0, 17);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (87, '2021/10/02', 63.0, 2);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (88, '2021/10/14', 73.0, 11);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (89, '2022/01/23', 58.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (90, '2022/03/13', 81.0, 20);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (91, '2022/02/21', 78.0, 17);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (92, '2022/03/07', 61.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (93, '2022/05/17', 96.0, 1);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (94, '2022/01/06', 56.0, 9);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (95, '2022/04/20', 90.0, 6);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (96, '2022/03/28', 68.0, 14);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (97, '2021/07/05', 76.0, 3);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (98, '2022/03/29', 85.0, 10);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (99, '2022/01/15', 92.0, 17);
INSERT INTO entree_stock (id_entree, date, quantité, id_produit) VALUES (100, '2022/01/10', 81.0, 6);

-- Table: produit
CREATE TABLE produit (
    id_produit     INT     PRIMARY KEY,
    libelle        VARCHAR NOT NULL,
    reference      VARCHAR UNIQUE
                           NOT NULL,
    prix           DOUBLE  NOT NULL,
    quantite_stock DOUBLE  NOT NULL,
    id_categorie   INT     REFERENCES categorie (id_categorie) ON DELETE CASCADE
                           NOT NULL
);

INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (1, 'Pepper - Green, Chili', '54868-5112', 57.0, 54.0, 5);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (2, 'Soup - Base Broth Chix', '10812-435', 75.0, 25.0, 10);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (3, 'Rhubarb', '49349-161', 76.0, 69.0, 9);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (4, 'Wine - Red, Gamay Noir', '44946-1023', 59.0, 78.0, 9);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (5, 'Basil - Dry, Rubbed', '55346-1406', 63.0, 70.0, 8);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (6, 'Peas - Pigeon, Dry', '66761-311', 65.0, 67.0, 8);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (7, 'Bread - Italian Roll With Herbs', '0378-0014', 58.0, 84.0, 7);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (8, 'Squid - U 5', '59746-125', 64.0, 44.0, 2);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (9, 'Trueblue - Blueberry Cranberry', '52125-453', 85.0, 52.0, 4);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (10, 'Cheese - Ricotta', '25225-015', 74.0, 72.0, 7);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (11, 'Appetizer - Lobster Phyllo Roll', '60429-151', 76.0, 87.0, 6);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (12, 'Scampi Tail', '50383-924', 53.0, 26.0, 7);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (13, 'Chambord Royal', '66184-450', 58.0, 41.0, 2);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (14, 'Wine - Merlot Vina Carmen', '60681-0101', 55.0, 62.0, 1);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (15, 'Beans - Butter Lrg Lima', '16714-671', 71.0, 69.0, 8);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (16, 'Shrimp - Black Tiger 8 - 12', '0135-0158', 71.0, 91.0, 4);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (17, 'Cleaner - Comet', '53808-0453', 79.0, 23.0, 10);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (18, 'Pork Casing', '30400-214', 89.0, 76.0, 7);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (19, 'Fish - Halibut, Cold Smoked', '55154-3434', 70.0, 35.0, 3);
INSERT INTO produit (id_produit, libelle, reference, prix, quantite_stock, id_categorie) VALUES (20, 'Bacon Strip Precooked', '63868-279', 64.0, 43.0, 2);

-- Table: sortie_stock
CREATE TABLE sortie_stock (
    id_sortie  INT    PRIMARY KEY,
    date       DATE   NOT NULL,
    quantite   DOUBLE NOT NULL,
    id_produit INT    REFERENCES produit (id_produit) ON DELETE CASCADE
);

INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (1, '2021/07/22', 26.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (2, '2021/06/24', 68.0, 2);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (3, '2022/04/28', 43.0, 5);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (4, '2022/03/10', 35.0, 8);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (5, '2021/06/17', 48.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (6, '2021/08/20', 22.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (7, '2022/03/04', 60.0, 17);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (8, '2022/01/01', 34.0, 14);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (9, '2021/07/10', 58.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (10, '2021/12/29', 47.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (11, '2022/04/11', 47.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (12, '2021/07/05', 47.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (13, '2022/02/10', 69.0, 13);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (14, '2021/08/07', 24.0, 9);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (15, '2022/02/02', 35.0, 13);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (16, '2021/09/06', 36.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (17, '2021/09/24', 10.0, 4);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (18, '2021/09/23', 31.0, 16);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (19, '2021/09/06', 38.0, 18);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (20, '2021/12/03', 17.0, 10);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (21, '2021/07/27', 25.0, 15);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (22, '2021/09/16', 39.0, 2);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (23, '2021/08/05', 57.0, 9);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (24, '2021/06/27', 24.0, 2);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (25, '2021/06/14', 45.0, 8);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (26, '2022/03/26', 27.0, 6);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (27, '2021/09/30', 38.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (28, '2022/03/23', 43.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (29, '2022/04/20', 67.0, 5);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (30, '2021/12/28', 63.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (31, '2022/04/12', 31.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (32, '2021/06/27', 26.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (33, '2021/12/12', 61.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (34, '2021/09/03', 56.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (35, '2021/08/17', 23.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (36, '2022/04/13', 42.0, 17);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (37, '2021/10/02', 65.0, 15);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (38, '2021/07/19', 69.0, 14);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (39, '2021/10/16', 21.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (40, '2021/09/20', 59.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (41, '2022/05/09', 25.0, 13);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (42, '2021/06/14', 42.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (43, '2022/04/06', 70.0, 5);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (44, '2022/01/28', 16.0, 8);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (45, '2021/08/18', 41.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (46, '2022/05/07', 43.0, 13);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (47, '2022/05/10', 21.0, 10);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (48, '2021/06/29', 48.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (49, '2022/01/24', 66.0, 6);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (50, '2021/10/16', 51.0, 16);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (51, '2022/01/09', 54.0, 5);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (52, '2021/10/27', 64.0, 15);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (53, '2022/01/17', 36.0, 2);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (54, '2021/07/06', 61.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (55, '2021/10/12', 26.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (56, '2021/08/28', 54.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (57, '2022/05/09', 37.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (58, '2021/07/21', 65.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (59, '2021/07/22', 24.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (60, '2021/09/27', 27.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (61, '2022/05/02', 30.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (62, '2021/11/04', 65.0, 1);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (63, '2021/07/02', 11.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (64, '2022/01/21', 46.0, 15);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (65, '2021/09/08', 32.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (66, '2022/01/18', 66.0, 16);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (67, '2022/05/21', 14.0, 17);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (68, '2021/07/16', 59.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (69, '2022/04/28', 65.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (70, '2021/09/27', 52.0, 7);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (71, '2021/09/05', 23.0, 12);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (72, '2021/08/21', 63.0, 19);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (73, '2021/10/01', 15.0, 8);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (74, '2021/12/05', 51.0, 2);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (75, '2022/03/23', 50.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (76, '2021/08/14', 42.0, 11);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (77, '2021/06/26', 30.0, 10);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (78, '2021/10/15', 67.0, 3);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (79, '2021/08/02', 64.0, 20);
INSERT INTO sortie_stock (id_sortie, date, quantite, id_produit) VALUES (80, '2021/06/16', 44.0, 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
