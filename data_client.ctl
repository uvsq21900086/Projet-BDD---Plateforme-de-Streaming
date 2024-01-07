LOAD DATA
INFILE 'data_folder/data_client.txt'
APPEND INTO TABLE Client
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  IDClient,
  NomClient,
  MotDePasseClient,
  AgeClient DATE "YYYY-MM-DD",
  AdresseMail,
  DateInscription DATE "YYYY-MM-DD",
  IBAN CHAR(33),
  DatePrelevement DATE "YYYY-MM-DD",
  TypeAbonnement
)
