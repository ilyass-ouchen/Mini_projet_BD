CREATE TABLE Epreuve(
epreuve_id INT AUTO_INCREMENT PRIMARY KEY,
epreuve_nom VARCHAR(50) NOT NULL ,
epreuve_categorie VARCHAR(50) NOT NULL,
epreuve_distance VARCHAR(10) NOT NULL,
epreuve_sexe VARCHAR(8),  CHECK(epreuve_sexe IN('hommes', 'femmes')),
epreuve_type VARCHAR(15) CHECK(epreuve_type IN('individuelle', 'par équipe'))
);

INSERT INTO epreuve (epreuve_id, epreuve_nom, epreuve_categorie, epreuve_distance, epreuve_sexe, epreuve_type) VALUES
('1', '50 m nage libre hommes', 'Nage libre', '50 m', 'hommes','individuelle'),
('2', '100 m nage libre hommes', 'Nage libre', '100 m', 'hommes','individuelle'),
('3', '50 m dos hommes', 'Dos', '50 m', 'hommes','individuelle'),
('4', '100 m dos hommes', 'Dos', '100 m', 'hommes','individuelle'),
('5', '50 m brasse hommes', 'Brasse', '50 m', 'hommes','individuelle'),
('6', '100 m brasse hommes', 'Brasse', '100 m', 'hommes','individuelle'),
('7', '50 m papillion hommes', 'Papillion', '50 m', 'hommes','individuelle'),
('8', '100 m papillon hommes', 'Papillion', '100 m', 'hommes','individuelle'),
('9', '200 m 4 nages hommes', '4 nages', '	200 m', 'hommes','individuelle'),
('10', '400 m 4 nages hommes', '4 nages', '400 m', 'hommes','individuelle'),
('11', '400 m relais nage libre hommes', 'Relais nage libre', '400 m', 'hommes','par équipe'),
('12', '800  m relais nage libre hommes', 'Relais nage libre', '800 m', 'hommes','par équipe'),
('13', '400 relais 4 nages hommes', 'Relais 4 nages', '400 m', 'hommes','par équipe'),
('14', '50 m nage libre femmes', 'Nage libre', '50 m', 'femmes','individuelle'),
('15', '100 m nage libre femmes', 'Nage libre', '100 m', 'femmes','individuelle'),
('16', '50 m dos femmes', 'Dos', '50 m', 'femmes','individuelle'),
('17', '100 m dos femmes', 'Dos', '100 m', 'femmes','individuelle'),
('18', '50 m brasse femmes', 'Brasse', '50 m', 'femmes','individuelle'),
('19', '100 m brasse femmes', 'Brasse', '100 m', 'femmes','individuelle'),
('20', '50 m papillon femmes', 'Papillion', '50 m', 'femmes','individuelle'),
('21', '100 m papillon femmes', 'Papillion', '100 m', 'femmes','individuelle');



----------------------------------------------------------------------




CREATE TABLE Record(
record_id INT AUTO_INCREMENT PRIMARY KEY,
record_athlete VARCHAR(50),
record_temps VARCHAR(30) NOT NULL,
record_date DATE NOT NULL,
record_niveau VARCHAR(30), CHECK(record_niveau IN ('national', 'continental', 'mondial')),
epreuve_id INT,
FOREIGN KEY (epreuve_id) REFERENCES epreuve(epreuve_id)
);

INSERT INTO record (record_id, record_athlete, record_temps, record_date, record_niveau, epreuve_id) VALUES
('1', 'César Cielo', '20 s 91', '2009-12-18', 'mondial','1'),
('2', 'Frédérick Bousquet', '	00 min 20 s 941', '2009-04-29', 'continental','1'),
('3', 'César Cielo', '46 s 91', '2009-07-30', 'mondial','2'),
('4', 'Kliment Kolesnikov', '24 s 00', '2018-08-04', 'mondial','3'),
('5', 'Ryan Murphy', '	51 s 85', '2016-08-13', 'mondial','4'),
('6', ' Alain Bernard', '00 min 47 s 12', '2009-07-30', 'continental','1'),
('7', 'Adam Peaty', '25 s 95', '2017-07-25', 'mondial','5'),
('8', 'Adam Peaty', '	56 s 88', '2019-07-21', 'mondial','6'),
('9', 'Andriy Govorov', '22 s 27', '2018-07-01', 'mondial','7'),
('10', 'Caeleb Dressel', '49 s 50', '2019-07-26', 'mondial','8'),
('11', 'Ryan Lochte', '1 min 54 s 00', '2011-07-28', 'mondial','9'),
('12', 'Adam Peaty', '00 min 25 s 95', '2017-07-25', 'mondial','9'),
('13', 'Michael Phelps', '4 min 03 s 84', '2008-08-10', 'mondial','10'),
('14', 'Hugues Duboscq', '00 min 58 s 64', '2009-07-27', 'national','6'),
('15', 'Charlotte Bonnet', '00 min 52 s 74', '2018-05-24', 'national','15'),
('16', 'Gemma Spofforths', '00 min 58 s 12', '2009-07-28', 'continental','17'),
('17', 'Michael Phelps', '4 min 03 s 84', '2008-08-10', 'mondial','10'),
('18', 'Michael Phelps', '4 min 03 s 84', '2008-08-10', 'mondial','10'),
('19', 'Michael Phelps', '4 min 03 s 84', '2008-08-10', 'mondial','10'),
('20', 'Michael Phelps', '4 min 03 s 84', '2008-08-10', 'mondial','10');
