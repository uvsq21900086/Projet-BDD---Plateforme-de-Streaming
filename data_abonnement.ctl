LOAD DATA
INFILE 'data_folder/abonnement.txt'
APPEND INTO TABLE Abonnement
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  TypeAbonnement CHAR(9),
  Tarif         FLOAT EXTERNAL
)